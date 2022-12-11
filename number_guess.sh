#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

echo -e "\nEnter your username:\n"
read USERNAME

HAS_USERNAME=$($PSQL "SELECT username FROM users;")
CURRENT_USER=$($PSQL "SELECT username FROM users WHERE username='$USERNAME';")
GAMES_PLAYED=$($PSQL "SELECT games_played FROM users WHERE username='$USERNAME';")
BEST_GAME=$($PSQL "SELECT best_game FROM users WHERE username='$USERNAME';")
if [[ -z $CURRENT_USER ]]
then
  INSERT_USER=$($PSQL "INSERT INTO users(username) VALUES('$USERNAME')")
  echo -e "\nWelcome, $USERNAME! It looks like this is your first time here."
  SET_GAMES_PLAYED=$($PSQL "UPDATE users SET games_played = 1 WHERE username='$USERNAME';")
else
  echo -e "\nWelcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
  UPDATE_GAMES_PLAYED=$($PSQL "UPDATE users SET games_played = games_played + 1 WHERE username='$USERNAME';")
fi
NUMBER_OF_GUESSES=0
SECRET_NUMBER=$(( 1 + $RANDOM % 1000 ))
echo -e "\nGuess the secret number between 1 and 1000:"
while read GUESS
do
  if [[ ! $GUESS =~ ^[0-9]+$ ]]
  then
    echo -e "\nThat is not an integer, guess again:"
    ((NUMBER_OF_GUESSES += 1))
  elif [[ $GUESS -gt $SECRET_NUMBER ]]
  then
    echo -e "\nIt's lower than that, guess again:"
    ((NUMBER_OF_GUESSES += 1))
  elif [[ $GUESS -lt $SECRET_NUMBER ]]
  then
    echo -e "\nIt's higher than that, guess again:"
    ((NUMBER_OF_GUESSES += 1))
  else
    ((NUMBER_OF_GUESSES += 1))
    echo -e "\nYou guessed it in $NUMBER_OF_GUESSES tries. The secret number was $SECRET_NUMBER. Nice job!"
    break;
  fi
done

if [[ -z $BEST_GAME || $NUMBER_OF_GUESSES -lt $BEST_GAME ]]
then
  UPDATE_BEST_GAME=$($PSQL "UPDATE users SET best_game = $NUMBER_OF_GUESSES WHERE username='$USERNAME';")
fi