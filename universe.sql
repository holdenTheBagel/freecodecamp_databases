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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(30) NOT NULL,
    has_life boolean,
    galaxy_id integer NOT NULL,
    known_stars numeric,
    age_in_billions_of_years numeric
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_types (
    type text NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_types_id integer NOT NULL
);


ALTER TABLE public.galaxy_types OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(30) NOT NULL,
    has_life boolean,
    moon_id integer NOT NULL,
    galaxy_id integer NOT NULL,
    age_in_billions_of_years numeric,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(30) NOT NULL,
    has_life boolean,
    planet_id integer NOT NULL,
    moons integer,
    galaxy_id integer NOT NULL,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(30) NOT NULL,
    has_life boolean,
    star_id integer NOT NULL,
    planets integer,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Milky Way', true, 1, 400000000000, NULL);
INSERT INTO public.galaxy VALUES ('Andromeda', NULL, 2, 1000000000000, 10);
INSERT INTO public.galaxy VALUES ('Antennae', NULL, 3, 10000000000, 1.2);
INSERT INTO public.galaxy VALUES ('Backward', NULL, 4, 1000000000000, 11);
INSERT INTO public.galaxy VALUES ('Black Eye', NULL, 5, 1000000000000, 12);
INSERT INTO public.galaxy VALUES ('Butterfly', NULL, 6, 400000000000, 13.5);


--
-- Data for Name: galaxy_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_types VALUES ('barred spiral galaxy', 'Milky Way', 1);
INSERT INTO public.galaxy_types VALUES ('barred spiral galaxy', 'Andromeda', 2);
INSERT INTO public.galaxy_types VALUES ('unbarred spiral galaxy', 'Butterfly', 3);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Moon', NULL, 1, 1, 4.53, 3);
INSERT INTO public.moon VALUES ('Phobos', NULL, 2, 1, 2.7, 4);
INSERT INTO public.moon VALUES ('Deimos', NULL, 3, 1, 2.7, 4);
INSERT INTO public.moon VALUES ('Metis', NULL, 4, 1, 4.5, 5);
INSERT INTO public.moon VALUES ('Adrastea', NULL, 5, 1, 4.5, 5);
INSERT INTO public.moon VALUES ('Amalthea', NULL, 6, 1, 4.5, 5);
INSERT INTO public.moon VALUES ('Thebe', NULL, 7, 1, 4.5, 5);
INSERT INTO public.moon VALUES ('Io', NULL, 8, 1, 4.5, 5);
INSERT INTO public.moon VALUES ('Europa', NULL, 9, 1, 4.5, 5);
INSERT INTO public.moon VALUES ('Ganymede', NULL, 10, 1, 4.5, 5);
INSERT INTO public.moon VALUES ('Callisto', NULL, 11, 1, 4.5, 5);
INSERT INTO public.moon VALUES ('Themisto', NULL, 12, 1, 4.5, 5);
INSERT INTO public.moon VALUES ('Leda', NULL, 13, 1, 4.5, 5);
INSERT INTO public.moon VALUES ('Ersa', NULL, 14, 1, 4.5, 5);
INSERT INTO public.moon VALUES ('Himalia', NULL, 15, 1, 4.5, 5);
INSERT INTO public.moon VALUES ('Pandia', NULL, 16, 1, 4.5, 5);
INSERT INTO public.moon VALUES ('Lysithea', NULL, 17, 1, 4.5, 5);
INSERT INTO public.moon VALUES ('Elara', NULL, 18, 1, 4.5, 5);
INSERT INTO public.moon VALUES ('Dia', NULL, 19, 1, 4.5, 5);
INSERT INTO public.moon VALUES ('Carpo', NULL, 20, 1, 4.5, 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Mercury', false, 1, 0, 1, 1);
INSERT INTO public.planet VALUES ('Earth', true, 3, 1, 1, 1);
INSERT INTO public.planet VALUES ('Venus', false, 2, 0, 1, 1);
INSERT INTO public.planet VALUES ('Mars', false, 4, 2, 1, 1);
INSERT INTO public.planet VALUES ('Jupiter', false, 5, 79, 1, 1);
INSERT INTO public.planet VALUES ('Saturn', false, 6, 83, 1, 1);
INSERT INTO public.planet VALUES ('Uranus', false, 7, 27, 1, 1);
INSERT INTO public.planet VALUES ('Neptune', false, 8, 14, 1, 1);
INSERT INTO public.planet VALUES ('Pluto', false, 9, 5, 1, 1);
INSERT INTO public.planet VALUES ('Eris', false, 10, 1, 1, 1);
INSERT INTO public.planet VALUES ('Ceres', false, 11, 0, 1, 1);
INSERT INTO public.planet VALUES ('Makemake', false, 12, 1, 1, 1);
INSERT INTO public.planet VALUES ('Haumea', false, 13, 2, 1, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Sun', true, 1, 8, 1);
INSERT INTO public.star VALUES ('Antares', NULL, 2, 0, 1);
INSERT INTO public.star VALUES ('Betelgeuse', NULL, 3, 2, 1);
INSERT INTO public.star VALUES ('KW Saggittarii', NULL, 4, 0, 1);
INSERT INTO public.star VALUES ('VV Cephei A', NULL, 5, 2, 1);
INSERT INTO public.star VALUES ('MU Cephei', NULL, 6, 0, 1);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy_types galaxy_types_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_name_key UNIQUE (name);


--
-- Name: galaxy_types galaxy_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_pkey PRIMARY KEY (galaxy_types_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

