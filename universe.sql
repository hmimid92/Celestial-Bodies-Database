--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    planet integer,
    star integer,
    hasplanet boolean,
    description text,
    radius numeric(6,5)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    radius numeric(6,1),
    weight numeric(4,4),
    name character varying(20) NOT NULL,
    description text,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: nebula; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.nebula (
    nebula_id integer NOT NULL,
    name character varying(15) NOT NULL,
    substance text,
    description text
);


ALTER TABLE public.nebula OWNER TO freecodecamp;

--
-- Name: nebula_nebula_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.nebula_nebula_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.nebula_nebula_id_seq OWNER TO freecodecamp;

--
-- Name: nebula_nebula_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.nebula_nebula_id_seq OWNED BY public.nebula.nebula_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    moon text,
    radius numeric(8,1),
    name character varying(20) NOT NULL,
    has_life boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    weight numeric(6,5),
    age integer,
    name character varying(20) NOT NULL,
    temperature integer,
    description text,
    star_id integer NOT NULL,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: nebula nebula_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nebula ALTER COLUMN nebula_id SET DEFAULT nextval('public.nebula_nebula_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', NULL, NULL, NULL, 'Contain Sun and Solar system', NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', NULL, NULL, NULL, 'Closest big galaxy to Milky Way', NULL);
INSERT INTO public.galaxy VALUES (3, 'Bode', NULL, NULL, NULL, 'Largest in the M81 Group', NULL);
INSERT INTO public.galaxy VALUES (4, 'Butterfly', NULL, NULL, NULL, '', NULL);
INSERT INTO public.galaxy VALUES (5, 'Cartwheel', NULL, NULL, NULL, 'made up of 4 spiral galaxies', NULL);
INSERT INTO public.galaxy VALUES (6, 'Grasshoper', NULL, NULL, NULL, 'Tow colliding galaxies', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 1738.0, NULL, 'Moon', 'his parent is Earth', 3);
INSERT INTO public.moon VALUES (2, 11.3, NULL, 'Phobos', 'the son of Mars', 4);
INSERT INTO public.moon VALUES (3, 6.2, NULL, 'Deimos', 'the son of Mars', 4);
INSERT INTO public.moon VALUES (4, 1821.6, NULL, 'Io', 'the son of Jupiter', 5);
INSERT INTO public.moon VALUES (5, 1560.8, NULL, 'Europa', 'the son of Jupiter', 5);
INSERT INTO public.moon VALUES (6, 2634.1, NULL, 'Ganymede', 'the son of Jupiter', 5);
INSERT INTO public.moon VALUES (7, 2410.3, NULL, 'Callisto', 'the son of Jupiter', 5);
INSERT INTO public.moon VALUES (8, 83.5, NULL, 'Amalthea', 'his parent is Jupiter', 5);
INSERT INTO public.moon VALUES (9, 69.8, NULL, 'Himalia', 'his parent is Jupiter', 5);
INSERT INTO public.moon VALUES (10, 40.0, NULL, 'Elara', 'his parent is Jupiter', 5);
INSERT INTO public.moon VALUES (11, 28.9, NULL, 'Pasiphae', 'his parent is Jupiter', 5);
INSERT INTO public.moon VALUES (12, 17.5, NULL, 'Sinope', 'his parent is Jupiter', 5);
INSERT INTO public.moon VALUES (13, 21.1, NULL, 'Lysithea', 'his parent is Jupiter', 5);
INSERT INTO public.moon VALUES (14, 23.3, NULL, 'Carme', 'his parent is Jupiter', 5);
INSERT INTO public.moon VALUES (15, 14.6, NULL, 'Ananke', 'his parent is Jupiter', 5);
INSERT INTO public.moon VALUES (16, 10.8, NULL, 'Leda', 'his parent is Jupiter', 5);
INSERT INTO public.moon VALUES (17, 49.3, NULL, 'Thebe', 'his parent is Jupiter', 5);
INSERT INTO public.moon VALUES (18, 8.2, NULL, 'Andrastea', 'his parent is Jupiter', 5);
INSERT INTO public.moon VALUES (19, 21.5, NULL, 'Metis', 'his parent is Jupiter', 5);
INSERT INTO public.moon VALUES (20, 4.8, NULL, 'Callirrhoe', 'his parent is Jupiter', 5);
INSERT INTO public.moon VALUES (21, 4.5, NULL, 'Themisto', 'his parent is Jupiter', 5);
INSERT INTO public.moon VALUES (22, 2.7, NULL, 'Megaclite', 'his parent is Jupiter', 5);
INSERT INTO public.moon VALUES (23, 2.5, NULL, 'Taygete', 'his parent is Jupiter', 5);


--
-- Data for Name: nebula; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.nebula VALUES (1, 'Cat eye', NULL, 'Discovered on 1786');
INSERT INTO public.nebula VALUES (2, 'Helix', NULL, 'Discovered before 1824');
INSERT INTO public.nebula VALUES (3, 'Ring', NULL, 'Sites of active star formation');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, NULL, 2440.0, 'Mercury', false, 1);
INSERT INTO public.planet VALUES (2, NULL, 6052.0, 'Venus', false, 1);
INSERT INTO public.planet VALUES (3, NULL, 6371.0, 'Earth', true, 1);
INSERT INTO public.planet VALUES (4, NULL, 3390.0, 'Mars', false, 1);
INSERT INTO public.planet VALUES (5, NULL, 69911.0, 'Jupiter', false, 1);
INSERT INTO public.planet VALUES (6, NULL, 58232.0, 'Saturn', false, 1);
INSERT INTO public.planet VALUES (7, NULL, 25362.0, 'Uranus', false, 1);
INSERT INTO public.planet VALUES (8, NULL, 24622.0, 'Neptune', false, 1);
INSERT INTO public.planet VALUES (9, NULL, 7.3, 'CFHT-BD-Tau 1', false, 2);
INSERT INTO public.planet VALUES (10, NULL, 5.6, 'CFHT-BD-Tau 2', false, 3);
INSERT INTO public.planet VALUES (11, NULL, 1.3, 'TOI-2420 b', false, 4);
INSERT INTO public.planet VALUES (12, NULL, 0.2, 'K2-18 b', false, 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (NULL, NULL, 'EV Carinae', 2930, 'Milkey way star', 2, 1);
INSERT INTO public.star VALUES (NULL, NULL, 'WOH G64', 2940, 'Milkey way star', 3, 1);
INSERT INTO public.star VALUES (NULL, NULL, 'UY Scuti', 3376, 'Milkey way star', 4, 1);
INSERT INTO public.star VALUES (NULL, NULL, 'S Persei', 2978, 'Milkey way star', 5, 1);
INSERT INTO public.star VALUES (NULL, NULL, 'VY Canis Majoris', 2815, 'Milkey way star', 6, 1);
INSERT INTO public.star VALUES (NULL, NULL, 'SUN', 5772, 'Milkey way star', 1, 1);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 23, true);


--
-- Name: nebula_nebula_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.nebula_nebula_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 10, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_planet_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_planet_key UNIQUE (planet);


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
-- Name: nebula nebula_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nebula
    ADD CONSTRAINT nebula_name_key UNIQUE (name);


--
-- Name: nebula nebula_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nebula
    ADD CONSTRAINT nebula_pkey PRIMARY KEY (nebula_id);


--
-- Name: planet planet_moon_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_moon_key UNIQUE (moon);


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
-- Name: moon moon_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: star star_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: planet star_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT star_planet_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--


