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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: game_data; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.game_data (
    game_id integer NOT NULL,
    user_id integer,
    guesses integer
);


ALTER TABLE public.game_data OWNER TO freecodecamp;

--
-- Name: game_data_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.game_data_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.game_data_game_id_seq OWNER TO freecodecamp;

--
-- Name: game_data_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.game_data_game_id_seq OWNED BY public.game_data.game_id;


--
-- Name: user_data; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.user_data (
    user_id integer NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE public.user_data OWNER TO freecodecamp;

--
-- Name: user_data_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.user_data_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_data_user_id_seq OWNER TO freecodecamp;

--
-- Name: user_data_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.user_data_user_id_seq OWNED BY public.user_data.user_id;


--
-- Name: game_data game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.game_data ALTER COLUMN game_id SET DEFAULT nextval('public.game_data_game_id_seq'::regclass);


--
-- Name: user_data user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.user_data ALTER COLUMN user_id SET DEFAULT nextval('public.user_data_user_id_seq'::regclass);


--
-- Data for Name: game_data; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.game_data VALUES (1, 2, 524);
INSERT INTO public.game_data VALUES (2, 2, 359);
INSERT INTO public.game_data VALUES (3, 3, 293);
INSERT INTO public.game_data VALUES (4, 3, 189);
INSERT INTO public.game_data VALUES (5, 2, 780);
INSERT INTO public.game_data VALUES (6, 2, 353);
INSERT INTO public.game_data VALUES (7, 2, 81);
INSERT INTO public.game_data VALUES (8, 4, 716);
INSERT INTO public.game_data VALUES (9, 4, 262);
INSERT INTO public.game_data VALUES (10, 5, 891);
INSERT INTO public.game_data VALUES (11, 5, 276);
INSERT INTO public.game_data VALUES (12, 4, 936);
INSERT INTO public.game_data VALUES (13, 4, 945);
INSERT INTO public.game_data VALUES (14, 4, 410);


--
-- Data for Name: user_data; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.user_data VALUES (1, 'A');
INSERT INTO public.user_data VALUES (2, 'user_1670007252001');
INSERT INTO public.user_data VALUES (3, 'user_1670007252000');
INSERT INTO public.user_data VALUES (4, 'user_1670007394069');
INSERT INTO public.user_data VALUES (5, 'user_1670007394068');


--
-- Name: game_data_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.game_data_game_id_seq', 14, true);


--
-- Name: user_data_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.user_data_user_id_seq', 5, true);


--
-- Name: game_data game_data_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.game_data
    ADD CONSTRAINT game_data_pkey PRIMARY KEY (game_id);


--
-- Name: user_data user_data_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.user_data
    ADD CONSTRAINT user_data_name_key UNIQUE (name);


--
-- Name: user_data user_data_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.user_data
    ADD CONSTRAINT user_data_pkey PRIMARY KEY (user_id);


--
-- PostgreSQL database dump complete
--

