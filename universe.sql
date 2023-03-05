
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
-- Name: comet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.comet (
    comet_id integer NOT NULL,
    star_id integer,
    period numeric,
    name character varying(30) NOT NULL
);


ALTER TABLE public.comet OWNER TO freecodecamp;

--
-- Name: comets_comet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.comets_comet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comets_comet_id_seq OWNER TO freecodecamp;

--
-- Name: comets_comet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.comets_comet_id_seq OWNED BY public.comet.comet_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(30) NOT NULL,
    galaxy_id integer NOT NULL,
    description text,
    size integer,
    type character varying(60)
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
    description text,
    water boolean,
    name character varying(30) NOT NULL,
    size integer,
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
    satelites integer,
    life boolean,
    description text,
    star_id integer NOT NULL,
    name character varying(30) NOT NULL
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
    temperature numeric,
    description text,
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planets integer
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
-- Name: comet comet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet ALTER COLUMN comet_id SET DEFAULT nextval('public.comets_comet_id_seq'::regclass);


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
-- Data for Name: comet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.comet VALUES (1, 1, 79, 'Halley');
INSERT INTO public.comet VALUES (2, 1, 5.5, 'Tempel 1');
INSERT INTO public.comet VALUES (3, 1, 6.85, 'Borrelly');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Milky Way', 1, 'The Milky Way is a huge collection of stars, dust and gas. It''s called a spiral galaxy because if you could view it from the top or bottom, it would look like a spinning pinwheel. The Sun is located on one of the spiral arms, about 25,000 light-years away from the center of the galaxy.', 52850, 'spiral galaxy');
INSERT INTO public.galaxy VALUES ('Andromeda', 2, 'Andromeda is the closest big galaxy to the Milky Way and is expected to collide with the Milky Way around 4.5 billion years from now. The two will eventually merge into a single new galaxy called Milkdromeda.', 152000, 'barred spiral galaxy');
INSERT INTO public.galaxy VALUES ('Peekaboo', 3, 'Galaxy, relatively nearby, is considered one of the most metal-poor ("extremely metal-poor" (XMP)), least chemically enriched, and seemingly primordial, galaxies known.', 1200, ' irregular compact blue dwarf galaxy');
INSERT INTO public.galaxy VALUES ('Sombrero', 4, 'Similar in appearance to a sombrero.', 45000, 'peculiar galaxy');
INSERT INTO public.galaxy VALUES ('Small Magellanic Cloud', 5, 'This forms a pair with the LMC, and from recent research, may not be part of the Milky Way system of satellites at all.', 18900, 'dwarf irregular galaxy');
INSERT INTO public.galaxy VALUES ('Fireworks', 6, 'NGC 6946 has also been classified as a double-barred spiral galaxy, with the inner, smaller bar presumably responsible for funneling gas into its center.', 87300, ' intermediate spiral galaxy');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'The Moon is Earth''s only natural satellite. It is the fifth largest satellite in the Solar System and the largest and most massive relative to its parent planet, with a diameter about one-quarter that of Earth', true, 'Moon', 3500, 3);
INSERT INTO public.moon VALUES (2, 'Phobos is the innermost and larger of the two natural satellites of Mars', false, 'Phobos', 22, 4);
INSERT INTO public.moon VALUES (3, 'Deimos is the smaller and outermost of the two natural satellites of Mars', false, 'Deimos', 13, 4);
INSERT INTO public.moon VALUES (4, 'Thebe, also known as Jupiter XIV, is the fourth of Jupiter''s moons by distance from the planet.', false, 'Thebe', 98, 5);
INSERT INTO public.moon VALUES (5, 'Io, or Jupiter I, is the innermost and third-largest of the four Galilean moons of the planet Jupiter. Slightly larger than Earth''s moon, Io is the fourth-largest moon in the Solar System', false, 'Io', 3643, 5);
INSERT INTO public.moon VALUES (6, 'Europa, or Jupiter II, is the smallest of the four Galilean moons orbiting Jupiter, and the sixth-closest to the planet.', true, 'Europa', 3122, 1);
INSERT INTO public.moon VALUES (7, 'Ganymede, a satellite of Jupiter (Jupiter III), is the largest and most massive of the Solar System''s moons. The ninth-largest object (including the Sun) of the Solar System.', true, 'Ganymede', 5268, 5);
INSERT INTO public.moon VALUES (8, 'Callisto or Jupiter IV, is the second-largest moon of Jupiter', true, 'Callisto', 4821, 5);
INSERT INTO public.moon VALUES (9, 'Leda also known as Jupiter XIII, is a prograde irregular satellite of Jupiter.', false, 'Leda', 22, 5);
INSERT INTO public.moon VALUES (10, 'Mimas, also designated Saturn I, is a moon of Saturn discovered in 1789 by William Herschel.', true, 'Mimas', 396, 6);
INSERT INTO public.moon VALUES (11, 'Enceladus is the sixth-largest moon of Saturn (19th largest in the Solar System).', true, 'Enceladus', 504, 6);
INSERT INTO public.moon VALUES (12, 'Tethys, or Saturn III, is a mid-sized moon of Saturn', true, 'Tethys', 1062, 6);
INSERT INTO public.moon VALUES (13, 'Dione is a moon of Saturn. It was discovered by Italian astronomer Giovanni Domenico Cassini.', true, 'Dione', 1123, 6);
INSERT INTO public.moon VALUES (14, 'Rhea is the second-largest moon of Saturn and the ninth-largest moon in the Solar System.', true, 'Rhea', 1527, 6);
INSERT INTO public.moon VALUES (15, 'Titan is the largest moon of Saturn and the second-largest natural satellite in the Solar System. It is the only moon known to have a dense atmosphere, and is the only known object in space other than Earth on which clear evidence of stable bodies of surface liquid has been found.', true, 'Titan', 5149, 6);
INSERT INTO public.moon VALUES (16, 'Iapetus is a moon of Saturn. It is the 24th of Saturn''s 83 known moons.', true, 'Iapetus', 1470, 6);
INSERT INTO public.moon VALUES (17, 'Miranda, also designated Uranus V, is the smallest and innermost of Uranus''s five round satellites.', true, 'Miranda', 468, 7);
INSERT INTO public.moon VALUES (18, 'Umbriel is a moon of Uranus discovered on October 24, 1851, by William Lassell.', true, 'Umbriel', 1169, 7);
INSERT INTO public.moon VALUES (19, 'Triton is the largest natural satellite of the planet Neptune, and was the first Neptunian moon to be discovered.', true, 'Triton', 2707, 8);
INSERT INTO public.moon VALUES (20, 'Nereid, or Neptune II, is the third-largest moon of Neptune. It has the most eccentric orbit of all known moons in the Solar System.', true, 'Nereid', 357, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 0, false, 'Mercury is the smallest planet in the Solar System and the closest to the Sun.', 1, 'Mercury');
INSERT INTO public.planet VALUES (2, 0, false, 'Venus is the second planet from the Sun. It is sometimes called Earth''s "sister" or "twin" planet as it is almost as large and has a similar composition.', 1, 'Venus');
INSERT INTO public.planet VALUES (3, 1, true, 'Earth is the third planet from the Sun and the only place known in the universe where life has originated and found habitability.', 1, 'Earth');
INSERT INTO public.planet VALUES (4, 2, false, 'Mars is the fourth planet from the Sun and the second-smallest planet in the Solar System, larger only than Mercury.', 1, 'Mars');
INSERT INTO public.planet VALUES (6, 83, false, 'Saturn is the sixth planet from the Sun and the second-largest in the Solar System, after Jupiter. It is a gas giant with an average radius of about nine and a half times that of Earth.', 1, 'Saturn');
INSERT INTO public.planet VALUES (5, 95, false, 'Jupiter is the fifth planet from the Sun and the largest in the Solar System. It is a gas giant with a mass more than two and a half times that of all the other planets in the Solar System combined, and slightly less than one one-thousandth the mass of the Sun.', 1, 'Jupiter');
INSERT INTO public.planet VALUES (7, 27, false, 'Uranus is the seventh planet from the Sun, it has the third-largest planetary radius and fourth-largest planetary mass in the Solar System. ', 1, 'Uranus');
INSERT INTO public.planet VALUES (8, 14, false, 'Neptune is the eighth planet from the Sun and the farthest known planet in the Solar System. It is the fourth-largest planet in the Solar System by diameter, the third-most-massive planet, and the densest giant planet.', 1, 'Neptune');
INSERT INTO public.planet VALUES (9, 0, false, 'Proxima Centauri b is the biggest planet in the Proxima Centauri system.', 2, 'Proxima Centauri b');
INSERT INTO public.planet VALUES (10, 0, false, 'Proxima Centauri d is the closest planet in the Proxima Centauri system.', 2, 'Proxima Centauri d');
INSERT INTO public.planet VALUES (11, 0, false, 'Barnard''Star b is a exoplanet in the Barnard''Star system.', 3, 'Barnard''Star b');
INSERT INTO public.planet VALUES (12, 0, false, 'Wolf 359 b is a exoplanet in the Wolf 359 system.', 1, 'Wolf 359 b');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 5772, 'The Sun is a G-type main-sequence star that constitutes about 99.86% of the mass of the Solar System.', 1, 'Sun', 8);
INSERT INTO public.star VALUES (2, 2992, 'Proxima Centauri is a small, low-mass star located 4.2465 light-years (1.3020 pc) away from the Sun in the southern constellation of Centaurus.', 1, 'Proxima Centauri', 3);
INSERT INTO public.star VALUES (3, 3100, 'small red dwarf star in the constellation of Ophiuchus. At a distance of 5.96 light-years (1.83 pc) from Earth', 1, 'Barnard''s Star', 3);
INSERT INTO public.star VALUES (4, 2800, ' red dwarf star located in the constellation Leo, near the ecliptic. At a distance of approximately 7.9 light years from Earth', 1, 'Wolf 359', 1);
INSERT INTO public.star VALUES (5, 9940, 'Sirius is the brightest star in the night sky.', 1, 'Sirius', 0);
INSERT INTO public.star VALUES (6, 5000, 'Epsilon Eridani, formally named Ran is a star in the southern constellation of Eridanus.', 1, 'Epsilon Eridani', 3);


--
-- Name: comets_comet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.comets_comet_id_seq', 1, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: comet comet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_name_key UNIQUE (name);


--
-- Name: comet comets_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comets_pkey PRIMARY KEY (comet_id);


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
-- Name: comet comets_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comets_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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

