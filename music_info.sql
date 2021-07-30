--
-- PostgreSQL database dump
--

-- Dumped from database version 13.3
-- Dumped by pg_dump version 13.3

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
-- Name: movies; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.movies (
    movie_id integer NOT NULL,
    movie_name character varying NOT NULL,
    release_year smallint,
    category character varying
);


ALTER TABLE public.movies OWNER TO postgres;

--
-- Name: movies_movie_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.movies_movie_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.movies_movie_id_seq OWNER TO postgres;

--
-- Name: movies_movie_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.movies_movie_id_seq OWNED BY public.movies.movie_id;


--
-- Name: movies movie_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movies ALTER COLUMN movie_id SET DEFAULT nextval('public.movies_movie_id_seq'::regclass);


--
-- Data for Name: movies; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.movies (movie_id, movie_name, release_year, category) FROM stdin;
1	Forrest Gump	1994	Drama, Romance
2	Fight Club	1999	Drama
3	Inception	2010	Action, Adventure, Sci-Fi
4	WALL-E	2008	Animation, Adventure, Family
5	Hidden Figures	2017	History, Drama
6	In The Heights	2021	Musical
7	Paris Is Burning	1990	Documentary
8	Minions	2015	Comedy
9	Casablanca	1942	Drama
10	Wonder Woman	2017	Action
11	A Star Is Born	2018	Romance
12	The Wizard of Oz	1939	Musical, Family
13	Get Out	2017	Mystery, Thriller, Comedy
14	The Godfather	1972	Crime, Drama
15	Dunkirk	2017	History
16	Singin In The Rain	1952	Musical, Comedy
17	Star Ward: The Last Jedi	2017	Action, Sci-Fi
18	The Big Sick	2017	Romance
19	E.T. The Extra-Terrestrial	1982	Adventure, Sci-Fi
20	King Kong	1933	Adventure, Fantasy
21	La La Land	\N	Musical
22	Incredibles 2	2018	\N
\.


--
-- Name: movies_movie_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.movies_movie_id_seq', 1, false);


--
-- Name: movies movies_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.movies
    ADD CONSTRAINT movies_pkey PRIMARY KEY (movie_id);


--
-- PostgreSQL database dump complete
--

