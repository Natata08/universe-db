--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

SET statement_timeout = 0;

SET lock_timeout = 0;

SET idle_in_transaction_session_timeout = 0;

SET client_encoding = 'UTF8';

SET standard_conforming_strings = ON;

SELECT pg_catalog.set_config ('search_path', '', FALSE);

SET check_function_bodies = FALSE;

SET xmloption = content;

SET client_min_messages = warning;

SET row_security = off;

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe
WITH
    TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';

ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe SET statement_timeout = 0;

SET lock_timeout = 0;

SET idle_in_transaction_session_timeout = 0;

SET client_encoding = 'UTF8';

SET standard_conforming_strings = ON;

SELECT pg_catalog.set_config ('search_path', '', FALSE);

SET check_function_bodies = FALSE;

SET xmloption = content;

SET client_min_messages = warning;

SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    asteroid_id integer NOT NULL,
    name character varying(50) NOT NULL,
    diameter integer,
    is_potentially_hazardous boolean NOT NULL,
    distance_from_earth numeric
);

ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroid_asteroid_id_seq AS integer START
WITH
    1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

ALTER TABLE public.asteroid_asteroid_id_seq OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroid_asteroid_id_seq OWNED BY public.asteroid.asteroid_id;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    age_in_millions_of_years numeric,
    has_life boolean NOT NULL,
    galaxy_type character varying(30) NOT NULL,
    number_of_stars integer
);

ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq AS integer START
WITH
    1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

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
    name character varying(50) NOT NULL,
    planet_id integer,
    is_spherical boolean NOT NULL,
    diameter integer,
    distance_from_planet numeric
);

ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq AS integer START
WITH
    1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

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
    name character varying(50) NOT NULL,
    star_id integer,
    planet_type character varying(30) NOT NULL,
    has_atmosphere boolean NOT NULL,
    distance_from_star numeric,
    number_of_moons integer
);

ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq AS integer START
WITH
    1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

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
    name character varying(50) NOT NULL,
    galaxy_id integer,
    age_in_millions_of_years numeric,
    is_spherical boolean NOT NULL,
    temperature integer,
    color character varying(20)
);

ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq AS integer START
WITH
    1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE CACHE 1;

ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;

--
-- Name: asteroid asteroid_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid ALTER COLUMN asteroid_id SET DEFAULT nextval('public.asteroid_asteroid_id_seq'::regclass);

--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);

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
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO
    public.asteroid
VALUES (
        1,
        'Ceres',
        939,
        FALSE,
        413248000
    );

INSERT INTO
    public.asteroid
VALUES (
        2,
        'Vesta',
        525,
        FALSE,
        353804000
    );

INSERT INTO public.asteroid VALUES ( 3, 'Eros', 16, TRUE, 222731000 );

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO
    public.galaxy
VALUES (
        1,
        'Milky Way',
        'Our home galaxy',
        13600,
        TRUE,
        'Spiral',
        40000
    );

INSERT INTO
    public.galaxy
VALUES (
        2,
        'Andromeda',
        'Nearest spiral galaxy to Milky Way',
        10000,
        FALSE,
        'Spiral',
        10000
    );

INSERT INTO
    public.galaxy
VALUES (
        3,
        'Triangulum',
        'Third-largest galaxy in the Local Group',
        5000,
        FALSE,
        'Spiral',
        40000
    );

INSERT INTO
    public.galaxy
VALUES (
        4,
        'Centaurus A',
        'Peculiar galaxy with active galactic nucleus',
        13270,
        FALSE,
        'Elliptical',
        10000
    );

INSERT INTO
    public.galaxy
VALUES (
        5,
        'Sombrero',
        'Unusual galaxy with a large bulge',
        13250,
        FALSE,
        'Spiral',
        10000
    );

INSERT INTO
    public.galaxy
VALUES (
        6,
        'Whirlpool',
        'Interacting grand-design spiral galaxy',
        400,
        FALSE,
        'Spiral',
        10000
    );

--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ( 1, 'Moon', 1, TRUE, 3474, 384400 );

INSERT INTO public.moon VALUES ( 2, 'Phobos', 2, FALSE, 22, 9377 );

INSERT INTO public.moon VALUES ( 3, 'Deimos', 2, FALSE, 13, 23460 );

INSERT INTO public.moon VALUES ( 4, 'Io', 3, TRUE, 3642, 421700 );

INSERT INTO public.moon VALUES ( 5, 'Europa', 3, TRUE, 3122, 671100 );

INSERT INTO
    public.moon
VALUES (
        6,
        'Ganymede',
        3,
        TRUE,
        5268,
        1070400
    );

INSERT INTO
    public.moon
VALUES (
        7,
        'Callisto',
        3,
        TRUE,
        4821,
        1882700
    );

INSERT INTO public.moon VALUES ( 8, 'Titan', 4, TRUE, 5150, 1221870 );

INSERT INTO
    public.moon
VALUES (
        9,
        'Enceladus',
        4,
        TRUE,
        504,
        238040
    );

INSERT INTO public.moon VALUES ( 10, 'Mimas', 4, TRUE, 396, 185540 );

INSERT INTO public.moon VALUES ( 11, 'Triton', 6, TRUE, 2707, 354760 );

INSERT INTO public.moon VALUES ( 12, 'Charon', 8, TRUE, 1212, 19571 );

INSERT INTO public.moon VALUES ( 13, 'Oberon', 8, TRUE, 1523, 583520 );

INSERT INTO
    public.moon
VALUES (
        14,
        'Titania',
        8,
        TRUE,
        1578,
        435910
    );

INSERT INTO public.moon VALUES ( 15, 'Miranda', 8, TRUE, 472, 129390 );

INSERT INTO public.moon VALUES ( 16, 'Ariel', 8, TRUE, 1158, 190900 );

INSERT INTO
    public.moon
VALUES (
        17,
        'Umbriel',
        8,
        TRUE,
        1169,
        266000
    );

INSERT INTO public.moon VALUES ( 18, 'Dione', 4, TRUE, 1123, 377400 );

INSERT INTO public.moon VALUES ( 19, 'Tethys', 4, TRUE, 1062, 294660 );

INSERT INTO
    public.moon
VALUES (
        20,
        'Iapetus',
        4,
        TRUE,
        1469,
        3560820
    );

--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO
    public.planet
VALUES (
        1,
        'Earth',
        1,
        'Terrestrial',
        TRUE,
        1,
        1
    );

INSERT INTO
    public.planet
VALUES (
        2,
        'Mars',
        1,
        'Terrestrial',
        TRUE,
        1.52,
        2
    );

INSERT INTO
    public.planet
VALUES (
        3,
        'Jupiter',
        1,
        'Gas Giant',
        TRUE,
        5.2,
        79
    );

INSERT INTO
    public.planet
VALUES (
        4,
        'Saturn',
        1,
        'Gas Giant',
        TRUE,
        9.5,
        82
    );

INSERT INTO
    public.planet
VALUES (
        5,
        'Venus',
        1,
        'Terrestrial',
        TRUE,
        0.72,
        0
    );

INSERT INTO
    public.planet
VALUES (
        6,
        'Neptune',
        1,
        'Ice Giant',
        TRUE,
        30.1,
        14
    );

INSERT INTO
    public.planet
VALUES (
        7,
        'Mercury',
        1,
        'Terrestrial',
        FALSE,
        0.39,
        0
    );

INSERT INTO
    public.planet
VALUES (
        8,
        'Uranus',
        1,
        'Ice Giant',
        TRUE,
        19.2,
        27
    );

INSERT INTO
    public.planet
VALUES (
        9,
        'Kepler-186f',
        2,
        'Super-Earth',
        TRUE,
        0.35,
        0
    );

INSERT INTO
    public.planet
VALUES (
        10,
        'HD 209458 b',
        3,
        'Hot Jupiter',
        TRUE,
        0.047,
        0
    );

INSERT INTO
    public.planet
VALUES (
        11,
        'Gliese 581g',
        4,
        'Super-Earth',
        TRUE,
        0.13,
        0
    );

INSERT INTO
    public.planet
VALUES (
        12,
        'TRAPPIST-1e',
        5,
        'Terrestrial',
        TRUE,
        0.028,
        0
    );

--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO
    public.star
VALUES (
        1,
        'Sun',
        1,
        4600,
        TRUE,
        5778,
        'Yellow'
    );

INSERT INTO
    public.star
VALUES (
        2,
        'Proxima Centauri',
        1,
        4850,
        TRUE,
        3042,
        'Red'
    );

INSERT INTO
    public.star
VALUES (
        3,
        'Betelgeuse',
        1,
        10,
        FALSE,
        3500,
        'Red'
    );

INSERT INTO
    public.star
VALUES (
        4,
        'Sirius',
        1,
        242,
        TRUE,
        9940,
        'Blue-white'
    );

INSERT INTO
    public.star
VALUES (
        5,
        'Alpha Centauri A',
        1,
        5300,
        TRUE,
        5790,
        'Yellow'
    );

INSERT INTO
    public.star
VALUES (
        6,
        'Vega',
        1,
        455,
        TRUE,
        9602,
        'Blue-white'
    );

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval ( 'public.asteroid_asteroid_id_seq', 3, TRUE );

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval ( 'public.galaxy_galaxy_id_seq', 6, TRUE );

--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval ( 'public.moon_moon_id_seq', 20, TRUE );

--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval ( 'public.planet_planet_id_seq', 12, TRUE );

--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval ( 'public.star_star_id_seq', 6, TRUE );

--
-- Name: asteroid asteroid_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
ADD CONSTRAINT asteroid_name_key UNIQUE (name);

--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);

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
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet (planet_id);

--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star (star_id);

--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy (galaxy_id);

--
-- PostgreSQL database dump complete
--