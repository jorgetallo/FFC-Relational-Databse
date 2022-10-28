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
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    rating numeric(3,1),
    distance_million_ly integer,
    size_ly integer,
    galaxy_type_id integer
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
-- Name: galaxy_type; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_type (
    galaxy_type_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    int1 integer,
    int2 integer
);


ALTER TABLE public.galaxy_type OWNER TO freecodecamp;

--
-- Name: galaxy_type_galaxy_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_type_galaxy_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_type_galaxy_type_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_type_galaxy_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_type_galaxy_type_id_seq OWNED BY public.galaxy_type.galaxy_type_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    has_water boolean,
    int1 integer,
    int2 integer,
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
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    has_water boolean,
    int1 integer,
    int2 integer,
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
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    int1 integer,
    int2 integer,
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
-- Name: galaxy_type galaxy_type_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_type ALTER COLUMN galaxy_type_id SET DEFAULT nextval('public.galaxy_type_galaxy_type_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'M60', 'Messier 60. Also known as NGC 4649', 5.5, 57, 50, 1);
INSERT INTO public.galaxy VALUES (2, 'M87', 'Messier 87. Also known as Virgo A, is a supergiant elliptical galaxy', 9.9, 2, 4900, 1);
INSERT INTO public.galaxy VALUES (3, 'Centaurus A', 'Also known as Caldwell 77. Present in the constellation of Centaurus', 7.7, 16, 60000, 2);
INSERT INTO public.galaxy VALUES (4, 'NGC 2787', 'Discovered in 1788 by some smart guy with a telescope', 4.0, 24, 500, 2);
INSERT INTO public.galaxy VALUES (5, 'M91', 'Messier 91, barred spiral galaxy at the south of Coma Berenices', 6.7, 63, 100, 3);
INSERT INTO public.galaxy VALUES (6, 'M82', 'Also known as NGC 3034, Cigar Galaxy, Messier 82. A starburst galaxy super far away', 8.1, 12, 37000, 4);


--
-- Data for Name: galaxy_type; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_type VALUES (1, 'Elliptical', 'Smooth, featurless light distribution. Appear as ellipsses. Denoted by letter E', NULL, NULL);
INSERT INTO public.galaxy_type VALUES (2, 'Lenticular', 'Between elliptical and spiral. Bright central bulge, no visible spiral.Denoted by symboll S0', NULL, NULL);
INSERT INTO public.galaxy_type VALUES (3, 'Spiral', 'Flattened disk, with stars forming a spiral. May or may not have a bar-like structure, extending from the central bulge. Denoted by the letter S', NULL, NULL);
INSERT INTO public.galaxy_type VALUES (4, 'Irregular', 'Galaxies that do not have a regular structure', NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Noon', NULL, NULL, NULL, 1);
INSERT INTO public.moon VALUES (2, 'Moooon', NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (3, 'Asdf', NULL, NULL, NULL, 3);
INSERT INTO public.moon VALUES (4, 'A123', NULL, NULL, NULL, 4);
INSERT INTO public.moon VALUES (5, 'Five', NULL, NULL, NULL, 5);
INSERT INTO public.moon VALUES (6, 'Six', NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (7, 'Moo-moon', NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (8, 'Moooo', NULL, NULL, NULL, 8);
INSERT INTO public.moon VALUES (9, 'Moo n', NULL, NULL, NULL, 9);
INSERT INTO public.moon VALUES (10, 'QWEr', NULL, NULL, NULL, 10);
INSERT INTO public.moon VALUES (11, 'Monono', NULL, NULL, NULL, 11);
INSERT INTO public.moon VALUES (12, 'Mooomm', NULL, NULL, NULL, 12);
INSERT INTO public.moon VALUES (13, 'Moonson', NULL, NULL, NULL, 13);
INSERT INTO public.moon VALUES (14, 'Aaah', NULL, NULL, NULL, 14);
INSERT INTO public.moon VALUES (15, 'WhydidIchoosename NOT NULL', NULL, NULL, NULL, 15);
INSERT INTO public.moon VALUES (16, 'Idk', NULL, NULL, NULL, 16);
INSERT INTO public.moon VALUES (17, 'Mmmm', NULL, NULL, NULL, 17);
INSERT INTO public.moon VALUES (18, 'ASDf', NULL, NULL, NULL, 16);
INSERT INTO public.moon VALUES (19, 'SMH', NULL, NULL, NULL, 15);
INSERT INTO public.moon VALUES (20, 'LOL', NULL, NULL, NULL, 14);
INSERT INTO public.moon VALUES (21, 'Mario database', NULL, NULL, NULL, 13);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth 2', true, NULL, NULL, 2);
INSERT INTO public.planet VALUES (2, 'Earth-4', true, NULL, NULL, 4);
INSERT INTO public.planet VALUES (3, 'Mini pluto', false, NULL, NULL, 1);
INSERT INTO public.planet VALUES (4, 'Jupitus', false, NULL, NULL, 3);
INSERT INTO public.planet VALUES (5, 'False planet', false, NULL, NULL, 5);
INSERT INTO public.planet VALUES (6, 'Ayayay', true, NULL, NULL, 6);
INSERT INTO public.planet VALUES (7, 'SQLanet', true, NULL, NULL, 5);
INSERT INTO public.planet VALUES (8, 'Pythonium', true, NULL, NULL, 1);
INSERT INTO public.planet VALUES (9, 'Boolio', false, NULL, NULL, 1);
INSERT INTO public.planet VALUES (10, 'Truelio', false, NULL, NULL, 5);
INSERT INTO public.planet VALUES (11, 'Planet 9', true, NULL, NULL, 1);
INSERT INTO public.planet VALUES (12, 'Water planet', false, NULL, NULL, 5);
INSERT INTO public.planet VALUES (13, 'Earth-like thing', true, NULL, NULL, 2);
INSERT INTO public.planet VALUES (14, 'Javo', false, NULL, NULL, 3);
INSERT INTO public.planet VALUES (15, 'Javascripium', true, NULL, NULL, 2);
INSERT INTO public.planet VALUES (16, 'Another one', true, NULL, NULL, 1);
INSERT INTO public.planet VALUES (17, 'And another one', true, NULL, NULL, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'NGM129-2', 5, 3, 1);
INSERT INTO public.star VALUES (2, 'ASDF-2', 10, 20, 4);
INSERT INTO public.star VALUES (3, 'QWER-12', 22, 44, 1);
INSERT INTO public.star VALUES (4, 'Super M20', 40, 1, 5);
INSERT INTO public.star VALUES (5, 'Northen one', 300, 2, 3);
INSERT INTO public.star VALUES (6, 'Brighty-123', 10, 4, 5);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: galaxy_type_galaxy_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_type_galaxy_type_id_seq', 4, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 17, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy_type galaxy_type_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_type
    ADD CONSTRAINT galaxy_type_pkey PRIMARY KEY (galaxy_type_id);


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
-- Name: galaxy un; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT un UNIQUE (name);


--
-- Name: moon un_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT un_moon UNIQUE (name);


--
-- Name: planet un_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT un_planet UNIQUE (name);


--
-- Name: star un_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT un_star UNIQUE (name);


--
-- Name: galaxy_type unique_type; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_type
    ADD CONSTRAINT unique_type UNIQUE (name);


--
-- Name: star galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: galaxy galaxy_type_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_type_id FOREIGN KEY (galaxy_type_id) REFERENCES public.galaxy_type(galaxy_type_id);


--
-- Name: moon planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--
