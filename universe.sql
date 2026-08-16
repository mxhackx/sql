--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
-- Name: cosmic_network; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.cosmic_network (
    cosmic_network_id integer NOT NULL,
    name character varying(200) NOT NULL,
    description text NOT NULL,
    has_life boolean,
    age_in_millions_of_years integer,
    planet_types text,
    galaxy_types text,
    distance_from_earth numeric
);


ALTER TABLE public.cosmic_network OWNER TO freecodecamp;

--
-- Name: cosmic_network_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

ALTER TABLE public.cosmic_network ALTER COLUMN cosmic_network_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.cosmic_network_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(200) NOT NULL,
    description text NOT NULL,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer,
    planet_types text,
    galaxy_types text,
    distance_from_earth numeric,
    cosmic_network_id integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

ALTER TABLE public.galaxy ALTER COLUMN galaxy_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.galaxy_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(200) NOT NULL,
    description text NOT NULL,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer,
    planet_types text,
    galaxy_types text,
    distance_from_earth numeric,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

ALTER TABLE public.moon ALTER COLUMN moon_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.moon_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(200) NOT NULL,
    description text NOT NULL,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer,
    planet_types text,
    galaxy_types text,
    distance_from_earth numeric,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

ALTER TABLE public.planet ALTER COLUMN planet_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.planet_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(200) NOT NULL,
    description text NOT NULL,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer,
    planet_types text,
    galaxy_types text,
    distance_from_earth numeric,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

ALTER TABLE public.star ALTER COLUMN star_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.star_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Data for Name: cosmic_network; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.cosmic_network OVERRIDING SYSTEM VALUE VALUES (1, 'Laniakea', 'A large-scale cosmic structure containing the Milky Way and many galaxy groups', true, 13600, 'Various', 'Spiral, elliptical, irregular', 0);
INSERT INTO public.cosmic_network OVERRIDING SYSTEM VALUE VALUES (2, 'Perseus-Pisces', 'A vast filamentary structure connecting numerous galaxy clusters across the cosmic web.', false, 12000, 'Various', 'Spiral, Elliptical, Irregular', 250000000);
INSERT INTO public.cosmic_network OVERRIDING SYSTEM VALUE VALUES (3, 'Sloan Great Wall', 'One of the largest known structures in the observable universe, composed of many galaxy clusters.', false, 12500, 'Various', 'Spiral, Elliptical', 1000000000);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy OVERRIDING SYSTEM VALUE VALUES (1, 'Milky Way', 'Everybody know the milky way', true, NULL, 13600, 'Various', 'Spiral, elliptical, irregular', 0, 1);
INSERT INTO public.galaxy OVERRIDING SYSTEM VALUE VALUES (2, 'Milky Way', 'Everybody know the milky way', true, NULL, 13600, 'Various', 'Spiral, elliptical, irregular', 0, 1);
INSERT INTO public.galaxy OVERRIDING SYSTEM VALUE VALUES (3, 'Milky Way', 'Everybody know the milky way', true, NULL, 13600, 'Various', 'Spiral, elliptical, irregular', 0, 1);
INSERT INTO public.galaxy OVERRIDING SYSTEM VALUE VALUES (4, 'Milky Way', 'Everybody know the milky way', true, NULL, 13600, 'Various', 'Spiral, elliptical, irregular', 0, 1);
INSERT INTO public.galaxy OVERRIDING SYSTEM VALUE VALUES (5, 'Milky Way', 'Everybody know the milky way', true, NULL, 13600, 'Various', 'Spiral, elliptical, irregular', 0, 1);
INSERT INTO public.galaxy OVERRIDING SYSTEM VALUE VALUES (6, 'Milky Way', 'Everybody know the milky way', true, NULL, 13600, 'Various', 'Spiral, elliptical, irregular', 0, 1);
INSERT INTO public.galaxy OVERRIDING SYSTEM VALUE VALUES (7, 'Milky Way', 'Everybody know the milky way', true, NULL, 13600, 'Various', 'Spiral, elliptical, irregular', 0, 1);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (1, 'Lunara', 'A rocky moon with deep impact craters.', false, true, 4300, 'Rocky', 'Spiral', 12.9, 1);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (2, 'Thalassa', 'A small moon covered with frozen plains.', false, true, 4400, 'Ice', 'Spiral', 25.3, 1);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (3, 'Nyx', 'A dark moon with a heavily cratered surface.', false, true, 5000, 'Rocky', 'Spiral', 24.2, 2);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (4, 'Ophira', 'A bright icy moon reflecting intense starlight.', false, true, 5100, 'Ice', 'Spiral', 39.1, 3);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (5, 'Caelia', 'A moon with a thin atmosphere and rocky terrain.', false, true, 3800, 'Rocky', 'Spiral', 8.2, 4);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (6, 'Astra', 'A temperate moon with vast mineral deposits.', false, true, 4000, 'Rocky', 'Spiral', 52.1, 5);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (7, 'Vulcania', 'A volcanic moon with active lava channels.', false, true, 3200, 'Volcanic', 'Spiral', 17.5, 6);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (8, 'Glacius', 'A frozen moon with enormous ice formations.', false, true, 6700, 'Ice', 'Elliptical', 74.0, 7);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (9, 'Orion', 'A large rocky moon surrounded by a thin atmosphere.', false, true, 7000, 'Rocky', 'Spiral', 92.6, 8);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (10, 'Mirra', 'A small moon with a dark surface and deep valleys.', false, true, 3900, 'Rocky', 'Spiral', 30.4, 9);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (11, 'Eos', 'A bright moon with reflective icy mountains.', false, true, 2700, 'Ice', 'Irregular', 44.3, 10);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (12, 'Pyra', 'A hot moon with a volcanically active surface.', false, true, 5000, 'Volcanic', 'Spiral', 63.2, 11);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (13, 'Nivara', 'An icy moon containing a possible subsurface ocean.', false, true, 5500, 'Ice', 'Elliptical', 85.7, 12);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (14, 'Cyris', 'A small rocky moon with numerous craters.', false, true, 4200, 'Rocky', 'Spiral', 13.7, 1);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (15, 'Elara', 'A pale moon with a mountainous surface.', false, true, 4600, 'Rocky', 'Spiral', 26.1, 2);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (16, 'Rhea', 'A frozen moon with a bright reflective surface.', false, true, 6000, 'Ice', 'Spiral', 40.5, 3);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (17, 'Vega', 'A rocky moon with large impact basins.', false, true, 3700, 'Rocky', 'Spiral', 9.6, 4);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (18, 'Dione', 'A cold moon with an icy crust and rocky interior.', false, true, 4500, 'Ice', 'Elliptical', 53.0, 5);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (19, 'Helia', 'A volcanic moon with dark basaltic plains.', false, true, 3100, 'Volcanic', 'Spiral', 18.4, 6);
INSERT INTO public.moon OVERRIDING SYSTEM VALUE VALUES (20, 'Arken', 'A distant icy moon with a fractured surface.', false, true, 6600, 'Ice', 'Elliptical', 75.2, 7);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (1, 'Aurelia', 'A warm rocky planet with vast oceans and dense forests.', true, true, 4500, 'Terrestrial', 'Spiral', 12.5, 1);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (2, 'Vespera', 'A cold world covered by frozen plains and deep valleys.', false, true, 5200, 'Ice', 'Spiral', 24.8, 1);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (3, 'Draconis', 'A massive gas giant surrounded by powerful storms.', false, true, 6100, 'Gas giant', 'Spiral', 38.2, 2);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (4, 'Elysia', 'A temperate planet with liquid water and a nitrogen-rich atmosphere.', true, true, 3900, 'Terrestrial', 'Spiral', 7.4, 2);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (5, 'Nereid', 'A blue ocean world with a small rocky continent.', true, true, 4700, 'Ocean', 'Elliptical', 51.3, 2);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (6, 'Voltara', 'A volcanic planet with active lava fields across its surface.', false, true, 3300, 'Volcanic', 'Spiral', 16.9, 3);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (7, 'Cryon', 'A frozen planet with enormous glaciers and a thin atmosphere.', false, true, 6800, 'Ice', 'Elliptical', 73.1, 3);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (8, 'Titanor', 'A giant planet with a thick atmosphere and dozens of storms.', false, true, 7200, 'Gas giant', 'Spiral', 91.7, 1);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (9, 'Zephyria', 'A windy terrestrial world with vast deserts and rocky mountains.', false, true, 4100, 'Terrestrial', 'Spiral', 29.6, 1);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (10, 'Myridia', 'A humid world dominated by tropical oceans and dense vegetation.', true, true, 2800, 'Ocean', 'Irregular', 43.5, 2);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (11, 'Pyron', 'A hot rocky planet with a highly active volcanic surface.', false, true, 5100, 'Volcanic', 'Spiral', 62.4, 3);
INSERT INTO public.planet OVERRIDING SYSTEM VALUE VALUES (12, 'Selene', 'A small icy world with a subsurface ocean beneath its frozen crust.', false, true, 5600, 'Ice', 'Elliptical', 84.9, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES (1, 'Sun', 'If you don''t know the milky way, you have to know the Sun ... otherwise it''ll be a shame !!!', true, NULL, 13600, 'Various', 'Spiral, elliptical, irregular', 0, 1);
INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES (2, 'Sun', 'If you don''t know the milky way, you have to know the Sun ... otherwise it''ll be a shame !!!', true, NULL, 13600, 'Various', 'Spiral, elliptical, irregular', 0, 1);
INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES (3, 'Sun', 'If you don''t know the milky way, you have to know the Sun ... otherwise it''ll be a shame !!!', true, NULL, 13600, 'Various', 'Spiral, elliptical, irregular', 0, 1);
INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES (4, 'Sun', 'If you don''t know the milky way, you have to know the Sun ... otherwise it''ll be a shame !!!', true, NULL, 13600, 'Various', 'Spiral, elliptical, irregular', 0, 1);
INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES (5, 'Sun', 'If you don''t know the milky way, you have to know the Sun ... otherwise it''ll be a shame !!!', true, NULL, 13600, 'Various', 'Spiral, elliptical, irregular', 0, 1);
INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES (6, 'Sun', 'If you don''t know the milky way, you have to know the Sun ... otherwise it''ll be a shame !!!', true, NULL, 13600, 'Various', 'Spiral, elliptical, irregular', 0, 1);
INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES (7, 'Sun', 'If you don''t know the milky way, you have to know the Sun ... otherwise it''ll be a shame !!!', true, NULL, 13600, 'Various', 'Spiral, elliptical, irregular', 0, 1);
INSERT INTO public.star OVERRIDING SYSTEM VALUE VALUES (8, 'Sun', 'If you don''t know the milky way, you have to know the Sun ... otherwise it''ll be a shame !!!', true, NULL, 13600, 'Various', 'Spiral, elliptical, irregular', 0, 1);


--
-- Name: cosmic_network_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.cosmic_network_id_seq', 3, true);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 7, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 20, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 12, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 8, true);


--
-- Name: cosmic_network cosmic_network_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.cosmic_network
    ADD CONSTRAINT cosmic_network_pkey PRIMARY KEY (cosmic_network_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: cosmic_network unique_cosmic_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.cosmic_network
    ADD CONSTRAINT unique_cosmic_id UNIQUE (cosmic_network_id);


--
-- Name: galaxy unique_galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_id UNIQUE (galaxy_id);


--
-- Name: moon unique_moon_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_id UNIQUE (moon_id);


--
-- Name: planet unique_planet_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_id UNIQUE (planet_id);


--
-- Name: star unique_star_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_id UNIQUE (star_id);


--
-- Name: galaxy galaxy_cosmic_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_cosmic_fk FOREIGN KEY (cosmic_network_id) REFERENCES public.cosmic_network(cosmic_network_id);


--
-- Name: moon moon_planet_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_fk FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_fk FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_fk; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_fk FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

