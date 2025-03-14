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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    guesses integer NOT NULL,
    user_id integer
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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(25) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 869, 1);
INSERT INTO public.games VALUES (2, 199, 1);
INSERT INTO public.games VALUES (3, 887, 2);
INSERT INTO public.games VALUES (4, 418, 2);
INSERT INTO public.games VALUES (5, 330, 1);
INSERT INTO public.games VALUES (6, 861, 1);
INSERT INTO public.games VALUES (7, 509, 1);
INSERT INTO public.games VALUES (8, 901, 3);
INSERT INTO public.games VALUES (9, 754, 3);
INSERT INTO public.games VALUES (10, 714, 4);
INSERT INTO public.games VALUES (11, 868, 4);
INSERT INTO public.games VALUES (12, 597, 3);
INSERT INTO public.games VALUES (13, 25, 3);
INSERT INTO public.games VALUES (14, 233, 3);
INSERT INTO public.games VALUES (15, 978, 5);
INSERT INTO public.games VALUES (16, 604, 5);
INSERT INTO public.games VALUES (17, 601, 6);
INSERT INTO public.games VALUES (18, 656, 6);
INSERT INTO public.games VALUES (19, 295, 5);
INSERT INTO public.games VALUES (20, 364, 5);
INSERT INTO public.games VALUES (21, 473, 5);
INSERT INTO public.games VALUES (22, 571, 7);
INSERT INTO public.games VALUES (23, 849, 7);
INSERT INTO public.games VALUES (24, 353, 8);
INSERT INTO public.games VALUES (25, 600, 8);
INSERT INTO public.games VALUES (26, 347, 7);
INSERT INTO public.games VALUES (27, 361, 7);
INSERT INTO public.games VALUES (28, 435, 7);
INSERT INTO public.games VALUES (29, 197, 9);
INSERT INTO public.games VALUES (30, 377, 9);
INSERT INTO public.games VALUES (31, 532, 10);
INSERT INTO public.games VALUES (32, 603, 10);
INSERT INTO public.games VALUES (33, 550, 9);
INSERT INTO public.games VALUES (34, 634, 9);
INSERT INTO public.games VALUES (35, 19, 9);
INSERT INTO public.games VALUES (36, 889, 11);
INSERT INTO public.games VALUES (37, 556, 11);
INSERT INTO public.games VALUES (38, 970, 12);
INSERT INTO public.games VALUES (39, 858, 12);
INSERT INTO public.games VALUES (40, 688, 11);
INSERT INTO public.games VALUES (41, 147, 11);
INSERT INTO public.games VALUES (42, 195, 11);
INSERT INTO public.games VALUES (43, 74, 13);
INSERT INTO public.games VALUES (44, 86, 13);
INSERT INTO public.games VALUES (45, 281, 14);
INSERT INTO public.games VALUES (46, 441, 14);
INSERT INTO public.games VALUES (47, 231, 13);
INSERT INTO public.games VALUES (48, 507, 13);
INSERT INTO public.games VALUES (49, 51, 13);
INSERT INTO public.games VALUES (50, 177, 15);
INSERT INTO public.games VALUES (51, 983, 15);
INSERT INTO public.games VALUES (52, 110, 16);
INSERT INTO public.games VALUES (53, 240, 16);
INSERT INTO public.games VALUES (54, 347, 15);
INSERT INTO public.games VALUES (55, 231, 15);
INSERT INTO public.games VALUES (56, 256, 15);
INSERT INTO public.games VALUES (57, 175, 17);
INSERT INTO public.games VALUES (58, 358, 17);
INSERT INTO public.games VALUES (59, 104, 18);
INSERT INTO public.games VALUES (60, 136, 18);
INSERT INTO public.games VALUES (61, 854, 17);
INSERT INTO public.games VALUES (62, 343, 17);
INSERT INTO public.games VALUES (63, 943, 17);
INSERT INTO public.games VALUES (64, 834, 19);
INSERT INTO public.games VALUES (65, 637, 19);
INSERT INTO public.games VALUES (66, 756, 20);
INSERT INTO public.games VALUES (67, 952, 20);
INSERT INTO public.games VALUES (68, 936, 19);
INSERT INTO public.games VALUES (69, 261, 19);
INSERT INTO public.games VALUES (70, 958, 19);
INSERT INTO public.games VALUES (71, 682, 21);
INSERT INTO public.games VALUES (72, 722, 21);
INSERT INTO public.games VALUES (73, 446, 22);
INSERT INTO public.games VALUES (74, 810, 22);
INSERT INTO public.games VALUES (75, 711, 21);
INSERT INTO public.games VALUES (76, 463, 21);
INSERT INTO public.games VALUES (77, 119, 21);
INSERT INTO public.games VALUES (78, 1001, 23);
INSERT INTO public.games VALUES (79, 223, 23);
INSERT INTO public.games VALUES (80, 989, 24);
INSERT INTO public.games VALUES (81, 944, 24);
INSERT INTO public.games VALUES (82, 123, 23);
INSERT INTO public.games VALUES (83, 681, 23);
INSERT INTO public.games VALUES (84, 198, 23);
INSERT INTO public.games VALUES (85, 959, 25);
INSERT INTO public.games VALUES (86, 415, 25);
INSERT INTO public.games VALUES (87, 142, 26);
INSERT INTO public.games VALUES (88, 195, 26);
INSERT INTO public.games VALUES (89, 502, 25);
INSERT INTO public.games VALUES (90, 696, 25);
INSERT INTO public.games VALUES (91, 904, 25);
INSERT INTO public.games VALUES (92, 848, 27);
INSERT INTO public.games VALUES (93, 724, 27);
INSERT INTO public.games VALUES (94, 69, 28);
INSERT INTO public.games VALUES (95, 659, 28);
INSERT INTO public.games VALUES (96, 89, 27);
INSERT INTO public.games VALUES (97, 689, 27);
INSERT INTO public.games VALUES (98, 740, 27);
INSERT INTO public.games VALUES (99, 469, 29);
INSERT INTO public.games VALUES (100, 77, 29);
INSERT INTO public.games VALUES (101, 836, 30);
INSERT INTO public.games VALUES (102, 345, 30);
INSERT INTO public.games VALUES (103, 930, 29);
INSERT INTO public.games VALUES (104, 808, 29);
INSERT INTO public.games VALUES (105, 943, 29);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1741922216692');
INSERT INTO public.users VALUES (2, 'user_1741922216691');
INSERT INTO public.users VALUES (3, 'user_1741922266913');
INSERT INTO public.users VALUES (4, 'user_1741922266912');
INSERT INTO public.users VALUES (5, 'user_1741922269703');
INSERT INTO public.users VALUES (6, 'user_1741922269702');
INSERT INTO public.users VALUES (7, 'user_1741922271632');
INSERT INTO public.users VALUES (8, 'user_1741922271631');
INSERT INTO public.users VALUES (9, 'user_1741922273671');
INSERT INTO public.users VALUES (10, 'user_1741922273670');
INSERT INTO public.users VALUES (11, 'user_1741922275520');
INSERT INTO public.users VALUES (12, 'user_1741922275519');
INSERT INTO public.users VALUES (13, 'user_1741922277631');
INSERT INTO public.users VALUES (14, 'user_1741922277630');
INSERT INTO public.users VALUES (15, 'user_1741922279723');
INSERT INTO public.users VALUES (16, 'user_1741922279722');
INSERT INTO public.users VALUES (17, 'user_1741922281581');
INSERT INTO public.users VALUES (18, 'user_1741922281580');
INSERT INTO public.users VALUES (19, 'user_1741922285441');
INSERT INTO public.users VALUES (20, 'user_1741922285440');
INSERT INTO public.users VALUES (21, 'user_1741922463049');
INSERT INTO public.users VALUES (22, 'user_1741922463048');
INSERT INTO public.users VALUES (23, 'user_1741922837716');
INSERT INTO public.users VALUES (24, 'user_1741922837715');
INSERT INTO public.users VALUES (25, 'user_1741922850872');
INSERT INTO public.users VALUES (26, 'user_1741922850871');
INSERT INTO public.users VALUES (27, 'user_1741923056656');
INSERT INTO public.users VALUES (28, 'user_1741923056655');
INSERT INTO public.users VALUES (29, 'user_1741923252146');
INSERT INTO public.users VALUES (30, 'user_1741923252145');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 105, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 30, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

