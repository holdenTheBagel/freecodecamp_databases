--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(30) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    opponent_goals integer NOT NULL,
    winner_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (33, 2018, 'Final', 562, 563, 2, 4);
INSERT INTO public.games VALUES (34, 2018, 'Third Place', 564, 565, 0, 2);
INSERT INTO public.games VALUES (35, 2018, 'Semi-Final', 563, 565, 1, 2);
INSERT INTO public.games VALUES (36, 2018, 'Semi-Final', 562, 564, 0, 1);
INSERT INTO public.games VALUES (37, 2018, 'Quarter-Final', 563, 566, 2, 3);
INSERT INTO public.games VALUES (38, 2018, 'Quarter-Final', 565, 567, 0, 2);
INSERT INTO public.games VALUES (39, 2018, 'Quarter-Final', 564, 568, 1, 2);
INSERT INTO public.games VALUES (40, 2018, 'Quarter-Final', 562, 569, 0, 2);
INSERT INTO public.games VALUES (41, 2018, 'Eighth-Final', 565, 570, 1, 2);
INSERT INTO public.games VALUES (42, 2018, 'Eighth-Final', 567, 571, 0, 1);
INSERT INTO public.games VALUES (43, 2018, 'Eighth-Final', 564, 572, 2, 3);
INSERT INTO public.games VALUES (44, 2018, 'Eighth-Final', 568, 573, 0, 2);
INSERT INTO public.games VALUES (45, 2018, 'Eighth-Final', 563, 574, 1, 2);
INSERT INTO public.games VALUES (46, 2018, 'Eighth-Final', 566, 575, 1, 2);
INSERT INTO public.games VALUES (47, 2018, 'Eighth-Final', 569, 576, 1, 2);
INSERT INTO public.games VALUES (48, 2018, 'Eighth-Final', 562, 577, 3, 4);
INSERT INTO public.games VALUES (49, 2014, 'Final', 578, 577, 0, 1);
INSERT INTO public.games VALUES (50, 2014, 'Third Place', 579, 568, 0, 3);
INSERT INTO public.games VALUES (51, 2014, 'Semi-Final', 577, 579, 0, 1);
INSERT INTO public.games VALUES (52, 2014, 'Semi-Final', 578, 568, 1, 7);
INSERT INTO public.games VALUES (53, 2014, 'Quarter-Final', 579, 580, 0, 1);
INSERT INTO public.games VALUES (54, 2014, 'Quarter-Final', 577, 564, 0, 1);
INSERT INTO public.games VALUES (55, 2014, 'Quarter-Final', 568, 570, 1, 2);
INSERT INTO public.games VALUES (56, 2014, 'Quarter-Final', 578, 562, 0, 1);
INSERT INTO public.games VALUES (57, 2014, 'Eighth-Final', 568, 581, 1, 2);
INSERT INTO public.games VALUES (58, 2014, 'Eighth-Final', 570, 569, 0, 2);
INSERT INTO public.games VALUES (59, 2014, 'Eighth-Final', 562, 582, 0, 2);
INSERT INTO public.games VALUES (60, 2014, 'Eighth-Final', 578, 583, 1, 2);
INSERT INTO public.games VALUES (61, 2014, 'Eighth-Final', 579, 573, 1, 2);
INSERT INTO public.games VALUES (62, 2014, 'Eighth-Final', 580, 584, 1, 2);
INSERT INTO public.games VALUES (63, 2014, 'Eighth-Final', 577, 571, 0, 1);
INSERT INTO public.games VALUES (64, 2014, 'Eighth-Final', 564, 585, 1, 2);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (562, 'France');
INSERT INTO public.teams VALUES (563, 'Croatia');
INSERT INTO public.teams VALUES (564, 'Belgium');
INSERT INTO public.teams VALUES (565, 'England');
INSERT INTO public.teams VALUES (566, 'Russia');
INSERT INTO public.teams VALUES (567, 'Sweden');
INSERT INTO public.teams VALUES (568, 'Brazil');
INSERT INTO public.teams VALUES (569, 'Uruguay');
INSERT INTO public.teams VALUES (570, 'Colombia');
INSERT INTO public.teams VALUES (571, 'Switzerland');
INSERT INTO public.teams VALUES (572, 'Japan');
INSERT INTO public.teams VALUES (573, 'Mexico');
INSERT INTO public.teams VALUES (574, 'Denmark');
INSERT INTO public.teams VALUES (575, 'Spain');
INSERT INTO public.teams VALUES (576, 'Portugal');
INSERT INTO public.teams VALUES (577, 'Argentina');
INSERT INTO public.teams VALUES (578, 'Germany');
INSERT INTO public.teams VALUES (579, 'Netherlands');
INSERT INTO public.teams VALUES (580, 'Costa Rica');
INSERT INTO public.teams VALUES (581, 'Chile');
INSERT INTO public.teams VALUES (582, 'Nigeria');
INSERT INTO public.teams VALUES (583, 'Algeria');
INSERT INTO public.teams VALUES (584, 'Greece');
INSERT INTO public.teams VALUES (585, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 64, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 585, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

