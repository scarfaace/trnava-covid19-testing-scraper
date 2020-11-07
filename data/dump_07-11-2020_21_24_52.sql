--
-- PostgreSQL database cluster dump
--

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Drop databases
--





--
-- Drop roles
--

DROP ROLE postgres;


--
-- Roles
--

CREATE ROLE postgres;
ALTER ROLE postgres WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS PASSWORD 'md579989613c3c1343e391ff955d12a1e3a';






--
-- Database creation
--

REVOKE CONNECT,TEMPORARY ON DATABASE template1 FROM PUBLIC;
GRANT CONNECT ON DATABASE template1 TO PUBLIC;


\connect postgres

SET default_transaction_read_only = off;

--
-- PostgreSQL database dump
--

-- Dumped from database version 10.12 (Debian 10.12-2.pgdg90+1)
-- Dumped by pg_dump version 10.12 (Debian 10.12-2.pgdg90+1)

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

--
-- Name: DATABASE postgres; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE postgres IS 'default administrative connection database';


--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: odberove_miesto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.odberove_miesto (
    om_id character varying(255),
    om_name character varying(1023),
    actual_waiting_number character varying(255),
    last_update character varying(255),
    db_insert_time timestamp without time zone
);


ALTER TABLE public.odberove_miesto OWNER TO postgres;

--
-- Data for Name: odberove_miesto; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.odberove_miesto (om_id, om_name, actual_waiting_number, last_update, db_insert_time) FROM stdin;
OM 1	Radnica, Hlavná 1	50	11:01:23	2020-10-31 11:01:39.922461
OM 2	Mestský úrad v Trnave, Trhová 3	60	10:37:14	2020-10-31 11:01:39.922461
OM 3	Arcibiskupské gymnázium biskupa P. Jantauscha, Hollého 9	40	10:47:59	2020-10-31 11:01:39.922461
OM 4	Kino Hviezda, Paulínska 1	50	09:55:26	2020-10-31 11:01:39.922461
OM 5	Súkromná stredná odborná škola GOS, Ferka Urbánka 19	20	10:54:31	2020-10-31 11:01:39.922461
OM 6	Stredná priemyselná škola dopravná, Študentská 23	80	09:44:27	2020-10-31 11:01:39.922461
OM 7	Stredná priemyselná škola, Komenského 1	70	10:40:40	2020-10-31 11:01:39.922461
OM 8	Základná škola, Andreja Kubinu 34	40	10:14:24	2020-10-31 11:01:39.922461
OM 9	Stredná priemyselná škola, Komenského 1	60	10:39:11	2020-10-31 11:01:39.922461
OM 10	SPŠ stavebná Dušana S. Jurkoviča, Lomonosovova 7	80	09:09:52	2020-10-31 11:01:39.922461
OM 11 A	Základná umelecká škola, Mozartova 10 *	40	10:19:05	2020-10-31 11:01:39.922461
OM 11 B	Základná umelecká škola, Mozartova 10 *	40	10:19:09	2020-10-31 11:01:39.922461
OM 12	Základná umelecká škola, Mozartova 10 *	40	10:19:12	2020-10-31 11:01:39.922461
OM 13	Základná škola, Kornela Mahra 11 *	30	10:49:48	2020-10-31 11:01:39.922461
OM 14	Základná škola, Kornela Mahra 11 *	30	10:49:52	2020-10-31 11:01:39.922461
OM 15 A	Základná škola, Jána Bottu 27 *	30	10:17:38	2020-10-31 11:01:39.922461
OM 15 B	Základná škola, Jána Bottu 27 *	30	10:17:43	2020-10-31 11:01:39.922461
OM 16 A	Základná škola, Andreja Kubinu 34 *	60	10:30:23	2020-10-31 11:01:39.922461
OM 16 B	Základná škola, Andreja Kubinu 34 *	60	10:30:28	2020-10-31 11:01:39.922461
OM 17	Univerzita sv. Cyrila a Metoda, Námestie Jozefa Herdu 2	50	10:43:15	2020-10-31 11:01:39.922461
OM 18 A	Obchodná akadémia, Kukučínova 2 *	25	10:41:26	2020-10-31 11:01:39.922461
OM 18 B	Obchodná akadémia, Kukučínova 2 *	25	10:43:06	2020-10-31 11:01:39.922461
OM 19	Kultúrny dom CUBE, Ľudová 12	80	09:10:10	2020-10-31 11:01:39.922461
OM 20 A	Základná škola, Atómová 1 *	30	10:19:58	2020-10-31 11:01:39.922461
OM 20 B	Základná škola, Atómová 1 *	30	10:19:58	2020-10-31 11:01:39.922461
OM 21	Základná škola, Atómová 1 *	40	10:20:00	2020-10-31 11:01:39.922461
OM 22 A	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	50	10:07:55	2020-10-31 11:01:39.922461
OM 22 B	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	50	10:07:59	2020-10-31 11:01:39.922461
OM 23	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	60	10:46:09	2020-10-31 11:01:39.922461
OM 24	Stredná odborná škola elektrotechnická, Sibírska 1	70	10:58:36	2020-10-31 11:01:39.922461
OM 25	Súkromná SOŠ polytechnická DSA, Koniarekova 15	80 a viac	09:10:21	2020-10-31 11:01:39.922461
OM 26	Stredná zdravotnícka škola, Daxnerova 6	40	10:36:34	2020-10-31 11:01:39.922461
OM 27 A	Základná škola, Spartakovská 5 *	80	10:40:55	2020-10-31 11:01:39.922461
OM 27 B	Základná škola, Spartakovská 5 *	50	10:40:56	2020-10-31 11:01:39.922461
OM 28 A	Základná škola, Spartakovská 5 *	60	10:40:57	2020-10-31 11:01:39.922461
OM 28 B	Základná škola, Spartakovská 5 *	50	10:40:57	2020-10-31 11:01:39.922461
OM 29 A	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	60	10:35:35	2020-10-31 11:01:39.922461
OM 29 B	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	60	10:35:36	2020-10-31 11:01:39.922461
OM 30 A	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	60	10:35:36	2020-10-31 11:01:39.922461
OM 30 B	Mestský zimný štadión, Spartakovská 1B (vchod od Hokejky) *	60	10:35:37	2020-10-31 11:01:39.922461
OM 31 A	Základná škola, V Jame 3 *	30	10:54:03	2020-10-31 11:01:39.922461
OM 31 B	Základná škola, V Jame 3 *	30	10:54:09	2020-10-31 11:01:39.922461
OM 32	Základná škola, V Jame 3 *	30	10:54:13	2020-10-31 11:01:39.922461
OM 33 A	Základná škola, Maxima Gorkého 21 *	35	10:31:45	2020-10-31 11:01:39.922461
OM 33 B	Základná škola, Maxima Gorkého 21 *	35	10:31:41	2020-10-31 11:01:39.922461
OM 34 A	Základná škola, Maxima Gorkého 21 *	35	10:31:51	2020-10-31 11:01:39.922461
OM 34 B	Základná škola, Maxima Gorkého 21 *	35	10:31:55	2020-10-31 11:01:39.922461
OM 35 A	Súkromná základná škola BESST, Limbová 3 *	35	10:35:10	2020-10-31 11:01:39.922461
OM 35 B	Súkromná základná škola BESST, Limbová 3 *	35	10:35:13	2020-10-31 11:01:39.922461
OM 36 A	Súkromná základná škola BESST, Limbová 3 *	35	10:35:17	2020-10-31 11:01:39.922461
OM 36 B	Súkromná základná škola BESST, Limbová 3 *	35	10:35:24	2020-10-31 11:01:39.922461
OM 37	Trnavská univerzita v Trnave, Pedagogická fakulta, Priemyselná 4	75	11:00:31	2020-10-31 11:01:39.922461
OM 38 A	Kultúrny dom, Sereďská 131, Modranka *	20	10:47:42	2020-10-31 11:01:39.922461
OM 38 B	Kultúrny dom, Sereďská 131, Modranka *	20	10:47:55	2020-10-31 11:01:39.922461
OM 39	Mestská športová hala, Rybníková 576 (ľudia s prechodným pobytom, cudzinci)	200	10:52:16	2020-10-31 11:01:39.922461
OM 1	Radnica, Hlavná 1	50	11:01:23	2020-10-31 11:11:02.888105
OM 2	Mestský úrad v Trnave, Trhová 3	60	10:37:14	2020-10-31 11:11:02.888105
OM 3	Arcibiskupské gymnázium biskupa P. Jantauscha, Hollého 9	40	10:47:59	2020-10-31 11:11:02.888105
OM 4	Kino Hviezda, Paulínska 1	50	09:55:26	2020-10-31 11:11:02.888105
OM 5	Súkromná stredná odborná škola GOS, Ferka Urbánka 19	20	10:54:31	2020-10-31 11:11:02.888105
OM 6	Stredná priemyselná škola dopravná, Študentská 23	80	09:44:27	2020-10-31 11:11:02.888105
OM 7	Stredná priemyselná škola, Komenského 1	70	10:40:40	2020-10-31 11:11:02.888105
OM 8	Základná škola, Andreja Kubinu 34	40	10:14:24	2020-10-31 11:11:02.888105
OM 9	Stredná priemyselná škola, Komenského 1	40	11:05:46	2020-10-31 11:11:02.888105
OM 10	SPŠ stavebná Dušana S. Jurkoviča, Lomonosovova 7	80	09:09:52	2020-10-31 11:11:02.888105
OM 11 A	Základná umelecká škola, Mozartova 10 *	40	10:19:05	2020-10-31 11:11:02.888105
OM 11 B	Základná umelecká škola, Mozartova 10 *	40	10:19:09	2020-10-31 11:11:02.888105
OM 12	Základná umelecká škola, Mozartova 10 *	40	10:19:12	2020-10-31 11:11:02.888105
OM 13	Základná škola, Kornela Mahra 11 *	40	11:05:50	2020-10-31 11:11:02.888105
OM 14	Základná škola, Kornela Mahra 11 *	40	11:05:53	2020-10-31 11:11:02.888105
OM 15 A	Základná škola, Jána Bottu 27 *	50	11:06:23	2020-10-31 11:11:02.888105
OM 15 B	Základná škola, Jána Bottu 27 *	50	11:06:26	2020-10-31 11:11:02.888105
OM 16 A	Základná škola, Andreja Kubinu 34 *	60	10:30:23	2020-10-31 11:11:02.888105
OM 16 B	Základná škola, Andreja Kubinu 34 *	60	10:30:28	2020-10-31 11:11:02.888105
OM 17	Univerzita sv. Cyrila a Metoda, Námestie Jozefa Herdu 2	50	10:43:15	2020-10-31 11:11:02.888105
OM 18 A	Obchodná akadémia, Kukučínova 2 *	25	10:41:26	2020-10-31 11:11:02.888105
OM 18 B	Obchodná akadémia, Kukučínova 2 *	25	10:43:06	2020-10-31 11:11:02.888105
OM 19	Kultúrny dom CUBE, Ľudová 12	45	11:04:41	2020-10-31 11:11:02.888105
OM 20 A	Základná škola, Atómová 1 *	30	10:19:58	2020-10-31 11:11:02.888105
OM 20 B	Základná škola, Atómová 1 *	30	10:19:58	2020-10-31 11:11:02.888105
OM 21	Základná škola, Atómová 1 *	40	10:20:00	2020-10-31 11:11:02.888105
OM 22 A	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	50	10:07:55	2020-10-31 11:11:02.888105
OM 22 B	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	50	10:07:59	2020-10-31 11:11:02.888105
OM 23	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	60	10:46:09	2020-10-31 11:11:02.888105
OM 24	Stredná odborná škola elektrotechnická, Sibírska 1	70	10:58:36	2020-10-31 11:11:02.888105
OM 25	Súkromná SOŠ polytechnická DSA, Koniarekova 15	80 a viac	09:10:21	2020-10-31 11:11:02.888105
OM 26	Stredná zdravotnícka škola, Daxnerova 6	40	10:36:34	2020-10-31 11:11:02.888105
OM 27 A	Základná škola, Spartakovská 5 *	80	10:40:55	2020-10-31 11:11:02.888105
OM 27 B	Základná škola, Spartakovská 5 *	50	10:40:56	2020-10-31 11:11:02.888105
OM 28 A	Základná škola, Spartakovská 5 *	60	10:40:57	2020-10-31 11:11:02.888105
OM 28 B	Základná škola, Spartakovská 5 *	50	10:40:57	2020-10-31 11:11:02.888105
OM 29 A	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	60	10:35:35	2020-10-31 11:11:02.888105
OM 29 B	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	60	10:35:36	2020-10-31 11:11:02.888105
OM 30 A	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	60	10:35:36	2020-10-31 11:11:02.888105
OM 30 B	Mestský zimný štadión, Spartakovská 1B (vchod od Hokejky) *	60	10:35:37	2020-10-31 11:11:02.888105
OM 31 A	Základná škola, V Jame 3 *	30	10:54:03	2020-10-31 11:11:02.888105
OM 31 B	Základná škola, V Jame 3 *	30	10:54:09	2020-10-31 11:11:02.888105
OM 32	Základná škola, V Jame 3 *	30	10:54:13	2020-10-31 11:11:02.888105
OM 33 A	Základná škola, Maxima Gorkého 21 *	35	10:31:45	2020-10-31 11:11:02.888105
OM 33 B	Základná škola, Maxima Gorkého 21 *	35	10:31:41	2020-10-31 11:11:02.888105
OM 34 A	Základná škola, Maxima Gorkého 21 *	35	10:31:51	2020-10-31 11:11:02.888105
OM 34 B	Základná škola, Maxima Gorkého 21 *	35	10:31:55	2020-10-31 11:11:02.888105
OM 35 A	Súkromná základná škola BESST, Limbová 3 *	35	10:35:10	2020-10-31 11:11:02.888105
OM 35 B	Súkromná základná škola BESST, Limbová 3 *	35	10:35:13	2020-10-31 11:11:02.888105
OM 36 A	Súkromná základná škola BESST, Limbová 3 *	35	10:35:17	2020-10-31 11:11:02.888105
OM 36 B	Súkromná základná škola BESST, Limbová 3 *	35	10:35:24	2020-10-31 11:11:02.888105
OM 37	Trnavská univerzita v Trnave, Pedagogická fakulta, Priemyselná 4	75	11:00:31	2020-10-31 11:11:02.888105
OM 38 A	Kultúrny dom, Sereďská 131, Modranka *	20	10:47:42	2020-10-31 11:11:02.888105
OM 38 B	Kultúrny dom, Sereďská 131, Modranka *	20	10:47:55	2020-10-31 11:11:02.888105
OM 39	Mestská športová hala, Rybníková 576 (ľudia s prechodným pobytom, cudzinci)	200	10:52:16	2020-10-31 11:11:02.888105
OM 1	Radnica, Hlavná 1	50	11:01:23	2020-10-31 11:14:36.934241
OM 2	Mestský úrad v Trnave, Trhová 3	60	10:37:14	2020-10-31 11:14:36.934241
OM 3	Arcibiskupské gymnázium biskupa P. Jantauscha, Hollého 9	40	10:47:59	2020-10-31 11:14:36.934241
OM 4	Kino Hviezda, Paulínska 1	50	09:55:26	2020-10-31 11:14:36.934241
OM 5	Súkromná stredná odborná škola GOS, Ferka Urbánka 19	20	10:54:31	2020-10-31 11:14:36.934241
OM 6	Stredná priemyselná škola dopravná, Študentská 23	80	09:44:27	2020-10-31 11:14:36.934241
OM 7	Stredná priemyselná škola, Komenského 1	70	10:40:40	2020-10-31 11:14:36.934241
OM 8	Základná škola, Andreja Kubinu 34	40	10:14:24	2020-10-31 11:14:36.934241
OM 9	Stredná priemyselná škola, Komenského 1	40	11:05:46	2020-10-31 11:14:36.934241
OM 10	SPŠ stavebná Dušana S. Jurkoviča, Lomonosovova 7	80	09:09:52	2020-10-31 11:14:36.934241
OM 11 A	Základná umelecká škola, Mozartova 10 *	40	10:19:05	2020-10-31 11:14:36.934241
OM 11 B	Základná umelecká škola, Mozartova 10 *	40	10:19:09	2020-10-31 11:14:36.934241
OM 12	Základná umelecká škola, Mozartova 10 *	40	10:19:12	2020-10-31 11:14:36.934241
OM 13	Základná škola, Kornela Mahra 11 *	40	11:05:50	2020-10-31 11:14:36.934241
OM 14	Základná škola, Kornela Mahra 11 *	40	11:05:53	2020-10-31 11:14:36.934241
OM 15 A	Základná škola, Jána Bottu 27 *	50	11:06:23	2020-10-31 11:14:36.934241
OM 15 B	Základná škola, Jána Bottu 27 *	50	11:06:26	2020-10-31 11:14:36.934241
OM 16 A	Základná škola, Andreja Kubinu 34 *	60	10:30:23	2020-10-31 11:14:36.934241
OM 16 B	Základná škola, Andreja Kubinu 34 *	60	10:30:28	2020-10-31 11:14:36.934241
OM 17	Univerzita sv. Cyrila a Metoda, Námestie Jozefa Herdu 2	50	10:43:15	2020-10-31 11:14:36.934241
OM 18 A	Obchodná akadémia, Kukučínova 2 *	40	11:13:44	2020-10-31 11:14:36.934241
OM 18 B	Obchodná akadémia, Kukučínova 2 *	40	11:13:48	2020-10-31 11:14:36.934241
OM 19	Kultúrny dom CUBE, Ľudová 12	45	11:04:41	2020-10-31 11:14:36.934241
OM 20 A	Základná škola, Atómová 1 *	30	10:19:58	2020-10-31 11:14:36.934241
OM 20 B	Základná škola, Atómová 1 *	30	10:19:58	2020-10-31 11:14:36.934241
OM 21	Základná škola, Atómová 1 *	40	10:20:00	2020-10-31 11:14:36.934241
OM 22 A	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	50	10:07:55	2020-10-31 11:14:36.934241
OM 22 B	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	50	10:07:59	2020-10-31 11:14:36.934241
OM 23	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	60	10:46:09	2020-10-31 11:14:36.934241
OM 24	Stredná odborná škola elektrotechnická, Sibírska 1	70	10:58:36	2020-10-31 11:14:36.934241
OM 25	Súkromná SOŠ polytechnická DSA, Koniarekova 15	40	11:11:10	2020-10-31 11:14:36.934241
OM 26	Stredná zdravotnícka škola, Daxnerova 6	40	10:36:34	2020-10-31 11:14:36.934241
OM 27 A	Základná škola, Spartakovská 5 *	80	10:40:55	2020-10-31 11:14:36.934241
OM 27 B	Základná škola, Spartakovská 5 *	50	10:40:56	2020-10-31 11:14:36.934241
OM 28 A	Základná škola, Spartakovská 5 *	60	10:40:57	2020-10-31 11:14:36.934241
OM 28 B	Základná škola, Spartakovská 5 *	50	10:40:57	2020-10-31 11:14:36.934241
OM 29 A	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	60	10:35:35	2020-10-31 11:14:36.934241
OM 29 B	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	60	10:35:36	2020-10-31 11:14:36.934241
OM 30 A	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	60	10:35:36	2020-10-31 11:14:36.934241
OM 30 B	Mestský zimný štadión, Spartakovská 1B (vchod od Hokejky) *	60	10:35:37	2020-10-31 11:14:36.934241
OM 31 A	Základná škola, V Jame 3 *	30	10:54:03	2020-10-31 11:14:36.934241
OM 31 B	Základná škola, V Jame 3 *	30	10:54:09	2020-10-31 11:14:36.934241
OM 32	Základná škola, V Jame 3 *	30	10:54:13	2020-10-31 11:14:36.934241
OM 33 A	Základná škola, Maxima Gorkého 21 *	35	10:31:45	2020-10-31 11:14:36.934241
OM 33 B	Základná škola, Maxima Gorkého 21 *	35	10:31:41	2020-10-31 11:14:36.934241
OM 34 A	Základná škola, Maxima Gorkého 21 *	35	10:31:51	2020-10-31 11:14:36.934241
OM 34 B	Základná škola, Maxima Gorkého 21 *	35	10:31:55	2020-10-31 11:14:36.934241
OM 35 A	Súkromná základná škola BESST, Limbová 3 *	35	10:35:10	2020-10-31 11:14:36.934241
OM 35 B	Súkromná základná škola BESST, Limbová 3 *	35	10:35:13	2020-10-31 11:14:36.934241
OM 36 A	Súkromná základná škola BESST, Limbová 3 *	35	10:35:17	2020-10-31 11:14:36.934241
OM 36 B	Súkromná základná škola BESST, Limbová 3 *	35	10:35:24	2020-10-31 11:14:36.934241
OM 37	Trnavská univerzita v Trnave, Pedagogická fakulta, Priemyselná 4	75	11:00:31	2020-10-31 11:14:36.934241
OM 38 A	Kultúrny dom, Sereďská 131, Modranka *	20	10:47:42	2020-10-31 11:14:36.934241
OM 38 B	Kultúrny dom, Sereďská 131, Modranka *	20	10:47:55	2020-10-31 11:14:36.934241
OM 39	Mestská športová hala, Rybníková 576 (ľudia s prechodným pobytom, cudzinci)	200	10:52:16	2020-10-31 11:14:36.934241
OM 1	Radnica, Hlavná 1	50	11:01:23	2020-10-31 11:15:07.621706
OM 2	Mestský úrad v Trnave, Trhová 3	60	10:37:14	2020-10-31 11:15:07.621706
OM 3	Arcibiskupské gymnázium biskupa P. Jantauscha, Hollého 9	40	10:47:59	2020-10-31 11:15:07.621706
OM 4	Kino Hviezda, Paulínska 1	50	09:55:26	2020-10-31 11:15:07.621706
OM 5	Súkromná stredná odborná škola GOS, Ferka Urbánka 19	20	10:54:31	2020-10-31 11:15:07.621706
OM 6	Stredná priemyselná škola dopravná, Študentská 23	80	09:44:27	2020-10-31 11:15:07.621706
OM 7	Stredná priemyselná škola, Komenského 1	70	10:40:40	2020-10-31 11:15:07.621706
OM 8	Základná škola, Andreja Kubinu 34	40	10:14:24	2020-10-31 11:15:07.621706
OM 9	Stredná priemyselná škola, Komenského 1	40	11:05:46	2020-10-31 11:15:07.621706
OM 10	SPŠ stavebná Dušana S. Jurkoviča, Lomonosovova 7	80	09:09:52	2020-10-31 11:15:07.621706
OM 11 A	Základná umelecká škola, Mozartova 10 *	40	10:19:05	2020-10-31 11:15:07.621706
OM 11 B	Základná umelecká škola, Mozartova 10 *	40	10:19:09	2020-10-31 11:15:07.621706
OM 12	Základná umelecká škola, Mozartova 10 *	40	10:19:12	2020-10-31 11:15:07.621706
OM 13	Základná škola, Kornela Mahra 11 *	40	11:05:50	2020-10-31 11:15:07.621706
OM 14	Základná škola, Kornela Mahra 11 *	40	11:05:53	2020-10-31 11:15:07.621706
OM 15 A	Základná škola, Jána Bottu 27 *	50	11:06:23	2020-10-31 11:15:07.621706
OM 15 B	Základná škola, Jána Bottu 27 *	50	11:06:26	2020-10-31 11:15:07.621706
OM 16 A	Základná škola, Andreja Kubinu 34 *	60	10:30:23	2020-10-31 11:15:07.621706
OM 16 B	Základná škola, Andreja Kubinu 34 *	60	10:30:28	2020-10-31 11:15:07.621706
OM 17	Univerzita sv. Cyrila a Metoda, Námestie Jozefa Herdu 2	50	10:43:15	2020-10-31 11:15:07.621706
OM 18 A	Obchodná akadémia, Kukučínova 2 *	40	11:13:44	2020-10-31 11:15:07.621706
OM 18 B	Obchodná akadémia, Kukučínova 2 *	40	11:13:48	2020-10-31 11:15:07.621706
OM 19	Kultúrny dom CUBE, Ľudová 12	45	11:04:41	2020-10-31 11:15:07.621706
OM 20 A	Základná škola, Atómová 1 *	30	10:19:58	2020-10-31 11:15:07.621706
OM 20 B	Základná škola, Atómová 1 *	30	10:19:58	2020-10-31 11:15:07.621706
OM 21	Základná škola, Atómová 1 *	40	10:20:00	2020-10-31 11:15:07.621706
OM 22 A	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	50	10:07:55	2020-10-31 11:15:07.621706
OM 22 B	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	50	10:07:59	2020-10-31 11:15:07.621706
OM 23	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	60	10:46:09	2020-10-31 11:15:07.621706
OM 24	Stredná odborná škola elektrotechnická, Sibírska 1	70	10:58:36	2020-10-31 11:15:07.621706
OM 25	Súkromná SOŠ polytechnická DSA, Koniarekova 15	40	11:11:10	2020-10-31 11:15:07.621706
OM 26	Stredná zdravotnícka škola, Daxnerova 6	40	10:36:34	2020-10-31 11:15:07.621706
OM 27 A	Základná škola, Spartakovská 5 *	80	10:40:55	2020-10-31 11:15:07.621706
OM 27 B	Základná škola, Spartakovská 5 *	50	10:40:56	2020-10-31 11:15:07.621706
OM 28 A	Základná škola, Spartakovská 5 *	60	10:40:57	2020-10-31 11:15:07.621706
OM 28 B	Základná škola, Spartakovská 5 *	50	10:40:57	2020-10-31 11:15:07.621706
OM 29 A	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	60	10:35:35	2020-10-31 11:15:07.621706
OM 29 B	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	60	10:35:36	2020-10-31 11:15:07.621706
OM 30 A	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	60	10:35:36	2020-10-31 11:15:07.621706
OM 30 B	Mestský zimný štadión, Spartakovská 1B (vchod od Hokejky) *	60	10:35:37	2020-10-31 11:15:07.621706
OM 31 A	Základná škola, V Jame 3 *	30	10:54:03	2020-10-31 11:15:07.621706
OM 31 B	Základná škola, V Jame 3 *	30	10:54:09	2020-10-31 11:15:07.621706
OM 32	Základná škola, V Jame 3 *	30	10:54:13	2020-10-31 11:15:07.621706
OM 33 A	Základná škola, Maxima Gorkého 21 *	35	10:31:45	2020-10-31 11:15:07.621706
OM 33 B	Základná škola, Maxima Gorkého 21 *	35	10:31:41	2020-10-31 11:15:07.621706
OM 34 A	Základná škola, Maxima Gorkého 21 *	35	10:31:51	2020-10-31 11:15:07.621706
OM 34 B	Základná škola, Maxima Gorkého 21 *	35	10:31:55	2020-10-31 11:15:07.621706
OM 35 A	Súkromná základná škola BESST, Limbová 3 *	35	10:35:10	2020-10-31 11:15:07.621706
OM 35 B	Súkromná základná škola BESST, Limbová 3 *	35	10:35:13	2020-10-31 11:15:07.621706
OM 36 A	Súkromná základná škola BESST, Limbová 3 *	35	10:35:17	2020-10-31 11:15:07.621706
OM 36 B	Súkromná základná škola BESST, Limbová 3 *	35	10:35:24	2020-10-31 11:15:07.621706
OM 37	Trnavská univerzita v Trnave, Pedagogická fakulta, Priemyselná 4	75	11:00:31	2020-10-31 11:15:07.621706
OM 38 A	Kultúrny dom, Sereďská 131, Modranka *	20	10:47:42	2020-10-31 11:15:07.621706
OM 38 B	Kultúrny dom, Sereďská 131, Modranka *	20	10:47:55	2020-10-31 11:15:07.621706
OM 39	Mestská športová hala, Rybníková 576 (ľudia s prechodným pobytom, cudzinci)	200	10:52:16	2020-10-31 11:15:07.621706
OM 1	Radnica, Hlavná 1	50	11:01:23	2020-10-31 11:57:53.076564
OM 2	Mestský úrad v Trnave, Trhová 3	50	11:51:38	2020-10-31 11:57:53.076564
OM 3	Arcibiskupské gymnázium biskupa P. Jantauscha, Hollého 9	40	10:47:59	2020-10-31 11:57:53.076564
OM 4	Kino Hviezda, Paulínska 1	30	11:28:03	2020-10-31 11:57:53.076564
OM 5	Súkromná stredná odborná škola GOS, Ferka Urbánka 19	50	11:51:10	2020-10-31 11:57:53.076564
OM 6	Stredná priemyselná škola dopravná, Študentská 23	20	11:44:05	2020-10-31 11:57:53.076564
OM 7	Stredná priemyselná škola, Komenského 1	70	10:40:40	2020-10-31 11:57:53.076564
OM 8	Základná škola, Andreja Kubinu 34	65	11:52:00	2020-10-31 11:57:53.076564
OM 9	Stredná priemyselná škola, Komenského 1	20	11:43:48	2020-10-31 11:57:53.076564
OM 10	SPŠ stavebná Dušana S. Jurkoviča, Lomonosovova 7	60	11:42:49	2020-10-31 11:57:53.076564
OM 11 A	Základná umelecká škola, Mozartova 10 *	20	11:48:10	2020-10-31 11:57:53.076564
OM 11 B	Základná umelecká škola, Mozartova 10 *	20	11:48:14	2020-10-31 11:57:53.076564
OM 12	Základná umelecká škola, Mozartova 10 *	22	11:48:23	2020-10-31 11:57:53.076564
OM 13	Základná škola, Kornela Mahra 11 *	15	11:43:10	2020-10-31 11:57:53.076564
OM 14	Základná škola, Kornela Mahra 11 *	15	11:43:11	2020-10-31 11:57:53.076564
OM 15 A	Základná škola, Jána Bottu 27 *	30	11:15:14	2020-10-31 11:57:53.076564
OM 15 B	Základná škola, Jána Bottu 27 *	30	11:15:28	2020-10-31 11:57:53.076564
OM 16 A	Základná škola, Andreja Kubinu 34 *	30	11:41:58	2020-10-31 11:57:53.076564
OM 16 B	Základná škola, Andreja Kubinu 34 *	35	11:41:59	2020-10-31 11:57:53.076564
OM 17	Univerzita sv. Cyrila a Metoda, Námestie Jozefa Herdu 2	50	10:43:15	2020-10-31 11:57:53.076564
OM 18 A	Obchodná akadémia, Kukučínova 2 *	40	11:13:44	2020-10-31 11:57:53.076564
OM 18 B	Obchodná akadémia, Kukučínova 2 *	40	11:13:48	2020-10-31 11:57:53.076564
OM 19	Kultúrny dom CUBE, Ľudová 12	45	11:04:41	2020-10-31 11:57:53.076564
OM 20 A	Základná škola, Atómová 1 *	25	11:50:43	2020-10-31 11:57:53.076564
OM 20 B	Základná škola, Atómová 1 *	25	11:50:46	2020-10-31 11:57:53.076564
OM 21	Základná škola, Atómová 1 *	50	11:50:49	2020-10-31 11:57:53.076564
OM 22 A	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	50	10:07:55	2020-10-31 11:57:53.076564
OM 22 B	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	50	10:07:59	2020-10-31 11:57:53.076564
OM 23	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	60	10:46:09	2020-10-31 11:57:53.076564
OM 24	Stredná odborná škola elektrotechnická, Sibírska 1	70	10:58:36	2020-10-31 11:57:53.076564
OM 25	Súkromná SOŠ polytechnická DSA, Koniarekova 15	40	11:11:10	2020-10-31 11:57:53.076564
OM 26	Stredná zdravotnícka škola, Daxnerova 6	40	10:36:34	2020-10-31 11:57:53.076564
OM 27 A	Základná škola, Spartakovská 5 *	20	11:48:38	2020-10-31 11:57:53.076564
OM 27 B	Základná škola, Spartakovská 5 *	20	11:48:41	2020-10-31 11:57:53.076564
OM 28 A	Základná škola, Spartakovská 5 *	20	11:48:45	2020-10-31 11:57:53.076564
OM 28 B	Základná škola, Spartakovská 5 *	20	11:48:48	2020-10-31 11:57:53.076564
OM 29 A	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	60	10:35:35	2020-10-31 11:57:53.076564
OM 29 B	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	60	10:35:36	2020-10-31 11:57:53.076564
OM 30 A	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	60	10:35:36	2020-10-31 11:57:53.076564
OM 30 B	Mestský zimný štadión, Spartakovská 1B (vchod od Hokejky) *	60	10:35:37	2020-10-31 11:57:53.076564
OM 31 A	Základná škola, V Jame 3 *	15	11:41:37	2020-10-31 11:57:53.076564
OM 31 B	Základná škola, V Jame 3 *	15	11:41:37	2020-10-31 11:57:53.076564
OM 32	Základná škola, V Jame 3 *	15	11:41:38	2020-10-31 11:57:53.076564
OM 33 A	Základná škola, Maxima Gorkého 21 *	35	10:31:45	2020-10-31 11:57:53.076564
OM 33 B	Základná škola, Maxima Gorkého 21 *	35	10:31:41	2020-10-31 11:57:53.076564
OM 34 A	Základná škola, Maxima Gorkého 21 *	35	10:31:51	2020-10-31 11:57:53.076564
OM 34 B	Základná škola, Maxima Gorkého 21 *	35	10:31:55	2020-10-31 11:57:53.076564
OM 35 A	Súkromná základná škola BESST, Limbová 3 *	25	11:57:16	2020-10-31 11:57:53.076564
OM 35 B	Súkromná základná škola BESST, Limbová 3 *	25	11:57:16	2020-10-31 11:57:53.076564
OM 36 A	Súkromná základná škola BESST, Limbová 3 *	25	11:57:15	2020-10-31 11:57:53.076564
OM 36 B	Súkromná základná škola BESST, Limbová 3 *	35	11:57:14	2020-10-31 11:57:53.076564
OM 37	Trnavská univerzita v Trnave, Pedagogická fakulta, Priemyselná 4	75	11:00:31	2020-10-31 11:57:53.076564
OM 38 A	Kultúrny dom, Sereďská 131, Modranka *	10	11:45:04	2020-10-31 11:57:53.076564
OM 38 B	Kultúrny dom, Sereďská 131, Modranka *	10	11:45:05	2020-10-31 11:57:53.076564
OM 39	Mestská športová hala, Rybníková 576 (ľudia s prechodným pobytom, cudzinci)	200	11:36:21	2020-10-31 11:57:53.076564
OM 1	Radnica, Hlavná 1	50	11:01:23	2020-10-31 12:19:14.310847
OM 2	Mestský úrad v Trnave, Trhová 3	40	11:59:07	2020-10-31 12:19:14.310847
OM 3	Arcibiskupské gymnázium biskupa P. Jantauscha, Hollého 9	40	10:47:59	2020-10-31 12:19:14.310847
OM 4	Kino Hviezda, Paulínska 1	12	11:58:59	2020-10-31 12:19:14.310847
OM 5	Súkromná stredná odborná škola GOS, Ferka Urbánka 19	15	11:59:27	2020-10-31 12:19:14.310847
OM 6	Stredná priemyselná škola dopravná, Študentská 23	20	11:44:05	2020-10-31 12:19:14.310847
OM 7	Stredná priemyselná škola, Komenského 1	70	10:40:40	2020-10-31 12:19:14.310847
OM 8	Základná škola, Andreja Kubinu 34	65	11:52:00	2020-10-31 12:19:14.310847
OM 9	Stredná priemyselná škola, Komenského 1	20	11:43:48	2020-10-31 12:19:14.310847
OM 10	SPŠ stavebná Dušana S. Jurkoviča, Lomonosovova 7	60	11:42:49	2020-10-31 12:19:14.310847
OM 11 A	Základná umelecká škola, Mozartova 10 *	20	11:48:10	2020-10-31 12:19:14.310847
OM 11 B	Základná umelecká škola, Mozartova 10 *	20	11:48:14	2020-10-31 12:19:14.310847
OM 12	Základná umelecká škola, Mozartova 10 *	22	11:48:23	2020-10-31 12:19:14.310847
OM 13	Základná škola, Kornela Mahra 11 *	15	11:43:10	2020-10-31 12:19:14.310847
OM 14	Základná škola, Kornela Mahra 11 *	15	11:43:11	2020-10-31 12:19:14.310847
OM 15 A	Základná škola, Jána Bottu 27 *	30	11:15:14	2020-10-31 12:19:14.310847
OM 15 B	Základná škola, Jána Bottu 27 *	30	11:15:28	2020-10-31 12:19:14.310847
OM 16 A	Základná škola, Andreja Kubinu 34 *	30	11:41:58	2020-10-31 12:19:14.310847
OM 16 B	Základná škola, Andreja Kubinu 34 *	35	11:41:59	2020-10-31 12:19:14.310847
OM 17	Univerzita sv. Cyrila a Metoda, Námestie Jozefa Herdu 2	50	10:43:15	2020-10-31 12:19:14.310847
OM 18 A	Obchodná akadémia, Kukučínova 2 *	40	11:13:44	2020-10-31 12:19:14.310847
OM 18 B	Obchodná akadémia, Kukučínova 2 *	40	11:13:48	2020-10-31 12:19:14.310847
OM 19	Kultúrny dom CUBE, Ľudová 12	45	11:04:41	2020-10-31 12:19:14.310847
OM 20 A	Základná škola, Atómová 1 *	33	12:11:31	2020-10-31 12:19:14.310847
OM 20 B	Základná škola, Atómová 1 *	33	12:11:34	2020-10-31 12:19:14.310847
OM 21	Základná škola, Atómová 1 *	33	12:11:40	2020-10-31 12:19:14.310847
OM 22 A	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	50	10:07:55	2020-10-31 12:19:14.310847
OM 22 B	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	50	10:07:59	2020-10-31 12:19:14.310847
OM 23	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	60	10:46:09	2020-10-31 12:19:14.310847
OM 24	Stredná odborná škola elektrotechnická, Sibírska 1	30	12:00:33	2020-10-31 12:19:14.310847
OM 25	Súkromná SOŠ polytechnická DSA, Koniarekova 15	40	11:11:10	2020-10-31 12:19:14.310847
OM 26	Stredná zdravotnícka škola, Daxnerova 6	40	10:36:34	2020-10-31 12:19:14.310847
OM 27 A	Základná škola, Spartakovská 5 *	20	11:48:38	2020-10-31 12:19:14.310847
OM 27 B	Základná škola, Spartakovská 5 *	20	11:48:41	2020-10-31 12:19:14.310847
OM 28 A	Základná škola, Spartakovská 5 *	20	11:48:45	2020-10-31 12:19:14.310847
OM 28 B	Základná škola, Spartakovská 5 *	20	11:48:48	2020-10-31 12:19:14.310847
OM 29 A	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	60	10:35:35	2020-10-31 12:19:14.310847
OM 29 B	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	60	10:35:36	2020-10-31 12:19:14.310847
OM 30 A	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	60	10:35:36	2020-10-31 12:19:14.310847
OM 30 B	Mestský zimný štadión, Spartakovská 1B (vchod od Hokejky) *	60	10:35:37	2020-10-31 12:19:14.310847
OM 31 A	Základná škola, V Jame 3 *	15	11:41:37	2020-10-31 12:19:14.310847
OM 31 B	Základná škola, V Jame 3 *	15	11:41:37	2020-10-31 12:19:14.310847
OM 32	Základná škola, V Jame 3 *	15	11:41:38	2020-10-31 12:19:14.310847
OM 33 A	Základná škola, Maxima Gorkého 21 *	35	10:31:45	2020-10-31 12:19:14.310847
OM 33 B	Základná škola, Maxima Gorkého 21 *	35	10:31:41	2020-10-31 12:19:14.310847
OM 34 A	Základná škola, Maxima Gorkého 21 *	35	10:31:51	2020-10-31 12:19:14.310847
OM 34 B	Základná škola, Maxima Gorkého 21 *	35	10:31:55	2020-10-31 12:19:14.310847
OM 35 A	Súkromná základná škola BESST, Limbová 3 *	25	11:57:16	2020-10-31 12:19:14.310847
OM 35 B	Súkromná základná škola BESST, Limbová 3 *	25	11:57:16	2020-10-31 12:19:14.310847
OM 36 A	Súkromná základná škola BESST, Limbová 3 *	25	11:57:15	2020-10-31 12:19:14.310847
OM 36 B	Súkromná základná škola BESST, Limbová 3 *	35	11:57:14	2020-10-31 12:19:14.310847
OM 37	Trnavská univerzita v Trnave, Pedagogická fakulta, Priemyselná 4	75	11:00:31	2020-10-31 12:19:14.310847
OM 38 A	Kultúrny dom, Sereďská 131, Modranka *	10	11:45:04	2020-10-31 12:19:14.310847
OM 38 B	Kultúrny dom, Sereďská 131, Modranka *	10	11:45:05	2020-10-31 12:19:14.310847
OM 39	Mestská športová hala, Rybníková 576 (ľudia s prechodným pobytom, cudzinci)	200	11:36:21	2020-10-31 12:19:14.310847
OM 1	Radnica, Hlavná 1	50	12:33:23	2020-10-31 12:35:29.624261
OM 2	Mestský úrad v Trnave, Trhová 3	20	12:35:04	2020-10-31 12:35:29.624261
OM 3	Arcibiskupské gymnázium biskupa P. Jantauscha, Hollého 9	40	12:33:26	2020-10-31 12:35:29.624261
OM 4	Kino Hviezda, Paulínska 1	50	12:33:27	2020-10-31 12:35:29.624261
OM 5	Súkromná stredná odborná škola GOS, Ferka Urbánka 19	50	12:33:28	2020-10-31 12:35:29.624261
OM 6	Stredná priemyselná škola dopravná, Študentská 23	40	12:33:29	2020-10-31 12:35:29.624261
OM 7	Stredná priemyselná škola, Komenského 1	70	12:33:31	2020-10-31 12:35:29.624261
OM 8	Základná škola, Andreja Kubinu 34	40	12:33:32	2020-10-31 12:35:29.624261
OM 9	Stredná priemyselná škola, Komenského 1	50	12:33:33	2020-10-31 12:35:29.624261
OM 10	SPŠ stavebná Dušana S. Jurkoviča, Lomonosovova 7	80	12:33:34	2020-10-31 12:35:29.624261
OM 11 A	Základná umelecká škola, Mozartova 10 *	20	12:33:35	2020-10-31 12:35:29.624261
OM 11 B	Základná umelecká škola, Mozartova 10 *	20	12:33:37	2020-10-31 12:35:29.624261
OM 12	Základná umelecká škola, Mozartova 10 *	22	12:33:38	2020-10-31 12:35:29.624261
OM 13	Základná škola, Kornela Mahra 11 *	40	12:33:39	2020-10-31 12:35:29.624261
OM 14	Základná škola, Kornela Mahra 11 *	40	12:33:40	2020-10-31 12:35:29.624261
OM 15 A	Základná škola, Jána Bottu 27 *	30	12:33:42	2020-10-31 12:35:29.624261
OM 15 B	Základná škola, Jána Bottu 27 *	30	12:33:43	2020-10-31 12:35:29.624261
OM 16 A	Základná škola, Andreja Kubinu 34 *	40	12:33:47	2020-10-31 12:35:29.624261
OM 16 B	Základná škola, Andreja Kubinu 34 *	40	12:33:48	2020-10-31 12:35:29.624261
OM 17	Univerzita sv. Cyrila a Metoda, Námestie Jozefa Herdu 2	50	12:33:49	2020-10-31 12:35:29.624261
OM 18 A	Obchodná akadémia, Kukučínova 2 *	40	12:33:50	2020-10-31 12:35:29.624261
OM 18 B	Obchodná akadémia, Kukučínova 2 *	40	12:33:51	2020-10-31 12:35:29.624261
OM 19	Kultúrny dom CUBE, Ľudová 12	45	12:33:52	2020-10-31 12:35:29.624261
OM 20 A	Základná škola, Atómová 1 *	33	12:33:54	2020-10-31 12:35:29.624261
OM 20 B	Základná škola, Atómová 1 *	33	12:33:55	2020-10-31 12:35:29.624261
OM 21	Základná škola, Atómová 1 *	33	12:33:57	2020-10-31 12:35:29.624261
OM 22 A	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	50	12:33:59	2020-10-31 12:35:29.624261
OM 22 B	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	50	12:34:00	2020-10-31 12:35:29.624261
OM 23	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	50	12:34:01	2020-10-31 12:35:29.624261
OM 24	Stredná odborná škola elektrotechnická, Sibírska 1	70	12:34:05	2020-10-31 12:35:29.624261
OM 25	Súkromná SOŠ polytechnická DSA, Koniarekova 15	40	12:34:06	2020-10-31 12:35:29.624261
OM 26	Stredná zdravotnícka škola, Daxnerova 6	80 a viac	12:34:07	2020-10-31 12:35:29.624261
OM 27 A	Základná škola, Spartakovská 5 *	30	12:34:08	2020-10-31 12:35:29.624261
OM 27 B	Základná škola, Spartakovská 5 *	30	12:34:09	2020-10-31 12:35:29.624261
OM 28 A	Základná škola, Spartakovská 5 *	30	12:34:10	2020-10-31 12:35:29.624261
OM 28 B	Základná škola, Spartakovská 5 *	30	12:34:12	2020-10-31 12:35:29.624261
OM 29 A	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	25	12:34:13	2020-10-31 12:35:29.624261
OM 29 B	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	25	12:34:20	2020-10-31 12:35:29.624261
OM 30 A	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	25	12:34:21	2020-10-31 12:35:29.624261
OM 30 B	Mestský zimný štadión, Spartakovská 1B (vchod od Hokejky) *	25	12:34:22	2020-10-31 12:35:29.624261
OM 31 A	Základná škola, V Jame 3 *	30	12:34:24	2020-10-31 12:35:29.624261
OM 31 B	Základná škola, V Jame 3 *	30	12:34:25	2020-10-31 12:35:29.624261
OM 32	Základná škola, V Jame 3 *	30	12:34:26	2020-10-31 12:35:29.624261
OM 33 A	Základná škola, Maxima Gorkého 21 *	35	12:34:27	2020-10-31 12:35:29.624261
OM 33 B	Základná škola, Maxima Gorkého 21 *	35	12:34:29	2020-10-31 12:35:29.624261
OM 34 A	Základná škola, Maxima Gorkého 21 *	35	12:34:30	2020-10-31 12:35:29.624261
OM 34 B	Základná škola, Maxima Gorkého 21 *	35	12:34:34	2020-10-31 12:35:29.624261
OM 35 A	Súkromná základná škola BESST, Limbová 3 *	35	12:34:35	2020-10-31 12:35:29.624261
OM 35 B	Súkromná základná škola BESST, Limbová 3 *	35	12:34:37	2020-10-31 12:35:29.624261
OM 36 A	Súkromná základná škola BESST, Limbová 3 *	35	12:34:38	2020-10-31 12:35:29.624261
OM 36 B	Súkromná základná škola BESST, Limbová 3 *	35	12:34:39	2020-10-31 12:35:29.624261
OM 37	Trnavská univerzita v Trnave, Pedagogická fakulta, Priemyselná 4	40	12:34:41	2020-10-31 12:35:29.624261
OM 38 A	Kultúrny dom, Sereďská 131, Modranka *	25	12:34:42	2020-10-31 12:35:29.624261
OM 38 B	Kultúrny dom, Sereďská 131, Modranka *	25	12:34:43	2020-10-31 12:35:29.624261
OM 39	Mestská športová hala, Rybníková 576 (ľudia s prechodným pobytom, cudzinci)	80 a viac	12:34:44	2020-10-31 12:35:29.624261
OM 1	Radnica, Hlavná 1	50	12:33:23	2020-10-31 12:37:23.82392
OM 2	Mestský úrad v Trnave, Trhová 3	20	12:35:04	2020-10-31 12:37:23.82392
OM 21	Základná škola, Atómová 1 *	33	12:33:57	2020-10-31 13:01:35.468179
OM 3	Arcibiskupské gymnázium biskupa P. Jantauscha, Hollého 9	40	12:33:26	2020-10-31 12:37:23.82392
OM 4	Kino Hviezda, Paulínska 1	50	12:33:27	2020-10-31 12:37:23.82392
OM 5	Súkromná stredná odborná škola GOS, Ferka Urbánka 19	50	12:33:28	2020-10-31 12:37:23.82392
OM 6	Stredná priemyselná škola dopravná, Študentská 23	40	12:33:29	2020-10-31 12:37:23.82392
OM 7	Stredná priemyselná škola, Komenského 1	70	12:33:31	2020-10-31 12:37:23.82392
OM 8	Základná škola, Andreja Kubinu 34	40	12:33:32	2020-10-31 12:37:23.82392
OM 9	Stredná priemyselná škola, Komenského 1	50	12:33:33	2020-10-31 12:37:23.82392
OM 10	SPŠ stavebná Dušana S. Jurkoviča, Lomonosovova 7	80	12:33:34	2020-10-31 12:37:23.82392
OM 11 A	Základná umelecká škola, Mozartova 10 *	20	12:33:35	2020-10-31 12:37:23.82392
OM 11 B	Základná umelecká škola, Mozartova 10 *	20	12:33:37	2020-10-31 12:37:23.82392
OM 12	Základná umelecká škola, Mozartova 10 *	22	12:33:38	2020-10-31 12:37:23.82392
OM 13	Základná škola, Kornela Mahra 11 *	40	12:33:39	2020-10-31 12:37:23.82392
OM 14	Základná škola, Kornela Mahra 11 *	40	12:33:40	2020-10-31 12:37:23.82392
OM 15 A	Základná škola, Jána Bottu 27 *	30	12:33:42	2020-10-31 12:37:23.82392
OM 15 B	Základná škola, Jána Bottu 27 *	30	12:33:43	2020-10-31 12:37:23.82392
OM 16 A	Základná škola, Andreja Kubinu 34 *	40	12:33:47	2020-10-31 12:37:23.82392
OM 16 B	Základná škola, Andreja Kubinu 34 *	40	12:33:48	2020-10-31 12:37:23.82392
OM 17	Univerzita sv. Cyrila a Metoda, Námestie Jozefa Herdu 2	50	12:33:49	2020-10-31 12:37:23.82392
OM 18 A	Obchodná akadémia, Kukučínova 2 *	40	12:33:50	2020-10-31 12:37:23.82392
OM 18 B	Obchodná akadémia, Kukučínova 2 *	40	12:33:51	2020-10-31 12:37:23.82392
OM 19	Kultúrny dom CUBE, Ľudová 12	45	12:33:52	2020-10-31 12:37:23.82392
OM 20 A	Základná škola, Atómová 1 *	33	12:33:54	2020-10-31 12:37:23.82392
OM 20 B	Základná škola, Atómová 1 *	33	12:33:55	2020-10-31 12:37:23.82392
OM 21	Základná škola, Atómová 1 *	33	12:33:57	2020-10-31 12:37:23.82392
OM 22 A	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	50	12:33:59	2020-10-31 12:37:23.82392
OM 22 B	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	50	12:34:00	2020-10-31 12:37:23.82392
OM 23	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	50	12:34:01	2020-10-31 12:37:23.82392
OM 24	Stredná odborná škola elektrotechnická, Sibírska 1	70	12:34:05	2020-10-31 12:37:23.82392
OM 25	Súkromná SOŠ polytechnická DSA, Koniarekova 15	40	12:34:06	2020-10-31 12:37:23.82392
OM 26	Stredná zdravotnícka škola, Daxnerova 6	80 a viac	12:34:07	2020-10-31 12:37:23.82392
OM 27 A	Základná škola, Spartakovská 5 *	30	12:34:08	2020-10-31 12:37:23.82392
OM 27 B	Základná škola, Spartakovská 5 *	30	12:34:09	2020-10-31 12:37:23.82392
OM 28 A	Základná škola, Spartakovská 5 *	30	12:34:10	2020-10-31 12:37:23.82392
OM 28 B	Základná škola, Spartakovská 5 *	30	12:34:12	2020-10-31 12:37:23.82392
OM 29 A	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	25	12:34:13	2020-10-31 12:37:23.82392
OM 29 B	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	25	12:34:20	2020-10-31 12:37:23.82392
OM 30 A	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	25	12:34:21	2020-10-31 12:37:23.82392
OM 30 B	Mestský zimný štadión, Spartakovská 1B (vchod od Hokejky) *	25	12:34:22	2020-10-31 12:37:23.82392
OM 31 A	Základná škola, V Jame 3 *	30	12:34:24	2020-10-31 12:37:23.82392
OM 31 B	Základná škola, V Jame 3 *	30	12:34:25	2020-10-31 12:37:23.82392
OM 32	Základná škola, V Jame 3 *	30	12:34:26	2020-10-31 12:37:23.82392
OM 33 A	Základná škola, Maxima Gorkého 21 *	35	12:34:27	2020-10-31 12:37:23.82392
OM 33 B	Základná škola, Maxima Gorkého 21 *	35	12:34:29	2020-10-31 12:37:23.82392
OM 34 A	Základná škola, Maxima Gorkého 21 *	35	12:34:30	2020-10-31 12:37:23.82392
OM 34 B	Základná škola, Maxima Gorkého 21 *	35	12:34:34	2020-10-31 12:37:23.82392
OM 35 A	Súkromná základná škola BESST, Limbová 3 *	35	12:34:35	2020-10-31 12:37:23.82392
OM 35 B	Súkromná základná škola BESST, Limbová 3 *	35	12:34:37	2020-10-31 12:37:23.82392
OM 36 A	Súkromná základná škola BESST, Limbová 3 *	35	12:34:38	2020-10-31 12:37:23.82392
OM 36 B	Súkromná základná škola BESST, Limbová 3 *	35	12:34:39	2020-10-31 12:37:23.82392
OM 37	Trnavská univerzita v Trnave, Pedagogická fakulta, Priemyselná 4	40	12:34:41	2020-10-31 12:37:23.82392
OM 38 A	Kultúrny dom, Sereďská 131, Modranka *	25	12:34:42	2020-10-31 12:37:23.82392
OM 38 B	Kultúrny dom, Sereďská 131, Modranka *	25	12:34:43	2020-10-31 12:37:23.82392
OM 39	Mestská športová hala, Rybníková 576 (ľudia s prechodným pobytom, cudzinci)	80 a viac	12:34:44	2020-10-31 12:37:23.82392
OM 1	Radnica, Hlavná 1	50	12:33:23	2020-10-31 13:01:35.468179
OM 2	Mestský úrad v Trnave, Trhová 3	60	12:59:12	2020-10-31 13:01:35.468179
OM 3	Arcibiskupské gymnázium biskupa P. Jantauscha, Hollého 9	40	12:33:26	2020-10-31 13:01:35.468179
OM 4	Kino Hviezda, Paulínska 1	50	12:54:00	2020-10-31 13:01:35.468179
OM 5	Súkromná stredná odborná škola GOS, Ferka Urbánka 19	50	12:33:28	2020-10-31 13:01:35.468179
OM 6	Stredná priemyselná škola dopravná, Študentská 23	40	12:33:29	2020-10-31 13:01:35.468179
OM 7	Stredná priemyselná škola, Komenského 1	70	12:33:31	2020-10-31 13:01:35.468179
OM 8	Základná škola, Andreja Kubinu 34	40	12:33:32	2020-10-31 13:01:35.468179
OM 9	Stredná priemyselná škola, Komenského 1	50	12:33:33	2020-10-31 13:01:35.468179
OM 10	SPŠ stavebná Dušana S. Jurkoviča, Lomonosovova 7	100	12:39:27	2020-10-31 13:01:35.468179
OM 11 A	Základná umelecká škola, Mozartova 10 *	20	12:33:35	2020-10-31 13:01:35.468179
OM 11 B	Základná umelecká škola, Mozartova 10 *	20	12:33:37	2020-10-31 13:01:35.468179
OM 12	Základná umelecká škola, Mozartova 10 *	22	12:33:38	2020-10-31 13:01:35.468179
OM 13	Základná škola, Kornela Mahra 11 *	40	12:33:39	2020-10-31 13:01:35.468179
OM 14	Základná škola, Kornela Mahra 11 *	40	12:33:40	2020-10-31 13:01:35.468179
OM 15 A	Základná škola, Jána Bottu 27 *	30	12:33:42	2020-10-31 13:01:35.468179
OM 15 B	Základná škola, Jána Bottu 27 *	30	12:33:43	2020-10-31 13:01:35.468179
OM 16 A	Základná škola, Andreja Kubinu 34 *	40	12:33:47	2020-10-31 13:01:35.468179
OM 16 B	Základná škola, Andreja Kubinu 34 *	40	12:33:48	2020-10-31 13:01:35.468179
OM 17	Univerzita sv. Cyrila a Metoda, Námestie Jozefa Herdu 2	85	12:59:49	2020-10-31 13:01:35.468179
OM 18 A	Obchodná akadémia, Kukučínova 2 *	60	13:00:36	2020-10-31 13:01:35.468179
OM 18 B	Obchodná akadémia, Kukučínova 2 *	40	13:00:37	2020-10-31 13:01:35.468179
OM 19	Kultúrny dom CUBE, Ľudová 12	45	12:33:52	2020-10-31 13:01:35.468179
OM 20 A	Základná škola, Atómová 1 *	33	12:33:54	2020-10-31 13:01:35.468179
OM 20 B	Základná škola, Atómová 1 *	33	12:33:55	2020-10-31 13:01:35.468179
OM 22 A	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	40	13:01:05	2020-10-31 13:01:35.468179
OM 22 B	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	30	13:01:05	2020-10-31 13:01:35.468179
OM 23	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	40	13:01:06	2020-10-31 13:01:35.468179
OM 24	Stredná odborná škola elektrotechnická, Sibírska 1	70	12:34:05	2020-10-31 13:01:35.468179
OM 25	Súkromná SOŠ polytechnická DSA, Koniarekova 15	40	12:34:06	2020-10-31 13:01:35.468179
OM 26	Stredná zdravotnícka škola, Daxnerova 6	80 a viac	12:34:07	2020-10-31 13:01:35.468179
OM 27 A	Základná škola, Spartakovská 5 *	30	12:34:08	2020-10-31 13:01:35.468179
OM 27 B	Základná škola, Spartakovská 5 *	30	12:34:09	2020-10-31 13:01:35.468179
OM 28 A	Základná škola, Spartakovská 5 *	30	12:34:10	2020-10-31 13:01:35.468179
OM 28 B	Základná škola, Spartakovská 5 *	30	12:34:12	2020-10-31 13:01:35.468179
OM 29 A	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	25	12:34:13	2020-10-31 13:01:35.468179
OM 29 B	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	25	12:34:20	2020-10-31 13:01:35.468179
OM 30 A	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	25	12:34:21	2020-10-31 13:01:35.468179
OM 30 B	Mestský zimný štadión, Spartakovská 1B (vchod od Hokejky) *	25	12:34:22	2020-10-31 13:01:35.468179
OM 31 A	Základná škola, V Jame 3 *	30	12:34:24	2020-10-31 13:01:35.468179
OM 31 B	Základná škola, V Jame 3 *	30	12:34:25	2020-10-31 13:01:35.468179
OM 32	Základná škola, V Jame 3 *	30	12:34:26	2020-10-31 13:01:35.468179
OM 33 A	Základná škola, Maxima Gorkého 21 *	35	12:34:27	2020-10-31 13:01:35.468179
OM 33 B	Základná škola, Maxima Gorkého 21 *	35	12:34:29	2020-10-31 13:01:35.468179
OM 34 A	Základná škola, Maxima Gorkého 21 *	35	12:34:30	2020-10-31 13:01:35.468179
OM 34 B	Základná škola, Maxima Gorkého 21 *	35	12:34:34	2020-10-31 13:01:35.468179
OM 35 A	Súkromná základná škola BESST, Limbová 3 *	50	12:58:53	2020-10-31 13:01:35.468179
OM 35 B	Súkromná základná škola BESST, Limbová 3 *	50	12:58:54	2020-10-31 13:01:35.468179
OM 36 A	Súkromná základná škola BESST, Limbová 3 *	50	12:58:54	2020-10-31 13:01:35.468179
OM 36 B	Súkromná základná škola BESST, Limbová 3 *	60	12:58:55	2020-10-31 13:01:35.468179
OM 37	Trnavská univerzita v Trnave, Pedagogická fakulta, Priemyselná 4	70	12:58:29	2020-10-31 13:01:35.468179
OM 38 A	Kultúrny dom, Sereďská 131, Modranka *	50	12:58:17	2020-10-31 13:01:35.468179
OM 38 B	Kultúrny dom, Sereďská 131, Modranka *	60	12:58:16	2020-10-31 13:01:35.468179
OM 39	Mestská športová hala, Rybníková 576 (ľudia s prechodným pobytom, cudzinci)	159	12:59:26	2020-10-31 13:01:35.468179
OM 1	Radnica, Hlavná 1	50	12:33:23	2020-10-31 13:08:52.972117
OM 2	Mestský úrad v Trnave, Trhová 3	60	12:59:12	2020-10-31 13:08:52.972117
OM 3	Arcibiskupské gymnázium biskupa P. Jantauscha, Hollého 9	50	13:02:17	2020-10-31 13:08:52.972117
OM 4	Kino Hviezda, Paulínska 1	80	13:02:05	2020-10-31 13:08:52.972117
OM 5	Súkromná stredná odborná škola GOS, Ferka Urbánka 19	50	12:33:28	2020-10-31 13:08:52.972117
OM 6	Stredná priemyselná škola dopravná, Študentská 23	40	12:33:29	2020-10-31 13:08:52.972117
OM 7	Stredná priemyselná škola, Komenského 1	70	12:33:31	2020-10-31 13:08:52.972117
OM 8	Základná škola, Andreja Kubinu 34	40	12:33:32	2020-10-31 13:08:52.972117
OM 9	Stredná priemyselná škola, Komenského 1	50	12:33:33	2020-10-31 13:08:52.972117
OM 10	SPŠ stavebná Dušana S. Jurkoviča, Lomonosovova 7	100	12:39:27	2020-10-31 13:08:52.972117
OM 11 A	Základná umelecká škola, Mozartova 10 *	20	13:03:31	2020-10-31 13:08:52.972117
OM 11 B	Základná umelecká škola, Mozartova 10 *	20	13:03:31	2020-10-31 13:08:52.972117
OM 12	Základná umelecká škola, Mozartova 10 *	20	13:03:32	2020-10-31 13:08:52.972117
OM 13	Základná škola, Kornela Mahra 11 *	40	12:33:39	2020-10-31 13:08:52.972117
OM 14	Základná škola, Kornela Mahra 11 *	40	12:33:40	2020-10-31 13:08:52.972117
OM 15 A	Základná škola, Jána Bottu 27 *	30	12:33:42	2020-10-31 13:08:52.972117
OM 15 B	Základná škola, Jána Bottu 27 *	30	12:33:43	2020-10-31 13:08:52.972117
OM 16 A	Základná škola, Andreja Kubinu 34 *	40	12:33:47	2020-10-31 13:08:52.972117
OM 16 B	Základná škola, Andreja Kubinu 34 *	40	12:33:48	2020-10-31 13:08:52.972117
OM 17	Univerzita sv. Cyrila a Metoda, Námestie Jozefa Herdu 2	85	12:59:49	2020-10-31 13:08:52.972117
OM 18 A	Obchodná akadémia, Kukučínova 2 *	60	13:00:36	2020-10-31 13:08:52.972117
OM 18 B	Obchodná akadémia, Kukučínova 2 *	40	13:00:37	2020-10-31 13:08:52.972117
OM 19	Kultúrny dom CUBE, Ľudová 12	45	12:33:52	2020-10-31 13:08:52.972117
OM 20 A	Základná škola, Atómová 1 *	33	12:33:54	2020-10-31 13:08:52.972117
OM 20 B	Základná škola, Atómová 1 *	33	12:33:55	2020-10-31 13:08:52.972117
OM 21	Základná škola, Atómová 1 *	33	12:33:57	2020-10-31 13:08:52.972117
OM 22 A	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	40	13:01:05	2020-10-31 13:08:52.972117
OM 22 B	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	30	13:01:05	2020-10-31 13:08:52.972117
OM 23	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	40	13:01:06	2020-10-31 13:08:52.972117
OM 24	Stredná odborná škola elektrotechnická, Sibírska 1	90	13:02:54	2020-10-31 13:08:52.972117
OM 25	Súkromná SOŠ polytechnická DSA, Koniarekova 15	40	12:34:06	2020-10-31 13:08:52.972117
OM 26	Stredná zdravotnícka škola, Daxnerova 6	30	13:04:33	2020-10-31 13:08:52.972117
OM 27 A	Základná škola, Spartakovská 5 *	30	12:34:08	2020-10-31 13:08:52.972117
OM 27 B	Základná škola, Spartakovská 5 *	30	12:34:09	2020-10-31 13:08:52.972117
OM 28 A	Základná škola, Spartakovská 5 *	30	12:34:10	2020-10-31 13:08:52.972117
OM 28 B	Základná škola, Spartakovská 5 *	30	12:34:12	2020-10-31 13:08:52.972117
OM 29 A	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	25	12:34:13	2020-10-31 13:08:52.972117
OM 29 B	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	25	12:34:20	2020-10-31 13:08:52.972117
OM 30 A	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	25	12:34:21	2020-10-31 13:08:52.972117
OM 30 B	Mestský zimný štadión, Spartakovská 1B (vchod od Hokejky) *	25	12:34:22	2020-10-31 13:08:52.972117
OM 31 A	Základná škola, V Jame 3 *	30	12:34:24	2020-10-31 13:08:52.972117
OM 31 B	Základná škola, V Jame 3 *	30	12:34:25	2020-10-31 13:08:52.972117
OM 32	Základná škola, V Jame 3 *	30	12:34:26	2020-10-31 13:08:52.972117
OM 33 A	Základná škola, Maxima Gorkého 21 *	35	12:34:27	2020-10-31 13:08:52.972117
OM 33 B	Základná škola, Maxima Gorkého 21 *	35	12:34:29	2020-10-31 13:08:52.972117
OM 34 A	Základná škola, Maxima Gorkého 21 *	35	12:34:30	2020-10-31 13:08:52.972117
OM 34 B	Základná škola, Maxima Gorkého 21 *	35	12:34:34	2020-10-31 13:08:52.972117
OM 35 A	Súkromná základná škola BESST, Limbová 3 *	50	12:58:53	2020-10-31 13:08:52.972117
OM 35 B	Súkromná základná škola BESST, Limbová 3 *	50	12:58:54	2020-10-31 13:08:52.972117
OM 36 A	Súkromná základná škola BESST, Limbová 3 *	50	12:58:54	2020-10-31 13:08:52.972117
OM 36 B	Súkromná základná škola BESST, Limbová 3 *	60	12:58:55	2020-10-31 13:08:52.972117
OM 37	Trnavská univerzita v Trnave, Pedagogická fakulta, Priemyselná 4	70	12:58:29	2020-10-31 13:08:52.972117
OM 38 A	Kultúrny dom, Sereďská 131, Modranka *	50	12:58:17	2020-10-31 13:08:52.972117
OM 38 B	Kultúrny dom, Sereďská 131, Modranka *	60	12:58:16	2020-10-31 13:08:52.972117
OM 39	Mestská športová hala, Rybníková 576 (ľudia s prechodným pobytom, cudzinci)	159	12:59:26	2020-10-31 13:08:52.972117
OM 1	Radnica, Hlavná 1	50	12:33:23	2020-10-31 13:09:23.804563
OM 2	Mestský úrad v Trnave, Trhová 3	60	12:59:12	2020-10-31 13:09:23.804563
OM 3	Arcibiskupské gymnázium biskupa P. Jantauscha, Hollého 9	50	13:02:17	2020-10-31 13:09:23.804563
OM 4	Kino Hviezda, Paulínska 1	80	13:02:05	2020-10-31 13:09:23.804563
OM 5	Súkromná stredná odborná škola GOS, Ferka Urbánka 19	50	12:33:28	2020-10-31 13:09:23.804563
OM 6	Stredná priemyselná škola dopravná, Študentská 23	40	12:33:29	2020-10-31 13:09:23.804563
OM 7	Stredná priemyselná škola, Komenského 1	70	12:33:31	2020-10-31 13:09:23.804563
OM 8	Základná škola, Andreja Kubinu 34	40	12:33:32	2020-10-31 13:09:23.804563
OM 9	Stredná priemyselná škola, Komenského 1	50	12:33:33	2020-10-31 13:09:23.804563
OM 10	SPŠ stavebná Dušana S. Jurkoviča, Lomonosovova 7	100	12:39:27	2020-10-31 13:09:23.804563
OM 11 A	Základná umelecká škola, Mozartova 10 *	20	13:03:31	2020-10-31 13:09:23.804563
OM 11 B	Základná umelecká škola, Mozartova 10 *	20	13:03:31	2020-10-31 13:09:23.804563
OM 12	Základná umelecká škola, Mozartova 10 *	20	13:03:32	2020-10-31 13:09:23.804563
OM 13	Základná škola, Kornela Mahra 11 *	40	12:33:39	2020-10-31 13:09:23.804563
OM 14	Základná škola, Kornela Mahra 11 *	40	12:33:40	2020-10-31 13:09:23.804563
OM 15 A	Základná škola, Jána Bottu 27 *	30	12:33:42	2020-10-31 13:09:23.804563
OM 15 B	Základná škola, Jána Bottu 27 *	30	12:33:43	2020-10-31 13:09:23.804563
OM 16 A	Základná škola, Andreja Kubinu 34 *	40	12:33:47	2020-10-31 13:09:23.804563
OM 16 B	Základná škola, Andreja Kubinu 34 *	40	12:33:48	2020-10-31 13:09:23.804563
OM 17	Univerzita sv. Cyrila a Metoda, Námestie Jozefa Herdu 2	85	12:59:49	2020-10-31 13:09:23.804563
OM 18 A	Obchodná akadémia, Kukučínova 2 *	60	13:00:36	2020-10-31 13:09:23.804563
OM 18 B	Obchodná akadémia, Kukučínova 2 *	40	13:00:37	2020-10-31 13:09:23.804563
OM 19	Kultúrny dom CUBE, Ľudová 12	45	12:33:52	2020-10-31 13:09:23.804563
OM 20 A	Základná škola, Atómová 1 *	33	12:33:54	2020-10-31 13:09:23.804563
OM 20 B	Základná škola, Atómová 1 *	33	12:33:55	2020-10-31 13:09:23.804563
OM 21	Základná škola, Atómová 1 *	33	12:33:57	2020-10-31 13:09:23.804563
OM 22 A	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	40	13:01:05	2020-10-31 13:09:23.804563
OM 22 B	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	30	13:01:05	2020-10-31 13:09:23.804563
OM 23	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	40	13:01:06	2020-10-31 13:09:23.804563
OM 24	Stredná odborná škola elektrotechnická, Sibírska 1	90	13:02:54	2020-10-31 13:09:23.804563
OM 25	Súkromná SOŠ polytechnická DSA, Koniarekova 15	40	12:34:06	2020-10-31 13:09:23.804563
OM 26	Stredná zdravotnícka škola, Daxnerova 6	30	13:04:33	2020-10-31 13:09:23.804563
OM 27 A	Základná škola, Spartakovská 5 *	30	12:34:08	2020-10-31 13:09:23.804563
OM 27 B	Základná škola, Spartakovská 5 *	30	12:34:09	2020-10-31 13:09:23.804563
OM 28 A	Základná škola, Spartakovská 5 *	30	12:34:10	2020-10-31 13:09:23.804563
OM 28 B	Základná škola, Spartakovská 5 *	30	12:34:12	2020-10-31 13:09:23.804563
OM 29 A	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	30	13:09:09	2020-10-31 13:09:23.804563
OM 29 B	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	30	13:09:09	2020-10-31 13:09:23.804563
OM 30 A	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	30	13:09:10	2020-10-31 13:09:23.804563
OM 30 B	Mestský zimný štadión, Spartakovská 1B (vchod od Hokejky) *	30	13:09:10	2020-10-31 13:09:23.804563
OM 31 A	Základná škola, V Jame 3 *	30	12:34:24	2020-10-31 13:09:23.804563
OM 31 B	Základná škola, V Jame 3 *	30	12:34:25	2020-10-31 13:09:23.804563
OM 32	Základná škola, V Jame 3 *	30	12:34:26	2020-10-31 13:09:23.804563
OM 33 A	Základná škola, Maxima Gorkého 21 *	35	12:34:27	2020-10-31 13:09:23.804563
OM 33 B	Základná škola, Maxima Gorkého 21 *	35	12:34:29	2020-10-31 13:09:23.804563
OM 34 A	Základná škola, Maxima Gorkého 21 *	35	12:34:30	2020-10-31 13:09:23.804563
OM 34 B	Základná škola, Maxima Gorkého 21 *	35	12:34:34	2020-10-31 13:09:23.804563
OM 35 A	Súkromná základná škola BESST, Limbová 3 *	50	12:58:53	2020-10-31 13:09:23.804563
OM 35 B	Súkromná základná škola BESST, Limbová 3 *	50	12:58:54	2020-10-31 13:09:23.804563
OM 36 A	Súkromná základná škola BESST, Limbová 3 *	50	12:58:54	2020-10-31 13:09:23.804563
OM 36 B	Súkromná základná škola BESST, Limbová 3 *	60	12:58:55	2020-10-31 13:09:23.804563
OM 37	Trnavská univerzita v Trnave, Pedagogická fakulta, Priemyselná 4	70	12:58:29	2020-10-31 13:09:23.804563
OM 38 A	Kultúrny dom, Sereďská 131, Modranka *	50	12:58:17	2020-10-31 13:09:23.804563
OM 38 B	Kultúrny dom, Sereďská 131, Modranka *	60	12:58:16	2020-10-31 13:09:23.804563
OM 39	Mestská športová hala, Rybníková 576 (ľudia s prechodným pobytom, cudzinci)	159	12:59:26	2020-10-31 13:09:23.804563
OM 1	Radnica, Hlavná 1	30	13:21:18	2020-10-31 13:45:36.96956
OM 2	Mestský úrad v Trnave, Trhová 3	60	13:42:41	2020-10-31 13:45:36.96956
OM 3	Arcibiskupské gymnázium biskupa P. Jantauscha, Hollého 9	50	13:43:48	2020-10-31 13:45:36.96956
OM 4	Kino Hviezda, Paulínska 1	120	13:45:00	2020-10-31 13:45:36.96956
OM 5	Súkromná stredná odborná škola GOS, Ferka Urbánka 19	50	12:33:28	2020-10-31 13:45:36.96956
OM 6	Stredná priemyselná škola dopravná, Študentská 23	50	13:45:26	2020-10-31 13:45:36.96956
OM 7	Stredná priemyselná škola, Komenského 1	70	12:33:31	2020-10-31 13:45:36.96956
OM 8	Základná škola, Andreja Kubinu 34	40	12:33:32	2020-10-31 13:45:36.96956
OM 9	Stredná priemyselná škola, Komenského 1	50	12:33:33	2020-10-31 13:45:36.96956
OM 10	SPŠ stavebná Dušana S. Jurkoviča, Lomonosovova 7	100	12:39:27	2020-10-31 13:45:36.96956
OM 11 A	Základná umelecká škola, Mozartova 10 *	20	13:03:31	2020-10-31 13:45:36.96956
OM 11 B	Základná umelecká škola, Mozartova 10 *	20	13:03:31	2020-10-31 13:45:36.96956
OM 12	Základná umelecká škola, Mozartova 10 *	20	13:03:32	2020-10-31 13:45:36.96956
OM 13	Základná škola, Kornela Mahra 11 *	40	12:33:39	2020-10-31 13:45:36.96956
OM 14	Základná škola, Kornela Mahra 11 *	40	12:33:40	2020-10-31 13:45:36.96956
OM 15 A	Základná škola, Jána Bottu 27 *	30	12:33:42	2020-10-31 13:45:36.96956
OM 15 B	Základná škola, Jána Bottu 27 *	30	12:33:43	2020-10-31 13:45:36.96956
OM 16 A	Základná škola, Andreja Kubinu 34 *	40	12:33:47	2020-10-31 13:45:36.96956
OM 16 B	Základná škola, Andreja Kubinu 34 *	40	12:33:48	2020-10-31 13:45:36.96956
OM 17	Univerzita sv. Cyrila a Metoda, Námestie Jozefa Herdu 2	85	12:59:49	2020-10-31 13:45:36.96956
OM 18 A	Obchodná akadémia, Kukučínova 2 *	60	13:00:36	2020-10-31 13:45:36.96956
OM 18 B	Obchodná akadémia, Kukučínova 2 *	40	13:00:37	2020-10-31 13:45:36.96956
OM 19	Kultúrny dom CUBE, Ľudová 12	45	12:33:52	2020-10-31 13:45:36.96956
OM 20 A	Základná škola, Atómová 1 *	50	13:15:32	2020-10-31 13:45:36.96956
OM 20 B	Základná škola, Atómová 1 *	50	13:43:19	2020-10-31 13:45:36.96956
OM 21	Základná škola, Atómová 1 *	40	13:15:33	2020-10-31 13:45:36.96956
OM 22 A	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	40	13:01:05	2020-10-31 13:45:36.96956
OM 22 B	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	30	13:01:05	2020-10-31 13:45:36.96956
OM 23	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	40	13:01:06	2020-10-31 13:45:36.96956
OM 24	Stredná odborná škola elektrotechnická, Sibírska 1	90	13:02:54	2020-10-31 13:45:36.96956
OM 25	Súkromná SOŠ polytechnická DSA, Koniarekova 15	100	13:37:42	2020-10-31 13:45:36.96956
OM 26	Stredná zdravotnícka škola, Daxnerova 6	30	13:04:33	2020-10-31 13:45:36.96956
OM 27 A	Základná škola, Spartakovská 5 *	60	13:09:51	2020-10-31 13:45:36.96956
OM 27 B	Základná škola, Spartakovská 5 *	60	13:09:50	2020-10-31 13:45:36.96956
OM 28 A	Základná škola, Spartakovská 5 *	60	13:09:50	2020-10-31 13:45:36.96956
OM 28 B	Základná škola, Spartakovská 5 *	60	13:09:49	2020-10-31 13:45:36.96956
OM 29 A	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	30	13:09:09	2020-10-31 13:45:36.96956
OM 29 B	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	30	13:09:09	2020-10-31 13:45:36.96956
OM 30 A	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	30	13:09:10	2020-10-31 13:45:36.96956
OM 30 B	Mestský zimný štadión, Spartakovská 1B (vchod od Hokejky) *	30	13:09:10	2020-10-31 13:45:36.96956
OM 31 A	Základná škola, V Jame 3 *	20	13:22:26	2020-10-31 13:45:36.96956
OM 31 B	Základná škola, V Jame 3 *	30	13:22:20	2020-10-31 13:45:36.96956
OM 32	Základná škola, V Jame 3 *	50	13:21:51	2020-10-31 13:45:36.96956
OM 33 A	Základná škola, Maxima Gorkého 21 *	35	12:34:27	2020-10-31 13:45:36.96956
OM 33 B	Základná škola, Maxima Gorkého 21 *	35	12:34:29	2020-10-31 13:45:36.96956
OM 34 A	Základná škola, Maxima Gorkého 21 *	35	12:34:30	2020-10-31 13:45:36.96956
OM 34 B	Základná škola, Maxima Gorkého 21 *	35	12:34:34	2020-10-31 13:45:36.96956
OM 35 A	Súkromná základná škola BESST, Limbová 3 *	50	12:58:53	2020-10-31 13:45:36.96956
OM 35 B	Súkromná základná škola BESST, Limbová 3 *	50	12:58:54	2020-10-31 13:45:36.96956
OM 36 A	Súkromná základná škola BESST, Limbová 3 *	50	12:58:54	2020-10-31 13:45:36.96956
OM 36 B	Súkromná základná škola BESST, Limbová 3 *	60	12:58:55	2020-10-31 13:45:36.96956
OM 37	Trnavská univerzita v Trnave, Pedagogická fakulta, Priemyselná 4	70	12:58:29	2020-10-31 13:45:36.96956
OM 38 A	Kultúrny dom, Sereďská 131, Modranka *	50	12:58:17	2020-10-31 13:45:36.96956
OM 38 B	Kultúrny dom, Sereďská 131, Modranka *	60	12:58:16	2020-10-31 13:45:36.96956
OM 39	Mestská športová hala, Rybníková 576 (ľudia s prechodným pobytom, cudzinci)	159	12:59:26	2020-10-31 13:45:36.96956
OM 1	Radnica, Hlavná 1	60	13:56:45	2020-10-31 14:00:23.428701
OM 2	Mestský úrad v Trnave, Trhová 3	60	13:42:41	2020-10-31 14:00:23.428701
OM 3	Arcibiskupské gymnázium biskupa P. Jantauscha, Hollého 9	35	13:50:49	2020-10-31 14:00:23.428701
OM 4	Kino Hviezda, Paulínska 1	40	14:00:15	2020-10-31 14:00:23.428701
OM 5	Súkromná stredná odborná škola GOS, Ferka Urbánka 19	50	13:47:21	2020-10-31 14:00:23.428701
OM 6	Stredná priemyselná škola dopravná, Študentská 23	50	13:50:12	2020-10-31 14:00:23.428701
OM 7	Stredná priemyselná škola, Komenského 1	70	13:50:49	2020-10-31 14:00:23.428701
OM 8	Základná škola, Andreja Kubinu 34	40	13:59:51	2020-10-31 14:00:23.428701
OM 9	Stredná priemyselná škola, Komenského 1	50	12:33:33	2020-10-31 14:00:23.428701
OM 10	SPŠ stavebná Dušana S. Jurkoviča, Lomonosovova 7	100	12:39:27	2020-10-31 14:00:23.428701
OM 11 A	Základná umelecká škola, Mozartova 10 *	20	13:59:20	2020-10-31 14:00:23.428701
OM 11 B	Základná umelecká škola, Mozartova 10 *	20	13:59:21	2020-10-31 14:00:23.428701
OM 12	Základná umelecká škola, Mozartova 10 *	20	13:59:21	2020-10-31 14:00:23.428701
OM 13	Základná škola, Kornela Mahra 11 *	40	12:33:39	2020-10-31 14:00:23.428701
OM 14	Základná škola, Kornela Mahra 11 *	40	12:33:40	2020-10-31 14:00:23.428701
OM 15 A	Základná škola, Jána Bottu 27 *	30	12:33:42	2020-10-31 14:00:23.428701
OM 15 B	Základná škola, Jána Bottu 27 *	30	12:33:43	2020-10-31 14:00:23.428701
OM 16 A	Základná škola, Andreja Kubinu 34 *	30	13:59:52	2020-10-31 14:00:23.428701
OM 16 B	Základná škola, Andreja Kubinu 34 *	30	13:59:53	2020-10-31 14:00:23.428701
OM 17	Univerzita sv. Cyrila a Metoda, Námestie Jozefa Herdu 2	85	12:59:49	2020-10-31 14:00:23.428701
OM 18 A	Obchodná akadémia, Kukučínova 2 *	60	13:00:36	2020-10-31 14:00:23.428701
OM 18 B	Obchodná akadémia, Kukučínova 2 *	40	13:00:37	2020-10-31 14:00:23.428701
OM 19	Kultúrny dom CUBE, Ľudová 12	45	12:33:52	2020-10-31 14:00:23.428701
OM 20 A	Základná škola, Atómová 1 *	50	13:15:32	2020-10-31 14:00:23.428701
OM 20 B	Základná škola, Atómová 1 *	50	13:43:19	2020-10-31 14:00:23.428701
OM 21	Základná škola, Atómová 1 *	40	13:15:33	2020-10-31 14:00:23.428701
OM 22 A	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	40	13:01:05	2020-10-31 14:00:23.428701
OM 22 B	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	30	13:01:05	2020-10-31 14:00:23.428701
OM 23	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	40	13:01:06	2020-10-31 14:00:23.428701
OM 24	Stredná odborná škola elektrotechnická, Sibírska 1	90	13:02:54	2020-10-31 14:00:23.428701
OM 25	Súkromná SOŠ polytechnická DSA, Koniarekova 15	100	13:37:42	2020-10-31 14:00:23.428701
OM 26	Stredná zdravotnícka škola, Daxnerova 6	30	13:04:33	2020-10-31 14:00:23.428701
OM 27 A	Základná škola, Spartakovská 5 *	20	13:52:00	2020-10-31 14:00:23.428701
OM 27 B	Základná škola, Spartakovská 5 *	20	13:51:59	2020-10-31 14:00:23.428701
OM 28 A	Základná škola, Spartakovská 5 *	20	13:51:59	2020-10-31 14:00:23.428701
OM 28 B	Základná škola, Spartakovská 5 *	20	13:51:59	2020-10-31 14:00:23.428701
OM 29 A	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	30	13:09:09	2020-10-31 14:00:23.428701
OM 29 B	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	30	13:09:09	2020-10-31 14:00:23.428701
OM 30 A	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	30	13:09:10	2020-10-31 14:00:23.428701
OM 30 B	Mestský zimný štadión, Spartakovská 1B (vchod od Hokejky) *	30	13:09:10	2020-10-31 14:00:23.428701
OM 31 A	Základná škola, V Jame 3 *	20	13:22:26	2020-10-31 14:00:23.428701
OM 31 B	Základná škola, V Jame 3 *	30	13:22:20	2020-10-31 14:00:23.428701
OM 32	Základná škola, V Jame 3 *	50	13:21:51	2020-10-31 14:00:23.428701
OM 33 A	Základná škola, Maxima Gorkého 21 *	35	12:34:27	2020-10-31 14:00:23.428701
OM 33 B	Základná škola, Maxima Gorkého 21 *	35	12:34:29	2020-10-31 14:00:23.428701
OM 34 A	Základná škola, Maxima Gorkého 21 *	35	12:34:30	2020-10-31 14:00:23.428701
OM 34 B	Základná škola, Maxima Gorkého 21 *	35	12:34:34	2020-10-31 14:00:23.428701
OM 35 A	Súkromná základná škola BESST, Limbová 3 *	50	12:58:53	2020-10-31 14:00:23.428701
OM 35 B	Súkromná základná škola BESST, Limbová 3 *	50	12:58:54	2020-10-31 14:00:23.428701
OM 36 A	Súkromná základná škola BESST, Limbová 3 *	50	12:58:54	2020-10-31 14:00:23.428701
OM 36 B	Súkromná základná škola BESST, Limbová 3 *	60	12:58:55	2020-10-31 14:00:23.428701
OM 37	Trnavská univerzita v Trnave, Pedagogická fakulta, Priemyselná 4	70	12:58:29	2020-10-31 14:00:23.428701
OM 38 A	Kultúrny dom, Sereďská 131, Modranka *	50	12:58:17	2020-10-31 14:00:23.428701
OM 38 B	Kultúrny dom, Sereďská 131, Modranka *	60	12:58:16	2020-10-31 14:00:23.428701
OM 39	Mestská športová hala, Rybníková 576 (ľudia s prechodným pobytom, cudzinci)	159	12:59:26	2020-10-31 14:00:23.428701
OM 1	Radnica, Hlavná 1	30	15:18:30	2020-10-31 16:21:58.283311
OM 2	Mestský úrad v Trnave, Trhová 3	20	15:42:46	2020-10-31 16:21:58.283311
OM 3	Arcibiskupské gymnázium biskupa P. Jantauscha, Hollého 9	38	15:26:15	2020-10-31 16:21:58.283311
OM 4	Kino Hviezda, Paulínska 1	15	15:42:36	2020-10-31 16:21:58.283311
OM 5	Súkromná stredná odborná škola GOS, Ferka Urbánka 19	20	15:30:06	2020-10-31 16:21:58.283311
OM 6	Stredná priemyselná škola dopravná, Študentská 23	30	16:16:57	2020-10-31 16:21:58.283311
OM 7	Stredná priemyselná škola, Komenského 1	20	15:02:19	2020-10-31 16:21:58.283311
OM 8	Základná škola, Andreja Kubinu 34	35	15:01:03	2020-10-31 16:21:58.283311
OM 9	Stredná priemyselná škola, Komenského 1	20	15:02:15	2020-10-31 16:21:58.283311
OM 10	SPŠ stavebná Dušana S. Jurkoviča, Lomonosovova 7	45	15:34:43	2020-10-31 16:21:58.283311
OM 11 A	Základná umelecká škola, Mozartova 10 *	20	16:20:14	2020-10-31 16:21:58.283311
OM 11 B	Základná umelecká škola, Mozartova 10 *	20	16:20:13	2020-10-31 16:21:58.283311
OM 12	Základná umelecká škola, Mozartova 10 *	10	16:20:13	2020-10-31 16:21:58.283311
OM 13	Základná škola, Kornela Mahra 11 *	50	15:22:33	2020-10-31 16:21:58.283311
OM 14	Základná škola, Kornela Mahra 11 *	20	15:22:33	2020-10-31 16:21:58.283311
OM 15 A	Základná škola, Jána Bottu 27 *	20	15:25:46	2020-10-31 16:21:58.283311
OM 15 B	Základná škola, Jána Bottu 27 *	20	15:25:46	2020-10-31 16:21:58.283311
OM 16 A	Základná škola, Andreja Kubinu 34 *	35	15:01:02	2020-10-31 16:21:58.283311
OM 16 B	Základná škola, Andreja Kubinu 34 *	35	15:01:01	2020-10-31 16:21:58.283311
OM 17	Univerzita sv. Cyrila a Metoda, Námestie Jozefa Herdu 2	40	15:06:12	2020-10-31 16:21:58.283311
OM 18 A	Obchodná akadémia, Kukučínova 2 *	35	16:15:16	2020-10-31 16:21:58.283311
OM 18 B	Obchodná akadémia, Kukučínova 2 *	35	16:15:17	2020-10-31 16:21:58.283311
OM 19	Kultúrny dom CUBE, Ľudová 12	50	15:55:04	2020-10-31 16:21:58.283311
OM 20 A	Základná škola, Atómová 1 *	50	15:27:14	2020-10-31 16:21:58.283311
OM 20 B	Základná škola, Atómová 1 *	25	15:27:14	2020-10-31 16:21:58.283311
OM 21	Základná škola, Atómová 1 *	25	15:27:13	2020-10-31 16:21:58.283311
OM 22 A	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	50	15:56:29	2020-10-31 16:21:58.283311
OM 22 B	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	50	15:56:28	2020-10-31 16:21:58.283311
OM 23	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	20	15:56:28	2020-10-31 16:21:58.283311
OM 24	Stredná odborná škola elektrotechnická, Sibírska 1	70	15:05:33	2020-10-31 16:21:58.283311
OM 25	Súkromná SOŠ polytechnická DSA, Koniarekova 15	20	15:22:52	2020-10-31 16:21:58.283311
OM 26	Stredná zdravotnícka škola, Daxnerova 6	50	15:53:54	2020-10-31 16:21:58.283311
OM 27 A	Základná škola, Spartakovská 5 *	20	15:03:10	2020-10-31 16:21:58.283311
OM 27 B	Základná škola, Spartakovská 5 *	20	15:03:09	2020-10-31 16:21:58.283311
OM 28 A	Základná škola, Spartakovská 5 *	20	15:03:09	2020-10-31 16:21:58.283311
OM 28 B	Základná škola, Spartakovská 5 *	20	15:03:08	2020-10-31 16:21:58.283311
OM 29 A	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	20	16:19:59	2020-10-31 16:21:58.283311
OM 29 B	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	20	16:19:58	2020-10-31 16:21:58.283311
OM 30 A	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	60	16:19:58	2020-10-31 16:21:58.283311
OM 30 B	Mestský zimný štadión, Spartakovská 1B (vchod od Hokejky) *	10	16:19:57	2020-10-31 16:21:58.283311
OM 31 A	Základná škola, V Jame 3 *	50	14:58:13	2020-10-31 16:21:58.283311
OM 31 B	Základná škola, V Jame 3 *	50	14:58:13	2020-10-31 16:21:58.283311
OM 32	Základná škola, V Jame 3 *	30	14:58:13	2020-10-31 16:21:58.283311
OM 33 A	Základná škola, Maxima Gorkého 21 *	20	15:18:58	2020-10-31 16:21:58.283311
OM 33 B	Základná škola, Maxima Gorkého 21 *	20	15:18:57	2020-10-31 16:21:58.283311
OM 34 A	Základná škola, Maxima Gorkého 21 *	20	15:18:57	2020-10-31 16:21:58.283311
OM 34 B	Základná škola, Maxima Gorkého 21 *	20	15:18:56	2020-10-31 16:21:58.283311
OM 35 A	Súkromná základná škola BESST, Limbová 3 *	30	16:16:33	2020-10-31 16:21:58.283311
OM 35 B	Súkromná základná škola BESST, Limbová 3 *	30	16:16:33	2020-10-31 16:21:58.283311
OM 36 A	Súkromná základná škola BESST, Limbová 3 *	30	16:16:34	2020-10-31 16:21:58.283311
OM 36 B	Súkromná základná škola BESST, Limbová 3 *	30	16:16:34	2020-10-31 16:21:58.283311
OM 37	Trnavská univerzita v Trnave, Pedagogická fakulta, Priemyselná 4	45	14:44:58	2020-10-31 16:21:58.283311
OM 38 A	Kultúrny dom, Sereďská 131, Modranka *	30	15:16:14	2020-10-31 16:21:58.283311
OM 38 B	Kultúrny dom, Sereďská 131, Modranka *	30	15:16:14	2020-10-31 16:21:58.283311
OM 39	Mestská športová hala, Rybníková 576 (ľudia s prechodným pobytom, cudzinci)	60	15:07:50	2020-10-31 16:21:58.283311
OM 1	Radnica, Hlavná 1	30	16:39:17	2020-10-31 16:50:17.109801
OM 2	Mestský úrad v Trnave, Trhová 3	30	16:39:14	2020-10-31 16:50:17.109801
OM 3	Arcibiskupské gymnázium biskupa P. Jantauscha, Hollého 9	28	16:31:49	2020-10-31 16:50:17.109801
OM 4	Kino Hviezda, Paulínska 1	40	16:22:30	2020-10-31 16:50:17.109801
OM 5	Súkromná stredná odborná škola GOS, Ferka Urbánka 19	40	16:34:55	2020-10-31 16:50:17.109801
OM 6	Stredná priemyselná škola dopravná, Študentská 23	35	16:32:38	2020-10-31 16:50:17.109801
OM 7	Stredná priemyselná škola, Komenského 1	42	16:32:25	2020-10-31 16:50:17.109801
OM 8	Základná škola, Andreja Kubinu 34	35	16:43:30	2020-10-31 16:50:17.109801
OM 9	Stredná priemyselná škola, Komenského 1	42	16:43:27	2020-10-31 16:50:17.109801
OM 10	SPŠ stavebná Dušana S. Jurkoviča, Lomonosovova 7	25	16:37:16	2020-10-31 16:50:17.109801
OM 11 A	Základná umelecká škola, Mozartova 10 *	20	16:38:34	2020-10-31 16:50:17.109801
OM 11 B	Základná umelecká škola, Mozartova 10 *	20	16:38:33	2020-10-31 16:50:17.109801
OM 12	Základná umelecká škola, Mozartova 10 *	30	16:38:33	2020-10-31 16:50:17.109801
OM 13	Základná škola, Kornela Mahra 11 *	20	16:37:04	2020-10-31 16:50:17.109801
OM 14	Základná škola, Kornela Mahra 11 *	20	15:22:33	2020-10-31 16:50:17.109801
OM 15 A	Základná škola, Jána Bottu 27 *	20	15:25:46	2020-10-31 16:50:17.109801
OM 15 B	Základná škola, Jána Bottu 27 *	20	15:25:46	2020-10-31 16:50:17.109801
OM 16 A	Základná škola, Andreja Kubinu 34 *	40	16:32:09	2020-10-31 16:50:17.109801
OM 16 B	Základná škola, Andreja Kubinu 34 *	45	16:32:08	2020-10-31 16:50:17.109801
OM 17	Univerzita sv. Cyrila a Metoda, Námestie Jozefa Herdu 2	64	16:36:06	2020-10-31 16:50:17.109801
OM 18 A	Obchodná akadémia, Kukučínova 2 *	35	16:15:16	2020-10-31 16:50:17.109801
OM 18 B	Obchodná akadémia, Kukučínova 2 *	35	16:15:17	2020-10-31 16:50:17.109801
OM 19	Kultúrny dom CUBE, Ľudová 12	50	15:55:04	2020-10-31 16:50:17.109801
OM 20 A	Základná škola, Atómová 1 *	40	16:35:14	2020-10-31 16:50:17.109801
OM 20 B	Základná škola, Atómová 1 *	25	16:35:14	2020-10-31 16:50:17.109801
OM 21	Základná škola, Atómová 1 *	25	16:35:13	2020-10-31 16:50:17.109801
OM 22 A	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	40	16:34:12	2020-10-31 16:50:17.109801
OM 22 B	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	20	16:34:13	2020-10-31 16:50:17.109801
OM 23	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	20	16:34:13	2020-10-31 16:50:17.109801
OM 24	Stredná odborná škola elektrotechnická, Sibírska 1	43	16:31:24	2020-10-31 16:50:17.109801
OM 25	Súkromná SOŠ polytechnická DSA, Koniarekova 15	20	15:22:52	2020-10-31 16:50:17.109801
OM 26	Stredná zdravotnícka škola, Daxnerova 6	60	16:37:50	2020-10-31 16:50:17.109801
OM 27 A	Základná škola, Spartakovská 5 *	20	16:31:11	2020-10-31 16:50:17.109801
OM 27 B	Základná škola, Spartakovská 5 *	20	16:31:11	2020-10-31 16:50:17.109801
OM 28 A	Základná škola, Spartakovská 5 *	20	16:31:10	2020-10-31 16:50:17.109801
OM 28 B	Základná škola, Spartakovská 5 *	30	16:31:10	2020-10-31 16:50:17.109801
OM 29 A	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	20	16:36:18	2020-10-31 16:50:17.109801
OM 29 B	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	20	16:36:18	2020-10-31 16:50:17.109801
OM 30 A	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	20	16:36:19	2020-10-31 16:50:17.109801
OM 30 B	Mestský zimný štadión, Spartakovská 1B (vchod od Hokejky) *	50	16:39:58	2020-10-31 16:50:17.109801
OM 31 A	Základná škola, V Jame 3 *	20	16:28:27	2020-10-31 16:50:17.109801
OM 31 B	Základná škola, V Jame 3 *	20	16:28:27	2020-10-31 16:50:17.109801
OM 32	Základná škola, V Jame 3 *	20	16:28:26	2020-10-31 16:50:17.109801
OM 33 A	Základná škola, Maxima Gorkého 21 *	50	16:36:47	2020-10-31 16:50:17.109801
OM 33 B	Základná škola, Maxima Gorkého 21 *	50	16:36:47	2020-10-31 16:50:17.109801
OM 34 A	Základná škola, Maxima Gorkého 21 *	20	16:36:46	2020-10-31 16:50:17.109801
OM 34 B	Základná škola, Maxima Gorkého 21 *	20	16:36:46	2020-10-31 16:50:17.109801
OM 35 A	Súkromná základná škola BESST, Limbová 3 *	50	16:29:46	2020-10-31 16:50:17.109801
OM 35 B	Súkromná základná škola BESST, Limbová 3 *	50	16:29:46	2020-10-31 16:50:17.109801
OM 36 A	Súkromná základná škola BESST, Limbová 3 *	20	16:29:46	2020-10-31 16:50:17.109801
OM 36 B	Súkromná základná škola BESST, Limbová 3 *	20	16:29:45	2020-10-31 16:50:17.109801
OM 37	Trnavská univerzita v Trnave, Pedagogická fakulta, Priemyselná 4	30	16:31:36	2020-10-31 16:50:17.109801
OM 38 A	Kultúrny dom, Sereďská 131, Modranka *	20	16:47:31	2020-10-31 16:50:17.109801
OM 38 B	Kultúrny dom, Sereďská 131, Modranka *	20	16:47:31	2020-10-31 16:50:17.109801
OM 39	Mestská športová hala, Rybníková 576 (ľudia s prechodným pobytom, cudzinci)	100	16:45:53	2020-10-31 16:50:17.109801
OM 1	Radnica, Hlavná 1	44	16:55:52	2020-10-31 16:59:10.754243
OM 2	Mestský úrad v Trnave, Trhová 3	35	16:58:46	2020-10-31 16:59:10.754243
OM 3	Arcibiskupské gymnázium biskupa P. Jantauscha, Hollého 9	30	16:53:23	2020-10-31 16:59:10.754243
OM 4	Kino Hviezda, Paulínska 1	39	16:58:35	2020-10-31 16:59:10.754243
OM 5	Súkromná stredná odborná škola GOS, Ferka Urbánka 19	40	16:34:55	2020-10-31 16:59:10.754243
OM 6	Stredná priemyselná škola dopravná, Študentská 23	20	16:53:34	2020-10-31 16:59:10.754243
OM 7	Stredná priemyselná škola, Komenského 1	42	16:32:25	2020-10-31 16:59:10.754243
OM 8	Základná škola, Andreja Kubinu 34	35	16:43:30	2020-10-31 16:59:10.754243
OM 9	Stredná priemyselná škola, Komenského 1	42	16:43:27	2020-10-31 16:59:10.754243
OM 10	SPŠ stavebná Dušana S. Jurkoviča, Lomonosovova 7	25	16:37:16	2020-10-31 16:59:10.754243
OM 11 A	Základná umelecká škola, Mozartova 10 *	20	16:38:34	2020-10-31 16:59:10.754243
OM 11 B	Základná umelecká škola, Mozartova 10 *	20	16:38:33	2020-10-31 16:59:10.754243
OM 12	Základná umelecká škola, Mozartova 10 *	30	16:38:33	2020-10-31 16:59:10.754243
OM 13	Základná škola, Kornela Mahra 11 *	20	16:37:04	2020-10-31 16:59:10.754243
OM 14	Základná škola, Kornela Mahra 11 *	20	15:22:33	2020-10-31 16:59:10.754243
OM 15 A	Základná škola, Jána Bottu 27 *	25	16:58:21	2020-10-31 16:59:10.754243
OM 15 B	Základná škola, Jána Bottu 27 *	25	16:58:21	2020-10-31 16:59:10.754243
OM 16 A	Základná škola, Andreja Kubinu 34 *	40	16:32:09	2020-10-31 16:59:10.754243
OM 16 B	Základná škola, Andreja Kubinu 34 *	45	16:32:08	2020-10-31 16:59:10.754243
OM 17	Univerzita sv. Cyrila a Metoda, Námestie Jozefa Herdu 2	64	16:36:06	2020-10-31 16:59:10.754243
OM 18 A	Obchodná akadémia, Kukučínova 2 *	30	16:55:23	2020-10-31 16:59:10.754243
OM 18 B	Obchodná akadémia, Kukučínova 2 *	30	16:55:24	2020-10-31 16:59:10.754243
OM 19	Kultúrny dom CUBE, Ľudová 12	39	16:59:11	2020-10-31 16:59:10.754243
OM 20 A	Základná škola, Atómová 1 *	40	16:35:14	2020-10-31 16:59:10.754243
OM 20 B	Základná škola, Atómová 1 *	25	16:35:14	2020-10-31 16:59:10.754243
OM 21	Základná škola, Atómová 1 *	25	16:35:13	2020-10-31 16:59:10.754243
OM 22 A	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	30	16:58:04	2020-10-31 16:59:10.754243
OM 22 B	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	20	16:58:05	2020-10-31 16:59:10.754243
OM 23	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	20	16:58:05	2020-10-31 16:59:10.754243
OM 24	Stredná odborná škola elektrotechnická, Sibírska 1	43	16:31:24	2020-10-31 16:59:10.754243
OM 25	Súkromná SOŠ polytechnická DSA, Koniarekova 15	40	16:54:46	2020-10-31 16:59:10.754243
OM 26	Stredná zdravotnícka škola, Daxnerova 6	60	16:37:50	2020-10-31 16:59:10.754243
OM 27 A	Základná škola, Spartakovská 5 *	20	16:31:11	2020-10-31 16:59:10.754243
OM 27 B	Základná škola, Spartakovská 5 *	20	16:31:11	2020-10-31 16:59:10.754243
OM 28 A	Základná škola, Spartakovská 5 *	20	16:31:10	2020-10-31 16:59:10.754243
OM 28 B	Základná škola, Spartakovská 5 *	30	16:31:10	2020-10-31 16:59:10.754243
OM 29 A	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	20	16:36:18	2020-10-31 16:59:10.754243
OM 29 B	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	20	16:36:18	2020-10-31 16:59:10.754243
OM 30 A	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	20	16:36:19	2020-10-31 16:59:10.754243
OM 30 B	Mestský zimný štadión, Spartakovská 1B (vchod od Hokejky) *	50	16:39:58	2020-10-31 16:59:10.754243
OM 31 A	Základná škola, V Jame 3 *	20	16:28:27	2020-10-31 16:59:10.754243
OM 31 B	Základná škola, V Jame 3 *	20	16:28:27	2020-10-31 16:59:10.754243
OM 32	Základná škola, V Jame 3 *	20	16:28:26	2020-10-31 16:59:10.754243
OM 33 A	Základná škola, Maxima Gorkého 21 *	50	16:36:47	2020-10-31 16:59:10.754243
OM 33 B	Základná škola, Maxima Gorkého 21 *	50	16:36:47	2020-10-31 16:59:10.754243
OM 34 A	Základná škola, Maxima Gorkého 21 *	20	16:36:46	2020-10-31 16:59:10.754243
OM 34 B	Základná škola, Maxima Gorkého 21 *	20	16:36:46	2020-10-31 16:59:10.754243
OM 35 A	Súkromná základná škola BESST, Limbová 3 *	50	16:29:46	2020-10-31 16:59:10.754243
OM 35 B	Súkromná základná škola BESST, Limbová 3 *	50	16:29:46	2020-10-31 16:59:10.754243
OM 36 A	Súkromná základná škola BESST, Limbová 3 *	20	16:29:46	2020-10-31 16:59:10.754243
OM 36 B	Súkromná základná škola BESST, Limbová 3 *	20	16:29:45	2020-10-31 16:59:10.754243
OM 37	Trnavská univerzita v Trnave, Pedagogická fakulta, Priemyselná 4	30	16:31:36	2020-10-31 16:59:10.754243
OM 38 A	Kultúrny dom, Sereďská 131, Modranka *	20	16:47:31	2020-10-31 16:59:10.754243
OM 38 B	Kultúrny dom, Sereďská 131, Modranka *	20	16:47:31	2020-10-31 16:59:10.754243
OM 39	Mestská športová hala, Rybníková 576 (ľudia s prechodným pobytom, cudzinci)	20	16:54:28	2020-10-31 16:59:10.754243
OM 1	Radnica, Hlavná 1	44	16:55:52	2020-10-31 16:59:32.181545
OM 2	Mestský úrad v Trnave, Trhová 3	35	16:58:46	2020-10-31 16:59:32.181545
OM 3	Arcibiskupské gymnázium biskupa P. Jantauscha, Hollého 9	30	16:53:23	2020-10-31 16:59:32.181545
OM 4	Kino Hviezda, Paulínska 1	39	16:58:35	2020-10-31 16:59:32.181545
OM 5	Súkromná stredná odborná škola GOS, Ferka Urbánka 19	40	16:34:55	2020-10-31 16:59:32.181545
OM 6	Stredná priemyselná škola dopravná, Študentská 23	20	16:53:34	2020-10-31 16:59:32.181545
OM 7	Stredná priemyselná škola, Komenského 1	42	16:32:25	2020-10-31 16:59:32.181545
OM 8	Základná škola, Andreja Kubinu 34	35	16:43:30	2020-10-31 16:59:32.181545
OM 9	Stredná priemyselná škola, Komenského 1	42	16:43:27	2020-10-31 16:59:32.181545
OM 10	SPŠ stavebná Dušana S. Jurkoviča, Lomonosovova 7	25	16:37:16	2020-10-31 16:59:32.181545
OM 11 A	Základná umelecká škola, Mozartova 10 *	20	16:38:34	2020-10-31 16:59:32.181545
OM 11 B	Základná umelecká škola, Mozartova 10 *	20	16:38:33	2020-10-31 16:59:32.181545
OM 12	Základná umelecká škola, Mozartova 10 *	30	16:38:33	2020-10-31 16:59:32.181545
OM 13	Základná škola, Kornela Mahra 11 *	20	16:37:04	2020-10-31 16:59:32.181545
OM 14	Základná škola, Kornela Mahra 11 *	20	15:22:33	2020-10-31 16:59:32.181545
OM 15 A	Základná škola, Jána Bottu 27 *	25	16:58:21	2020-10-31 16:59:32.181545
OM 15 B	Základná škola, Jána Bottu 27 *	25	16:58:21	2020-10-31 16:59:32.181545
OM 16 A	Základná škola, Andreja Kubinu 34 *	40	16:32:09	2020-10-31 16:59:32.181545
OM 16 B	Základná škola, Andreja Kubinu 34 *	45	16:32:08	2020-10-31 16:59:32.181545
OM 17	Univerzita sv. Cyrila a Metoda, Námestie Jozefa Herdu 2	64	16:36:06	2020-10-31 16:59:32.181545
OM 18 A	Obchodná akadémia, Kukučínova 2 *	30	16:55:23	2020-10-31 16:59:32.181545
OM 18 B	Obchodná akadémia, Kukučínova 2 *	30	16:55:24	2020-10-31 16:59:32.181545
OM 19	Kultúrny dom CUBE, Ľudová 12	39	16:59:11	2020-10-31 16:59:32.181545
OM 20 A	Základná škola, Atómová 1 *	40	16:35:14	2020-10-31 16:59:32.181545
OM 20 B	Základná škola, Atómová 1 *	25	16:35:14	2020-10-31 16:59:32.181545
OM 21	Základná škola, Atómová 1 *	25	16:35:13	2020-10-31 16:59:32.181545
OM 22 A	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	30	16:58:04	2020-10-31 16:59:32.181545
OM 22 B	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	20	16:58:05	2020-10-31 16:59:32.181545
OM 23	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	20	16:58:05	2020-10-31 16:59:32.181545
OM 24	Stredná odborná škola elektrotechnická, Sibírska 1	43	16:31:24	2020-10-31 16:59:32.181545
OM 25	Súkromná SOŠ polytechnická DSA, Koniarekova 15	40	16:54:46	2020-10-31 16:59:32.181545
OM 26	Stredná zdravotnícka škola, Daxnerova 6	60	16:37:50	2020-10-31 16:59:32.181545
OM 27 A	Základná škola, Spartakovská 5 *	20	16:31:11	2020-10-31 16:59:32.181545
OM 27 B	Základná škola, Spartakovská 5 *	20	16:31:11	2020-10-31 16:59:32.181545
OM 28 A	Základná škola, Spartakovská 5 *	20	16:31:10	2020-10-31 16:59:32.181545
OM 28 B	Základná škola, Spartakovská 5 *	30	16:31:10	2020-10-31 16:59:32.181545
OM 29 A	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	20	16:36:18	2020-10-31 16:59:32.181545
OM 29 B	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	20	16:36:18	2020-10-31 16:59:32.181545
OM 30 A	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	20	16:36:19	2020-10-31 16:59:32.181545
OM 30 B	Mestský zimný štadión, Spartakovská 1B (vchod od Hokejky) *	50	16:39:58	2020-10-31 16:59:32.181545
OM 31 A	Základná škola, V Jame 3 *	20	16:28:27	2020-10-31 16:59:32.181545
OM 31 B	Základná škola, V Jame 3 *	20	16:28:27	2020-10-31 16:59:32.181545
OM 32	Základná škola, V Jame 3 *	20	16:28:26	2020-10-31 16:59:32.181545
OM 33 A	Základná škola, Maxima Gorkého 21 *	50	16:36:47	2020-10-31 16:59:32.181545
OM 33 B	Základná škola, Maxima Gorkého 21 *	50	16:36:47	2020-10-31 16:59:32.181545
OM 34 A	Základná škola, Maxima Gorkého 21 *	20	16:36:46	2020-10-31 16:59:32.181545
OM 34 B	Základná škola, Maxima Gorkého 21 *	20	16:36:46	2020-10-31 16:59:32.181545
OM 35 A	Súkromná základná škola BESST, Limbová 3 *	50	16:29:46	2020-10-31 16:59:32.181545
OM 35 B	Súkromná základná škola BESST, Limbová 3 *	50	16:29:46	2020-10-31 16:59:32.181545
OM 36 A	Súkromná základná škola BESST, Limbová 3 *	20	16:29:46	2020-10-31 16:59:32.181545
OM 36 B	Súkromná základná škola BESST, Limbová 3 *	20	16:29:45	2020-10-31 16:59:32.181545
OM 37	Trnavská univerzita v Trnave, Pedagogická fakulta, Priemyselná 4	30	16:31:36	2020-10-31 16:59:32.181545
OM 38 A	Kultúrny dom, Sereďská 131, Modranka *	20	16:47:31	2020-10-31 16:59:32.181545
OM 38 B	Kultúrny dom, Sereďská 131, Modranka *	20	16:47:31	2020-10-31 16:59:32.181545
OM 39	Mestská športová hala, Rybníková 576 (ľudia s prechodným pobytom, cudzinci)	20	16:54:28	2020-10-31 16:59:32.181545
OM 1	Radnica, Hlavná 1	44	16:55:52	2020-10-31 17:00:01.53765
OM 2	Mestský úrad v Trnave, Trhová 3	35	16:58:46	2020-10-31 17:00:01.53765
OM 3	Arcibiskupské gymnázium biskupa P. Jantauscha, Hollého 9	30	16:53:23	2020-10-31 17:00:01.53765
OM 4	Kino Hviezda, Paulínska 1	39	16:58:35	2020-10-31 17:00:01.53765
OM 5	Súkromná stredná odborná škola GOS, Ferka Urbánka 19	40	16:34:55	2020-10-31 17:00:01.53765
OM 6	Stredná priemyselná škola dopravná, Študentská 23	20	16:53:34	2020-10-31 17:00:01.53765
OM 7	Stredná priemyselná škola, Komenského 1	42	16:32:25	2020-10-31 17:00:01.53765
OM 8	Základná škola, Andreja Kubinu 34	35	16:43:30	2020-10-31 17:00:01.53765
OM 9	Stredná priemyselná škola, Komenského 1	42	16:43:27	2020-10-31 17:00:01.53765
OM 10	SPŠ stavebná Dušana S. Jurkoviča, Lomonosovova 7	25	16:37:16	2020-10-31 17:00:01.53765
OM 11 A	Základná umelecká škola, Mozartova 10 *	20	16:38:34	2020-10-31 17:00:01.53765
OM 11 B	Základná umelecká škola, Mozartova 10 *	20	16:38:33	2020-10-31 17:00:01.53765
OM 12	Základná umelecká škola, Mozartova 10 *	30	16:38:33	2020-10-31 17:00:01.53765
OM 13	Základná škola, Kornela Mahra 11 *	20	16:37:04	2020-10-31 17:00:01.53765
OM 14	Základná škola, Kornela Mahra 11 *	20	15:22:33	2020-10-31 17:00:01.53765
OM 15 A	Základná škola, Jána Bottu 27 *	25	16:58:21	2020-10-31 17:00:01.53765
OM 15 B	Základná škola, Jána Bottu 27 *	25	16:58:21	2020-10-31 17:00:01.53765
OM 16 A	Základná škola, Andreja Kubinu 34 *	40	16:32:09	2020-10-31 17:00:01.53765
OM 16 B	Základná škola, Andreja Kubinu 34 *	45	16:32:08	2020-10-31 17:00:01.53765
OM 17	Univerzita sv. Cyrila a Metoda, Námestie Jozefa Herdu 2	64	16:36:06	2020-10-31 17:00:01.53765
OM 18 A	Obchodná akadémia, Kukučínova 2 *	30	16:55:23	2020-10-31 17:00:01.53765
OM 18 B	Obchodná akadémia, Kukučínova 2 *	30	16:55:24	2020-10-31 17:00:01.53765
OM 19	Kultúrny dom CUBE, Ľudová 12	39	16:59:11	2020-10-31 17:00:01.53765
OM 20 A	Základná škola, Atómová 1 *	40	16:35:14	2020-10-31 17:00:01.53765
OM 20 B	Základná škola, Atómová 1 *	25	16:35:14	2020-10-31 17:00:01.53765
OM 21	Základná škola, Atómová 1 *	25	16:35:13	2020-10-31 17:00:01.53765
OM 22 A	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	30	16:58:04	2020-10-31 17:00:01.53765
OM 22 B	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	20	16:58:05	2020-10-31 17:00:01.53765
OM 23	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	20	16:58:05	2020-10-31 17:00:01.53765
OM 24	Stredná odborná škola elektrotechnická, Sibírska 1	43	16:31:24	2020-10-31 17:00:01.53765
OM 25	Súkromná SOŠ polytechnická DSA, Koniarekova 15	40	16:54:46	2020-10-31 17:00:01.53765
OM 26	Stredná zdravotnícka škola, Daxnerova 6	60	16:37:50	2020-10-31 17:00:01.53765
OM 27 A	Základná škola, Spartakovská 5 *	20	16:31:11	2020-10-31 17:00:01.53765
OM 27 B	Základná škola, Spartakovská 5 *	20	16:31:11	2020-10-31 17:00:01.53765
OM 28 A	Základná škola, Spartakovská 5 *	20	16:31:10	2020-10-31 17:00:01.53765
OM 28 B	Základná škola, Spartakovská 5 *	30	16:31:10	2020-10-31 17:00:01.53765
OM 29 A	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	20	16:36:18	2020-10-31 17:00:01.53765
OM 29 B	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	20	16:36:18	2020-10-31 17:00:01.53765
OM 30 A	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	20	16:36:19	2020-10-31 17:00:01.53765
OM 30 B	Mestský zimný štadión, Spartakovská 1B (vchod od Hokejky) *	50	16:39:58	2020-10-31 17:00:01.53765
OM 31 A	Základná škola, V Jame 3 *	20	16:28:27	2020-10-31 17:00:01.53765
OM 31 B	Základná škola, V Jame 3 *	20	16:28:27	2020-10-31 17:00:01.53765
OM 32	Základná škola, V Jame 3 *	20	16:28:26	2020-10-31 17:00:01.53765
OM 33 A	Základná škola, Maxima Gorkého 21 *	50	16:36:47	2020-10-31 17:00:01.53765
OM 33 B	Základná škola, Maxima Gorkého 21 *	50	16:36:47	2020-10-31 17:00:01.53765
OM 34 A	Základná škola, Maxima Gorkého 21 *	20	16:36:46	2020-10-31 17:00:01.53765
OM 34 B	Základná škola, Maxima Gorkého 21 *	20	16:36:46	2020-10-31 17:00:01.53765
OM 35 A	Súkromná základná škola BESST, Limbová 3 *	50	16:29:46	2020-10-31 17:00:01.53765
OM 35 B	Súkromná základná škola BESST, Limbová 3 *	50	16:29:46	2020-10-31 17:00:01.53765
OM 36 A	Súkromná základná škola BESST, Limbová 3 *	20	16:29:46	2020-10-31 17:00:01.53765
OM 36 B	Súkromná základná škola BESST, Limbová 3 *	20	16:29:45	2020-10-31 17:00:01.53765
OM 37	Trnavská univerzita v Trnave, Pedagogická fakulta, Priemyselná 4	30	16:31:36	2020-10-31 17:00:01.53765
OM 38 A	Kultúrny dom, Sereďská 131, Modranka *	20	16:47:31	2020-10-31 17:00:01.53765
OM 38 B	Kultúrny dom, Sereďská 131, Modranka *	20	16:47:31	2020-10-31 17:00:01.53765
OM 39	Mestská športová hala, Rybníková 576 (ľudia s prechodným pobytom, cudzinci)	20	16:54:28	2020-10-31 17:00:01.53765
OM 1	Radnica, Hlavná 1	44	16:55:52	2020-10-31 17:30:01.572886
OM 2	Mestský úrad v Trnave, Trhová 3	20	17:20:41	2020-10-31 17:30:01.572886
OM 3	Arcibiskupské gymnázium biskupa P. Jantauscha, Hollého 9	30	16:53:23	2020-10-31 17:30:01.572886
OM 4	Kino Hviezda, Paulínska 1	39	16:58:35	2020-10-31 17:30:01.572886
OM 5	Súkromná stredná odborná škola GOS, Ferka Urbánka 19	40	16:34:55	2020-10-31 17:30:01.572886
OM 6	Stredná priemyselná škola dopravná, Študentská 23	30	17:24:27	2020-10-31 17:30:01.572886
OM 7	Stredná priemyselná škola, Komenského 1	42	16:32:25	2020-10-31 17:30:01.572886
OM 8	Základná škola, Andreja Kubinu 34	35	16:43:30	2020-10-31 17:30:01.572886
OM 9	Stredná priemyselná škola, Komenského 1	42	16:43:27	2020-10-31 17:30:01.572886
OM 10	SPŠ stavebná Dušana S. Jurkoviča, Lomonosovova 7	30	17:29:21	2020-10-31 17:30:01.572886
OM 11 A	Základná umelecká škola, Mozartova 10 *	10	17:29:40	2020-10-31 17:30:01.572886
OM 11 B	Základná umelecká škola, Mozartova 10 *	10	17:29:39	2020-10-31 17:30:01.572886
OM 12	Základná umelecká škola, Mozartova 10 *	10	17:29:39	2020-10-31 17:30:01.572886
OM 13	Základná škola, Kornela Mahra 11 *	20	16:37:04	2020-10-31 17:30:01.572886
OM 14	Základná škola, Kornela Mahra 11 *	20	17:01:47	2020-10-31 17:30:01.572886
OM 15 A	Základná škola, Jána Bottu 27 *	25	17:27:46	2020-10-31 17:30:01.572886
OM 15 B	Základná škola, Jána Bottu 27 *	25	17:27:47	2020-10-31 17:30:01.572886
OM 16 A	Základná škola, Andreja Kubinu 34 *	25	17:17:18	2020-10-31 17:30:01.572886
OM 16 B	Základná škola, Andreja Kubinu 34 *	25	17:17:18	2020-10-31 17:30:01.572886
OM 17	Univerzita sv. Cyrila a Metoda, Námestie Jozefa Herdu 2	40	17:18:07	2020-10-31 17:30:01.572886
OM 18 A	Obchodná akadémia, Kukučínova 2 *	25	17:19:39	2020-10-31 17:30:01.572886
OM 18 B	Obchodná akadémia, Kukučínova 2 *	25	17:19:39	2020-10-31 17:30:01.572886
OM 19	Kultúrny dom CUBE, Ľudová 12	39	16:59:11	2020-10-31 17:30:01.572886
OM 20 A	Základná škola, Atómová 1 *	20	17:29:54	2020-10-31 17:30:01.572886
OM 20 B	Základná škola, Atómová 1 *	20	17:29:53	2020-10-31 17:30:01.572886
OM 21	Základná škola, Atómová 1 *	10	17:29:52	2020-10-31 17:30:01.572886
OM 22 A	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	30	16:58:04	2020-10-31 17:30:01.572886
OM 22 B	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	20	16:58:05	2020-10-31 17:30:01.572886
OM 23	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	20	16:58:05	2020-10-31 17:30:01.572886
OM 24	Stredná odborná škola elektrotechnická, Sibírska 1	30	17:13:13	2020-10-31 17:30:01.572886
OM 25	Súkromná SOŠ polytechnická DSA, Koniarekova 15	40	16:54:46	2020-10-31 17:30:01.572886
OM 26	Stredná zdravotnícka škola, Daxnerova 6	60	16:37:50	2020-10-31 17:30:01.572886
OM 27 A	Základná škola, Spartakovská 5 *	20	16:31:11	2020-10-31 17:30:01.572886
OM 27 B	Základná škola, Spartakovská 5 *	20	17:28:31	2020-10-31 17:30:01.572886
OM 28 A	Základná škola, Spartakovská 5 *	20	17:28:31	2020-10-31 17:30:01.572886
OM 28 B	Základná škola, Spartakovská 5 *	20	17:28:30	2020-10-31 17:30:01.572886
OM 29 A	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	10	17:28:16	2020-10-31 17:30:01.572886
OM 29 B	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	10	17:28:15	2020-10-31 17:30:01.572886
OM 30 A	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	16	17:28:15	2020-10-31 17:30:01.572886
OM 30 B	Mestský zimný štadión, Spartakovská 1B (vchod od Hokejky) *	50	16:39:58	2020-10-31 17:30:01.572886
OM 31 A	Základná škola, V Jame 3 *	5	17:28:54	2020-10-31 17:30:01.572886
OM 31 B	Základná škola, V Jame 3 *	2	17:28:53	2020-10-31 17:30:01.572886
OM 32	Základná škola, V Jame 3 *	3	17:28:53	2020-10-31 17:30:01.572886
OM 33 A	Základná škola, Maxima Gorkého 21 *	20	17:18:54	2020-10-31 17:30:01.572886
OM 33 B	Základná škola, Maxima Gorkého 21 *	20	17:18:54	2020-10-31 17:30:01.572886
OM 34 A	Základná škola, Maxima Gorkého 21 *	20	17:18:55	2020-10-31 17:30:01.572886
OM 34 B	Základná škola, Maxima Gorkého 21 *	20	17:18:55	2020-10-31 17:30:01.572886
OM 35 A	Súkromná základná škola BESST, Limbová 3 *	20	17:20:05	2020-10-31 17:30:01.572886
OM 35 B	Súkromná základná škola BESST, Limbová 3 *	20	17:20:05	2020-10-31 17:30:01.572886
OM 36 A	Súkromná základná škola BESST, Limbová 3 *	20	17:20:06	2020-10-31 17:30:01.572886
OM 36 B	Súkromná základná škola BESST, Limbová 3 *	20	17:20:07	2020-10-31 17:30:01.572886
OM 37	Trnavská univerzita v Trnave, Pedagogická fakulta, Priemyselná 4	30	17:29:02	2020-10-31 17:30:01.572886
OM 38 A	Kultúrny dom, Sereďská 131, Modranka *	20	16:47:31	2020-10-31 17:30:01.572886
OM 38 B	Kultúrny dom, Sereďská 131, Modranka *	20	16:47:31	2020-10-31 17:30:01.572886
OM 39	Mestská športová hala, Rybníková 576 (ľudia s prechodným pobytom, cudzinci)	20	16:54:28	2020-10-31 17:30:01.572886
OM 1	Radnica, Hlavná 1	44	16:55:52	2020-10-31 18:00:02.553697
OM 2	Mestský úrad v Trnave, Trhová 3	15	17:45:33	2020-10-31 18:00:02.553697
OM 3	Arcibiskupské gymnázium biskupa P. Jantauscha, Hollého 9	28	17:45:10	2020-10-31 18:00:02.553697
OM 4	Kino Hviezda, Paulínska 1	1	17:44:42	2020-10-31 18:00:02.553697
OM 5	Súkromná stredná odborná škola GOS, Ferka Urbánka 19	40	16:34:55	2020-10-31 18:00:02.553697
OM 6	Stredná priemyselná škola dopravná, Študentská 23	17	17:39:50	2020-10-31 18:00:02.553697
OM 7	Stredná priemyselná škola, Komenského 1	42	16:32:25	2020-10-31 18:00:02.553697
OM 8	Základná škola, Andreja Kubinu 34	3	17:49:47	2020-10-31 18:00:02.553697
OM 9	Stredná priemyselná škola, Komenského 1	12	17:40:04	2020-10-31 18:00:02.553697
OM 10	SPŠ stavebná Dušana S. Jurkoviča, Lomonosovova 7	30	17:29:21	2020-10-31 18:00:02.553697
OM 11 A	Základná umelecká škola, Mozartova 10 *	10	17:40:31	2020-10-31 18:00:02.553697
OM 11 B	Základná umelecká škola, Mozartova 10 *	10	17:40:31	2020-10-31 18:00:02.553697
OM 12	Základná umelecká škola, Mozartova 10 *	10	17:40:30	2020-10-31 18:00:02.553697
OM 13	Základná škola, Kornela Mahra 11 *	20	16:37:04	2020-10-31 18:00:02.553697
OM 14	Základná škola, Kornela Mahra 11 *	20	17:01:47	2020-10-31 18:00:02.553697
OM 15 A	Základná škola, Jána Bottu 27 *	25	17:27:46	2020-10-31 18:00:02.553697
OM 15 B	Základná škola, Jána Bottu 27 *	25	17:27:47	2020-10-31 18:00:02.553697
OM 16 A	Základná škola, Andreja Kubinu 34 *	4	17:49:40	2020-10-31 18:00:02.553697
OM 16 B	Základná škola, Andreja Kubinu 34 *	4	17:49:37	2020-10-31 18:00:02.553697
OM 17	Univerzita sv. Cyrila a Metoda, Námestie Jozefa Herdu 2	40	17:18:07	2020-10-31 18:00:02.553697
OM 18 A	Obchodná akadémia, Kukučínova 2 *	20	17:34:11	2020-10-31 18:00:02.553697
OM 18 B	Obchodná akadémia, Kukučínova 2 *	20	17:34:11	2020-10-31 18:00:02.553697
OM 19	Kultúrny dom CUBE, Ľudová 12	25	17:36:44	2020-10-31 18:00:02.553697
OM 20 A	Základná škola, Atómová 1 *	20	17:29:54	2020-10-31 18:00:02.553697
OM 20 B	Základná škola, Atómová 1 *	20	17:29:53	2020-10-31 18:00:02.553697
OM 21	Základná škola, Atómová 1 *	10	17:29:52	2020-10-31 18:00:02.553697
OM 22 A	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	30	16:58:04	2020-10-31 18:00:02.553697
OM 22 B	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	20	16:58:05	2020-10-31 18:00:02.553697
OM 23	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	20	16:58:05	2020-10-31 18:00:02.553697
OM 24	Stredná odborná škola elektrotechnická, Sibírska 1	30	17:13:13	2020-10-31 18:00:02.553697
OM 25	Súkromná SOŠ polytechnická DSA, Koniarekova 15	40	16:54:46	2020-10-31 18:00:02.553697
OM 26	Stredná zdravotnícka škola, Daxnerova 6	10	17:37:50	2020-10-31 18:00:02.553697
OM 27 A	Základná škola, Spartakovská 5 *	20	16:31:11	2020-10-31 18:00:02.553697
OM 27 B	Základná škola, Spartakovská 5 *	20	17:28:31	2020-10-31 18:00:02.553697
OM 28 A	Základná škola, Spartakovská 5 *	20	17:28:31	2020-10-31 18:00:02.553697
OM 28 B	Základná škola, Spartakovská 5 *	20	17:28:30	2020-10-31 18:00:02.553697
OM 29 A	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	10	17:28:16	2020-10-31 18:00:02.553697
OM 29 B	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	10	17:28:15	2020-10-31 18:00:02.553697
OM 30 A	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	16	17:28:15	2020-10-31 18:00:02.553697
OM 30 B	Mestský zimný štadión, Spartakovská 1B (vchod od Hokejky) *	50	16:39:58	2020-10-31 18:00:02.553697
OM 31 A	Základná škola, V Jame 3 *	5	17:28:54	2020-10-31 18:00:02.553697
OM 31 B	Základná škola, V Jame 3 *	2	17:28:53	2020-10-31 18:00:02.553697
OM 32	Základná škola, V Jame 3 *	3	17:28:53	2020-10-31 18:00:02.553697
OM 33 A	Základná škola, Maxima Gorkého 21 *	20	17:18:54	2020-10-31 18:00:02.553697
OM 33 B	Základná škola, Maxima Gorkého 21 *	20	17:18:54	2020-10-31 18:00:02.553697
OM 34 A	Základná škola, Maxima Gorkého 21 *	20	17:18:55	2020-10-31 18:00:02.553697
OM 34 B	Základná škola, Maxima Gorkého 21 *	20	17:18:55	2020-10-31 18:00:02.553697
OM 35 A	Súkromná základná škola BESST, Limbová 3 *	20	17:20:05	2020-10-31 18:00:02.553697
OM 35 B	Súkromná základná škola BESST, Limbová 3 *	20	17:20:05	2020-10-31 18:00:02.553697
OM 36 A	Súkromná základná škola BESST, Limbová 3 *	20	17:20:06	2020-10-31 18:00:02.553697
OM 36 B	Súkromná základná škola BESST, Limbová 3 *	20	17:20:07	2020-10-31 18:00:02.553697
OM 37	Trnavská univerzita v Trnave, Pedagogická fakulta, Priemyselná 4	30	17:29:02	2020-10-31 18:00:02.553697
OM 38 A	Kultúrny dom, Sereďská 131, Modranka *	20	17:38:19	2020-10-31 18:00:02.553697
OM 38 B	Kultúrny dom, Sereďská 131, Modranka *	15	17:38:19	2020-10-31 18:00:02.553697
OM 39	Mestská športová hala, Rybníková 576 (ľudia s prechodným pobytom, cudzinci)	20	17:54:19	2020-10-31 18:00:02.553697
OM 1	Radnica, Hlavná 1	10	18:11:08	2020-10-31 18:30:02.200138
OM 2	Mestský úrad v Trnave, Trhová 3	5	18:11:13	2020-10-31 18:30:02.200138
OM 3	Arcibiskupské gymnázium biskupa P. Jantauscha, Hollého 9	10	18:19:10	2020-10-31 18:30:02.200138
OM 4	Kino Hviezda, Paulínska 1	30	18:11:20	2020-10-31 18:30:02.200138
OM 5	Súkromná stredná odborná škola GOS, Ferka Urbánka 19	40	16:34:55	2020-10-31 18:30:02.200138
OM 6	Stredná priemyselná škola dopravná, Študentská 23	17	17:39:50	2020-10-31 18:30:02.200138
OM 7	Stredná priemyselná škola, Komenského 1	42	16:32:25	2020-10-31 18:30:02.200138
OM 8	Základná škola, Andreja Kubinu 34	3	17:49:47	2020-10-31 18:30:02.200138
OM 9	Stredná priemyselná škola, Komenského 1	12	17:40:04	2020-10-31 18:30:02.200138
OM 10	SPŠ stavebná Dušana S. Jurkoviča, Lomonosovova 7	30	17:29:21	2020-10-31 18:30:02.200138
OM 11 A	Základná umelecká škola, Mozartova 10 *	10	17:40:31	2020-10-31 18:30:02.200138
OM 11 B	Základná umelecká škola, Mozartova 10 *	10	17:40:31	2020-10-31 18:30:02.200138
OM 12	Základná umelecká škola, Mozartova 10 *	10	17:40:30	2020-10-31 18:30:02.200138
OM 13	Základná škola, Kornela Mahra 11 *	20	16:37:04	2020-10-31 18:30:02.200138
OM 14	Základná škola, Kornela Mahra 11 *	20	17:01:47	2020-10-31 18:30:02.200138
OM 15 A	Základná škola, Jána Bottu 27 *	7	18:00:47	2020-10-31 18:30:02.200138
OM 15 B	Základná škola, Jána Bottu 27 *	8	18:00:52	2020-10-31 18:30:02.200138
OM 16 A	Základná škola, Andreja Kubinu 34 *	4	17:49:40	2020-10-31 18:30:02.200138
OM 16 B	Základná škola, Andreja Kubinu 34 *	4	17:49:37	2020-10-31 18:30:02.200138
OM 17	Univerzita sv. Cyrila a Metoda, Námestie Jozefa Herdu 2	40	17:18:07	2020-10-31 18:30:02.200138
OM 18 A	Obchodná akadémia, Kukučínova 2 *	15	18:16:54	2020-10-31 18:30:02.200138
OM 18 B	Obchodná akadémia, Kukučínova 2 *	15	18:16:53	2020-10-31 18:30:02.200138
OM 19	Kultúrny dom CUBE, Ľudová 12	25	17:36:44	2020-10-31 18:30:02.200138
OM 20 A	Základná škola, Atómová 1 *	20	17:29:54	2020-10-31 18:30:02.200138
OM 20 B	Základná škola, Atómová 1 *	20	17:29:53	2020-10-31 18:30:02.200138
OM 21	Základná škola, Atómová 1 *	10	17:29:52	2020-10-31 18:30:02.200138
OM 22 A	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	30	16:58:04	2020-10-31 18:30:02.200138
OM 22 B	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	20	16:58:05	2020-10-31 18:30:02.200138
OM 23	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	20	16:58:05	2020-10-31 18:30:02.200138
OM 24	Stredná odborná škola elektrotechnická, Sibírska 1	30	17:13:13	2020-10-31 18:30:02.200138
OM 25	Súkromná SOŠ polytechnická DSA, Koniarekova 15	40	16:54:46	2020-10-31 18:30:02.200138
OM 26	Stredná zdravotnícka škola, Daxnerova 6	10	17:37:50	2020-10-31 18:30:02.200138
OM 27 A	Základná škola, Spartakovská 5 *	20	16:31:11	2020-10-31 18:30:02.200138
OM 27 B	Základná škola, Spartakovská 5 *	20	17:28:31	2020-10-31 18:30:02.200138
OM 28 A	Základná škola, Spartakovská 5 *	20	17:28:31	2020-10-31 18:30:02.200138
OM 28 B	Základná škola, Spartakovská 5 *	20	17:28:30	2020-10-31 18:30:02.200138
OM 29 A	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	10	17:28:16	2020-10-31 18:30:02.200138
OM 29 B	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	10	17:28:15	2020-10-31 18:30:02.200138
OM 30 A	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	16	17:28:15	2020-10-31 18:30:02.200138
OM 30 B	Mestský zimný štadión, Spartakovská 1B (vchod od Hokejky) *	10	18:02:13	2020-10-31 18:30:02.200138
OM 31 A	Základná škola, V Jame 3 *	5	17:28:54	2020-10-31 18:30:02.200138
OM 31 B	Základná škola, V Jame 3 *	2	17:28:53	2020-10-31 18:30:02.200138
OM 32	Základná škola, V Jame 3 *	3	17:28:53	2020-10-31 18:30:02.200138
OM 33 A	Základná škola, Maxima Gorkého 21 *	20	17:18:54	2020-10-31 18:30:02.200138
OM 33 B	Základná škola, Maxima Gorkého 21 *	20	17:18:54	2020-10-31 18:30:02.200138
OM 34 A	Základná škola, Maxima Gorkého 21 *	20	17:18:55	2020-10-31 18:30:02.200138
OM 34 B	Základná škola, Maxima Gorkého 21 *	20	17:18:55	2020-10-31 18:30:02.200138
OM 35 A	Súkromná základná škola BESST, Limbová 3 *	20	17:20:05	2020-10-31 18:30:02.200138
OM 35 B	Súkromná základná škola BESST, Limbová 3 *	20	17:20:05	2020-10-31 18:30:02.200138
OM 36 A	Súkromná základná škola BESST, Limbová 3 *	20	17:20:06	2020-10-31 18:30:02.200138
OM 36 B	Súkromná základná škola BESST, Limbová 3 *	20	17:20:07	2020-10-31 18:30:02.200138
OM 37	Trnavská univerzita v Trnave, Pedagogická fakulta, Priemyselná 4	30	17:29:02	2020-10-31 18:30:02.200138
OM 38 A	Kultúrny dom, Sereďská 131, Modranka *	20	17:38:19	2020-10-31 18:30:02.200138
OM 38 B	Kultúrny dom, Sereďská 131, Modranka *	15	17:38:19	2020-10-31 18:30:02.200138
OM 39	Mestská športová hala, Rybníková 576 (ľudia s prechodným pobytom, cudzinci)	20	17:54:19	2020-10-31 18:30:02.200138
OM 1	Radnica, Hlavná 1	50	18:33:11	2020-10-31 19:00:01.27235
OM 2	Mestský úrad v Trnave, Trhová 3	50	18:55:50	2020-10-31 19:00:01.27235
OM 3	Arcibiskupské gymnázium biskupa P. Jantauscha, Hollého 9	10	18:19:10	2020-10-31 19:00:01.27235
OM 4	Kino Hviezda, Paulínska 1	30	18:11:20	2020-10-31 19:00:01.27235
OM 5	Súkromná stredná odborná škola GOS, Ferka Urbánka 19	40	16:34:55	2020-10-31 19:00:01.27235
OM 6	Stredná priemyselná škola dopravná, Študentská 23	50	18:47:09	2020-10-31 19:00:01.27235
OM 7	Stredná priemyselná škola, Komenského 1	42	16:32:25	2020-10-31 19:00:01.27235
OM 8	Základná škola, Andreja Kubinu 34	20	18:57:55	2020-10-31 19:00:01.27235
OM 9	Stredná priemyselná škola, Komenského 1	12	17:40:04	2020-10-31 19:00:01.27235
OM 10	SPŠ stavebná Dušana S. Jurkoviča, Lomonosovova 7	30	17:29:21	2020-10-31 19:00:01.27235
OM 11 A	Základná umelecká škola, Mozartova 10 *	10	17:40:31	2020-10-31 19:00:01.27235
OM 11 B	Základná umelecká škola, Mozartova 10 *	10	17:40:31	2020-10-31 19:00:01.27235
OM 12	Základná umelecká škola, Mozartova 10 *	10	17:40:30	2020-10-31 19:00:01.27235
OM 13	Základná škola, Kornela Mahra 11 *	20	16:37:04	2020-10-31 19:00:01.27235
OM 14	Základná škola, Kornela Mahra 11 *	20	17:01:47	2020-10-31 19:00:01.27235
OM 15 A	Základná škola, Jána Bottu 27 *	40	18:47:59	2020-10-31 19:00:01.27235
OM 15 B	Základná škola, Jána Bottu 27 *	40	18:47:59	2020-10-31 19:00:01.27235
OM 16 A	Základná škola, Andreja Kubinu 34 *	20	18:57:54	2020-10-31 19:00:01.27235
OM 16 B	Základná škola, Andreja Kubinu 34 *	20	18:57:54	2020-10-31 19:00:01.27235
OM 17	Univerzita sv. Cyrila a Metoda, Námestie Jozefa Herdu 2	40	17:18:07	2020-10-31 19:00:01.27235
OM 18 A	Obchodná akadémia, Kukučínova 2 *	15	18:16:54	2020-10-31 19:00:01.27235
OM 18 B	Obchodná akadémia, Kukučínova 2 *	15	18:16:53	2020-10-31 19:00:01.27235
OM 19	Kultúrny dom CUBE, Ľudová 12	25	17:36:44	2020-10-31 19:00:01.27235
OM 20 A	Základná škola, Atómová 1 *	20	17:29:54	2020-10-31 19:00:01.27235
OM 20 B	Základná škola, Atómová 1 *	20	17:29:53	2020-10-31 19:00:01.27235
OM 21	Základná škola, Atómová 1 *	10	17:29:52	2020-10-31 19:00:01.27235
OM 22 A	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	30	16:58:04	2020-10-31 19:00:01.27235
OM 22 B	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	20	16:58:05	2020-10-31 19:00:01.27235
OM 23	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	20	16:58:05	2020-10-31 19:00:01.27235
OM 24	Stredná odborná škola elektrotechnická, Sibírska 1	30	17:13:13	2020-10-31 19:00:01.27235
OM 25	Súkromná SOŠ polytechnická DSA, Koniarekova 15	40	16:54:46	2020-10-31 19:00:01.27235
OM 26	Stredná zdravotnícka škola, Daxnerova 6	10	17:37:50	2020-10-31 19:00:01.27235
OM 27 A	Základná škola, Spartakovská 5 *	20	16:31:11	2020-10-31 19:00:01.27235
OM 27 B	Základná škola, Spartakovská 5 *	20	17:28:31	2020-10-31 19:00:01.27235
OM 28 A	Základná škola, Spartakovská 5 *	20	17:28:31	2020-10-31 19:00:01.27235
OM 28 B	Základná škola, Spartakovská 5 *	20	17:28:30	2020-10-31 19:00:01.27235
OM 29 A	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	10	17:28:16	2020-10-31 19:00:01.27235
OM 29 B	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	10	17:28:15	2020-10-31 19:00:01.27235
OM 30 A	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	16	17:28:15	2020-10-31 19:00:01.27235
OM 30 B	Mestský zimný štadión, Spartakovská 1B (vchod od Hokejky) *	10	18:02:13	2020-10-31 19:00:01.27235
OM 31 A	Základná škola, V Jame 3 *	5	17:28:54	2020-10-31 19:00:01.27235
OM 31 B	Základná škola, V Jame 3 *	2	17:28:53	2020-10-31 19:00:01.27235
OM 32	Základná škola, V Jame 3 *	3	17:28:53	2020-10-31 19:00:01.27235
OM 33 A	Základná škola, Maxima Gorkého 21 *	20	17:18:54	2020-10-31 19:00:01.27235
OM 33 B	Základná škola, Maxima Gorkého 21 *	20	17:18:54	2020-10-31 19:00:01.27235
OM 34 A	Základná škola, Maxima Gorkého 21 *	20	17:18:55	2020-10-31 19:00:01.27235
OM 34 B	Základná škola, Maxima Gorkého 21 *	20	17:18:55	2020-10-31 19:00:01.27235
OM 35 A	Súkromná základná škola BESST, Limbová 3 *	13	18:46:57	2020-10-31 19:00:01.27235
OM 35 B	Súkromná základná škola BESST, Limbová 3 *	13	18:46:57	2020-10-31 19:00:01.27235
OM 36 A	Súkromná základná škola BESST, Limbová 3 *	10	18:46:57	2020-10-31 19:00:01.27235
OM 36 B	Súkromná základná škola BESST, Limbová 3 *	10	18:46:56	2020-10-31 19:00:01.27235
OM 37	Trnavská univerzita v Trnave, Pedagogická fakulta, Priemyselná 4	30	17:29:02	2020-10-31 19:00:01.27235
OM 38 A	Kultúrny dom, Sereďská 131, Modranka *	20	17:38:19	2020-10-31 19:00:01.27235
OM 38 B	Kultúrny dom, Sereďská 131, Modranka *	15	17:38:19	2020-10-31 19:00:01.27235
OM 39	Mestská športová hala, Rybníková 576 (ľudia s prechodným pobytom, cudzinci)	20	17:54:19	2020-10-31 19:00:01.27235
OM 1	Radnica, Hlavná 1	50	18:33:11	2020-10-31 19:30:01.566725
OM 2	Mestský úrad v Trnave, Trhová 3	50	18:55:50	2020-10-31 19:30:01.566725
OM 3	Arcibiskupské gymnázium biskupa P. Jantauscha, Hollého 9	10	18:19:10	2020-10-31 19:30:01.566725
OM 4	Kino Hviezda, Paulínska 1	30	18:11:20	2020-10-31 19:30:01.566725
OM 5	Súkromná stredná odborná škola GOS, Ferka Urbánka 19	10	19:14:43	2020-10-31 19:30:01.566725
OM 6	Stredná priemyselná škola dopravná, Študentská 23	10	19:29:04	2020-10-31 19:30:01.566725
OM 7	Stredná priemyselná škola, Komenského 1	10	19:29:45	2020-10-31 19:30:01.566725
OM 8	Základná škola, Andreja Kubinu 34	20	18:57:55	2020-10-31 19:30:01.566725
OM 9	Stredná priemyselná škola, Komenského 1	10	19:29:45	2020-10-31 19:30:01.566725
OM 10	SPŠ stavebná Dušana S. Jurkoviča, Lomonosovova 7	20	19:18:11	2020-10-31 19:30:01.566725
OM 11 A	Základná umelecká škola, Mozartova 10 *	10	17:40:31	2020-10-31 19:30:01.566725
OM 11 B	Základná umelecká škola, Mozartova 10 *	10	17:40:31	2020-10-31 19:30:01.566725
OM 12	Základná umelecká škola, Mozartova 10 *	10	17:40:30	2020-10-31 19:30:01.566725
OM 13	Základná škola, Kornela Mahra 11 *	20	16:37:04	2020-10-31 19:30:01.566725
OM 14	Základná škola, Kornela Mahra 11 *	20	17:01:47	2020-10-31 19:30:01.566725
OM 15 A	Základná škola, Jána Bottu 27 *	40	18:47:59	2020-10-31 19:30:01.566725
OM 15 B	Základná škola, Jána Bottu 27 *	40	18:47:59	2020-10-31 19:30:01.566725
OM 16 A	Základná škola, Andreja Kubinu 34 *	20	19:13:24	2020-10-31 19:30:01.566725
OM 16 B	Základná škola, Andreja Kubinu 34 *	20	19:13:25	2020-10-31 19:30:01.566725
OM 17	Univerzita sv. Cyrila a Metoda, Námestie Jozefa Herdu 2	40	17:18:07	2020-10-31 19:30:01.566725
OM 18 A	Obchodná akadémia, Kukučínova 2 *	15	18:16:54	2020-10-31 19:30:01.566725
OM 18 B	Obchodná akadémia, Kukučínova 2 *	15	18:16:53	2020-10-31 19:30:01.566725
OM 19	Kultúrny dom CUBE, Ľudová 12	20	19:16:40	2020-10-31 19:30:01.566725
OM 20 A	Základná škola, Atómová 1 *	20	17:29:54	2020-10-31 19:30:01.566725
OM 20 B	Základná škola, Atómová 1 *	20	17:29:53	2020-10-31 19:30:01.566725
OM 21	Základná škola, Atómová 1 *	10	17:29:52	2020-10-31 19:30:01.566725
OM 22 A	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	30	16:58:04	2020-10-31 19:30:01.566725
OM 22 B	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	20	16:58:05	2020-10-31 19:30:01.566725
OM 23	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	20	16:58:05	2020-10-31 19:30:01.566725
OM 24	Stredná odborná škola elektrotechnická, Sibírska 1	30	17:13:13	2020-10-31 19:30:01.566725
OM 25	Súkromná SOŠ polytechnická DSA, Koniarekova 15	40	16:54:46	2020-10-31 19:30:01.566725
OM 26	Stredná zdravotnícka škola, Daxnerova 6	60	19:03:53	2020-10-31 19:30:01.566725
OM 27 A	Základná škola, Spartakovská 5 *	20	16:31:11	2020-10-31 19:30:01.566725
OM 27 B	Základná škola, Spartakovská 5 *	20	17:28:31	2020-10-31 19:30:01.566725
OM 28 A	Základná škola, Spartakovská 5 *	20	17:28:31	2020-10-31 19:30:01.566725
OM 28 B	Základná škola, Spartakovská 5 *	20	17:28:30	2020-10-31 19:30:01.566725
OM 29 A	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	10	17:28:16	2020-10-31 19:30:01.566725
OM 29 B	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	10	17:28:15	2020-10-31 19:30:01.566725
OM 30 A	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	16	17:28:15	2020-10-31 19:30:01.566725
OM 30 B	Mestský zimný štadión, Spartakovská 1B (vchod od Hokejky) *	10	18:02:13	2020-10-31 19:30:01.566725
OM 31 A	Základná škola, V Jame 3 *	20	19:00:05	2020-10-31 19:30:01.566725
OM 31 B	Základná škola, V Jame 3 *	20	19:00:05	2020-10-31 19:30:01.566725
OM 32	Základná škola, V Jame 3 *	20	19:00:06	2020-10-31 19:30:01.566725
OM 33 A	Základná škola, Maxima Gorkého 21 *	20	17:18:54	2020-10-31 19:30:01.566725
OM 33 B	Základná škola, Maxima Gorkého 21 *	20	17:18:54	2020-10-31 19:30:01.566725
OM 34 A	Základná škola, Maxima Gorkého 21 *	20	17:18:55	2020-10-31 19:30:01.566725
OM 34 B	Základná škola, Maxima Gorkého 21 *	20	17:18:55	2020-10-31 19:30:01.566725
OM 35 A	Súkromná základná škola BESST, Limbová 3 *	13	18:46:57	2020-10-31 19:30:01.566725
OM 35 B	Súkromná základná škola BESST, Limbová 3 *	13	18:46:57	2020-10-31 19:30:01.566725
OM 36 A	Súkromná základná škola BESST, Limbová 3 *	10	18:46:57	2020-10-31 19:30:01.566725
OM 36 B	Súkromná základná škola BESST, Limbová 3 *	10	18:46:56	2020-10-31 19:30:01.566725
OM 37	Trnavská univerzita v Trnave, Pedagogická fakulta, Priemyselná 4	30	17:29:02	2020-10-31 19:30:01.566725
OM 38 A	Kultúrny dom, Sereďská 131, Modranka *	20	17:38:19	2020-10-31 19:30:01.566725
OM 38 B	Kultúrny dom, Sereďská 131, Modranka *	15	17:38:19	2020-10-31 19:30:01.566725
OM 39	Mestská športová hala, Rybníková 576 (ľudia s prechodným pobytom, cudzinci)	20	17:54:19	2020-10-31 19:30:01.566725
OM 1	Radnica, Hlavná 1	50	18:33:11	2020-10-31 20:00:01.449863
OM 2	Mestský úrad v Trnave, Trhová 3	25	19:38:14	2020-10-31 20:00:01.449863
OM 3	Arcibiskupské gymnázium biskupa P. Jantauscha, Hollého 9	50	19:45:35	2020-10-31 20:00:01.449863
OM 4	Kino Hviezda, Paulínska 1	25	19:48:30	2020-10-31 20:00:01.449863
OM 5	Súkromná stredná odborná škola GOS, Ferka Urbánka 19	39	19:46:06	2020-10-31 20:00:01.449863
OM 6	Stredná priemyselná škola dopravná, Študentská 23	10	19:45:56	2020-10-31 20:00:01.449863
OM 7	Stredná priemyselná škola, Komenského 1	10	19:29:45	2020-10-31 20:00:01.449863
OM 8	Základná škola, Andreja Kubinu 34	20	18:57:55	2020-10-31 20:00:01.449863
OM 9	Stredná priemyselná škola, Komenského 1	23	19:45:46	2020-10-31 20:00:01.449863
OM 10	SPŠ stavebná Dušana S. Jurkoviča, Lomonosovova 7	8	19:47:09	2020-10-31 20:00:01.449863
OM 11 A	Základná umelecká škola, Mozartova 10 *	20	19:48:14	2020-10-31 20:00:01.449863
OM 11 B	Základná umelecká škola, Mozartova 10 *	20	19:48:14	2020-10-31 20:00:01.449863
OM 12	Základná umelecká škola, Mozartova 10 *	25	19:48:13	2020-10-31 20:00:01.449863
OM 13	Základná škola, Kornela Mahra 11 *	15	19:46:43	2020-10-31 20:00:01.449863
OM 14	Základná škola, Kornela Mahra 11 *	5	19:46:43	2020-10-31 20:00:01.449863
OM 15 A	Základná škola, Jána Bottu 27 *	25	19:45:12	2020-10-31 20:00:01.449863
OM 15 B	Základná škola, Jána Bottu 27 *	20	19:45:13	2020-10-31 20:00:01.449863
OM 16 A	Základná škola, Andreja Kubinu 34 *	20	19:44:55	2020-10-31 20:00:01.449863
OM 16 B	Základná škola, Andreja Kubinu 34 *	15	19:44:56	2020-10-31 20:00:01.449863
OM 17	Univerzita sv. Cyrila a Metoda, Námestie Jozefa Herdu 2	25	19:44:18	2020-10-31 20:00:01.449863
OM 18 A	Obchodná akadémia, Kukučínova 2 *	35	19:32:21	2020-10-31 20:00:01.449863
OM 18 B	Obchodná akadémia, Kukučínova 2 *	30	19:32:21	2020-10-31 20:00:01.449863
OM 19	Kultúrny dom CUBE, Ľudová 12	17	19:31:38	2020-10-31 20:00:01.449863
OM 20 A	Základná škola, Atómová 1 *	5	19:51:57	2020-10-31 20:00:01.449863
OM 20 B	Základná škola, Atómová 1 *	0	19:51:58	2020-10-31 20:00:01.449863
OM 21	Základná škola, Atómová 1 *	0	19:51:58	2020-10-31 20:00:01.449863
OM 22 A	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	20	19:31:12	2020-10-31 20:00:01.449863
OM 22 B	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	20	19:31:11	2020-10-31 20:00:01.449863
OM 23	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	11	19:31:11	2020-10-31 20:00:01.449863
OM 24	Stredná odborná škola elektrotechnická, Sibírska 1	60	19:31:24	2020-10-31 20:00:01.449863
OM 25	Súkromná SOŠ polytechnická DSA, Koniarekova 15	33	19:30:30	2020-10-31 20:00:01.449863
OM 26	Stredná zdravotnícka škola, Daxnerova 6	15	19:30:05	2020-10-31 20:00:01.449863
OM 27 A	Základná škola, Spartakovská 5 *	20	19:34:09	2020-10-31 20:00:01.449863
OM 27 B	Základná škola, Spartakovská 5 *	20	17:28:31	2020-10-31 20:00:01.449863
OM 28 A	Základná škola, Spartakovská 5 *	20	17:28:31	2020-10-31 20:00:01.449863
OM 28 B	Základná škola, Spartakovská 5 *	20	17:28:30	2020-10-31 20:00:01.449863
OM 29 A	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	10	17:28:16	2020-10-31 20:00:01.449863
OM 29 B	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	10	17:28:15	2020-10-31 20:00:01.449863
OM 30 A	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	16	17:28:15	2020-10-31 20:00:01.449863
OM 30 B	Mestský zimný štadión, Spartakovská 1B (vchod od Hokejky) *	10	19:55:15	2020-10-31 20:00:01.449863
OM 31 A	Základná škola, V Jame 3 *	20	19:00:05	2020-10-31 20:00:01.449863
OM 31 B	Základná škola, V Jame 3 *	20	19:00:05	2020-10-31 20:00:01.449863
OM 32	Základná škola, V Jame 3 *	20	19:48:57	2020-10-31 20:00:01.449863
OM 33 A	Základná škola, Maxima Gorkého 21 *	5	19:53:11	2020-10-31 20:00:01.449863
OM 33 B	Základná škola, Maxima Gorkého 21 *	5	19:53:11	2020-10-31 20:00:01.449863
OM 34 A	Základná škola, Maxima Gorkého 21 *	20	19:53:10	2020-10-31 20:00:01.449863
OM 34 B	Základná škola, Maxima Gorkého 21 *	10	19:53:10	2020-10-31 20:00:01.449863
OM 35 A	Súkromná základná škola BESST, Limbová 3 *	20	19:58:50	2020-10-31 20:00:01.449863
OM 35 B	Súkromná základná škola BESST, Limbová 3 *	20	19:58:51	2020-10-31 20:00:01.449863
OM 36 A	Súkromná základná škola BESST, Limbová 3 *	25	19:58:51	2020-10-31 20:00:01.449863
OM 36 B	Súkromná základná škola BESST, Limbová 3 *	15	19:58:52	2020-10-31 20:00:01.449863
OM 37	Trnavská univerzita v Trnave, Pedagogická fakulta, Priemyselná 4	40	19:50:08	2020-10-31 20:00:01.449863
OM 38 A	Kultúrny dom, Sereďská 131, Modranka *	20	17:38:19	2020-10-31 20:00:01.449863
OM 38 B	Kultúrny dom, Sereďská 131, Modranka *	15	17:38:19	2020-10-31 20:00:01.449863
OM 39	Mestská športová hala, Rybníková 576 (ľudia s prechodným pobytom, cudzinci)	0	19:46:54	2020-10-31 20:00:01.449863
OM 1	Radnica, Hlavná 1	50	18:33:11	2020-10-31 20:30:01.671247
OM 2	Mestský úrad v Trnave, Trhová 3	25	19:38:14	2020-10-31 20:30:01.671247
OM 3	Arcibiskupské gymnázium biskupa P. Jantauscha, Hollého 9	25	20:09:19	2020-10-31 20:30:01.671247
OM 4	Kino Hviezda, Paulínska 1	25	19:48:30	2020-10-31 20:30:01.671247
OM 5	Súkromná stredná odborná škola GOS, Ferka Urbánka 19	0	20:20:14	2020-10-31 20:30:01.671247
OM 6	Stredná priemyselná škola dopravná, Študentská 23	6	20:10:19	2020-10-31 20:30:01.671247
OM 7	Stredná priemyselná škola, Komenského 1	6	20:10:20	2020-10-31 20:30:01.671247
OM 8	Základná škola, Andreja Kubinu 34	20	18:57:55	2020-10-31 20:30:01.671247
OM 9	Stredná priemyselná škola, Komenského 1	23	19:45:46	2020-10-31 20:30:01.671247
OM 10	SPŠ stavebná Dušana S. Jurkoviča, Lomonosovova 7	8	19:47:09	2020-10-31 20:30:01.671247
OM 11 A	Základná umelecká škola, Mozartova 10 *	20	19:48:14	2020-10-31 20:30:01.671247
OM 11 B	Základná umelecká škola, Mozartova 10 *	20	19:48:14	2020-10-31 20:30:01.671247
OM 12	Základná umelecká škola, Mozartova 10 *	25	19:48:13	2020-10-31 20:30:01.671247
OM 13	Základná škola, Kornela Mahra 11 *	0	20:22:41	2020-10-31 20:30:01.671247
OM 14	Základná škola, Kornela Mahra 11 *	0	20:22:42	2020-10-31 20:30:01.671247
OM 15 A	Základná škola, Jána Bottu 27 *	4	20:22:27	2020-10-31 20:30:01.671247
OM 15 B	Základná škola, Jána Bottu 27 *	4	20:22:26	2020-10-31 20:30:01.671247
OM 16 A	Základná škola, Andreja Kubinu 34 *	20	19:44:55	2020-10-31 20:30:01.671247
OM 16 B	Základná škola, Andreja Kubinu 34 *	15	19:44:56	2020-10-31 20:30:01.671247
OM 17	Univerzita sv. Cyrila a Metoda, Námestie Jozefa Herdu 2	25	19:44:18	2020-10-31 20:30:01.671247
OM 18 A	Obchodná akadémia, Kukučínova 2 *	35	19:32:21	2020-10-31 20:30:01.671247
OM 18 B	Obchodná akadémia, Kukučínova 2 *	30	19:32:21	2020-10-31 20:30:01.671247
OM 19	Kultúrny dom CUBE, Ľudová 12	17	19:31:38	2020-10-31 20:30:01.671247
OM 20 A	Základná škola, Atómová 1 *	0	20:20:31	2020-10-31 20:30:01.671247
OM 20 B	Základná škola, Atómová 1 *	0	20:20:33	2020-10-31 20:30:01.671247
OM 21	Základná škola, Atómová 1 *	0	20:20:35	2020-10-31 20:30:01.671247
OM 22 A	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	13	20:29:06	2020-10-31 20:30:01.671247
OM 22 B	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	13	20:29:05	2020-10-31 20:30:01.671247
OM 23	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	14	20:29:05	2020-10-31 20:30:01.671247
OM 24	Stredná odborná škola elektrotechnická, Sibírska 1	60	19:31:24	2020-10-31 20:30:01.671247
OM 25	Súkromná SOŠ polytechnická DSA, Koniarekova 15	33	19:30:30	2020-10-31 20:30:01.671247
OM 26	Stredná zdravotnícka škola, Daxnerova 6	15	19:30:05	2020-10-31 20:30:01.671247
OM 27 A	Základná škola, Spartakovská 5 *	2	20:11:56	2020-10-31 20:30:01.671247
OM 27 B	Základná škola, Spartakovská 5 *	3	20:11:56	2020-10-31 20:30:01.671247
OM 28 A	Základná škola, Spartakovská 5 *	3	20:11:58	2020-10-31 20:30:01.671247
OM 28 B	Základná škola, Spartakovská 5 *	2	20:11:58	2020-10-31 20:30:01.671247
OM 29 A	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	0	20:12:52	2020-10-31 20:30:01.671247
OM 29 B	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	0	20:12:54	2020-10-31 20:30:01.671247
OM 30 A	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	0	20:12:56	2020-10-31 20:30:01.671247
OM 30 B	Mestský zimný štadión, Spartakovská 1B (vchod od Hokejky) *	10	20:12:47	2020-10-31 20:30:01.671247
OM 31 A	Základná škola, V Jame 3 *	4	20:11:01	2020-10-31 20:30:01.671247
OM 31 B	Základná škola, V Jame 3 *	4	20:11:02	2020-10-31 20:30:01.671247
OM 32	Základná škola, V Jame 3 *	4	20:11:02	2020-10-31 20:30:01.671247
OM 33 A	Základná škola, Maxima Gorkého 21 *	5	19:53:11	2020-10-31 20:30:01.671247
OM 33 B	Základná škola, Maxima Gorkého 21 *	5	19:53:11	2020-10-31 20:30:01.671247
OM 34 A	Základná škola, Maxima Gorkého 21 *	20	19:53:10	2020-10-31 20:30:01.671247
OM 34 B	Základná škola, Maxima Gorkého 21 *	10	19:53:10	2020-10-31 20:30:01.671247
OM 35 A	Súkromná základná škola BESST, Limbová 3 *	20	19:58:50	2020-10-31 20:30:01.671247
OM 35 B	Súkromná základná škola BESST, Limbová 3 *	20	19:58:51	2020-10-31 20:30:01.671247
OM 36 A	Súkromná základná škola BESST, Limbová 3 *	25	19:58:51	2020-10-31 20:30:01.671247
OM 36 B	Súkromná základná škola BESST, Limbová 3 *	15	19:58:52	2020-10-31 20:30:01.671247
OM 37	Trnavská univerzita v Trnave, Pedagogická fakulta, Priemyselná 4	37	20:12:35	2020-10-31 20:30:01.671247
OM 38 A	Kultúrny dom, Sereďská 131, Modranka *	20	17:38:19	2020-10-31 20:30:01.671247
OM 38 B	Kultúrny dom, Sereďská 131, Modranka *	15	17:38:19	2020-10-31 20:30:01.671247
OM 39	Mestská športová hala, Rybníková 576 (ľudia s prechodným pobytom, cudzinci)	0	19:46:54	2020-10-31 20:30:01.671247
OM 1	Radnica, Hlavná 1	50	18:33:11	2020-10-31 21:00:01.793594
OM 2	Mestský úrad v Trnave, Trhová 3	25	19:38:14	2020-10-31 21:00:01.793594
OM 3	Arcibiskupské gymnázium biskupa P. Jantauscha, Hollého 9	13	20:55:46	2020-10-31 21:00:01.793594
OM 4	Kino Hviezda, Paulínska 1	2	20:38:34	2020-10-31 21:00:01.793594
OM 5	Súkromná stredná odborná škola GOS, Ferka Urbánka 19	0	20:20:14	2020-10-31 21:00:01.793594
OM 6	Stredná priemyselná škola dopravná, Študentská 23	6	20:10:19	2020-10-31 21:00:01.793594
OM 7	Stredná priemyselná škola, Komenského 1	6	20:10:20	2020-10-31 21:00:01.793594
OM 8	Základná škola, Andreja Kubinu 34	10	20:40:34	2020-10-31 21:00:01.793594
OM 9	Stredná priemyselná škola, Komenského 1	23	19:45:46	2020-10-31 21:00:01.793594
OM 10	SPŠ stavebná Dušana S. Jurkoviča, Lomonosovova 7	8	19:47:09	2020-10-31 21:00:01.793594
OM 11 A	Základná umelecká škola, Mozartova 10 *	0	20:52:35	2020-10-31 21:00:01.793594
OM 11 B	Základná umelecká škola, Mozartova 10 *	0	20:52:36	2020-10-31 21:00:01.793594
OM 12	Základná umelecká škola, Mozartova 10 *	2	20:52:37	2020-10-31 21:00:01.793594
OM 13	Základná škola, Kornela Mahra 11 *	0	20:44:27	2020-10-31 21:00:01.793594
OM 14	Základná škola, Kornela Mahra 11 *	0	20:44:27	2020-10-31 21:00:01.793594
OM 15 A	Základná škola, Jána Bottu 27 *	0	20:46:30	2020-10-31 21:00:01.793594
OM 15 B	Základná škola, Jána Bottu 27 *	0	20:46:31	2020-10-31 21:00:01.793594
OM 16 A	Základná škola, Andreja Kubinu 34 *	10	20:40:33	2020-10-31 21:00:01.793594
OM 16 B	Základná škola, Andreja Kubinu 34 *	10	20:40:33	2020-10-31 21:00:01.793594
OM 17	Univerzita sv. Cyrila a Metoda, Námestie Jozefa Herdu 2	25	19:44:18	2020-10-31 21:00:01.793594
OM 18 A	Obchodná akadémia, Kukučínova 2 *	0	20:43:44	2020-10-31 21:00:01.793594
OM 18 B	Obchodná akadémia, Kukučínova 2 *	0	20:43:43	2020-10-31 21:00:01.793594
OM 19	Kultúrny dom CUBE, Ľudová 12	17	19:31:38	2020-10-31 21:00:01.793594
OM 20 A	Základná škola, Atómová 1 *	1	20:30:53	2020-10-31 21:00:01.793594
OM 20 B	Základná škola, Atómová 1 *	1	20:30:54	2020-10-31 21:00:01.793594
OM 21	Základná škola, Atómová 1 *	2	20:30:54	2020-10-31 21:00:01.793594
OM 22 A	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	0	20:55:08	2020-10-31 21:00:01.793594
OM 22 B	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	2	20:56:49	2020-10-31 21:00:01.793594
OM 23	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	 ZATVORENÉ 	20:56:53	2020-10-31 21:00:01.793594
OM 24	Stredná odborná škola elektrotechnická, Sibírska 1	10	20:47:28	2020-10-31 21:00:01.793594
OM 25	Súkromná SOŠ polytechnická DSA, Koniarekova 15	33	19:30:30	2020-10-31 21:00:01.793594
OM 26	Stredná zdravotnícka škola, Daxnerova 6	15	19:30:05	2020-10-31 21:00:01.793594
OM 27 A	Základná škola, Spartakovská 5 *	2	20:11:56	2020-10-31 21:00:01.793594
OM 27 B	Základná škola, Spartakovská 5 *	3	20:11:56	2020-10-31 21:00:01.793594
OM 28 A	Základná škola, Spartakovská 5 *	3	20:11:58	2020-10-31 21:00:01.793594
OM 28 B	Základná škola, Spartakovská 5 *	2	20:11:58	2020-10-31 21:00:01.793594
OM 29 A	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	0	20:12:52	2020-10-31 21:00:01.793594
OM 29 B	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	0	20:12:54	2020-10-31 21:00:01.793594
OM 30 A	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	0	20:12:56	2020-10-31 21:00:01.793594
OM 30 B	Mestský zimný štadión, Spartakovská 1B (vchod od Hokejky) *	10	20:12:47	2020-10-31 21:00:01.793594
OM 31 A	Základná škola, V Jame 3 *	4	20:11:01	2020-10-31 21:00:01.793594
OM 31 B	Základná škola, V Jame 3 *	4	20:11:02	2020-10-31 21:00:01.793594
OM 32	Základná škola, V Jame 3 *	4	20:11:02	2020-10-31 21:00:01.793594
OM 33 A	Základná škola, Maxima Gorkého 21 *	5	19:53:11	2020-10-31 21:00:01.793594
OM 33 B	Základná škola, Maxima Gorkého 21 *	5	19:53:11	2020-10-31 21:00:01.793594
OM 34 A	Základná škola, Maxima Gorkého 21 *	20	19:53:10	2020-10-31 21:00:01.793594
OM 34 B	Základná škola, Maxima Gorkého 21 *	10	19:53:10	2020-10-31 21:00:01.793594
OM 35 A	Súkromná základná škola BESST, Limbová 3 *	20	19:58:50	2020-10-31 21:00:01.793594
OM 35 B	Súkromná základná škola BESST, Limbová 3 *	20	19:58:51	2020-10-31 21:00:01.793594
OM 36 A	Súkromná základná škola BESST, Limbová 3 *	25	19:58:51	2020-10-31 21:00:01.793594
OM 36 B	Súkromná základná škola BESST, Limbová 3 *	15	19:58:52	2020-10-31 21:00:01.793594
OM 37	Trnavská univerzita v Trnave, Pedagogická fakulta, Priemyselná 4	 ZATVORENÉ 	20:55:32	2020-10-31 21:00:01.793594
OM 38 A	Kultúrny dom, Sereďská 131, Modranka *	25	20:32:14	2020-10-31 21:00:01.793594
OM 38 B	Kultúrny dom, Sereďská 131, Modranka *	25	20:32:14	2020-10-31 21:00:01.793594
OM 39	Mestská športová hala, Rybníková 576 (ľudia s prechodným pobytom, cudzinci)	0	19:46:54	2020-10-31 21:00:01.793594
OM 1	Radnica, Hlavná 1	50	18:33:11	2020-10-31 21:30:02.196239
OM 2	Mestský úrad v Trnave, Trhová 3	25	19:38:14	2020-10-31 21:30:02.196239
OM 3	Arcibiskupské gymnázium biskupa P. Jantauscha, Hollého 9	13	20:55:46	2020-10-31 21:30:02.196239
OM 4	Kino Hviezda, Paulínska 1	2	20:38:34	2020-10-31 21:30:02.196239
OM 5	Súkromná stredná odborná škola GOS, Ferka Urbánka 19	0	20:20:14	2020-10-31 21:30:02.196239
OM 6	Stredná priemyselná škola dopravná, Študentská 23	0	21:06:49	2020-10-31 21:30:02.196239
OM 7	Stredná priemyselná škola, Komenského 1	6	20:10:20	2020-10-31 21:30:02.196239
OM 8	Základná škola, Andreja Kubinu 34	10	20:40:34	2020-10-31 21:30:02.196239
OM 9	Stredná priemyselná škola, Komenského 1	23	19:45:46	2020-10-31 21:30:02.196239
OM 10	SPŠ stavebná Dušana S. Jurkoviča, Lomonosovova 7	8	19:47:09	2020-10-31 21:30:02.196239
OM 11 A	Základná umelecká škola, Mozartova 10 *	0	20:52:35	2020-10-31 21:30:02.196239
OM 11 B	Základná umelecká škola, Mozartova 10 *	0	20:52:36	2020-10-31 21:30:02.196239
OM 12	Základná umelecká škola, Mozartova 10 *	2	20:52:37	2020-10-31 21:30:02.196239
OM 13	Základná škola, Kornela Mahra 11 *	0	20:44:27	2020-10-31 21:30:02.196239
OM 14	Základná škola, Kornela Mahra 11 *	0	20:44:27	2020-10-31 21:30:02.196239
OM 15 A	Základná škola, Jána Bottu 27 *	0	20:46:30	2020-10-31 21:30:02.196239
OM 15 B	Základná škola, Jána Bottu 27 *	0	20:46:31	2020-10-31 21:30:02.196239
OM 16 A	Základná škola, Andreja Kubinu 34 *	10	20:40:33	2020-10-31 21:30:02.196239
OM 16 B	Základná škola, Andreja Kubinu 34 *	10	20:40:33	2020-10-31 21:30:02.196239
OM 17	Univerzita sv. Cyrila a Metoda, Námestie Jozefa Herdu 2	25	19:44:18	2020-10-31 21:30:02.196239
OM 18 A	Obchodná akadémia, Kukučínova 2 *	0	20:43:44	2020-10-31 21:30:02.196239
OM 18 B	Obchodná akadémia, Kukučínova 2 *	0	20:43:43	2020-10-31 21:30:02.196239
OM 19	Kultúrny dom CUBE, Ľudová 12	17	19:31:38	2020-10-31 21:30:02.196239
OM 20 A	Základná škola, Atómová 1 *	1	20:30:53	2020-10-31 21:30:02.196239
OM 20 B	Základná škola, Atómová 1 *	1	20:30:54	2020-10-31 21:30:02.196239
OM 21	Základná škola, Atómová 1 *	2	20:30:54	2020-10-31 21:30:02.196239
OM 22 A	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	0	20:55:08	2020-10-31 21:30:02.196239
OM 22 B	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	2	20:56:49	2020-10-31 21:30:02.196239
OM 23	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	 ZATVORENÉ 	20:56:53	2020-10-31 21:30:02.196239
OM 24	Stredná odborná škola elektrotechnická, Sibírska 1	10	20:47:28	2020-10-31 21:30:02.196239
OM 25	Súkromná SOŠ polytechnická DSA, Koniarekova 15	33	19:30:30	2020-10-31 21:30:02.196239
OM 26	Stredná zdravotnícka škola, Daxnerova 6	15	19:30:05	2020-10-31 21:30:02.196239
OM 27 A	Základná škola, Spartakovská 5 *	2	20:11:56	2020-10-31 21:30:02.196239
OM 27 B	Základná škola, Spartakovská 5 *	3	20:11:56	2020-10-31 21:30:02.196239
OM 28 A	Základná škola, Spartakovská 5 *	3	20:11:58	2020-10-31 21:30:02.196239
OM 28 B	Základná škola, Spartakovská 5 *	2	20:11:58	2020-10-31 21:30:02.196239
OM 29 A	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	0	20:12:52	2020-10-31 21:30:02.196239
OM 29 B	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	0	20:12:54	2020-10-31 21:30:02.196239
OM 30 A	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	0	20:12:56	2020-10-31 21:30:02.196239
OM 30 B	Mestský zimný štadión, Spartakovská 1B (vchod od Hokejky) *	10	20:12:47	2020-10-31 21:30:02.196239
OM 31 A	Základná škola, V Jame 3 *	0	21:10:00	2020-10-31 21:30:02.196239
OM 31 B	Základná škola, V Jame 3 *	0	21:10:00	2020-10-31 21:30:02.196239
OM 32	Základná škola, V Jame 3 *	0	21:10:01	2020-10-31 21:30:02.196239
OM 33 A	Základná škola, Maxima Gorkého 21 *	5	19:53:11	2020-10-31 21:30:02.196239
OM 33 B	Základná škola, Maxima Gorkého 21 *	5	19:53:11	2020-10-31 21:30:02.196239
OM 34 A	Základná škola, Maxima Gorkého 21 *	20	19:53:10	2020-10-31 21:30:02.196239
OM 34 B	Základná škola, Maxima Gorkého 21 *	10	19:53:10	2020-10-31 21:30:02.196239
OM 35 A	Súkromná základná škola BESST, Limbová 3 *	20	19:58:50	2020-10-31 21:30:02.196239
OM 35 B	Súkromná základná škola BESST, Limbová 3 *	20	19:58:51	2020-10-31 21:30:02.196239
OM 36 A	Súkromná základná škola BESST, Limbová 3 *	25	19:58:51	2020-10-31 21:30:02.196239
OM 36 B	Súkromná základná škola BESST, Limbová 3 *	15	19:58:52	2020-10-31 21:30:02.196239
OM 37	Trnavská univerzita v Trnave, Pedagogická fakulta, Priemyselná 4	 ZATVORENÉ 	20:55:32	2020-10-31 21:30:02.196239
OM 38 A	Kultúrny dom, Sereďská 131, Modranka *	25	20:32:14	2020-10-31 21:30:02.196239
OM 38 B	Kultúrny dom, Sereďská 131, Modranka *	25	20:32:14	2020-10-31 21:30:02.196239
OM 39	Mestská športová hala, Rybníková 576 (ľudia s prechodným pobytom, cudzinci)	0	19:46:54	2020-10-31 21:30:02.196239
OM 1	Radnica, Hlavná 1	1	09:18:33	2020-11-01 10:25:34.532278
OM 2	Mestský úrad v Trnave, Trhová 3	1	09:18:34	2020-11-01 10:25:34.532278
OM 3	Arcibiskupské gymnázium biskupa P. Jantauscha, Hollého 9	1	09:18:35	2020-11-01 10:25:34.532278
OM 4	Kino Hviezda, Paulínska 1	1	09:18:37	2020-11-01 10:25:34.532278
OM 5	Súkromná stredná odborná škola GOS, Ferka Urbánka 19	1	09:18:38	2020-11-01 10:25:34.532278
OM 6	Stredná priemyselná škola dopravná, Študentská 23	1	09:18:40	2020-11-01 10:25:34.532278
OM 7	Stredná priemyselná škola, Komenského 1	1	09:18:41	2020-11-01 10:25:34.532278
OM 8	Základná škola, Andreja Kubinu 34	1	09:18:42	2020-11-01 10:25:34.532278
OM 9	Stredná priemyselná škola, Komenského 1	1	09:18:43	2020-11-01 10:25:34.532278
OM 10	SPŠ stavebná Dušana S. Jurkoviča, Lomonosovova 7	1	09:18:45	2020-11-01 10:25:34.532278
OM 11 A	Základná umelecká škola, Mozartova 10 *	1	09:18:47	2020-11-01 10:25:34.532278
OM 11 B	Základná umelecká škola, Mozartova 10 *	1	09:18:48	2020-11-01 10:25:34.532278
OM 12	Základná umelecká škola, Mozartova 10 *	1	09:18:49	2020-11-01 10:25:34.532278
OM 13	Základná škola, Kornela Mahra 11 *	1	09:18:51	2020-11-01 10:25:34.532278
OM 14	Základná škola, Kornela Mahra 11 *	1	09:18:52	2020-11-01 10:25:34.532278
OM 15 A	Základná škola, Jána Bottu 27 *	1	09:18:54	2020-11-01 10:25:34.532278
OM 15 B	Základná škola, Jána Bottu 27 *	1	09:18:55	2020-11-01 10:25:34.532278
OM 16 A	Základná škola, Andreja Kubinu 34 *	1	09:18:56	2020-11-01 10:25:34.532278
OM 16 B	Základná škola, Andreja Kubinu 34 *	1	09:18:57	2020-11-01 10:25:34.532278
OM 17	Univerzita sv. Cyrila a Metoda, Námestie Jozefa Herdu 2	1	09:18:58	2020-11-01 10:25:34.532278
OM 18 A	Obchodná akadémia, Kukučínova 2 *	1	09:19:00	2020-11-01 10:25:34.532278
OM 18 B	Obchodná akadémia, Kukučínova 2 *	1	09:19:01	2020-11-01 10:25:34.532278
OM 19	Kultúrny dom CUBE, Ľudová 12	1	09:19:02	2020-11-01 10:25:34.532278
OM 20 A	Základná škola, Atómová 1 *	1	09:19:04	2020-11-01 10:25:34.532278
OM 20 B	Základná škola, Atómová 1 *	1	09:19:05	2020-11-01 10:25:34.532278
OM 21	Základná škola, Atómová 1 *	1	09:19:06	2020-11-01 10:25:34.532278
OM 22 A	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	1	09:19:11	2020-11-01 10:25:34.532278
OM 22 B	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	1	09:19:12	2020-11-01 10:25:34.532278
OM 23	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	1	09:19:13	2020-11-01 10:25:34.532278
OM 24	Stredná odborná škola elektrotechnická, Sibírska 1	1	09:19:14	2020-11-01 10:25:34.532278
OM 25	Súkromná SOŠ polytechnická DSA, Koniarekova 15	1	09:19:15	2020-11-01 10:25:34.532278
OM 26	Stredná zdravotnícka škola, Daxnerova 6	1	09:19:17	2020-11-01 10:25:34.532278
OM 27 A	Základná škola, Spartakovská 5 *	1	09:19:18	2020-11-01 10:25:34.532278
OM 27 B	Základná škola, Spartakovská 5 *	1	09:19:20	2020-11-01 10:25:34.532278
OM 28 A	Základná škola, Spartakovská 5 *	1	09:19:21	2020-11-01 10:25:34.532278
OM 28 B	Základná škola, Spartakovská 5 *	1	09:19:22	2020-11-01 10:25:34.532278
OM 29 A	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	1	09:19:23	2020-11-01 10:25:34.532278
OM 29 B	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	1	09:19:24	2020-11-01 10:25:34.532278
OM 30 A	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	1	09:19:29	2020-11-01 10:25:34.532278
OM 30 B	Mestský zimný štadión, Spartakovská 1B (vchod od Hokejky) *	1	09:19:30	2020-11-01 10:25:34.532278
OM 31 A	Základná škola, V Jame 3 *	1	09:19:33	2020-11-01 10:25:34.532278
OM 31 B	Základná škola, V Jame 3 *	1	09:19:34	2020-11-01 10:25:34.532278
OM 32	Základná škola, V Jame 3 *	1	09:19:36	2020-11-01 10:25:34.532278
OM 33 A	Základná škola, Maxima Gorkého 21 *	1	09:19:37	2020-11-01 10:25:34.532278
OM 33 B	Základná škola, Maxima Gorkého 21 *	1	09:19:38	2020-11-01 10:25:34.532278
OM 34 A	Základná škola, Maxima Gorkého 21 *	1	09:19:40	2020-11-01 10:25:34.532278
OM 34 B	Základná škola, Maxima Gorkého 21 *	1	09:19:42	2020-11-01 10:25:34.532278
OM 35 A	Súkromná základná škola BESST, Limbová 3 *	1	09:19:43	2020-11-01 10:25:34.532278
OM 35 B	Súkromná základná škola BESST, Limbová 3 *	1	09:19:45	2020-11-01 10:25:34.532278
OM 36 A	Súkromná základná škola BESST, Limbová 3 *	1	09:19:46	2020-11-01 10:25:34.532278
OM 36 B	Súkromná základná škola BESST, Limbová 3 *	1	09:19:48	2020-11-01 10:25:34.532278
OM 37	Trnavská univerzita v Trnave, Pedagogická fakulta, Priemyselná 4	1	09:19:50	2020-11-01 10:25:34.532278
OM 38 A	Kultúrny dom, Sereďská 131, Modranka *	1	09:19:51	2020-11-01 10:25:34.532278
OM 38 B	Kultúrny dom, Sereďská 131, Modranka *	1	09:19:52	2020-11-01 10:25:34.532278
OM 39	Mestská športová hala, Rybníková 576 (ľudia s prechodným pobytom, cudzinci)	1	09:19:54	2020-11-01 10:25:34.532278
OM 1	Radnica, Hlavná 1	1	09:18:33	2020-11-01 10:30:02.528273
OM 2	Mestský úrad v Trnave, Trhová 3	1	09:18:34	2020-11-01 10:30:02.528273
OM 3	Arcibiskupské gymnázium biskupa P. Jantauscha, Hollého 9	1	09:18:35	2020-11-01 10:30:02.528273
OM 4	Kino Hviezda, Paulínska 1	1	09:18:37	2020-11-01 10:30:02.528273
OM 5	Súkromná stredná odborná škola GOS, Ferka Urbánka 19	1	09:18:38	2020-11-01 10:30:02.528273
OM 6	Stredná priemyselná škola dopravná, Študentská 23	1	09:18:40	2020-11-01 10:30:02.528273
OM 7	Stredná priemyselná škola, Komenského 1	1	09:18:41	2020-11-01 10:30:02.528273
OM 8	Základná škola, Andreja Kubinu 34	1	09:18:42	2020-11-01 10:30:02.528273
OM 9	Stredná priemyselná škola, Komenského 1	1	09:18:43	2020-11-01 10:30:02.528273
OM 10	SPŠ stavebná Dušana S. Jurkoviča, Lomonosovova 7	1	09:18:45	2020-11-01 10:30:02.528273
OM 11 A	Základná umelecká škola, Mozartova 10 *	1	09:18:47	2020-11-01 10:30:02.528273
OM 11 B	Základná umelecká škola, Mozartova 10 *	1	09:18:48	2020-11-01 10:30:02.528273
OM 12	Základná umelecká škola, Mozartova 10 *	1	09:18:49	2020-11-01 10:30:02.528273
OM 13	Základná škola, Kornela Mahra 11 *	1	09:18:51	2020-11-01 10:30:02.528273
OM 14	Základná škola, Kornela Mahra 11 *	1	09:18:52	2020-11-01 10:30:02.528273
OM 15 A	Základná škola, Jána Bottu 27 *	1	09:18:54	2020-11-01 10:30:02.528273
OM 15 B	Základná škola, Jána Bottu 27 *	1	09:18:55	2020-11-01 10:30:02.528273
OM 16 A	Základná škola, Andreja Kubinu 34 *	1	09:18:56	2020-11-01 10:30:02.528273
OM 16 B	Základná škola, Andreja Kubinu 34 *	1	09:18:57	2020-11-01 10:30:02.528273
OM 17	Univerzita sv. Cyrila a Metoda, Námestie Jozefa Herdu 2	1	09:18:58	2020-11-01 10:30:02.528273
OM 18 A	Obchodná akadémia, Kukučínova 2 *	1	09:19:00	2020-11-01 10:30:02.528273
OM 18 B	Obchodná akadémia, Kukučínova 2 *	1	09:19:01	2020-11-01 10:30:02.528273
OM 19	Kultúrny dom CUBE, Ľudová 12	1	09:19:02	2020-11-01 10:30:02.528273
OM 20 A	Základná škola, Atómová 1 *	1	09:19:04	2020-11-01 10:30:02.528273
OM 20 B	Základná škola, Atómová 1 *	1	09:19:05	2020-11-01 10:30:02.528273
OM 21	Základná škola, Atómová 1 *	1	09:19:06	2020-11-01 10:30:02.528273
OM 22 A	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	1	09:19:11	2020-11-01 10:30:02.528273
OM 22 B	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	1	09:19:12	2020-11-01 10:30:02.528273
OM 23	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	1	09:19:13	2020-11-01 10:30:02.528273
OM 24	Stredná odborná škola elektrotechnická, Sibírska 1	1	09:19:14	2020-11-01 10:30:02.528273
OM 25	Súkromná SOŠ polytechnická DSA, Koniarekova 15	1	09:19:15	2020-11-01 10:30:02.528273
OM 26	Stredná zdravotnícka škola, Daxnerova 6	1	09:19:17	2020-11-01 10:30:02.528273
OM 27 A	Základná škola, Spartakovská 5 *	1	09:19:18	2020-11-01 10:30:02.528273
OM 27 B	Základná škola, Spartakovská 5 *	1	09:19:20	2020-11-01 10:30:02.528273
OM 28 A	Základná škola, Spartakovská 5 *	1	09:19:21	2020-11-01 10:30:02.528273
OM 28 B	Základná škola, Spartakovská 5 *	1	09:19:22	2020-11-01 10:30:02.528273
OM 29 A	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	1	09:19:23	2020-11-01 10:30:02.528273
OM 29 B	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	1	09:19:24	2020-11-01 10:30:02.528273
OM 30 A	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	1	09:19:29	2020-11-01 10:30:02.528273
OM 30 B	Mestský zimný štadión, Spartakovská 1B (vchod od Hokejky) *	1	09:19:30	2020-11-01 10:30:02.528273
OM 31 A	Základná škola, V Jame 3 *	1	09:19:33	2020-11-01 10:30:02.528273
OM 31 B	Základná škola, V Jame 3 *	1	09:19:34	2020-11-01 10:30:02.528273
OM 32	Základná škola, V Jame 3 *	1	09:19:36	2020-11-01 10:30:02.528273
OM 33 A	Základná škola, Maxima Gorkého 21 *	1	09:19:37	2020-11-01 10:30:02.528273
OM 33 B	Základná škola, Maxima Gorkého 21 *	1	09:19:38	2020-11-01 10:30:02.528273
OM 34 A	Základná škola, Maxima Gorkého 21 *	1	09:19:40	2020-11-01 10:30:02.528273
OM 34 B	Základná škola, Maxima Gorkého 21 *	1	09:19:42	2020-11-01 10:30:02.528273
OM 35 A	Súkromná základná škola BESST, Limbová 3 *	1	09:19:43	2020-11-01 10:30:02.528273
OM 35 B	Súkromná základná škola BESST, Limbová 3 *	1	09:19:45	2020-11-01 10:30:02.528273
OM 36 A	Súkromná základná škola BESST, Limbová 3 *	1	09:19:46	2020-11-01 10:30:02.528273
OM 36 B	Súkromná základná škola BESST, Limbová 3 *	1	09:19:48	2020-11-01 10:30:02.528273
OM 37	Trnavská univerzita v Trnave, Pedagogická fakulta, Priemyselná 4	1	09:19:50	2020-11-01 10:30:02.528273
OM 38 A	Kultúrny dom, Sereďská 131, Modranka *	1	09:19:51	2020-11-01 10:30:02.528273
OM 38 B	Kultúrny dom, Sereďská 131, Modranka *	1	09:19:52	2020-11-01 10:30:02.528273
OM 39	Mestská športová hala, Rybníková 576 (ľudia s prechodným pobytom, cudzinci)	1	09:19:54	2020-11-01 10:30:02.528273
OM 1	Radnica, Hlavná 1	1	10:50:50	2020-11-01 11:00:02.30811
OM 2	Mestský úrad v Trnave, Trhová 3	1	10:50:51	2020-11-01 11:00:02.30811
OM 3	Arcibiskupské gymnázium biskupa P. Jantauscha, Hollého 9	1	10:50:51	2020-11-01 11:00:02.30811
OM 4	Kino Hviezda, Paulínska 1	1	10:50:52	2020-11-01 11:00:02.30811
OM 5	Súkromná stredná odborná škola GOS, Ferka Urbánka 19	1	10:50:52	2020-11-01 11:00:02.30811
OM 6	Stredná priemyselná škola dopravná, Študentská 23	1	10:50:53	2020-11-01 11:00:02.30811
OM 7	Stredná priemyselná škola, Komenského 1	1	10:50:53	2020-11-01 11:00:02.30811
OM 8	Základná škola, Andreja Kubinu 34	1	10:50:54	2020-11-01 11:00:02.30811
OM 9	Stredná priemyselná škola, Komenského 1	1	10:50:54	2020-11-01 11:00:02.30811
OM 10	SPŠ stavebná Dušana S. Jurkoviča, Lomonosovova 7	1	10:50:56	2020-11-01 11:00:02.30811
OM 11 A	Základná umelecká škola, Mozartova 10 *	1	10:50:56	2020-11-01 11:00:02.30811
OM 11 B	Základná umelecká škola, Mozartova 10 *	1	10:50:57	2020-11-01 11:00:02.30811
OM 12	Základná umelecká škola, Mozartova 10 *	1	10:50:57	2020-11-01 11:00:02.30811
OM 13	Základná škola, Kornela Mahra 11 *	1	10:50:58	2020-11-01 11:00:02.30811
OM 14	Základná škola, Kornela Mahra 11 *	1	10:50:58	2020-11-01 11:00:02.30811
OM 15 A	Základná škola, Jána Bottu 27 *	1	10:51:00	2020-11-01 11:00:02.30811
OM 15 B	Základná škola, Jána Bottu 27 *	1	10:51:02	2020-11-01 11:00:02.30811
OM 16 A	Základná škola, Andreja Kubinu 34 *	1	10:51:02	2020-11-01 11:00:02.30811
OM 16 B	Základná škola, Andreja Kubinu 34 *	1	10:51:03	2020-11-01 11:00:02.30811
OM 17	Univerzita sv. Cyrila a Metoda, Námestie Jozefa Herdu 2	1	10:51:03	2020-11-01 11:00:02.30811
OM 18 A	Obchodná akadémia, Kukučínova 2 *	1	10:51:04	2020-11-01 11:00:02.30811
OM 18 B	Obchodná akadémia, Kukučínova 2 *	1	10:51:05	2020-11-01 11:00:02.30811
OM 19	Kultúrny dom CUBE, Ľudová 12	1	10:51:05	2020-11-01 11:00:02.30811
OM 20 A	Základná škola, Atómová 1 *	1	10:51:06	2020-11-01 11:00:02.30811
OM 20 B	Základná škola, Atómová 1 *	1	10:51:08	2020-11-01 11:00:02.30811
OM 21	Základná škola, Atómová 1 *	1	10:51:08	2020-11-01 11:00:02.30811
OM 22 A	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	1	10:51:09	2020-11-01 11:00:02.30811
OM 22 B	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	1	10:51:09	2020-11-01 11:00:02.30811
OM 23	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	1	10:51:10	2020-11-01 11:00:02.30811
OM 24	Stredná odborná škola elektrotechnická, Sibírska 1	1	10:51:10	2020-11-01 11:00:02.30811
OM 25	Súkromná SOŠ polytechnická DSA, Koniarekova 15	1	10:51:11	2020-11-01 11:00:02.30811
OM 26	Stredná zdravotnícka škola, Daxnerova 6	1	10:51:13	2020-11-01 11:00:02.30811
OM 27 A	Základná škola, Spartakovská 5 *	1	10:51:14	2020-11-01 11:00:02.30811
OM 27 B	Základná škola, Spartakovská 5 *	1	10:51:14	2020-11-01 11:00:02.30811
OM 28 A	Základná škola, Spartakovská 5 *	1	10:51:15	2020-11-01 11:00:02.30811
OM 28 B	Základná škola, Spartakovská 5 *	1	10:51:15	2020-11-01 11:00:02.30811
OM 29 A	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	1	10:51:16	2020-11-01 11:00:02.30811
OM 29 B	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	1	10:51:16	2020-11-01 11:00:02.30811
OM 30 A	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	1	10:51:17	2020-11-01 11:00:02.30811
OM 30 B	Mestský zimný štadión, Spartakovská 1B (vchod od Hokejky) *	1	10:51:18	2020-11-01 11:00:02.30811
OM 31 A	Základná škola, V Jame 3 *	1	10:51:19	2020-11-01 11:00:02.30811
OM 31 B	Základná škola, V Jame 3 *	1	10:51:19	2020-11-01 11:00:02.30811
OM 32	Základná škola, V Jame 3 *	1	10:51:20	2020-11-01 11:00:02.30811
OM 33 A	Základná škola, Maxima Gorkého 21 *	1	10:51:20	2020-11-01 11:00:02.30811
OM 33 B	Základná škola, Maxima Gorkého 21 *	1	10:51:21	2020-11-01 11:00:02.30811
OM 34 A	Základná škola, Maxima Gorkého 21 *	1	10:51:22	2020-11-01 11:00:02.30811
OM 34 B	Základná škola, Maxima Gorkého 21 *	1	10:51:22	2020-11-01 11:00:02.30811
OM 35 A	Súkromná základná škola BESST, Limbová 3 *	1	10:51:23	2020-11-01 11:00:02.30811
OM 35 B	Súkromná základná škola BESST, Limbová 3 *	1	10:51:24	2020-11-01 11:00:02.30811
OM 36 A	Súkromná základná škola BESST, Limbová 3 *	1	10:51:24	2020-11-01 11:00:02.30811
OM 36 B	Súkromná základná škola BESST, Limbová 3 *	1	10:51:25	2020-11-01 11:00:02.30811
OM 37	Trnavská univerzita v Trnave, Pedagogická fakulta, Priemyselná 4	1	10:51:25	2020-11-01 11:00:02.30811
OM 38 A	Kultúrny dom, Sereďská 131, Modranka *	1	10:51:26	2020-11-01 11:00:02.30811
OM 38 B	Kultúrny dom, Sereďská 131, Modranka *	1	10:51:28	2020-11-01 11:00:02.30811
OM 39	Mestská športová hala, Rybníková 576 (ľudia s prechodným pobytom, cudzinci)	1	10:51:28	2020-11-01 11:00:02.30811
OM 1	Radnica, Hlavná 1	1	11:17:22	2020-11-01 11:30:02.264404
OM 2	Mestský úrad v Trnave, Trhová 3	1	11:17:21	2020-11-01 11:30:02.264404
OM 3	Arcibiskupské gymnázium biskupa P. Jantauscha, Hollého 9	1	11:17:20	2020-11-01 11:30:02.264404
OM 4	Kino Hviezda, Paulínska 1	1	11:17:19	2020-11-01 11:30:02.264404
OM 5	Súkromná stredná odborná škola GOS, Ferka Urbánka 19	1	11:17:19	2020-11-01 11:30:02.264404
OM 6	Stredná priemyselná škola dopravná, Študentská 23	1	11:17:18	2020-11-01 11:30:02.264404
OM 7	Stredná priemyselná škola, Komenského 1	1	11:17:18	2020-11-01 11:30:02.264404
OM 8	Základná škola, Andreja Kubinu 34	1	11:17:17	2020-11-01 11:30:02.264404
OM 9	Stredná priemyselná škola, Komenského 1	1	11:17:17	2020-11-01 11:30:02.264404
OM 10	SPŠ stavebná Dušana S. Jurkoviča, Lomonosovova 7	1	11:17:16	2020-11-01 11:30:02.264404
OM 11 A	Základná umelecká škola, Mozartova 10 *	1	11:17:16	2020-11-01 11:30:02.264404
OM 11 B	Základná umelecká škola, Mozartova 10 *	1	11:17:15	2020-11-01 11:30:02.264404
OM 12	Základná umelecká škola, Mozartova 10 *	1	11:17:15	2020-11-01 11:30:02.264404
OM 13	Základná škola, Kornela Mahra 11 *	1	11:17:15	2020-11-01 11:30:02.264404
OM 14	Základná škola, Kornela Mahra 11 *	1	11:17:13	2020-11-01 11:30:02.264404
OM 15 A	Základná škola, Jána Bottu 27 *	1	11:17:12	2020-11-01 11:30:02.264404
OM 15 B	Základná škola, Jána Bottu 27 *	1	11:17:12	2020-11-01 11:30:02.264404
OM 16 A	Základná škola, Andreja Kubinu 34 *	1	11:17:11	2020-11-01 11:30:02.264404
OM 16 B	Základná škola, Andreja Kubinu 34 *	1	11:17:11	2020-11-01 11:30:02.264404
OM 17	Univerzita sv. Cyrila a Metoda, Námestie Jozefa Herdu 2	1	11:17:11	2020-11-01 11:30:02.264404
OM 18 A	Obchodná akadémia, Kukučínova 2 *	1	11:17:10	2020-11-01 11:30:02.264404
OM 18 B	Obchodná akadémia, Kukučínova 2 *	1	11:17:10	2020-11-01 11:30:02.264404
OM 19	Kultúrny dom CUBE, Ľudová 12	1	11:17:09	2020-11-01 11:30:02.264404
OM 20 A	Základná škola, Atómová 1 *	1	11:17:08	2020-11-01 11:30:02.264404
OM 20 B	Základná škola, Atómová 1 *	1	11:17:07	2020-11-01 11:30:02.264404
OM 21	Základná škola, Atómová 1 *	1	11:17:06	2020-11-01 11:30:02.264404
OM 22 A	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	1	11:17:06	2020-11-01 11:30:02.264404
OM 22 B	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	1	11:17:05	2020-11-01 11:30:02.264404
OM 23	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	1	11:17:05	2020-11-01 11:30:02.264404
OM 24	Stredná odborná škola elektrotechnická, Sibírska 1	1	11:17:04	2020-11-01 11:30:02.264404
OM 25	Súkromná SOŠ polytechnická DSA, Koniarekova 15	1	11:17:04	2020-11-01 11:30:02.264404
OM 26	Stredná zdravotnícka škola, Daxnerova 6	1	11:17:03	2020-11-01 11:30:02.264404
OM 27 A	Základná škola, Spartakovská 5 *	1	11:17:02	2020-11-01 11:30:02.264404
OM 27 B	Základná škola, Spartakovská 5 *	1	11:17:01	2020-11-01 11:30:02.264404
OM 28 A	Základná škola, Spartakovská 5 *	1	11:17:01	2020-11-01 11:30:02.264404
OM 28 B	Základná škola, Spartakovská 5 *	1	11:17:00	2020-11-01 11:30:02.264404
OM 29 A	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	1	11:17:00	2020-11-01 11:30:02.264404
OM 29 B	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	1	11:16:59	2020-11-01 11:30:02.264404
OM 30 A	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	1	11:16:59	2020-11-01 11:30:02.264404
OM 30 B	Mestský zimný štadión, Spartakovská 1B (vchod od Hokejky) *	1	11:16:56	2020-11-01 11:30:02.264404
OM 31 A	Základná škola, V Jame 3 *	1	11:16:55	2020-11-01 11:30:02.264404
OM 31 B	Základná škola, V Jame 3 *	1	11:16:55	2020-11-01 11:30:02.264404
OM 32	Základná škola, V Jame 3 *	1	11:16:54	2020-11-01 11:30:02.264404
OM 33 A	Základná škola, Maxima Gorkého 21 *	1	11:16:54	2020-11-01 11:30:02.264404
OM 33 B	Základná škola, Maxima Gorkého 21 *	1	11:16:53	2020-11-01 11:30:02.264404
OM 34 A	Základná škola, Maxima Gorkého 21 *	1	11:16:53	2020-11-01 11:30:02.264404
OM 34 B	Základná škola, Maxima Gorkého 21 *	1	11:16:52	2020-11-01 11:30:02.264404
OM 35 A	Súkromná základná škola BESST, Limbová 3 *	1	11:16:52	2020-11-01 11:30:02.264404
OM 35 B	Súkromná základná škola BESST, Limbová 3 *	1	11:16:51	2020-11-01 11:30:02.264404
OM 36 A	Súkromná základná škola BESST, Limbová 3 *	1	11:16:51	2020-11-01 11:30:02.264404
OM 36 B	Súkromná základná škola BESST, Limbová 3 *	1	11:16:50	2020-11-01 11:30:02.264404
OM 37	Trnavská univerzita v Trnave, Pedagogická fakulta, Priemyselná 4	1	11:16:49	2020-11-01 11:30:02.264404
OM 38 A	Kultúrny dom, Sereďská 131, Modranka *	1	11:16:49	2020-11-01 11:30:02.264404
OM 38 B	Kultúrny dom, Sereďská 131, Modranka *	1	11:16:48	2020-11-01 11:30:02.264404
OM 39	Mestská športová hala, Rybníková 576 (ľudia s prechodným pobytom, cudzinci)	1	11:16:48	2020-11-01 11:30:02.264404
OM 1	Radnica, Hlavná 1	1	11:17:22	2020-11-01 12:00:02.06801
OM 2	Mestský úrad v Trnave, Trhová 3	1	11:17:21	2020-11-01 12:00:02.06801
OM 3	Arcibiskupské gymnázium biskupa P. Jantauscha, Hollého 9	1	11:17:20	2020-11-01 12:00:02.06801
OM 4	Kino Hviezda, Paulínska 1	1	11:17:19	2020-11-01 12:00:02.06801
OM 5	Súkromná stredná odborná škola GOS, Ferka Urbánka 19	1	11:17:19	2020-11-01 12:00:02.06801
OM 6	Stredná priemyselná škola dopravná, Študentská 23	1	11:17:18	2020-11-01 12:00:02.06801
OM 7	Stredná priemyselná škola, Komenského 1	1	11:17:18	2020-11-01 12:00:02.06801
OM 8	Základná škola, Andreja Kubinu 34	1	11:17:17	2020-11-01 12:00:02.06801
OM 9	Stredná priemyselná škola, Komenského 1	1	11:17:17	2020-11-01 12:00:02.06801
OM 10	SPŠ stavebná Dušana S. Jurkoviča, Lomonosovova 7	1	11:17:16	2020-11-01 12:00:02.06801
OM 11 A	Základná umelecká škola, Mozartova 10 *	1	11:17:16	2020-11-01 12:00:02.06801
OM 11 B	Základná umelecká škola, Mozartova 10 *	1	11:17:15	2020-11-01 12:00:02.06801
OM 12	Základná umelecká škola, Mozartova 10 *	1	11:17:15	2020-11-01 12:00:02.06801
OM 13	Základná škola, Kornela Mahra 11 *	1	11:17:15	2020-11-01 12:00:02.06801
OM 14	Základná škola, Kornela Mahra 11 *	1	11:17:13	2020-11-01 12:00:02.06801
OM 15 A	Základná škola, Jána Bottu 27 *	1	11:17:12	2020-11-01 12:00:02.06801
OM 15 B	Základná škola, Jána Bottu 27 *	1	11:17:12	2020-11-01 12:00:02.06801
OM 16 A	Základná škola, Andreja Kubinu 34 *	1	11:17:11	2020-11-01 12:00:02.06801
OM 16 B	Základná škola, Andreja Kubinu 34 *	1	11:17:11	2020-11-01 12:00:02.06801
OM 17	Univerzita sv. Cyrila a Metoda, Námestie Jozefa Herdu 2	1	11:17:11	2020-11-01 12:00:02.06801
OM 18 A	Obchodná akadémia, Kukučínova 2 *	1	11:17:10	2020-11-01 12:00:02.06801
OM 18 B	Obchodná akadémia, Kukučínova 2 *	1	11:17:10	2020-11-01 12:00:02.06801
OM 19	Kultúrny dom CUBE, Ľudová 12	1	11:17:09	2020-11-01 12:00:02.06801
OM 20 A	Základná škola, Atómová 1 *	1	11:17:08	2020-11-01 12:00:02.06801
OM 20 B	Základná škola, Atómová 1 *	1	11:17:07	2020-11-01 12:00:02.06801
OM 21	Základná škola, Atómová 1 *	1	11:17:06	2020-11-01 12:00:02.06801
OM 22 A	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	1	11:17:06	2020-11-01 12:00:02.06801
OM 22 B	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	1	11:17:05	2020-11-01 12:00:02.06801
OM 23	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	1	11:17:05	2020-11-01 12:00:02.06801
OM 24	Stredná odborná škola elektrotechnická, Sibírska 1	1	11:17:04	2020-11-01 12:00:02.06801
OM 25	Súkromná SOŠ polytechnická DSA, Koniarekova 15	1	11:17:04	2020-11-01 12:00:02.06801
OM 26	Stredná zdravotnícka škola, Daxnerova 6	1	11:17:03	2020-11-01 12:00:02.06801
OM 27 A	Základná škola, Spartakovská 5 *	1	11:17:02	2020-11-01 12:00:02.06801
OM 27 B	Základná škola, Spartakovská 5 *	1	11:17:01	2020-11-01 12:00:02.06801
OM 28 A	Základná škola, Spartakovská 5 *	1	11:17:01	2020-11-01 12:00:02.06801
OM 28 B	Základná škola, Spartakovská 5 *	1	11:17:00	2020-11-01 12:00:02.06801
OM 29 A	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	1	11:17:00	2020-11-01 12:00:02.06801
OM 29 B	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	1	11:16:59	2020-11-01 12:00:02.06801
OM 30 A	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	1	11:16:59	2020-11-01 12:00:02.06801
OM 30 B	Mestský zimný štadión, Spartakovská 1B (vchod od Hokejky) *	1	11:16:56	2020-11-01 12:00:02.06801
OM 31 A	Základná škola, V Jame 3 *	1	11:16:55	2020-11-01 12:00:02.06801
OM 31 B	Základná škola, V Jame 3 *	1	11:16:55	2020-11-01 12:00:02.06801
OM 32	Základná škola, V Jame 3 *	1	11:16:54	2020-11-01 12:00:02.06801
OM 33 A	Základná škola, Maxima Gorkého 21 *	1	11:16:54	2020-11-01 12:00:02.06801
OM 33 B	Základná škola, Maxima Gorkého 21 *	1	11:16:53	2020-11-01 12:00:02.06801
OM 34 A	Základná škola, Maxima Gorkého 21 *	1	11:16:53	2020-11-01 12:00:02.06801
OM 34 B	Základná škola, Maxima Gorkého 21 *	1	11:16:52	2020-11-01 12:00:02.06801
OM 35 A	Súkromná základná škola BESST, Limbová 3 *	1	11:16:52	2020-11-01 12:00:02.06801
OM 35 B	Súkromná základná škola BESST, Limbová 3 *	1	11:16:51	2020-11-01 12:00:02.06801
OM 36 A	Súkromná základná škola BESST, Limbová 3 *	1	11:16:51	2020-11-01 12:00:02.06801
OM 36 B	Súkromná základná škola BESST, Limbová 3 *	1	11:16:50	2020-11-01 12:00:02.06801
OM 37	Trnavská univerzita v Trnave, Pedagogická fakulta, Priemyselná 4	1	11:16:49	2020-11-01 12:00:02.06801
OM 38 A	Kultúrny dom, Sereďská 131, Modranka *	1	11:16:49	2020-11-01 12:00:02.06801
OM 38 B	Kultúrny dom, Sereďská 131, Modranka *	1	11:16:48	2020-11-01 12:00:02.06801
OM 39	Mestská športová hala, Rybníková 576 (ľudia s prechodným pobytom, cudzinci)	1	11:16:48	2020-11-01 12:00:02.06801
OM 1	Radnica, Hlavná 1	1	12:12:00	2020-11-01 12:30:02.267405
OM 2	Mestský úrad v Trnave, Trhová 3	1	12:12:04	2020-11-01 12:30:02.267405
OM 3	Arcibiskupské gymnázium biskupa P. Jantauscha, Hollého 9	1	12:12:06	2020-11-01 12:30:02.267405
OM 4	Kino Hviezda, Paulínska 1	1	12:12:19	2020-11-01 12:30:02.267405
OM 5	Súkromná stredná odborná škola GOS, Ferka Urbánka 19	1	12:12:20	2020-11-01 12:30:02.267405
OM 6	Stredná priemyselná škola dopravná, Študentská 23	1	12:12:21	2020-11-01 12:30:02.267405
OM 7	Stredná priemyselná škola, Komenského 1	1	12:12:22	2020-11-01 12:30:02.267405
OM 8	Základná škola, Andreja Kubinu 34	1	12:12:24	2020-11-01 12:30:02.267405
OM 9	Stredná priemyselná škola, Komenského 1	1	12:12:25	2020-11-01 12:30:02.267405
OM 10	SPŠ stavebná Dušana S. Jurkoviča, Lomonosovova 7	1	12:12:26	2020-11-01 12:30:02.267405
OM 11 A	Základná umelecká škola, Mozartova 10 *	1	12:12:27	2020-11-01 12:30:02.267405
OM 11 B	Základná umelecká škola, Mozartova 10 *	1	12:12:29	2020-11-01 12:30:02.267405
OM 12	Základná umelecká škola, Mozartova 10 *	1	12:12:30	2020-11-01 12:30:02.267405
OM 13	Základná škola, Kornela Mahra 11 *	1	12:12:32	2020-11-01 12:30:02.267405
OM 14	Základná škola, Kornela Mahra 11 *	1	12:12:33	2020-11-01 12:30:02.267405
OM 15 A	Základná škola, Jána Bottu 27 *	1	12:12:34	2020-11-01 12:30:02.267405
OM 15 B	Základná škola, Jána Bottu 27 *	1	12:12:35	2020-11-01 12:30:02.267405
OM 16 A	Základná škola, Andreja Kubinu 34 *	1	12:12:37	2020-11-01 12:30:02.267405
OM 16 B	Základná škola, Andreja Kubinu 34 *	1	12:12:38	2020-11-01 12:30:02.267405
OM 17	Univerzita sv. Cyrila a Metoda, Námestie Jozefa Herdu 2	1	12:12:40	2020-11-01 12:30:02.267405
OM 18 A	Obchodná akadémia, Kukučínova 2 *	1	12:12:41	2020-11-01 12:30:02.267405
OM 18 B	Obchodná akadémia, Kukučínova 2 *	1	12:12:45	2020-11-01 12:30:02.267405
OM 19	Kultúrny dom CUBE, Ľudová 12	1	12:12:46	2020-11-01 12:30:02.267405
OM 20 A	Základná škola, Atómová 1 *	1	12:12:47	2020-11-01 12:30:02.267405
OM 20 B	Základná škola, Atómová 1 *	1	12:12:49	2020-11-01 12:30:02.267405
OM 21	Základná škola, Atómová 1 *	1	12:12:50	2020-11-01 12:30:02.267405
OM 22 A	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	1	12:12:52	2020-11-01 12:30:02.267405
OM 22 B	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	1	12:12:53	2020-11-01 12:30:02.267405
OM 23	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	1	12:12:54	2020-11-01 12:30:02.267405
OM 24	Stredná odborná škola elektrotechnická, Sibírska 1	1	12:12:55	2020-11-01 12:30:02.267405
OM 25	Súkromná SOŠ polytechnická DSA, Koniarekova 15	1	12:12:57	2020-11-01 12:30:02.267405
OM 26	Stredná zdravotnícka škola, Daxnerova 6	1	12:12:58	2020-11-01 12:30:02.267405
OM 27 A	Základná škola, Spartakovská 5 *	1	12:13:00	2020-11-01 12:30:02.267405
OM 27 B	Základná škola, Spartakovská 5 *	1	12:13:01	2020-11-01 12:30:02.267405
OM 28 A	Základná škola, Spartakovská 5 *	1	12:13:08	2020-11-01 12:30:02.267405
OM 28 B	Základná škola, Spartakovská 5 *	1	12:13:10	2020-11-01 12:30:02.267405
OM 29 A	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	1	12:13:11	2020-11-01 12:30:02.267405
OM 29 B	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	1	12:13:12	2020-11-01 12:30:02.267405
OM 30 A	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	1	12:13:13	2020-11-01 12:30:02.267405
OM 30 B	Mestský zimný štadión, Spartakovská 1B (vchod od Hokejky) *	1	12:13:14	2020-11-01 12:30:02.267405
OM 31 A	Základná škola, V Jame 3 *	1	12:13:15	2020-11-01 12:30:02.267405
OM 31 B	Základná škola, V Jame 3 *	1	12:13:16	2020-11-01 12:30:02.267405
OM 32	Základná škola, V Jame 3 *	1	12:13:17	2020-11-01 12:30:02.267405
OM 33 A	Základná škola, Maxima Gorkého 21 *	1	12:13:19	2020-11-01 12:30:02.267405
OM 33 B	Základná škola, Maxima Gorkého 21 *	1	12:13:20	2020-11-01 12:30:02.267405
OM 34 A	Základná škola, Maxima Gorkého 21 *	1	12:13:21	2020-11-01 12:30:02.267405
OM 34 B	Základná škola, Maxima Gorkého 21 *	1	12:13:22	2020-11-01 12:30:02.267405
OM 35 A	Súkromná základná škola BESST, Limbová 3 *	1	12:13:24	2020-11-01 12:30:02.267405
OM 35 B	Súkromná základná škola BESST, Limbová 3 *	1	12:13:26	2020-11-01 12:30:02.267405
OM 36 A	Súkromná základná škola BESST, Limbová 3 *	1	12:13:27	2020-11-01 12:30:02.267405
OM 36 B	Súkromná základná škola BESST, Limbová 3 *	1	12:13:28	2020-11-01 12:30:02.267405
OM 37	Trnavská univerzita v Trnave, Pedagogická fakulta, Priemyselná 4	1	12:13:29	2020-11-01 12:30:02.267405
OM 38 A	Kultúrny dom, Sereďská 131, Modranka *	1	12:13:35	2020-11-01 12:30:02.267405
OM 38 B	Kultúrny dom, Sereďská 131, Modranka *	1	12:13:36	2020-11-01 12:30:02.267405
OM 39	Mestská športová hala, Rybníková 576 (ľudia s prechodným pobytom, cudzinci)	1	12:13:39	2020-11-01 12:30:02.267405
OM 1	Radnica, Hlavná 1	1	12:59:05	2020-11-01 13:00:02.333318
OM 2	Mestský úrad v Trnave, Trhová 3	1	12:59:05	2020-11-01 13:00:02.333318
OM 3	Arcibiskupské gymnázium biskupa P. Jantauscha, Hollého 9	1	12:59:06	2020-11-01 13:00:02.333318
OM 4	Kino Hviezda, Paulínska 1	1	12:59:06	2020-11-01 13:00:02.333318
OM 5	Súkromná stredná odborná škola GOS, Ferka Urbánka 19	1	12:59:08	2020-11-01 13:00:02.333318
OM 6	Stredná priemyselná škola dopravná, Študentská 23	1	12:59:08	2020-11-01 13:00:02.333318
OM 7	Stredná priemyselná škola, Komenského 1	1	12:59:08	2020-11-01 13:00:02.333318
OM 8	Základná škola, Andreja Kubinu 34	1	12:59:09	2020-11-01 13:00:02.333318
OM 9	Stredná priemyselná škola, Komenského 1	1	12:59:09	2020-11-01 13:00:02.333318
OM 10	SPŠ stavebná Dušana S. Jurkoviča, Lomonosovova 7	1	12:59:10	2020-11-01 13:00:02.333318
OM 11 A	Základná umelecká škola, Mozartova 10 *	1	12:59:10	2020-11-01 13:00:02.333318
OM 11 B	Základná umelecká škola, Mozartova 10 *	1	12:59:11	2020-11-01 13:00:02.333318
OM 12	Základná umelecká škola, Mozartova 10 *	1	12:59:12	2020-11-01 13:00:02.333318
OM 13	Základná škola, Kornela Mahra 11 *	1	12:59:13	2020-11-01 13:00:02.333318
OM 14	Základná škola, Kornela Mahra 11 *	1	12:59:14	2020-11-01 13:00:02.333318
OM 15 A	Základná škola, Jána Bottu 27 *	1	12:59:14	2020-11-01 13:00:02.333318
OM 15 B	Základná škola, Jána Bottu 27 *	1	12:59:15	2020-11-01 13:00:02.333318
OM 16 A	Základná škola, Andreja Kubinu 34 *	1	12:59:16	2020-11-01 13:00:02.333318
OM 16 B	Základná škola, Andreja Kubinu 34 *	1	12:59:17	2020-11-01 13:00:02.333318
OM 17	Univerzita sv. Cyrila a Metoda, Námestie Jozefa Herdu 2	1	12:59:17	2020-11-01 13:00:02.333318
OM 18 A	Obchodná akadémia, Kukučínova 2 *	1	12:59:18	2020-11-01 13:00:02.333318
OM 18 B	Obchodná akadémia, Kukučínova 2 *	1	12:59:18	2020-11-01 13:00:02.333318
OM 19	Kultúrny dom CUBE, Ľudová 12	1	12:59:20	2020-11-01 13:00:02.333318
OM 20 A	Základná škola, Atómová 1 *	1	12:59:21	2020-11-01 13:00:02.333318
OM 20 B	Základná škola, Atómová 1 *	1	12:59:21	2020-11-01 13:00:02.333318
OM 21	Základná škola, Atómová 1 *	1	12:59:22	2020-11-01 13:00:02.333318
OM 22 A	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	1	12:59:22	2020-11-01 13:00:02.333318
OM 22 B	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	1	12:59:23	2020-11-01 13:00:02.333318
OM 23	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	1	12:59:23	2020-11-01 13:00:02.333318
OM 24	Stredná odborná škola elektrotechnická, Sibírska 1	1	12:59:25	2020-11-01 13:00:02.333318
OM 25	Súkromná SOŠ polytechnická DSA, Koniarekova 15	1	12:59:26	2020-11-01 13:00:02.333318
OM 26	Stredná zdravotnícka škola, Daxnerova 6	1	12:59:26	2020-11-01 13:00:02.333318
OM 27 A	Základná škola, Spartakovská 5 *	1	12:59:27	2020-11-01 13:00:02.333318
OM 27 B	Základná škola, Spartakovská 5 *	1	12:59:28	2020-11-01 13:00:02.333318
OM 28 A	Základná škola, Spartakovská 5 *	1	12:59:29	2020-11-01 13:00:02.333318
OM 28 B	Základná škola, Spartakovská 5 *	1	12:59:38	2020-11-01 13:00:02.333318
OM 29 A	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	1	12:59:39	2020-11-01 13:00:02.333318
OM 29 B	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	1	12:59:39	2020-11-01 13:00:02.333318
OM 30 A	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	1	12:59:40	2020-11-01 13:00:02.333318
OM 30 B	Mestský zimný štadión, Spartakovská 1B (vchod od Hokejky) *	1	12:59:40	2020-11-01 13:00:02.333318
OM 31 A	Základná škola, V Jame 3 *	1	12:59:42	2020-11-01 13:00:02.333318
OM 31 B	Základná škola, V Jame 3 *	1	12:59:42	2020-11-01 13:00:02.333318
OM 32	Základná škola, V Jame 3 *	1	12:59:43	2020-11-01 13:00:02.333318
OM 33 A	Základná škola, Maxima Gorkého 21 *	1	12:59:45	2020-11-01 13:00:02.333318
OM 33 B	Základná škola, Maxima Gorkého 21 *	1	12:59:45	2020-11-01 13:00:02.333318
OM 34 A	Základná škola, Maxima Gorkého 21 *	1	12:59:46	2020-11-01 13:00:02.333318
OM 34 B	Základná škola, Maxima Gorkého 21 *	1	12:59:48	2020-11-01 13:00:02.333318
OM 35 A	Súkromná základná škola BESST, Limbová 3 *	1	12:59:49	2020-11-01 13:00:02.333318
OM 35 B	Súkromná základná škola BESST, Limbová 3 *	1	12:59:49	2020-11-01 13:00:02.333318
OM 36 A	Súkromná základná škola BESST, Limbová 3 *	1	12:59:50	2020-11-01 13:00:02.333318
OM 36 B	Súkromná základná škola BESST, Limbová 3 *	1	12:59:51	2020-11-01 13:00:02.333318
OM 37	Trnavská univerzita v Trnave, Pedagogická fakulta, Priemyselná 4	1	12:59:51	2020-11-01 13:00:02.333318
OM 38 A	Kultúrny dom, Sereďská 131, Modranka *	1	12:59:52	2020-11-01 13:00:02.333318
OM 38 B	Kultúrny dom, Sereďská 131, Modranka *	1	12:59:53	2020-11-01 13:00:02.333318
OM 39	Mestská športová hala, Rybníková 576 (ľudia s prechodným pobytom, cudzinci)	1	12:59:53	2020-11-01 13:00:02.333318
OM 1	Radnica, Hlavná 1	1	12:59:05	2020-11-01 13:30:02.030576
OM 2	Mestský úrad v Trnave, Trhová 3	1	12:59:05	2020-11-01 13:30:02.030576
OM 3	Arcibiskupské gymnázium biskupa P. Jantauscha, Hollého 9	1	12:59:06	2020-11-01 13:30:02.030576
OM 4	Kino Hviezda, Paulínska 1	1	12:59:06	2020-11-01 13:30:02.030576
OM 5	Súkromná stredná odborná škola GOS, Ferka Urbánka 19	1	12:59:08	2020-11-01 13:30:02.030576
OM 6	Stredná priemyselná škola dopravná, Študentská 23	1	12:59:08	2020-11-01 13:30:02.030576
OM 7	Stredná priemyselná škola, Komenského 1	1	12:59:08	2020-11-01 13:30:02.030576
OM 8	Základná škola, Andreja Kubinu 34	1	12:59:09	2020-11-01 13:30:02.030576
OM 9	Stredná priemyselná škola, Komenského 1	1	12:59:09	2020-11-01 13:30:02.030576
OM 10	SPŠ stavebná Dušana S. Jurkoviča, Lomonosovova 7	1	12:59:10	2020-11-01 13:30:02.030576
OM 11 A	Základná umelecká škola, Mozartova 10 *	1	12:59:10	2020-11-01 13:30:02.030576
OM 11 B	Základná umelecká škola, Mozartova 10 *	1	12:59:11	2020-11-01 13:30:02.030576
OM 12	Základná umelecká škola, Mozartova 10 *	1	12:59:12	2020-11-01 13:30:02.030576
OM 13	Základná škola, Kornela Mahra 11 *	1	12:59:13	2020-11-01 13:30:02.030576
OM 14	Základná škola, Kornela Mahra 11 *	1	12:59:14	2020-11-01 13:30:02.030576
OM 15 A	Základná škola, Jána Bottu 27 *	1	12:59:14	2020-11-01 13:30:02.030576
OM 15 B	Základná škola, Jána Bottu 27 *	1	12:59:15	2020-11-01 13:30:02.030576
OM 16 A	Základná škola, Andreja Kubinu 34 *	1	12:59:16	2020-11-01 13:30:02.030576
OM 16 B	Základná škola, Andreja Kubinu 34 *	1	12:59:17	2020-11-01 13:30:02.030576
OM 17	Univerzita sv. Cyrila a Metoda, Námestie Jozefa Herdu 2	1	12:59:17	2020-11-01 13:30:02.030576
OM 18 A	Obchodná akadémia, Kukučínova 2 *	1	12:59:18	2020-11-01 13:30:02.030576
OM 18 B	Obchodná akadémia, Kukučínova 2 *	1	12:59:18	2020-11-01 13:30:02.030576
OM 19	Kultúrny dom CUBE, Ľudová 12	1	12:59:20	2020-11-01 13:30:02.030576
OM 20 A	Základná škola, Atómová 1 *	1	12:59:21	2020-11-01 13:30:02.030576
OM 20 B	Základná škola, Atómová 1 *	1	12:59:21	2020-11-01 13:30:02.030576
OM 21	Základná škola, Atómová 1 *	1	12:59:22	2020-11-01 13:30:02.030576
OM 22 A	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	1	12:59:22	2020-11-01 13:30:02.030576
OM 22 B	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	1	12:59:23	2020-11-01 13:30:02.030576
OM 23	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	1	12:59:23	2020-11-01 13:30:02.030576
OM 24	Stredná odborná škola elektrotechnická, Sibírska 1	1	12:59:25	2020-11-01 13:30:02.030576
OM 25	Súkromná SOŠ polytechnická DSA, Koniarekova 15	1	12:59:26	2020-11-01 13:30:02.030576
OM 26	Stredná zdravotnícka škola, Daxnerova 6	1	12:59:26	2020-11-01 13:30:02.030576
OM 27 A	Základná škola, Spartakovská 5 *	1	12:59:27	2020-11-01 13:30:02.030576
OM 27 B	Základná škola, Spartakovská 5 *	1	12:59:28	2020-11-01 13:30:02.030576
OM 28 A	Základná škola, Spartakovská 5 *	1	12:59:29	2020-11-01 13:30:02.030576
OM 28 B	Základná škola, Spartakovská 5 *	1	12:59:38	2020-11-01 13:30:02.030576
OM 29 A	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	1	12:59:39	2020-11-01 13:30:02.030576
OM 29 B	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	1	12:59:39	2020-11-01 13:30:02.030576
OM 30 A	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	1	12:59:40	2020-11-01 13:30:02.030576
OM 30 B	Mestský zimný štadión, Spartakovská 1B (vchod od Hokejky) *	1	12:59:40	2020-11-01 13:30:02.030576
OM 31 A	Základná škola, V Jame 3 *	1	12:59:42	2020-11-01 13:30:02.030576
OM 31 B	Základná škola, V Jame 3 *	1	12:59:42	2020-11-01 13:30:02.030576
OM 32	Základná škola, V Jame 3 *	1	12:59:43	2020-11-01 13:30:02.030576
OM 33 A	Základná škola, Maxima Gorkého 21 *	1	12:59:45	2020-11-01 13:30:02.030576
OM 33 B	Základná škola, Maxima Gorkého 21 *	1	12:59:45	2020-11-01 13:30:02.030576
OM 34 A	Základná škola, Maxima Gorkého 21 *	1	12:59:46	2020-11-01 13:30:02.030576
OM 34 B	Základná škola, Maxima Gorkého 21 *	1	12:59:48	2020-11-01 13:30:02.030576
OM 35 A	Súkromná základná škola BESST, Limbová 3 *	1	12:59:49	2020-11-01 13:30:02.030576
OM 35 B	Súkromná základná škola BESST, Limbová 3 *	1	12:59:49	2020-11-01 13:30:02.030576
OM 36 A	Súkromná základná škola BESST, Limbová 3 *	1	12:59:50	2020-11-01 13:30:02.030576
OM 36 B	Súkromná základná škola BESST, Limbová 3 *	1	12:59:51	2020-11-01 13:30:02.030576
OM 37	Trnavská univerzita v Trnave, Pedagogická fakulta, Priemyselná 4	1	12:59:51	2020-11-01 13:30:02.030576
OM 38 A	Kultúrny dom, Sereďská 131, Modranka *	1	12:59:52	2020-11-01 13:30:02.030576
OM 38 B	Kultúrny dom, Sereďská 131, Modranka *	1	12:59:53	2020-11-01 13:30:02.030576
OM 39	Mestská športová hala, Rybníková 576 (ľudia s prechodným pobytom, cudzinci)	1	12:59:53	2020-11-01 13:30:02.030576
OM 1	Radnica, Hlavná 1	1	12:59:05	2020-11-01 14:00:03.472887
OM 2	Mestský úrad v Trnave, Trhová 3	1	12:59:05	2020-11-01 14:00:03.472887
OM 3	Arcibiskupské gymnázium biskupa P. Jantauscha, Hollého 9	1	12:59:06	2020-11-01 14:00:03.472887
OM 4	Kino Hviezda, Paulínska 1	1	12:59:06	2020-11-01 14:00:03.472887
OM 5	Súkromná stredná odborná škola GOS, Ferka Urbánka 19	1	12:59:08	2020-11-01 14:00:03.472887
OM 6	Stredná priemyselná škola dopravná, Študentská 23	1	12:59:08	2020-11-01 14:00:03.472887
OM 7	Stredná priemyselná škola, Komenského 1	1	12:59:08	2020-11-01 14:00:03.472887
OM 8	Základná škola, Andreja Kubinu 34	1	12:59:09	2020-11-01 14:00:03.472887
OM 9	Stredná priemyselná škola, Komenského 1	1	12:59:09	2020-11-01 14:00:03.472887
OM 10	SPŠ stavebná Dušana S. Jurkoviča, Lomonosovova 7	1	12:59:10	2020-11-01 14:00:03.472887
OM 11 A	Základná umelecká škola, Mozartova 10 *	1	12:59:10	2020-11-01 14:00:03.472887
OM 11 B	Základná umelecká škola, Mozartova 10 *	1	12:59:11	2020-11-01 14:00:03.472887
OM 12	Základná umelecká škola, Mozartova 10 *	1	12:59:12	2020-11-01 14:00:03.472887
OM 13	Základná škola, Kornela Mahra 11 *	1	12:59:13	2020-11-01 14:00:03.472887
OM 14	Základná škola, Kornela Mahra 11 *	1	12:59:14	2020-11-01 14:00:03.472887
OM 15 A	Základná škola, Jána Bottu 27 *	1	12:59:14	2020-11-01 14:00:03.472887
OM 15 B	Základná škola, Jána Bottu 27 *	1	12:59:15	2020-11-01 14:00:03.472887
OM 16 A	Základná škola, Andreja Kubinu 34 *	1	12:59:16	2020-11-01 14:00:03.472887
OM 16 B	Základná škola, Andreja Kubinu 34 *	1	12:59:17	2020-11-01 14:00:03.472887
OM 17	Univerzita sv. Cyrila a Metoda, Námestie Jozefa Herdu 2	1	12:59:17	2020-11-01 14:00:03.472887
OM 18 A	Obchodná akadémia, Kukučínova 2 *	1	12:59:18	2020-11-01 14:00:03.472887
OM 18 B	Obchodná akadémia, Kukučínova 2 *	1	12:59:18	2020-11-01 14:00:03.472887
OM 19	Kultúrny dom CUBE, Ľudová 12	1	12:59:20	2020-11-01 14:00:03.472887
OM 20 A	Základná škola, Atómová 1 *	1	12:59:21	2020-11-01 14:00:03.472887
OM 20 B	Základná škola, Atómová 1 *	1	12:59:21	2020-11-01 14:00:03.472887
OM 21	Základná škola, Atómová 1 *	1	12:59:22	2020-11-01 14:00:03.472887
OM 22 A	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	1	12:59:22	2020-11-01 14:00:03.472887
OM 22 B	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	1	12:59:23	2020-11-01 14:00:03.472887
OM 23	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	1	12:59:23	2020-11-01 14:00:03.472887
OM 24	Stredná odborná škola elektrotechnická, Sibírska 1	1	12:59:25	2020-11-01 14:00:03.472887
OM 25	Súkromná SOŠ polytechnická DSA, Koniarekova 15	1	12:59:26	2020-11-01 14:00:03.472887
OM 26	Stredná zdravotnícka škola, Daxnerova 6	1	12:59:26	2020-11-01 14:00:03.472887
OM 27 A	Základná škola, Spartakovská 5 *	1	12:59:27	2020-11-01 14:00:03.472887
OM 27 B	Základná škola, Spartakovská 5 *	1	12:59:28	2020-11-01 14:00:03.472887
OM 28 A	Základná škola, Spartakovská 5 *	1	12:59:29	2020-11-01 14:00:03.472887
OM 28 B	Základná škola, Spartakovská 5 *	1	12:59:38	2020-11-01 14:00:03.472887
OM 29 A	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	1	12:59:39	2020-11-01 14:00:03.472887
OM 29 B	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	1	12:59:39	2020-11-01 14:00:03.472887
OM 30 A	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	1	12:59:40	2020-11-01 14:00:03.472887
OM 30 B	Mestský zimný štadión, Spartakovská 1B (vchod od Hokejky) *	1	12:59:40	2020-11-01 14:00:03.472887
OM 31 A	Základná škola, V Jame 3 *	1	12:59:42	2020-11-01 14:00:03.472887
OM 31 B	Základná škola, V Jame 3 *	1	12:59:42	2020-11-01 14:00:03.472887
OM 32	Základná škola, V Jame 3 *	1	12:59:43	2020-11-01 14:00:03.472887
OM 33 A	Základná škola, Maxima Gorkého 21 *	1	12:59:45	2020-11-01 14:00:03.472887
OM 33 B	Základná škola, Maxima Gorkého 21 *	1	12:59:45	2020-11-01 14:00:03.472887
OM 34 A	Základná škola, Maxima Gorkého 21 *	1	12:59:46	2020-11-01 14:00:03.472887
OM 34 B	Základná škola, Maxima Gorkého 21 *	1	12:59:48	2020-11-01 14:00:03.472887
OM 35 A	Súkromná základná škola BESST, Limbová 3 *	1	12:59:49	2020-11-01 14:00:03.472887
OM 35 B	Súkromná základná škola BESST, Limbová 3 *	1	12:59:49	2020-11-01 14:00:03.472887
OM 36 A	Súkromná základná škola BESST, Limbová 3 *	1	12:59:50	2020-11-01 14:00:03.472887
OM 36 B	Súkromná základná škola BESST, Limbová 3 *	1	12:59:51	2020-11-01 14:00:03.472887
OM 37	Trnavská univerzita v Trnave, Pedagogická fakulta, Priemyselná 4	1	12:59:51	2020-11-01 14:00:03.472887
OM 38 A	Kultúrny dom, Sereďská 131, Modranka *	1	12:59:52	2020-11-01 14:00:03.472887
OM 38 B	Kultúrny dom, Sereďská 131, Modranka *	1	12:59:53	2020-11-01 14:00:03.472887
OM 39	Mestská športová hala, Rybníková 576 (ľudia s prechodným pobytom, cudzinci)	1	12:59:53	2020-11-01 14:00:03.472887
OM 1	Radnica, Hlavná 1	1	12:59:05	2020-11-01 14:30:01.747411
OM 2	Mestský úrad v Trnave, Trhová 3	1	12:59:05	2020-11-01 14:30:01.747411
OM 3	Arcibiskupské gymnázium biskupa P. Jantauscha, Hollého 9	1	12:59:06	2020-11-01 14:30:01.747411
OM 4	Kino Hviezda, Paulínska 1	1	12:59:06	2020-11-01 14:30:01.747411
OM 5	Súkromná stredná odborná škola GOS, Ferka Urbánka 19	1	12:59:08	2020-11-01 14:30:01.747411
OM 6	Stredná priemyselná škola dopravná, Študentská 23	1	12:59:08	2020-11-01 14:30:01.747411
OM 7	Stredná priemyselná škola, Komenského 1	1	12:59:08	2020-11-01 14:30:01.747411
OM 8	Základná škola, Andreja Kubinu 34	1	12:59:09	2020-11-01 14:30:01.747411
OM 9	Stredná priemyselná škola, Komenského 1	1	12:59:09	2020-11-01 14:30:01.747411
OM 10	SPŠ stavebná Dušana S. Jurkoviča, Lomonosovova 7	1	12:59:10	2020-11-01 14:30:01.747411
OM 11 A	Základná umelecká škola, Mozartova 10 *	1	12:59:10	2020-11-01 14:30:01.747411
OM 11 B	Základná umelecká škola, Mozartova 10 *	1	12:59:11	2020-11-01 14:30:01.747411
OM 12	Základná umelecká škola, Mozartova 10 *	1	12:59:12	2020-11-01 14:30:01.747411
OM 13	Základná škola, Kornela Mahra 11 *	1	12:59:13	2020-11-01 14:30:01.747411
OM 14	Základná škola, Kornela Mahra 11 *	1	12:59:14	2020-11-01 14:30:01.747411
OM 15 A	Základná škola, Jána Bottu 27 *	1	12:59:14	2020-11-01 14:30:01.747411
OM 15 B	Základná škola, Jána Bottu 27 *	1	12:59:15	2020-11-01 14:30:01.747411
OM 16 A	Základná škola, Andreja Kubinu 34 *	1	12:59:16	2020-11-01 14:30:01.747411
OM 16 B	Základná škola, Andreja Kubinu 34 *	1	12:59:17	2020-11-01 14:30:01.747411
OM 17	Univerzita sv. Cyrila a Metoda, Námestie Jozefa Herdu 2	1	12:59:17	2020-11-01 14:30:01.747411
OM 18 A	Obchodná akadémia, Kukučínova 2 *	1	12:59:18	2020-11-01 14:30:01.747411
OM 18 B	Obchodná akadémia, Kukučínova 2 *	1	12:59:18	2020-11-01 14:30:01.747411
OM 19	Kultúrny dom CUBE, Ľudová 12	1	12:59:20	2020-11-01 14:30:01.747411
OM 20 A	Základná škola, Atómová 1 *	1	12:59:21	2020-11-01 14:30:01.747411
OM 20 B	Základná škola, Atómová 1 *	1	12:59:21	2020-11-01 14:30:01.747411
OM 21	Základná škola, Atómová 1 *	1	12:59:22	2020-11-01 14:30:01.747411
OM 22 A	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	1	12:59:22	2020-11-01 14:30:01.747411
OM 22 B	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	1	12:59:23	2020-11-01 14:30:01.747411
OM 23	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	1	12:59:23	2020-11-01 14:30:01.747411
OM 24	Stredná odborná škola elektrotechnická, Sibírska 1	1	12:59:25	2020-11-01 14:30:01.747411
OM 25	Súkromná SOŠ polytechnická DSA, Koniarekova 15	1	12:59:26	2020-11-01 14:30:01.747411
OM 26	Stredná zdravotnícka škola, Daxnerova 6	1	12:59:26	2020-11-01 14:30:01.747411
OM 27 A	Základná škola, Spartakovská 5 *	1	12:59:27	2020-11-01 14:30:01.747411
OM 27 B	Základná škola, Spartakovská 5 *	1	12:59:28	2020-11-01 14:30:01.747411
OM 28 A	Základná škola, Spartakovská 5 *	1	12:59:29	2020-11-01 14:30:01.747411
OM 28 B	Základná škola, Spartakovská 5 *	1	12:59:38	2020-11-01 14:30:01.747411
OM 4	Kino Hviezda, Paulínska 1	1	14:36:13	2020-11-01 16:54:43.119771
OM 29 A	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	1	12:59:39	2020-11-01 14:30:01.747411
OM 29 B	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	1	12:59:39	2020-11-01 14:30:01.747411
OM 30 A	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	1	12:59:40	2020-11-01 14:30:01.747411
OM 30 B	Mestský zimný štadión, Spartakovská 1B (vchod od Hokejky) *	1	12:59:40	2020-11-01 14:30:01.747411
OM 31 A	Základná škola, V Jame 3 *	1	12:59:42	2020-11-01 14:30:01.747411
OM 31 B	Základná škola, V Jame 3 *	1	12:59:42	2020-11-01 14:30:01.747411
OM 32	Základná škola, V Jame 3 *	1	12:59:43	2020-11-01 14:30:01.747411
OM 33 A	Základná škola, Maxima Gorkého 21 *	1	12:59:45	2020-11-01 14:30:01.747411
OM 33 B	Základná škola, Maxima Gorkého 21 *	1	12:59:45	2020-11-01 14:30:01.747411
OM 34 A	Základná škola, Maxima Gorkého 21 *	1	12:59:46	2020-11-01 14:30:01.747411
OM 34 B	Základná škola, Maxima Gorkého 21 *	1	12:59:48	2020-11-01 14:30:01.747411
OM 35 A	Súkromná základná škola BESST, Limbová 3 *	1	12:59:49	2020-11-01 14:30:01.747411
OM 35 B	Súkromná základná škola BESST, Limbová 3 *	1	12:59:49	2020-11-01 14:30:01.747411
OM 36 A	Súkromná základná škola BESST, Limbová 3 *	1	12:59:50	2020-11-01 14:30:01.747411
OM 36 B	Súkromná základná škola BESST, Limbová 3 *	1	12:59:51	2020-11-01 14:30:01.747411
OM 37	Trnavská univerzita v Trnave, Pedagogická fakulta, Priemyselná 4	1	12:59:51	2020-11-01 14:30:01.747411
OM 38 A	Kultúrny dom, Sereďská 131, Modranka *	1	12:59:52	2020-11-01 14:30:01.747411
OM 38 B	Kultúrny dom, Sereďská 131, Modranka *	1	12:59:53	2020-11-01 14:30:01.747411
OM 39	Mestská športová hala, Rybníková 576 (ľudia s prechodným pobytom, cudzinci)	1	12:59:53	2020-11-01 14:30:01.747411
OM 1	Radnica, Hlavná 1	1	14:36:12	2020-11-01 16:54:33.833577
OM 2	Mestský úrad v Trnave, Trhová 3	1	14:36:12	2020-11-01 16:54:33.833577
OM 3	Arcibiskupské gymnázium biskupa P. Jantauscha, Hollého 9	1	14:36:13	2020-11-01 16:54:33.833577
OM 4	Kino Hviezda, Paulínska 1	1	14:36:13	2020-11-01 16:54:33.833577
OM 5	Súkromná stredná odborná škola GOS, Ferka Urbánka 19	1	14:36:14	2020-11-01 16:54:33.833577
OM 6	Stredná priemyselná škola dopravná, Študentská 23	1	14:36:15	2020-11-01 16:54:33.833577
OM 7	Stredná priemyselná škola, Komenského 1	1	14:36:15	2020-11-01 16:54:33.833577
OM 8	Základná škola, Andreja Kubinu 34	1	14:36:16	2020-11-01 16:54:33.833577
OM 9	Stredná priemyselná škola, Komenského 1	1	14:36:16	2020-11-01 16:54:33.833577
OM 10	SPŠ stavebná Dušana S. Jurkoviča, Lomonosovova 7	1	14:36:17	2020-11-01 16:54:33.833577
OM 11 A	Základná umelecká škola, Mozartova 10 *	1	14:36:18	2020-11-01 16:54:33.833577
OM 11 B	Základná umelecká škola, Mozartova 10 *	1	14:36:19	2020-11-01 16:54:33.833577
OM 12	Základná umelecká škola, Mozartova 10 *	1	14:36:19	2020-11-01 16:54:33.833577
OM 13	Základná škola, Kornela Mahra 11 *	1	14:36:20	2020-11-01 16:54:33.833577
OM 14	Základná škola, Kornela Mahra 11 *	1	14:36:20	2020-11-01 16:54:33.833577
OM 15 A	Základná škola, Jána Bottu 27 *	1	14:36:21	2020-11-01 16:54:33.833577
OM 15 B	Základná škola, Jána Bottu 27 *	1	14:36:23	2020-11-01 16:54:33.833577
OM 16 A	Základná škola, Andreja Kubinu 34 *	1	14:36:24	2020-11-01 16:54:33.833577
OM 16 B	Základná škola, Andreja Kubinu 34 *	1	14:36:24	2020-11-01 16:54:33.833577
OM 17	Univerzita sv. Cyrila a Metoda, Námestie Jozefa Herdu 2	1	14:36:25	2020-11-01 16:54:33.833577
OM 18 A	Obchodná akadémia, Kukučínova 2 *	1	14:36:25	2020-11-01 16:54:33.833577
OM 18 B	Obchodná akadémia, Kukučínova 2 *	1	14:36:26	2020-11-01 16:54:33.833577
OM 19	Kultúrny dom CUBE, Ľudová 12	1	14:36:27	2020-11-01 16:54:33.833577
OM 20 A	Základná škola, Atómová 1 *	1	14:36:28	2020-11-01 16:54:33.833577
OM 20 B	Základná škola, Atómová 1 *	1	14:36:29	2020-11-01 16:54:33.833577
OM 21	Základná škola, Atómová 1 *	1	14:36:29	2020-11-01 16:54:33.833577
OM 22 A	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	1	14:36:30	2020-11-01 16:54:33.833577
OM 22 B	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	1	14:36:30	2020-11-01 16:54:33.833577
OM 23	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	1	14:36:31	2020-11-01 16:54:33.833577
OM 24	Stredná odborná škola elektrotechnická, Sibírska 1	1	14:36:35	2020-11-01 16:54:33.833577
OM 25	Súkromná SOŠ polytechnická DSA, Koniarekova 15	1	14:36:36	2020-11-01 16:54:33.833577
OM 26	Stredná zdravotnícka škola, Daxnerova 6	1	14:36:37	2020-11-01 16:54:33.833577
OM 27 A	Základná škola, Spartakovská 5 *	1	14:36:37	2020-11-01 16:54:33.833577
OM 27 B	Základná škola, Spartakovská 5 *	1	14:36:39	2020-11-01 16:54:33.833577
OM 28 A	Základná škola, Spartakovská 5 *	1	14:36:40	2020-11-01 16:54:33.833577
OM 28 B	Základná škola, Spartakovská 5 *	1	14:36:42	2020-11-01 16:54:33.833577
OM 29 A	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	1	14:36:42	2020-11-01 16:54:33.833577
OM 29 B	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	1	14:36:43	2020-11-01 16:54:33.833577
OM 30 A	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	1	14:36:43	2020-11-01 16:54:33.833577
OM 30 B	Mestský zimný štadión, Spartakovská 1B (vchod od Hokejky) *	1	14:36:44	2020-11-01 16:54:33.833577
OM 31 A	Základná škola, V Jame 3 *	1	14:36:45	2020-11-01 16:54:33.833577
OM 31 B	Základná škola, V Jame 3 *	1	14:36:46	2020-11-01 16:54:33.833577
OM 32	Základná škola, V Jame 3 *	1	14:36:46	2020-11-01 16:54:33.833577
OM 33 A	Základná škola, Maxima Gorkého 21 *	1	14:36:47	2020-11-01 16:54:33.833577
OM 33 B	Základná škola, Maxima Gorkého 21 *	1	14:36:47	2020-11-01 16:54:33.833577
OM 34 A	Základná škola, Maxima Gorkého 21 *	1	14:36:50	2020-11-01 16:54:33.833577
OM 34 B	Základná škola, Maxima Gorkého 21 *	1	14:36:50	2020-11-01 16:54:33.833577
OM 35 A	Súkromná základná škola BESST, Limbová 3 *	1	14:36:51	2020-11-01 16:54:33.833577
OM 35 B	Súkromná základná škola BESST, Limbová 3 *	1	14:36:52	2020-11-01 16:54:33.833577
OM 36 A	Súkromná základná škola BESST, Limbová 3 *	1	14:36:55	2020-11-01 16:54:33.833577
OM 36 B	Súkromná základná škola BESST, Limbová 3 *	1	14:36:56	2020-11-01 16:54:33.833577
OM 37	Trnavská univerzita v Trnave, Pedagogická fakulta, Priemyselná 4	1	14:36:57	2020-11-01 16:54:33.833577
OM 38 A	Kultúrny dom, Sereďská 131, Modranka *	1	14:36:57	2020-11-01 16:54:33.833577
OM 38 B	Kultúrny dom, Sereďská 131, Modranka *	1	14:36:58	2020-11-01 16:54:33.833577
OM 39	Mestská športová hala, Rybníková 576 (ľudia s prechodným pobytom, cudzinci)	1	14:36:58	2020-11-01 16:54:33.833577
OM 1	Radnica, Hlavná 1	1	14:36:12	2020-11-01 16:54:43.119771
OM 2	Mestský úrad v Trnave, Trhová 3	1	14:36:12	2020-11-01 16:54:43.119771
OM 3	Arcibiskupské gymnázium biskupa P. Jantauscha, Hollého 9	1	14:36:13	2020-11-01 16:54:43.119771
OM 5	Súkromná stredná odborná škola GOS, Ferka Urbánka 19	1	14:36:14	2020-11-01 16:54:43.119771
OM 6	Stredná priemyselná škola dopravná, Študentská 23	1	14:36:15	2020-11-01 16:54:43.119771
OM 7	Stredná priemyselná škola, Komenského 1	1	14:36:15	2020-11-01 16:54:43.119771
OM 8	Základná škola, Andreja Kubinu 34	1	14:36:16	2020-11-01 16:54:43.119771
OM 9	Stredná priemyselná škola, Komenského 1	1	14:36:16	2020-11-01 16:54:43.119771
OM 10	SPŠ stavebná Dušana S. Jurkoviča, Lomonosovova 7	1	14:36:17	2020-11-01 16:54:43.119771
OM 11 A	Základná umelecká škola, Mozartova 10 *	1	14:36:18	2020-11-01 16:54:43.119771
OM 11 B	Základná umelecká škola, Mozartova 10 *	1	14:36:19	2020-11-01 16:54:43.119771
OM 12	Základná umelecká škola, Mozartova 10 *	1	14:36:19	2020-11-01 16:54:43.119771
OM 13	Základná škola, Kornela Mahra 11 *	1	14:36:20	2020-11-01 16:54:43.119771
OM 14	Základná škola, Kornela Mahra 11 *	1	14:36:20	2020-11-01 16:54:43.119771
OM 15 A	Základná škola, Jána Bottu 27 *	1	14:36:21	2020-11-01 16:54:43.119771
OM 15 B	Základná škola, Jána Bottu 27 *	1	14:36:23	2020-11-01 16:54:43.119771
OM 16 A	Základná škola, Andreja Kubinu 34 *	1	14:36:24	2020-11-01 16:54:43.119771
OM 16 B	Základná škola, Andreja Kubinu 34 *	1	14:36:24	2020-11-01 16:54:43.119771
OM 17	Univerzita sv. Cyrila a Metoda, Námestie Jozefa Herdu 2	1	14:36:25	2020-11-01 16:54:43.119771
OM 18 A	Obchodná akadémia, Kukučínova 2 *	1	14:36:25	2020-11-01 16:54:43.119771
OM 18 B	Obchodná akadémia, Kukučínova 2 *	1	14:36:26	2020-11-01 16:54:43.119771
OM 19	Kultúrny dom CUBE, Ľudová 12	1	14:36:27	2020-11-01 16:54:43.119771
OM 20 A	Základná škola, Atómová 1 *	1	14:36:28	2020-11-01 16:54:43.119771
OM 20 B	Základná škola, Atómová 1 *	1	14:36:29	2020-11-01 16:54:43.119771
OM 21	Základná škola, Atómová 1 *	1	14:36:29	2020-11-01 16:54:43.119771
OM 22 A	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	1	14:36:30	2020-11-01 16:54:43.119771
OM 22 B	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	1	14:36:30	2020-11-01 16:54:43.119771
OM 23	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	1	14:36:31	2020-11-01 16:54:43.119771
OM 24	Stredná odborná škola elektrotechnická, Sibírska 1	1	14:36:35	2020-11-01 16:54:43.119771
OM 25	Súkromná SOŠ polytechnická DSA, Koniarekova 15	1	14:36:36	2020-11-01 16:54:43.119771
OM 26	Stredná zdravotnícka škola, Daxnerova 6	1	14:36:37	2020-11-01 16:54:43.119771
OM 27 A	Základná škola, Spartakovská 5 *	1	14:36:37	2020-11-01 16:54:43.119771
OM 27 B	Základná škola, Spartakovská 5 *	1	14:36:39	2020-11-01 16:54:43.119771
OM 28 A	Základná škola, Spartakovská 5 *	1	14:36:40	2020-11-01 16:54:43.119771
OM 28 B	Základná škola, Spartakovská 5 *	1	14:36:42	2020-11-01 16:54:43.119771
OM 29 A	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	1	14:36:42	2020-11-01 16:54:43.119771
OM 29 B	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	1	14:36:43	2020-11-01 16:54:43.119771
OM 30 A	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	1	14:36:43	2020-11-01 16:54:43.119771
OM 30 B	Mestský zimný štadión, Spartakovská 1B (vchod od Hokejky) *	1	14:36:44	2020-11-01 16:54:43.119771
OM 31 A	Základná škola, V Jame 3 *	1	14:36:45	2020-11-01 16:54:43.119771
OM 31 B	Základná škola, V Jame 3 *	1	14:36:46	2020-11-01 16:54:43.119771
OM 32	Základná škola, V Jame 3 *	1	14:36:46	2020-11-01 16:54:43.119771
OM 33 A	Základná škola, Maxima Gorkého 21 *	1	14:36:47	2020-11-01 16:54:43.119771
OM 33 B	Základná škola, Maxima Gorkého 21 *	1	14:36:47	2020-11-01 16:54:43.119771
OM 34 A	Základná škola, Maxima Gorkého 21 *	1	14:36:50	2020-11-01 16:54:43.119771
OM 34 B	Základná škola, Maxima Gorkého 21 *	1	14:36:50	2020-11-01 16:54:43.119771
OM 35 A	Súkromná základná škola BESST, Limbová 3 *	1	14:36:51	2020-11-01 16:54:43.119771
OM 35 B	Súkromná základná škola BESST, Limbová 3 *	1	14:36:52	2020-11-01 16:54:43.119771
OM 36 A	Súkromná základná škola BESST, Limbová 3 *	1	14:36:55	2020-11-01 16:54:43.119771
OM 36 B	Súkromná základná škola BESST, Limbová 3 *	1	14:36:56	2020-11-01 16:54:43.119771
OM 37	Trnavská univerzita v Trnave, Pedagogická fakulta, Priemyselná 4	1	14:36:57	2020-11-01 16:54:43.119771
OM 38 A	Kultúrny dom, Sereďská 131, Modranka *	1	14:36:57	2020-11-01 16:54:43.119771
OM 38 B	Kultúrny dom, Sereďská 131, Modranka *	1	14:36:58	2020-11-01 16:54:43.119771
OM 39	Mestská športová hala, Rybníková 576 (ľudia s prechodným pobytom, cudzinci)	1	14:36:58	2020-11-01 16:54:43.119771
OM 1	Radnica, Hlavná 1	1	14:36:12	2020-11-01 16:54:47.211537
OM 2	Mestský úrad v Trnave, Trhová 3	1	14:36:12	2020-11-01 16:54:47.211537
OM 3	Arcibiskupské gymnázium biskupa P. Jantauscha, Hollého 9	1	14:36:13	2020-11-01 16:54:47.211537
OM 4	Kino Hviezda, Paulínska 1	1	14:36:13	2020-11-01 16:54:47.211537
OM 5	Súkromná stredná odborná škola GOS, Ferka Urbánka 19	1	14:36:14	2020-11-01 16:54:47.211537
OM 6	Stredná priemyselná škola dopravná, Študentská 23	1	14:36:15	2020-11-01 16:54:47.211537
OM 7	Stredná priemyselná škola, Komenského 1	1	14:36:15	2020-11-01 16:54:47.211537
OM 8	Základná škola, Andreja Kubinu 34	1	14:36:16	2020-11-01 16:54:47.211537
OM 9	Stredná priemyselná škola, Komenského 1	1	14:36:16	2020-11-01 16:54:47.211537
OM 10	SPŠ stavebná Dušana S. Jurkoviča, Lomonosovova 7	1	14:36:17	2020-11-01 16:54:47.211537
OM 11 A	Základná umelecká škola, Mozartova 10 *	1	14:36:18	2020-11-01 16:54:47.211537
OM 11 B	Základná umelecká škola, Mozartova 10 *	1	14:36:19	2020-11-01 16:54:47.211537
OM 12	Základná umelecká škola, Mozartova 10 *	1	14:36:19	2020-11-01 16:54:47.211537
OM 13	Základná škola, Kornela Mahra 11 *	1	14:36:20	2020-11-01 16:54:47.211537
OM 14	Základná škola, Kornela Mahra 11 *	1	14:36:20	2020-11-01 16:54:47.211537
OM 15 A	Základná škola, Jána Bottu 27 *	1	14:36:21	2020-11-01 16:54:47.211537
OM 15 B	Základná škola, Jána Bottu 27 *	1	14:36:23	2020-11-01 16:54:47.211537
OM 16 A	Základná škola, Andreja Kubinu 34 *	1	14:36:24	2020-11-01 16:54:47.211537
OM 16 B	Základná škola, Andreja Kubinu 34 *	1	14:36:24	2020-11-01 16:54:47.211537
OM 17	Univerzita sv. Cyrila a Metoda, Námestie Jozefa Herdu 2	1	14:36:25	2020-11-01 16:54:47.211537
OM 18 A	Obchodná akadémia, Kukučínova 2 *	1	14:36:25	2020-11-01 16:54:47.211537
OM 18 B	Obchodná akadémia, Kukučínova 2 *	1	14:36:26	2020-11-01 16:54:47.211537
OM 19	Kultúrny dom CUBE, Ľudová 12	1	14:36:27	2020-11-01 16:54:47.211537
OM 20 A	Základná škola, Atómová 1 *	1	14:36:28	2020-11-01 16:54:47.211537
OM 20 B	Základná škola, Atómová 1 *	1	14:36:29	2020-11-01 16:54:47.211537
OM 21	Základná škola, Atómová 1 *	1	14:36:29	2020-11-01 16:54:47.211537
OM 22 A	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	1	14:36:30	2020-11-01 16:54:47.211537
OM 16 A	Základná škola, Andreja Kubinu 34 *	1	14:36:24	2020-11-01 17:30:01.803698
OM 22 B	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	1	14:36:30	2020-11-01 16:54:47.211537
OM 23	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	1	14:36:31	2020-11-01 16:54:47.211537
OM 24	Stredná odborná škola elektrotechnická, Sibírska 1	1	14:36:35	2020-11-01 16:54:47.211537
OM 25	Súkromná SOŠ polytechnická DSA, Koniarekova 15	1	14:36:36	2020-11-01 16:54:47.211537
OM 26	Stredná zdravotnícka škola, Daxnerova 6	1	14:36:37	2020-11-01 16:54:47.211537
OM 27 A	Základná škola, Spartakovská 5 *	1	14:36:37	2020-11-01 16:54:47.211537
OM 27 B	Základná škola, Spartakovská 5 *	1	14:36:39	2020-11-01 16:54:47.211537
OM 28 A	Základná škola, Spartakovská 5 *	1	14:36:40	2020-11-01 16:54:47.211537
OM 28 B	Základná škola, Spartakovská 5 *	1	14:36:42	2020-11-01 16:54:47.211537
OM 29 A	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	1	14:36:42	2020-11-01 16:54:47.211537
OM 29 B	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	1	14:36:43	2020-11-01 16:54:47.211537
OM 30 A	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	1	14:36:43	2020-11-01 16:54:47.211537
OM 30 B	Mestský zimný štadión, Spartakovská 1B (vchod od Hokejky) *	1	14:36:44	2020-11-01 16:54:47.211537
OM 31 A	Základná škola, V Jame 3 *	1	14:36:45	2020-11-01 16:54:47.211537
OM 31 B	Základná škola, V Jame 3 *	1	14:36:46	2020-11-01 16:54:47.211537
OM 32	Základná škola, V Jame 3 *	1	14:36:46	2020-11-01 16:54:47.211537
OM 33 A	Základná škola, Maxima Gorkého 21 *	1	14:36:47	2020-11-01 16:54:47.211537
OM 33 B	Základná škola, Maxima Gorkého 21 *	1	14:36:47	2020-11-01 16:54:47.211537
OM 34 A	Základná škola, Maxima Gorkého 21 *	1	14:36:50	2020-11-01 16:54:47.211537
OM 34 B	Základná škola, Maxima Gorkého 21 *	1	14:36:50	2020-11-01 16:54:47.211537
OM 35 A	Súkromná základná škola BESST, Limbová 3 *	1	14:36:51	2020-11-01 16:54:47.211537
OM 35 B	Súkromná základná škola BESST, Limbová 3 *	1	14:36:52	2020-11-01 16:54:47.211537
OM 36 A	Súkromná základná škola BESST, Limbová 3 *	1	14:36:55	2020-11-01 16:54:47.211537
OM 36 B	Súkromná základná škola BESST, Limbová 3 *	1	14:36:56	2020-11-01 16:54:47.211537
OM 37	Trnavská univerzita v Trnave, Pedagogická fakulta, Priemyselná 4	1	14:36:57	2020-11-01 16:54:47.211537
OM 38 A	Kultúrny dom, Sereďská 131, Modranka *	1	14:36:57	2020-11-01 16:54:47.211537
OM 38 B	Kultúrny dom, Sereďská 131, Modranka *	1	14:36:58	2020-11-01 16:54:47.211537
OM 39	Mestská športová hala, Rybníková 576 (ľudia s prechodným pobytom, cudzinci)	1	14:36:58	2020-11-01 16:54:47.211537
OM 1	Radnica, Hlavná 1	1	14:36:12	2020-11-01 16:54:50.27612
OM 2	Mestský úrad v Trnave, Trhová 3	1	14:36:12	2020-11-01 16:54:50.27612
OM 3	Arcibiskupské gymnázium biskupa P. Jantauscha, Hollého 9	1	14:36:13	2020-11-01 16:54:50.27612
OM 4	Kino Hviezda, Paulínska 1	1	14:36:13	2020-11-01 16:54:50.27612
OM 5	Súkromná stredná odborná škola GOS, Ferka Urbánka 19	1	14:36:14	2020-11-01 16:54:50.27612
OM 6	Stredná priemyselná škola dopravná, Študentská 23	1	14:36:15	2020-11-01 16:54:50.27612
OM 7	Stredná priemyselná škola, Komenského 1	1	14:36:15	2020-11-01 16:54:50.27612
OM 8	Základná škola, Andreja Kubinu 34	1	14:36:16	2020-11-01 16:54:50.27612
OM 9	Stredná priemyselná škola, Komenského 1	1	14:36:16	2020-11-01 16:54:50.27612
OM 10	SPŠ stavebná Dušana S. Jurkoviča, Lomonosovova 7	1	14:36:17	2020-11-01 16:54:50.27612
OM 11 A	Základná umelecká škola, Mozartova 10 *	1	14:36:18	2020-11-01 16:54:50.27612
OM 11 B	Základná umelecká škola, Mozartova 10 *	1	14:36:19	2020-11-01 16:54:50.27612
OM 12	Základná umelecká škola, Mozartova 10 *	1	14:36:19	2020-11-01 16:54:50.27612
OM 13	Základná škola, Kornela Mahra 11 *	1	14:36:20	2020-11-01 16:54:50.27612
OM 14	Základná škola, Kornela Mahra 11 *	1	14:36:20	2020-11-01 16:54:50.27612
OM 15 A	Základná škola, Jána Bottu 27 *	1	14:36:21	2020-11-01 16:54:50.27612
OM 15 B	Základná škola, Jána Bottu 27 *	1	14:36:23	2020-11-01 16:54:50.27612
OM 16 A	Základná škola, Andreja Kubinu 34 *	1	14:36:24	2020-11-01 16:54:50.27612
OM 16 B	Základná škola, Andreja Kubinu 34 *	1	14:36:24	2020-11-01 16:54:50.27612
OM 17	Univerzita sv. Cyrila a Metoda, Námestie Jozefa Herdu 2	1	14:36:25	2020-11-01 16:54:50.27612
OM 18 A	Obchodná akadémia, Kukučínova 2 *	1	14:36:25	2020-11-01 16:54:50.27612
OM 18 B	Obchodná akadémia, Kukučínova 2 *	1	14:36:26	2020-11-01 16:54:50.27612
OM 19	Kultúrny dom CUBE, Ľudová 12	1	14:36:27	2020-11-01 16:54:50.27612
OM 20 A	Základná škola, Atómová 1 *	1	14:36:28	2020-11-01 16:54:50.27612
OM 20 B	Základná škola, Atómová 1 *	1	14:36:29	2020-11-01 16:54:50.27612
OM 21	Základná škola, Atómová 1 *	1	14:36:29	2020-11-01 16:54:50.27612
OM 22 A	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	1	14:36:30	2020-11-01 16:54:50.27612
OM 22 B	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	1	14:36:30	2020-11-01 16:54:50.27612
OM 23	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	1	14:36:31	2020-11-01 16:54:50.27612
OM 24	Stredná odborná škola elektrotechnická, Sibírska 1	1	14:36:35	2020-11-01 16:54:50.27612
OM 25	Súkromná SOŠ polytechnická DSA, Koniarekova 15	1	14:36:36	2020-11-01 16:54:50.27612
OM 26	Stredná zdravotnícka škola, Daxnerova 6	1	14:36:37	2020-11-01 16:54:50.27612
OM 27 A	Základná škola, Spartakovská 5 *	1	14:36:37	2020-11-01 16:54:50.27612
OM 27 B	Základná škola, Spartakovská 5 *	1	14:36:39	2020-11-01 16:54:50.27612
OM 28 A	Základná škola, Spartakovská 5 *	1	14:36:40	2020-11-01 16:54:50.27612
OM 28 B	Základná škola, Spartakovská 5 *	1	14:36:42	2020-11-01 16:54:50.27612
OM 29 A	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	1	14:36:42	2020-11-01 16:54:50.27612
OM 29 B	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	1	14:36:43	2020-11-01 16:54:50.27612
OM 30 A	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	1	14:36:43	2020-11-01 16:54:50.27612
OM 30 B	Mestský zimný štadión, Spartakovská 1B (vchod od Hokejky) *	1	14:36:44	2020-11-01 16:54:50.27612
OM 31 A	Základná škola, V Jame 3 *	1	14:36:45	2020-11-01 16:54:50.27612
OM 31 B	Základná škola, V Jame 3 *	1	14:36:46	2020-11-01 16:54:50.27612
OM 32	Základná škola, V Jame 3 *	1	14:36:46	2020-11-01 16:54:50.27612
OM 33 A	Základná škola, Maxima Gorkého 21 *	1	14:36:47	2020-11-01 16:54:50.27612
OM 33 B	Základná škola, Maxima Gorkého 21 *	1	14:36:47	2020-11-01 16:54:50.27612
OM 34 A	Základná škola, Maxima Gorkého 21 *	1	14:36:50	2020-11-01 16:54:50.27612
OM 34 B	Základná škola, Maxima Gorkého 21 *	1	14:36:50	2020-11-01 16:54:50.27612
OM 35 A	Súkromná základná škola BESST, Limbová 3 *	1	14:36:51	2020-11-01 16:54:50.27612
OM 35 B	Súkromná základná škola BESST, Limbová 3 *	1	14:36:52	2020-11-01 16:54:50.27612
OM 36 A	Súkromná základná škola BESST, Limbová 3 *	1	14:36:55	2020-11-01 16:54:50.27612
OM 36 B	Súkromná základná škola BESST, Limbová 3 *	1	14:36:56	2020-11-01 16:54:50.27612
OM 37	Trnavská univerzita v Trnave, Pedagogická fakulta, Priemyselná 4	1	14:36:57	2020-11-01 16:54:50.27612
OM 38 A	Kultúrny dom, Sereďská 131, Modranka *	1	14:36:57	2020-11-01 16:54:50.27612
OM 38 B	Kultúrny dom, Sereďská 131, Modranka *	1	14:36:58	2020-11-01 16:54:50.27612
OM 39	Mestská športová hala, Rybníková 576 (ľudia s prechodným pobytom, cudzinci)	1	14:36:58	2020-11-01 16:54:50.27612
OM 1	Radnica, Hlavná 1	1	14:36:12	2020-11-01 17:00:02.393212
OM 2	Mestský úrad v Trnave, Trhová 3	1	14:36:12	2020-11-01 17:00:02.393212
OM 3	Arcibiskupské gymnázium biskupa P. Jantauscha, Hollého 9	1	14:36:13	2020-11-01 17:00:02.393212
OM 4	Kino Hviezda, Paulínska 1	1	14:36:13	2020-11-01 17:00:02.393212
OM 5	Súkromná stredná odborná škola GOS, Ferka Urbánka 19	1	14:36:14	2020-11-01 17:00:02.393212
OM 6	Stredná priemyselná škola dopravná, Študentská 23	1	14:36:15	2020-11-01 17:00:02.393212
OM 7	Stredná priemyselná škola, Komenského 1	1	14:36:15	2020-11-01 17:00:02.393212
OM 8	Základná škola, Andreja Kubinu 34	1	14:36:16	2020-11-01 17:00:02.393212
OM 9	Stredná priemyselná škola, Komenského 1	1	14:36:16	2020-11-01 17:00:02.393212
OM 10	SPŠ stavebná Dušana S. Jurkoviča, Lomonosovova 7	1	14:36:17	2020-11-01 17:00:02.393212
OM 11 A	Základná umelecká škola, Mozartova 10 *	1	14:36:18	2020-11-01 17:00:02.393212
OM 11 B	Základná umelecká škola, Mozartova 10 *	1	14:36:19	2020-11-01 17:00:02.393212
OM 12	Základná umelecká škola, Mozartova 10 *	1	14:36:19	2020-11-01 17:00:02.393212
OM 13	Základná škola, Kornela Mahra 11 *	1	14:36:20	2020-11-01 17:00:02.393212
OM 14	Základná škola, Kornela Mahra 11 *	1	14:36:20	2020-11-01 17:00:02.393212
OM 15 A	Základná škola, Jána Bottu 27 *	1	14:36:21	2020-11-01 17:00:02.393212
OM 15 B	Základná škola, Jána Bottu 27 *	1	14:36:23	2020-11-01 17:00:02.393212
OM 16 A	Základná škola, Andreja Kubinu 34 *	1	14:36:24	2020-11-01 17:00:02.393212
OM 16 B	Základná škola, Andreja Kubinu 34 *	1	14:36:24	2020-11-01 17:00:02.393212
OM 17	Univerzita sv. Cyrila a Metoda, Námestie Jozefa Herdu 2	1	14:36:25	2020-11-01 17:00:02.393212
OM 18 A	Obchodná akadémia, Kukučínova 2 *	1	14:36:25	2020-11-01 17:00:02.393212
OM 18 B	Obchodná akadémia, Kukučínova 2 *	1	14:36:26	2020-11-01 17:00:02.393212
OM 19	Kultúrny dom CUBE, Ľudová 12	1	14:36:27	2020-11-01 17:00:02.393212
OM 20 A	Základná škola, Atómová 1 *	1	14:36:28	2020-11-01 17:00:02.393212
OM 20 B	Základná škola, Atómová 1 *	1	14:36:29	2020-11-01 17:00:02.393212
OM 21	Základná škola, Atómová 1 *	1	14:36:29	2020-11-01 17:00:02.393212
OM 22 A	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	1	14:36:30	2020-11-01 17:00:02.393212
OM 22 B	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	1	14:36:30	2020-11-01 17:00:02.393212
OM 23	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	1	14:36:31	2020-11-01 17:00:02.393212
OM 24	Stredná odborná škola elektrotechnická, Sibírska 1	1	14:36:35	2020-11-01 17:00:02.393212
OM 25	Súkromná SOŠ polytechnická DSA, Koniarekova 15	1	14:36:36	2020-11-01 17:00:02.393212
OM 26	Stredná zdravotnícka škola, Daxnerova 6	1	14:36:37	2020-11-01 17:00:02.393212
OM 27 A	Základná škola, Spartakovská 5 *	1	14:36:37	2020-11-01 17:00:02.393212
OM 27 B	Základná škola, Spartakovská 5 *	1	14:36:39	2020-11-01 17:00:02.393212
OM 28 A	Základná škola, Spartakovská 5 *	1	14:36:40	2020-11-01 17:00:02.393212
OM 28 B	Základná škola, Spartakovská 5 *	1	14:36:42	2020-11-01 17:00:02.393212
OM 29 A	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	1	14:36:42	2020-11-01 17:00:02.393212
OM 29 B	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	1	14:36:43	2020-11-01 17:00:02.393212
OM 30 A	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	1	14:36:43	2020-11-01 17:00:02.393212
OM 30 B	Mestský zimný štadión, Spartakovská 1B (vchod od Hokejky) *	1	14:36:44	2020-11-01 17:00:02.393212
OM 31 A	Základná škola, V Jame 3 *	1	14:36:45	2020-11-01 17:00:02.393212
OM 31 B	Základná škola, V Jame 3 *	1	14:36:46	2020-11-01 17:00:02.393212
OM 32	Základná škola, V Jame 3 *	1	14:36:46	2020-11-01 17:00:02.393212
OM 33 A	Základná škola, Maxima Gorkého 21 *	1	14:36:47	2020-11-01 17:00:02.393212
OM 33 B	Základná škola, Maxima Gorkého 21 *	1	14:36:47	2020-11-01 17:00:02.393212
OM 34 A	Základná škola, Maxima Gorkého 21 *	1	14:36:50	2020-11-01 17:00:02.393212
OM 34 B	Základná škola, Maxima Gorkého 21 *	1	14:36:50	2020-11-01 17:00:02.393212
OM 35 A	Súkromná základná škola BESST, Limbová 3 *	1	14:36:51	2020-11-01 17:00:02.393212
OM 35 B	Súkromná základná škola BESST, Limbová 3 *	1	14:36:52	2020-11-01 17:00:02.393212
OM 36 A	Súkromná základná škola BESST, Limbová 3 *	1	14:36:55	2020-11-01 17:00:02.393212
OM 36 B	Súkromná základná škola BESST, Limbová 3 *	1	14:36:56	2020-11-01 17:00:02.393212
OM 37	Trnavská univerzita v Trnave, Pedagogická fakulta, Priemyselná 4	1	14:36:57	2020-11-01 17:00:02.393212
OM 38 A	Kultúrny dom, Sereďská 131, Modranka *	1	14:36:57	2020-11-01 17:00:02.393212
OM 38 B	Kultúrny dom, Sereďská 131, Modranka *	1	14:36:58	2020-11-01 17:00:02.393212
OM 39	Mestská športová hala, Rybníková 576 (ľudia s prechodným pobytom, cudzinci)	1	14:36:58	2020-11-01 17:00:02.393212
OM 1	Radnica, Hlavná 1	1	14:36:12	2020-11-01 17:30:01.803698
OM 2	Mestský úrad v Trnave, Trhová 3	1	14:36:12	2020-11-01 17:30:01.803698
OM 3	Arcibiskupské gymnázium biskupa P. Jantauscha, Hollého 9	1	14:36:13	2020-11-01 17:30:01.803698
OM 4	Kino Hviezda, Paulínska 1	1	14:36:13	2020-11-01 17:30:01.803698
OM 5	Súkromná stredná odborná škola GOS, Ferka Urbánka 19	1	14:36:14	2020-11-01 17:30:01.803698
OM 6	Stredná priemyselná škola dopravná, Študentská 23	1	14:36:15	2020-11-01 17:30:01.803698
OM 7	Stredná priemyselná škola, Komenského 1	1	14:36:15	2020-11-01 17:30:01.803698
OM 8	Základná škola, Andreja Kubinu 34	1	14:36:16	2020-11-01 17:30:01.803698
OM 9	Stredná priemyselná škola, Komenského 1	1	14:36:16	2020-11-01 17:30:01.803698
OM 10	SPŠ stavebná Dušana S. Jurkoviča, Lomonosovova 7	1	14:36:17	2020-11-01 17:30:01.803698
OM 11 A	Základná umelecká škola, Mozartova 10 *	1	14:36:18	2020-11-01 17:30:01.803698
OM 11 B	Základná umelecká škola, Mozartova 10 *	1	14:36:19	2020-11-01 17:30:01.803698
OM 12	Základná umelecká škola, Mozartova 10 *	1	14:36:19	2020-11-01 17:30:01.803698
OM 13	Základná škola, Kornela Mahra 11 *	1	14:36:20	2020-11-01 17:30:01.803698
OM 14	Základná škola, Kornela Mahra 11 *	1	14:36:20	2020-11-01 17:30:01.803698
OM 15 A	Základná škola, Jána Bottu 27 *	1	14:36:21	2020-11-01 17:30:01.803698
OM 15 B	Základná škola, Jána Bottu 27 *	1	14:36:23	2020-11-01 17:30:01.803698
OM 16 B	Základná škola, Andreja Kubinu 34 *	1	14:36:24	2020-11-01 17:30:01.803698
OM 17	Univerzita sv. Cyrila a Metoda, Námestie Jozefa Herdu 2	1	14:36:25	2020-11-01 17:30:01.803698
OM 18 A	Obchodná akadémia, Kukučínova 2 *	1	14:36:25	2020-11-01 17:30:01.803698
OM 18 B	Obchodná akadémia, Kukučínova 2 *	1	14:36:26	2020-11-01 17:30:01.803698
OM 19	Kultúrny dom CUBE, Ľudová 12	1	14:36:27	2020-11-01 17:30:01.803698
OM 20 A	Základná škola, Atómová 1 *	1	14:36:28	2020-11-01 17:30:01.803698
OM 20 B	Základná škola, Atómová 1 *	1	14:36:29	2020-11-01 17:30:01.803698
OM 21	Základná škola, Atómová 1 *	1	14:36:29	2020-11-01 17:30:01.803698
OM 22 A	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	1	14:36:30	2020-11-01 17:30:01.803698
OM 22 B	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	1	14:36:30	2020-11-01 17:30:01.803698
OM 23	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	1	14:36:31	2020-11-01 17:30:01.803698
OM 24	Stredná odborná škola elektrotechnická, Sibírska 1	1	14:36:35	2020-11-01 17:30:01.803698
OM 25	Súkromná SOŠ polytechnická DSA, Koniarekova 15	1	14:36:36	2020-11-01 17:30:01.803698
OM 26	Stredná zdravotnícka škola, Daxnerova 6	1	14:36:37	2020-11-01 17:30:01.803698
OM 27 A	Základná škola, Spartakovská 5 *	1	14:36:37	2020-11-01 17:30:01.803698
OM 27 B	Základná škola, Spartakovská 5 *	1	14:36:39	2020-11-01 17:30:01.803698
OM 28 A	Základná škola, Spartakovská 5 *	1	14:36:40	2020-11-01 17:30:01.803698
OM 28 B	Základná škola, Spartakovská 5 *	1	14:36:42	2020-11-01 17:30:01.803698
OM 29 A	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	1	14:36:42	2020-11-01 17:30:01.803698
OM 29 B	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	1	14:36:43	2020-11-01 17:30:01.803698
OM 30 A	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	1	14:36:43	2020-11-01 17:30:01.803698
OM 30 B	Mestský zimný štadión, Spartakovská 1B (vchod od Hokejky) *	1	14:36:44	2020-11-01 17:30:01.803698
OM 31 A	Základná škola, V Jame 3 *	1	14:36:45	2020-11-01 17:30:01.803698
OM 31 B	Základná škola, V Jame 3 *	1	14:36:46	2020-11-01 17:30:01.803698
OM 32	Základná škola, V Jame 3 *	1	14:36:46	2020-11-01 17:30:01.803698
OM 33 A	Základná škola, Maxima Gorkého 21 *	1	14:36:47	2020-11-01 17:30:01.803698
OM 33 B	Základná škola, Maxima Gorkého 21 *	1	14:36:47	2020-11-01 17:30:01.803698
OM 34 A	Základná škola, Maxima Gorkého 21 *	1	14:36:50	2020-11-01 17:30:01.803698
OM 34 B	Základná škola, Maxima Gorkého 21 *	1	14:36:50	2020-11-01 17:30:01.803698
OM 35 A	Súkromná základná škola BESST, Limbová 3 *	1	14:36:51	2020-11-01 17:30:01.803698
OM 35 B	Súkromná základná škola BESST, Limbová 3 *	1	14:36:52	2020-11-01 17:30:01.803698
OM 36 A	Súkromná základná škola BESST, Limbová 3 *	1	14:36:55	2020-11-01 17:30:01.803698
OM 36 B	Súkromná základná škola BESST, Limbová 3 *	1	14:36:56	2020-11-01 17:30:01.803698
OM 37	Trnavská univerzita v Trnave, Pedagogická fakulta, Priemyselná 4	1	14:36:57	2020-11-01 17:30:01.803698
OM 38 A	Kultúrny dom, Sereďská 131, Modranka *	1	14:36:57	2020-11-01 17:30:01.803698
OM 38 B	Kultúrny dom, Sereďská 131, Modranka *	1	14:36:58	2020-11-01 17:30:01.803698
OM 39	Mestská športová hala, Rybníková 576 (ľudia s prechodným pobytom, cudzinci)	1	14:36:58	2020-11-01 17:30:01.803698
OM 1	Radnica, Hlavná 1	1	14:36:12	2020-11-01 18:00:01.948635
OM 2	Mestský úrad v Trnave, Trhová 3	1	14:36:12	2020-11-01 18:00:01.948635
OM 3	Arcibiskupské gymnázium biskupa P. Jantauscha, Hollého 9	1	14:36:13	2020-11-01 18:00:01.948635
OM 4	Kino Hviezda, Paulínska 1	1	14:36:13	2020-11-01 18:00:01.948635
OM 5	Súkromná stredná odborná škola GOS, Ferka Urbánka 19	1	14:36:14	2020-11-01 18:00:01.948635
OM 6	Stredná priemyselná škola dopravná, Študentská 23	1	14:36:15	2020-11-01 18:00:01.948635
OM 7	Stredná priemyselná škola, Komenského 1	1	14:36:15	2020-11-01 18:00:01.948635
OM 8	Základná škola, Andreja Kubinu 34	1	14:36:16	2020-11-01 18:00:01.948635
OM 9	Stredná priemyselná škola, Komenského 1	1	14:36:16	2020-11-01 18:00:01.948635
OM 10	SPŠ stavebná Dušana S. Jurkoviča, Lomonosovova 7	1	14:36:17	2020-11-01 18:00:01.948635
OM 11 A	Základná umelecká škola, Mozartova 10 *	1	14:36:18	2020-11-01 18:00:01.948635
OM 11 B	Základná umelecká škola, Mozartova 10 *	1	14:36:19	2020-11-01 18:00:01.948635
OM 12	Základná umelecká škola, Mozartova 10 *	1	14:36:19	2020-11-01 18:00:01.948635
OM 13	Základná škola, Kornela Mahra 11 *	1	14:36:20	2020-11-01 18:00:01.948635
OM 14	Základná škola, Kornela Mahra 11 *	1	14:36:20	2020-11-01 18:00:01.948635
OM 15 A	Základná škola, Jána Bottu 27 *	1	14:36:21	2020-11-01 18:00:01.948635
OM 15 B	Základná škola, Jána Bottu 27 *	1	14:36:23	2020-11-01 18:00:01.948635
OM 16 A	Základná škola, Andreja Kubinu 34 *	1	14:36:24	2020-11-01 18:00:01.948635
OM 16 B	Základná škola, Andreja Kubinu 34 *	1	14:36:24	2020-11-01 18:00:01.948635
OM 17	Univerzita sv. Cyrila a Metoda, Námestie Jozefa Herdu 2	1	14:36:25	2020-11-01 18:00:01.948635
OM 18 A	Obchodná akadémia, Kukučínova 2 *	1	14:36:25	2020-11-01 18:00:01.948635
OM 18 B	Obchodná akadémia, Kukučínova 2 *	1	14:36:26	2020-11-01 18:00:01.948635
OM 19	Kultúrny dom CUBE, Ľudová 12	1	14:36:27	2020-11-01 18:00:01.948635
OM 20 A	Základná škola, Atómová 1 *	1	14:36:28	2020-11-01 18:00:01.948635
OM 20 B	Základná škola, Atómová 1 *	1	14:36:29	2020-11-01 18:00:01.948635
OM 21	Základná škola, Atómová 1 *	1	14:36:29	2020-11-01 18:00:01.948635
OM 22 A	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	1	14:36:30	2020-11-01 18:00:01.948635
OM 22 B	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	1	14:36:30	2020-11-01 18:00:01.948635
OM 23	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	1	14:36:31	2020-11-01 18:00:01.948635
OM 24	Stredná odborná škola elektrotechnická, Sibírska 1	1	14:36:35	2020-11-01 18:00:01.948635
OM 25	Súkromná SOŠ polytechnická DSA, Koniarekova 15	1	14:36:36	2020-11-01 18:00:01.948635
OM 26	Stredná zdravotnícka škola, Daxnerova 6	1	14:36:37	2020-11-01 18:00:01.948635
OM 27 A	Základná škola, Spartakovská 5 *	1	14:36:37	2020-11-01 18:00:01.948635
OM 27 B	Základná škola, Spartakovská 5 *	1	14:36:39	2020-11-01 18:00:01.948635
OM 28 A	Základná škola, Spartakovská 5 *	1	14:36:40	2020-11-01 18:00:01.948635
OM 28 B	Základná škola, Spartakovská 5 *	1	14:36:42	2020-11-01 18:00:01.948635
OM 29 A	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	1	14:36:42	2020-11-01 18:00:01.948635
OM 29 B	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	1	14:36:43	2020-11-01 18:00:01.948635
OM 30 A	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	1	14:36:43	2020-11-01 18:00:01.948635
OM 30 B	Mestský zimný štadión, Spartakovská 1B (vchod od Hokejky) *	1	14:36:44	2020-11-01 18:00:01.948635
OM 31 A	Základná škola, V Jame 3 *	1	14:36:45	2020-11-01 18:00:01.948635
OM 31 B	Základná škola, V Jame 3 *	1	14:36:46	2020-11-01 18:00:01.948635
OM 32	Základná škola, V Jame 3 *	1	14:36:46	2020-11-01 18:00:01.948635
OM 33 A	Základná škola, Maxima Gorkého 21 *	1	14:36:47	2020-11-01 18:00:01.948635
OM 33 B	Základná škola, Maxima Gorkého 21 *	1	14:36:47	2020-11-01 18:00:01.948635
OM 34 A	Základná škola, Maxima Gorkého 21 *	1	14:36:50	2020-11-01 18:00:01.948635
OM 34 B	Základná škola, Maxima Gorkého 21 *	1	14:36:50	2020-11-01 18:00:01.948635
OM 35 A	Súkromná základná škola BESST, Limbová 3 *	1	14:36:51	2020-11-01 18:00:01.948635
OM 35 B	Súkromná základná škola BESST, Limbová 3 *	1	14:36:52	2020-11-01 18:00:01.948635
OM 36 A	Súkromná základná škola BESST, Limbová 3 *	1	14:36:55	2020-11-01 18:00:01.948635
OM 36 B	Súkromná základná škola BESST, Limbová 3 *	1	14:36:56	2020-11-01 18:00:01.948635
OM 37	Trnavská univerzita v Trnave, Pedagogická fakulta, Priemyselná 4	1	14:36:57	2020-11-01 18:00:01.948635
OM 38 A	Kultúrny dom, Sereďská 131, Modranka *	1	14:36:57	2020-11-01 18:00:01.948635
OM 38 B	Kultúrny dom, Sereďská 131, Modranka *	1	14:36:58	2020-11-01 18:00:01.948635
OM 39	Mestská športová hala, Rybníková 576 (ľudia s prechodným pobytom, cudzinci)	1	14:36:58	2020-11-01 18:00:01.948635
OM 1	Radnica, Hlavná 1	1	14:36:12	2020-11-01 18:30:01.605276
OM 2	Mestský úrad v Trnave, Trhová 3	1	14:36:12	2020-11-01 18:30:01.605276
OM 3	Arcibiskupské gymnázium biskupa P. Jantauscha, Hollého 9	1	14:36:13	2020-11-01 18:30:01.605276
OM 4	Kino Hviezda, Paulínska 1	1	14:36:13	2020-11-01 18:30:01.605276
OM 5	Súkromná stredná odborná škola GOS, Ferka Urbánka 19	1	14:36:14	2020-11-01 18:30:01.605276
OM 6	Stredná priemyselná škola dopravná, Študentská 23	1	14:36:15	2020-11-01 18:30:01.605276
OM 7	Stredná priemyselná škola, Komenského 1	1	14:36:15	2020-11-01 18:30:01.605276
OM 8	Základná škola, Andreja Kubinu 34	1	14:36:16	2020-11-01 18:30:01.605276
OM 9	Stredná priemyselná škola, Komenského 1	1	14:36:16	2020-11-01 18:30:01.605276
OM 10	SPŠ stavebná Dušana S. Jurkoviča, Lomonosovova 7	1	14:36:17	2020-11-01 18:30:01.605276
OM 11 A	Základná umelecká škola, Mozartova 10 *	1	14:36:18	2020-11-01 18:30:01.605276
OM 11 B	Základná umelecká škola, Mozartova 10 *	1	14:36:19	2020-11-01 18:30:01.605276
OM 12	Základná umelecká škola, Mozartova 10 *	1	14:36:19	2020-11-01 18:30:01.605276
OM 13	Základná škola, Kornela Mahra 11 *	1	14:36:20	2020-11-01 18:30:01.605276
OM 14	Základná škola, Kornela Mahra 11 *	1	14:36:20	2020-11-01 18:30:01.605276
OM 15 A	Základná škola, Jána Bottu 27 *	1	14:36:21	2020-11-01 18:30:01.605276
OM 15 B	Základná škola, Jána Bottu 27 *	1	14:36:23	2020-11-01 18:30:01.605276
OM 16 A	Základná škola, Andreja Kubinu 34 *	1	14:36:24	2020-11-01 18:30:01.605276
OM 16 B	Základná škola, Andreja Kubinu 34 *	1	14:36:24	2020-11-01 18:30:01.605276
OM 17	Univerzita sv. Cyrila a Metoda, Námestie Jozefa Herdu 2	1	14:36:25	2020-11-01 18:30:01.605276
OM 18 A	Obchodná akadémia, Kukučínova 2 *	1	14:36:25	2020-11-01 18:30:01.605276
OM 18 B	Obchodná akadémia, Kukučínova 2 *	1	14:36:26	2020-11-01 18:30:01.605276
OM 19	Kultúrny dom CUBE, Ľudová 12	1	14:36:27	2020-11-01 18:30:01.605276
OM 20 A	Základná škola, Atómová 1 *	1	14:36:28	2020-11-01 18:30:01.605276
OM 20 B	Základná škola, Atómová 1 *	1	14:36:29	2020-11-01 18:30:01.605276
OM 21	Základná škola, Atómová 1 *	1	14:36:29	2020-11-01 18:30:01.605276
OM 22 A	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	1	14:36:30	2020-11-01 18:30:01.605276
OM 22 B	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	1	14:36:30	2020-11-01 18:30:01.605276
OM 23	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	1	14:36:31	2020-11-01 18:30:01.605276
OM 24	Stredná odborná škola elektrotechnická, Sibírska 1	1	14:36:35	2020-11-01 18:30:01.605276
OM 25	Súkromná SOŠ polytechnická DSA, Koniarekova 15	1	14:36:36	2020-11-01 18:30:01.605276
OM 26	Stredná zdravotnícka škola, Daxnerova 6	1	14:36:37	2020-11-01 18:30:01.605276
OM 27 A	Základná škola, Spartakovská 5 *	1	14:36:37	2020-11-01 18:30:01.605276
OM 27 B	Základná škola, Spartakovská 5 *	1	14:36:39	2020-11-01 18:30:01.605276
OM 28 A	Základná škola, Spartakovská 5 *	1	14:36:40	2020-11-01 18:30:01.605276
OM 28 B	Základná škola, Spartakovská 5 *	1	14:36:42	2020-11-01 18:30:01.605276
OM 29 A	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	1	14:36:42	2020-11-01 18:30:01.605276
OM 29 B	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	1	14:36:43	2020-11-01 18:30:01.605276
OM 30 A	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	1	14:36:43	2020-11-01 18:30:01.605276
OM 30 B	Mestský zimný štadión, Spartakovská 1B (vchod od Hokejky) *	1	14:36:44	2020-11-01 18:30:01.605276
OM 31 A	Základná škola, V Jame 3 *	1	14:36:45	2020-11-01 18:30:01.605276
OM 31 B	Základná škola, V Jame 3 *	1	14:36:46	2020-11-01 18:30:01.605276
OM 32	Základná škola, V Jame 3 *	1	14:36:46	2020-11-01 18:30:01.605276
OM 33 A	Základná škola, Maxima Gorkého 21 *	1	14:36:47	2020-11-01 18:30:01.605276
OM 33 B	Základná škola, Maxima Gorkého 21 *	1	14:36:47	2020-11-01 18:30:01.605276
OM 34 A	Základná škola, Maxima Gorkého 21 *	1	14:36:50	2020-11-01 18:30:01.605276
OM 34 B	Základná škola, Maxima Gorkého 21 *	1	14:36:50	2020-11-01 18:30:01.605276
OM 35 A	Súkromná základná škola BESST, Limbová 3 *	1	14:36:51	2020-11-01 18:30:01.605276
OM 35 B	Súkromná základná škola BESST, Limbová 3 *	1	14:36:52	2020-11-01 18:30:01.605276
OM 36 A	Súkromná základná škola BESST, Limbová 3 *	1	14:36:55	2020-11-01 18:30:01.605276
OM 36 B	Súkromná základná škola BESST, Limbová 3 *	1	14:36:56	2020-11-01 18:30:01.605276
OM 37	Trnavská univerzita v Trnave, Pedagogická fakulta, Priemyselná 4	1	14:36:57	2020-11-01 18:30:01.605276
OM 38 A	Kultúrny dom, Sereďská 131, Modranka *	1	14:36:57	2020-11-01 18:30:01.605276
OM 38 B	Kultúrny dom, Sereďská 131, Modranka *	1	14:36:58	2020-11-01 18:30:01.605276
OM 39	Mestská športová hala, Rybníková 576 (ľudia s prechodným pobytom, cudzinci)	1	14:36:58	2020-11-01 18:30:01.605276
OM 1	Radnica, Hlavná 1	1	14:36:12	2020-11-01 19:00:02.13589
OM 2	Mestský úrad v Trnave, Trhová 3	1	14:36:12	2020-11-01 19:00:02.13589
OM 3	Arcibiskupské gymnázium biskupa P. Jantauscha, Hollého 9	1	14:36:13	2020-11-01 19:00:02.13589
OM 4	Kino Hviezda, Paulínska 1	1	14:36:13	2020-11-01 19:00:02.13589
OM 5	Súkromná stredná odborná škola GOS, Ferka Urbánka 19	1	14:36:14	2020-11-01 19:00:02.13589
OM 6	Stredná priemyselná škola dopravná, Študentská 23	1	14:36:15	2020-11-01 19:00:02.13589
OM 7	Stredná priemyselná škola, Komenského 1	1	14:36:15	2020-11-01 19:00:02.13589
OM 8	Základná škola, Andreja Kubinu 34	1	14:36:16	2020-11-01 19:00:02.13589
OM 9	Stredná priemyselná škola, Komenského 1	1	14:36:16	2020-11-01 19:00:02.13589
OM 10	SPŠ stavebná Dušana S. Jurkoviča, Lomonosovova 7	1	14:36:17	2020-11-01 19:00:02.13589
OM 11 A	Základná umelecká škola, Mozartova 10 *	1	14:36:18	2020-11-01 19:00:02.13589
OM 11 B	Základná umelecká škola, Mozartova 10 *	1	14:36:19	2020-11-01 19:00:02.13589
OM 12	Základná umelecká škola, Mozartova 10 *	1	14:36:19	2020-11-01 19:00:02.13589
OM 13	Základná škola, Kornela Mahra 11 *	1	14:36:20	2020-11-01 19:00:02.13589
OM 14	Základná škola, Kornela Mahra 11 *	1	14:36:20	2020-11-01 19:00:02.13589
OM 15 A	Základná škola, Jána Bottu 27 *	1	14:36:21	2020-11-01 19:00:02.13589
OM 15 B	Základná škola, Jána Bottu 27 *	1	14:36:23	2020-11-01 19:00:02.13589
OM 16 A	Základná škola, Andreja Kubinu 34 *	1	14:36:24	2020-11-01 19:00:02.13589
OM 16 B	Základná škola, Andreja Kubinu 34 *	1	14:36:24	2020-11-01 19:00:02.13589
OM 17	Univerzita sv. Cyrila a Metoda, Námestie Jozefa Herdu 2	1	14:36:25	2020-11-01 19:00:02.13589
OM 18 A	Obchodná akadémia, Kukučínova 2 *	1	14:36:25	2020-11-01 19:00:02.13589
OM 18 B	Obchodná akadémia, Kukučínova 2 *	1	14:36:26	2020-11-01 19:00:02.13589
OM 19	Kultúrny dom CUBE, Ľudová 12	1	14:36:27	2020-11-01 19:00:02.13589
OM 20 A	Základná škola, Atómová 1 *	1	14:36:28	2020-11-01 19:00:02.13589
OM 20 B	Základná škola, Atómová 1 *	1	14:36:29	2020-11-01 19:00:02.13589
OM 21	Základná škola, Atómová 1 *	1	14:36:29	2020-11-01 19:00:02.13589
OM 22 A	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	1	14:36:30	2020-11-01 19:00:02.13589
OM 22 B	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	1	14:36:30	2020-11-01 19:00:02.13589
OM 23	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	1	14:36:31	2020-11-01 19:00:02.13589
OM 24	Stredná odborná škola elektrotechnická, Sibírska 1	1	14:36:35	2020-11-01 19:00:02.13589
OM 25	Súkromná SOŠ polytechnická DSA, Koniarekova 15	1	14:36:36	2020-11-01 19:00:02.13589
OM 26	Stredná zdravotnícka škola, Daxnerova 6	1	14:36:37	2020-11-01 19:00:02.13589
OM 27 A	Základná škola, Spartakovská 5 *	1	14:36:37	2020-11-01 19:00:02.13589
OM 27 B	Základná škola, Spartakovská 5 *	1	14:36:39	2020-11-01 19:00:02.13589
OM 28 A	Základná škola, Spartakovská 5 *	1	14:36:40	2020-11-01 19:00:02.13589
OM 28 B	Základná škola, Spartakovská 5 *	1	14:36:42	2020-11-01 19:00:02.13589
OM 29 A	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	1	14:36:42	2020-11-01 19:00:02.13589
OM 29 B	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	1	14:36:43	2020-11-01 19:00:02.13589
OM 30 A	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	1	14:36:43	2020-11-01 19:00:02.13589
OM 30 B	Mestský zimný štadión, Spartakovská 1B (vchod od Hokejky) *	1	14:36:44	2020-11-01 19:00:02.13589
OM 31 A	Základná škola, V Jame 3 *	1	14:36:45	2020-11-01 19:00:02.13589
OM 31 B	Základná škola, V Jame 3 *	1	14:36:46	2020-11-01 19:00:02.13589
OM 32	Základná škola, V Jame 3 *	1	14:36:46	2020-11-01 19:00:02.13589
OM 33 A	Základná škola, Maxima Gorkého 21 *	1	14:36:47	2020-11-01 19:00:02.13589
OM 33 B	Základná škola, Maxima Gorkého 21 *	1	14:36:47	2020-11-01 19:00:02.13589
OM 34 A	Základná škola, Maxima Gorkého 21 *	1	14:36:50	2020-11-01 19:00:02.13589
OM 34 B	Základná škola, Maxima Gorkého 21 *	1	14:36:50	2020-11-01 19:00:02.13589
OM 35 A	Súkromná základná škola BESST, Limbová 3 *	1	14:36:51	2020-11-01 19:00:02.13589
OM 35 B	Súkromná základná škola BESST, Limbová 3 *	1	14:36:52	2020-11-01 19:00:02.13589
OM 36 A	Súkromná základná škola BESST, Limbová 3 *	1	14:36:55	2020-11-01 19:00:02.13589
OM 36 B	Súkromná základná škola BESST, Limbová 3 *	1	14:36:56	2020-11-01 19:00:02.13589
OM 37	Trnavská univerzita v Trnave, Pedagogická fakulta, Priemyselná 4	1	14:36:57	2020-11-01 19:00:02.13589
OM 38 A	Kultúrny dom, Sereďská 131, Modranka *	1	14:36:57	2020-11-01 19:00:02.13589
OM 38 B	Kultúrny dom, Sereďská 131, Modranka *	1	14:36:58	2020-11-01 19:00:02.13589
OM 39	Mestská športová hala, Rybníková 576 (ľudia s prechodným pobytom, cudzinci)	1	14:36:58	2020-11-01 19:00:02.13589
OM 1	Radnica, Hlavná 1	1	14:36:12	2020-11-01 19:30:02.638593
OM 2	Mestský úrad v Trnave, Trhová 3	1	14:36:12	2020-11-01 19:30:02.638593
OM 3	Arcibiskupské gymnázium biskupa P. Jantauscha, Hollého 9	1	14:36:13	2020-11-01 19:30:02.638593
OM 4	Kino Hviezda, Paulínska 1	1	14:36:13	2020-11-01 19:30:02.638593
OM 5	Súkromná stredná odborná škola GOS, Ferka Urbánka 19	1	14:36:14	2020-11-01 19:30:02.638593
OM 6	Stredná priemyselná škola dopravná, Študentská 23	1	14:36:15	2020-11-01 19:30:02.638593
OM 7	Stredná priemyselná škola, Komenského 1	1	14:36:15	2020-11-01 19:30:02.638593
OM 8	Základná škola, Andreja Kubinu 34	1	14:36:16	2020-11-01 19:30:02.638593
OM 9	Stredná priemyselná škola, Komenského 1	1	14:36:16	2020-11-01 19:30:02.638593
OM 10	SPŠ stavebná Dušana S. Jurkoviča, Lomonosovova 7	1	14:36:17	2020-11-01 19:30:02.638593
OM 11 A	Základná umelecká škola, Mozartova 10 *	1	14:36:18	2020-11-01 19:30:02.638593
OM 11 B	Základná umelecká škola, Mozartova 10 *	1	14:36:19	2020-11-01 19:30:02.638593
OM 12	Základná umelecká škola, Mozartova 10 *	1	14:36:19	2020-11-01 19:30:02.638593
OM 13	Základná škola, Kornela Mahra 11 *	1	14:36:20	2020-11-01 19:30:02.638593
OM 14	Základná škola, Kornela Mahra 11 *	1	14:36:20	2020-11-01 19:30:02.638593
OM 15 A	Základná škola, Jána Bottu 27 *	1	14:36:21	2020-11-01 19:30:02.638593
OM 15 B	Základná škola, Jána Bottu 27 *	1	14:36:23	2020-11-01 19:30:02.638593
OM 16 A	Základná škola, Andreja Kubinu 34 *	1	14:36:24	2020-11-01 19:30:02.638593
OM 16 B	Základná škola, Andreja Kubinu 34 *	1	14:36:24	2020-11-01 19:30:02.638593
OM 17	Univerzita sv. Cyrila a Metoda, Námestie Jozefa Herdu 2	1	14:36:25	2020-11-01 19:30:02.638593
OM 18 A	Obchodná akadémia, Kukučínova 2 *	1	14:36:25	2020-11-01 19:30:02.638593
OM 18 B	Obchodná akadémia, Kukučínova 2 *	1	14:36:26	2020-11-01 19:30:02.638593
OM 19	Kultúrny dom CUBE, Ľudová 12	1	14:36:27	2020-11-01 19:30:02.638593
OM 20 A	Základná škola, Atómová 1 *	1	14:36:28	2020-11-01 19:30:02.638593
OM 20 B	Základná škola, Atómová 1 *	1	14:36:29	2020-11-01 19:30:02.638593
OM 21	Základná škola, Atómová 1 *	1	14:36:29	2020-11-01 19:30:02.638593
OM 22 A	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	1	14:36:30	2020-11-01 19:30:02.638593
OM 22 B	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	1	14:36:30	2020-11-01 19:30:02.638593
OM 23	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	1	14:36:31	2020-11-01 19:30:02.638593
OM 24	Stredná odborná škola elektrotechnická, Sibírska 1	1	14:36:35	2020-11-01 19:30:02.638593
OM 25	Súkromná SOŠ polytechnická DSA, Koniarekova 15	1	14:36:36	2020-11-01 19:30:02.638593
OM 26	Stredná zdravotnícka škola, Daxnerova 6	1	14:36:37	2020-11-01 19:30:02.638593
OM 27 A	Základná škola, Spartakovská 5 *	1	14:36:37	2020-11-01 19:30:02.638593
OM 27 B	Základná škola, Spartakovská 5 *	1	14:36:39	2020-11-01 19:30:02.638593
OM 28 A	Základná škola, Spartakovská 5 *	1	14:36:40	2020-11-01 19:30:02.638593
OM 28 B	Základná škola, Spartakovská 5 *	1	14:36:42	2020-11-01 19:30:02.638593
OM 29 A	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	1	14:36:42	2020-11-01 19:30:02.638593
OM 29 B	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	1	14:36:43	2020-11-01 19:30:02.638593
OM 30 A	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	1	14:36:43	2020-11-01 19:30:02.638593
OM 30 B	Mestský zimný štadión, Spartakovská 1B (vchod od Hokejky) *	1	14:36:44	2020-11-01 19:30:02.638593
OM 31 A	Základná škola, V Jame 3 *	1	14:36:45	2020-11-01 19:30:02.638593
OM 31 B	Základná škola, V Jame 3 *	1	14:36:46	2020-11-01 19:30:02.638593
OM 32	Základná škola, V Jame 3 *	1	14:36:46	2020-11-01 19:30:02.638593
OM 33 A	Základná škola, Maxima Gorkého 21 *	1	14:36:47	2020-11-01 19:30:02.638593
OM 33 B	Základná škola, Maxima Gorkého 21 *	1	14:36:47	2020-11-01 19:30:02.638593
OM 34 A	Základná škola, Maxima Gorkého 21 *	1	14:36:50	2020-11-01 19:30:02.638593
OM 34 B	Základná škola, Maxima Gorkého 21 *	1	14:36:50	2020-11-01 19:30:02.638593
OM 35 A	Súkromná základná škola BESST, Limbová 3 *	1	14:36:51	2020-11-01 19:30:02.638593
OM 35 B	Súkromná základná škola BESST, Limbová 3 *	1	14:36:52	2020-11-01 19:30:02.638593
OM 36 A	Súkromná základná škola BESST, Limbová 3 *	1	14:36:55	2020-11-01 19:30:02.638593
OM 36 B	Súkromná základná škola BESST, Limbová 3 *	1	14:36:56	2020-11-01 19:30:02.638593
OM 37	Trnavská univerzita v Trnave, Pedagogická fakulta, Priemyselná 4	1	14:36:57	2020-11-01 19:30:02.638593
OM 38 A	Kultúrny dom, Sereďská 131, Modranka *	1	14:36:57	2020-11-01 19:30:02.638593
OM 38 B	Kultúrny dom, Sereďská 131, Modranka *	1	14:36:58	2020-11-01 19:30:02.638593
OM 39	Mestská športová hala, Rybníková 576 (ľudia s prechodným pobytom, cudzinci)	1	14:36:58	2020-11-01 19:30:02.638593
OM 1	Radnica, Hlavná 1	1	14:36:12	2020-11-01 20:00:01.955227
OM 2	Mestský úrad v Trnave, Trhová 3	1	14:36:12	2020-11-01 20:00:01.955227
OM 3	Arcibiskupské gymnázium biskupa P. Jantauscha, Hollého 9	1	14:36:13	2020-11-01 20:00:01.955227
OM 4	Kino Hviezda, Paulínska 1	1	14:36:13	2020-11-01 20:00:01.955227
OM 5	Súkromná stredná odborná škola GOS, Ferka Urbánka 19	1	14:36:14	2020-11-01 20:00:01.955227
OM 6	Stredná priemyselná škola dopravná, Študentská 23	1	14:36:15	2020-11-01 20:00:01.955227
OM 7	Stredná priemyselná škola, Komenského 1	1	14:36:15	2020-11-01 20:00:01.955227
OM 8	Základná škola, Andreja Kubinu 34	1	14:36:16	2020-11-01 20:00:01.955227
OM 9	Stredná priemyselná škola, Komenského 1	1	14:36:16	2020-11-01 20:00:01.955227
OM 10	SPŠ stavebná Dušana S. Jurkoviča, Lomonosovova 7	1	14:36:17	2020-11-01 20:00:01.955227
OM 11 A	Základná umelecká škola, Mozartova 10 *	1	14:36:18	2020-11-01 20:00:01.955227
OM 11 B	Základná umelecká škola, Mozartova 10 *	1	14:36:19	2020-11-01 20:00:01.955227
OM 12	Základná umelecká škola, Mozartova 10 *	1	14:36:19	2020-11-01 20:00:01.955227
OM 13	Základná škola, Kornela Mahra 11 *	1	14:36:20	2020-11-01 20:00:01.955227
OM 14	Základná škola, Kornela Mahra 11 *	1	14:36:20	2020-11-01 20:00:01.955227
OM 15 A	Základná škola, Jána Bottu 27 *	1	14:36:21	2020-11-01 20:00:01.955227
OM 15 B	Základná škola, Jána Bottu 27 *	1	14:36:23	2020-11-01 20:00:01.955227
OM 16 A	Základná škola, Andreja Kubinu 34 *	1	14:36:24	2020-11-01 20:00:01.955227
OM 16 B	Základná škola, Andreja Kubinu 34 *	1	14:36:24	2020-11-01 20:00:01.955227
OM 17	Univerzita sv. Cyrila a Metoda, Námestie Jozefa Herdu 2	1	14:36:25	2020-11-01 20:00:01.955227
OM 18 A	Obchodná akadémia, Kukučínova 2 *	1	14:36:25	2020-11-01 20:00:01.955227
OM 18 B	Obchodná akadémia, Kukučínova 2 *	1	14:36:26	2020-11-01 20:00:01.955227
OM 19	Kultúrny dom CUBE, Ľudová 12	1	14:36:27	2020-11-01 20:00:01.955227
OM 20 A	Základná škola, Atómová 1 *	1	14:36:28	2020-11-01 20:00:01.955227
OM 20 B	Základná škola, Atómová 1 *	1	14:36:29	2020-11-01 20:00:01.955227
OM 21	Základná škola, Atómová 1 *	1	14:36:29	2020-11-01 20:00:01.955227
OM 22 A	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	1	14:36:30	2020-11-01 20:00:01.955227
OM 22 B	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	1	14:36:30	2020-11-01 20:00:01.955227
OM 23	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	1	14:36:31	2020-11-01 20:00:01.955227
OM 24	Stredná odborná škola elektrotechnická, Sibírska 1	1	14:36:35	2020-11-01 20:00:01.955227
OM 25	Súkromná SOŠ polytechnická DSA, Koniarekova 15	1	14:36:36	2020-11-01 20:00:01.955227
OM 26	Stredná zdravotnícka škola, Daxnerova 6	1	14:36:37	2020-11-01 20:00:01.955227
OM 27 A	Základná škola, Spartakovská 5 *	1	14:36:37	2020-11-01 20:00:01.955227
OM 27 B	Základná škola, Spartakovská 5 *	1	14:36:39	2020-11-01 20:00:01.955227
OM 28 A	Základná škola, Spartakovská 5 *	1	14:36:40	2020-11-01 20:00:01.955227
OM 28 B	Základná škola, Spartakovská 5 *	1	14:36:42	2020-11-01 20:00:01.955227
OM 29 A	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	1	14:36:42	2020-11-01 20:00:01.955227
OM 29 B	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	1	14:36:43	2020-11-01 20:00:01.955227
OM 30 A	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	1	14:36:43	2020-11-01 20:00:01.955227
OM 30 B	Mestský zimný štadión, Spartakovská 1B (vchod od Hokejky) *	1	14:36:44	2020-11-01 20:00:01.955227
OM 31 A	Základná škola, V Jame 3 *	1	14:36:45	2020-11-01 20:00:01.955227
OM 31 B	Základná škola, V Jame 3 *	1	14:36:46	2020-11-01 20:00:01.955227
OM 32	Základná škola, V Jame 3 *	1	14:36:46	2020-11-01 20:00:01.955227
OM 33 A	Základná škola, Maxima Gorkého 21 *	1	14:36:47	2020-11-01 20:00:01.955227
OM 33 B	Základná škola, Maxima Gorkého 21 *	1	14:36:47	2020-11-01 20:00:01.955227
OM 34 A	Základná škola, Maxima Gorkého 21 *	1	14:36:50	2020-11-01 20:00:01.955227
OM 34 B	Základná škola, Maxima Gorkého 21 *	1	14:36:50	2020-11-01 20:00:01.955227
OM 35 A	Súkromná základná škola BESST, Limbová 3 *	1	14:36:51	2020-11-01 20:00:01.955227
OM 35 B	Súkromná základná škola BESST, Limbová 3 *	1	14:36:52	2020-11-01 20:00:01.955227
OM 36 A	Súkromná základná škola BESST, Limbová 3 *	1	14:36:55	2020-11-01 20:00:01.955227
OM 36 B	Súkromná základná škola BESST, Limbová 3 *	1	14:36:56	2020-11-01 20:00:01.955227
OM 37	Trnavská univerzita v Trnave, Pedagogická fakulta, Priemyselná 4	1	14:36:57	2020-11-01 20:00:01.955227
OM 38 A	Kultúrny dom, Sereďská 131, Modranka *	1	14:36:57	2020-11-01 20:00:01.955227
OM 38 B	Kultúrny dom, Sereďská 131, Modranka *	1	14:36:58	2020-11-01 20:00:01.955227
OM 39	Mestská športová hala, Rybníková 576 (ľudia s prechodným pobytom, cudzinci)	1	14:36:58	2020-11-01 20:00:01.955227
OM 1	Radnica, Hlavná 1	1	14:36:12	2020-11-01 20:30:02.293876
OM 2	Mestský úrad v Trnave, Trhová 3	1	14:36:12	2020-11-01 20:30:02.293876
OM 3	Arcibiskupské gymnázium biskupa P. Jantauscha, Hollého 9	1	14:36:13	2020-11-01 20:30:02.293876
OM 4	Kino Hviezda, Paulínska 1	1	14:36:13	2020-11-01 20:30:02.293876
OM 5	Súkromná stredná odborná škola GOS, Ferka Urbánka 19	1	14:36:14	2020-11-01 20:30:02.293876
OM 6	Stredná priemyselná škola dopravná, Študentská 23	1	14:36:15	2020-11-01 20:30:02.293876
OM 7	Stredná priemyselná škola, Komenského 1	1	14:36:15	2020-11-01 20:30:02.293876
OM 8	Základná škola, Andreja Kubinu 34	1	14:36:16	2020-11-01 20:30:02.293876
OM 9	Stredná priemyselná škola, Komenského 1	1	14:36:16	2020-11-01 20:30:02.293876
OM 10	SPŠ stavebná Dušana S. Jurkoviča, Lomonosovova 7	1	14:36:17	2020-11-01 20:30:02.293876
OM 11 A	Základná umelecká škola, Mozartova 10 *	1	14:36:18	2020-11-01 20:30:02.293876
OM 11 B	Základná umelecká škola, Mozartova 10 *	1	14:36:19	2020-11-01 20:30:02.293876
OM 12	Základná umelecká škola, Mozartova 10 *	1	14:36:19	2020-11-01 20:30:02.293876
OM 13	Základná škola, Kornela Mahra 11 *	1	14:36:20	2020-11-01 20:30:02.293876
OM 14	Základná škola, Kornela Mahra 11 *	1	14:36:20	2020-11-01 20:30:02.293876
OM 15 A	Základná škola, Jána Bottu 27 *	1	14:36:21	2020-11-01 20:30:02.293876
OM 15 B	Základná škola, Jána Bottu 27 *	1	14:36:23	2020-11-01 20:30:02.293876
OM 16 A	Základná škola, Andreja Kubinu 34 *	1	14:36:24	2020-11-01 20:30:02.293876
OM 16 B	Základná škola, Andreja Kubinu 34 *	1	14:36:24	2020-11-01 20:30:02.293876
OM 17	Univerzita sv. Cyrila a Metoda, Námestie Jozefa Herdu 2	1	14:36:25	2020-11-01 20:30:02.293876
OM 18 A	Obchodná akadémia, Kukučínova 2 *	1	14:36:25	2020-11-01 20:30:02.293876
OM 18 B	Obchodná akadémia, Kukučínova 2 *	1	14:36:26	2020-11-01 20:30:02.293876
OM 19	Kultúrny dom CUBE, Ľudová 12	1	14:36:27	2020-11-01 20:30:02.293876
OM 20 A	Základná škola, Atómová 1 *	1	14:36:28	2020-11-01 20:30:02.293876
OM 20 B	Základná škola, Atómová 1 *	1	14:36:29	2020-11-01 20:30:02.293876
OM 21	Základná škola, Atómová 1 *	1	14:36:29	2020-11-01 20:30:02.293876
OM 22 A	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	1	14:36:30	2020-11-01 20:30:02.293876
OM 22 B	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	1	14:36:30	2020-11-01 20:30:02.293876
OM 23	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	1	14:36:31	2020-11-01 20:30:02.293876
OM 24	Stredná odborná škola elektrotechnická, Sibírska 1	1	14:36:35	2020-11-01 20:30:02.293876
OM 25	Súkromná SOŠ polytechnická DSA, Koniarekova 15	1	14:36:36	2020-11-01 20:30:02.293876
OM 26	Stredná zdravotnícka škola, Daxnerova 6	1	14:36:37	2020-11-01 20:30:02.293876
OM 27 A	Základná škola, Spartakovská 5 *	1	14:36:37	2020-11-01 20:30:02.293876
OM 27 B	Základná škola, Spartakovská 5 *	1	14:36:39	2020-11-01 20:30:02.293876
OM 28 A	Základná škola, Spartakovská 5 *	1	14:36:40	2020-11-01 20:30:02.293876
OM 28 B	Základná škola, Spartakovská 5 *	1	14:36:42	2020-11-01 20:30:02.293876
OM 29 A	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	1	14:36:42	2020-11-01 20:30:02.293876
OM 29 B	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	1	14:36:43	2020-11-01 20:30:02.293876
OM 30 A	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	1	14:36:43	2020-11-01 20:30:02.293876
OM 30 B	Mestský zimný štadión, Spartakovská 1B (vchod od Hokejky) *	1	14:36:44	2020-11-01 20:30:02.293876
OM 31 A	Základná škola, V Jame 3 *	1	14:36:45	2020-11-01 20:30:02.293876
OM 31 B	Základná škola, V Jame 3 *	1	14:36:46	2020-11-01 20:30:02.293876
OM 32	Základná škola, V Jame 3 *	1	14:36:46	2020-11-01 20:30:02.293876
OM 33 A	Základná škola, Maxima Gorkého 21 *	1	14:36:47	2020-11-01 20:30:02.293876
OM 33 B	Základná škola, Maxima Gorkého 21 *	1	14:36:47	2020-11-01 20:30:02.293876
OM 34 A	Základná škola, Maxima Gorkého 21 *	1	14:36:50	2020-11-01 20:30:02.293876
OM 34 B	Základná škola, Maxima Gorkého 21 *	1	14:36:50	2020-11-01 20:30:02.293876
OM 35 A	Súkromná základná škola BESST, Limbová 3 *	1	14:36:51	2020-11-01 20:30:02.293876
OM 35 B	Súkromná základná škola BESST, Limbová 3 *	1	14:36:52	2020-11-01 20:30:02.293876
OM 36 A	Súkromná základná škola BESST, Limbová 3 *	1	14:36:55	2020-11-01 20:30:02.293876
OM 36 B	Súkromná základná škola BESST, Limbová 3 *	1	14:36:56	2020-11-01 20:30:02.293876
OM 37	Trnavská univerzita v Trnave, Pedagogická fakulta, Priemyselná 4	1	14:36:57	2020-11-01 20:30:02.293876
OM 38 A	Kultúrny dom, Sereďská 131, Modranka *	1	14:36:57	2020-11-01 20:30:02.293876
OM 38 B	Kultúrny dom, Sereďská 131, Modranka *	1	14:36:58	2020-11-01 20:30:02.293876
OM 39	Mestská športová hala, Rybníková 576 (ľudia s prechodným pobytom, cudzinci)	1	14:36:58	2020-11-01 20:30:02.293876
OM 1	Radnica, Hlavná 1	1	14:36:12	2020-11-01 21:00:02.18048
OM 2	Mestský úrad v Trnave, Trhová 3	1	14:36:12	2020-11-01 21:00:02.18048
OM 3	Arcibiskupské gymnázium biskupa P. Jantauscha, Hollého 9	1	14:36:13	2020-11-01 21:00:02.18048
OM 4	Kino Hviezda, Paulínska 1	1	14:36:13	2020-11-01 21:00:02.18048
OM 5	Súkromná stredná odborná škola GOS, Ferka Urbánka 19	1	14:36:14	2020-11-01 21:00:02.18048
OM 6	Stredná priemyselná škola dopravná, Študentská 23	1	14:36:15	2020-11-01 21:00:02.18048
OM 7	Stredná priemyselná škola, Komenského 1	1	14:36:15	2020-11-01 21:00:02.18048
OM 8	Základná škola, Andreja Kubinu 34	1	14:36:16	2020-11-01 21:00:02.18048
OM 9	Stredná priemyselná škola, Komenského 1	1	14:36:16	2020-11-01 21:00:02.18048
OM 10	SPŠ stavebná Dušana S. Jurkoviča, Lomonosovova 7	1	14:36:17	2020-11-01 21:00:02.18048
OM 11 A	Základná umelecká škola, Mozartova 10 *	1	14:36:18	2020-11-01 21:00:02.18048
OM 11 B	Základná umelecká škola, Mozartova 10 *	1	14:36:19	2020-11-01 21:00:02.18048
OM 12	Základná umelecká škola, Mozartova 10 *	1	14:36:19	2020-11-01 21:00:02.18048
OM 13	Základná škola, Kornela Mahra 11 *	1	14:36:20	2020-11-01 21:00:02.18048
OM 14	Základná škola, Kornela Mahra 11 *	1	14:36:20	2020-11-01 21:00:02.18048
OM 15 A	Základná škola, Jána Bottu 27 *	1	14:36:21	2020-11-01 21:00:02.18048
OM 15 B	Základná škola, Jána Bottu 27 *	1	14:36:23	2020-11-01 21:00:02.18048
OM 16 A	Základná škola, Andreja Kubinu 34 *	1	14:36:24	2020-11-01 21:00:02.18048
OM 16 B	Základná škola, Andreja Kubinu 34 *	1	14:36:24	2020-11-01 21:00:02.18048
OM 17	Univerzita sv. Cyrila a Metoda, Námestie Jozefa Herdu 2	1	14:36:25	2020-11-01 21:00:02.18048
OM 18 A	Obchodná akadémia, Kukučínova 2 *	1	14:36:25	2020-11-01 21:00:02.18048
OM 18 B	Obchodná akadémia, Kukučínova 2 *	1	14:36:26	2020-11-01 21:00:02.18048
OM 19	Kultúrny dom CUBE, Ľudová 12	1	14:36:27	2020-11-01 21:00:02.18048
OM 20 A	Základná škola, Atómová 1 *	1	14:36:28	2020-11-01 21:00:02.18048
OM 20 B	Základná škola, Atómová 1 *	1	14:36:29	2020-11-01 21:00:02.18048
OM 21	Základná škola, Atómová 1 *	1	14:36:29	2020-11-01 21:00:02.18048
OM 22 A	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	1	14:36:30	2020-11-01 21:00:02.18048
OM 22 B	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	1	14:36:30	2020-11-01 21:00:02.18048
OM 23	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	1	14:36:31	2020-11-01 21:00:02.18048
OM 24	Stredná odborná škola elektrotechnická, Sibírska 1	1	14:36:35	2020-11-01 21:00:02.18048
OM 25	Súkromná SOŠ polytechnická DSA, Koniarekova 15	1	14:36:36	2020-11-01 21:00:02.18048
OM 26	Stredná zdravotnícka škola, Daxnerova 6	1	14:36:37	2020-11-01 21:00:02.18048
OM 27 A	Základná škola, Spartakovská 5 *	1	14:36:37	2020-11-01 21:00:02.18048
OM 27 B	Základná škola, Spartakovská 5 *	1	14:36:39	2020-11-01 21:00:02.18048
OM 28 A	Základná škola, Spartakovská 5 *	1	14:36:40	2020-11-01 21:00:02.18048
OM 28 B	Základná škola, Spartakovská 5 *	1	14:36:42	2020-11-01 21:00:02.18048
OM 29 A	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	1	14:36:42	2020-11-01 21:00:02.18048
OM 29 B	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	1	14:36:43	2020-11-01 21:00:02.18048
OM 30 A	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	1	14:36:43	2020-11-01 21:00:02.18048
OM 30 B	Mestský zimný štadión, Spartakovská 1B (vchod od Hokejky) *	1	14:36:44	2020-11-01 21:00:02.18048
OM 31 A	Základná škola, V Jame 3 *	1	14:36:45	2020-11-01 21:00:02.18048
OM 31 B	Základná škola, V Jame 3 *	1	14:36:46	2020-11-01 21:00:02.18048
OM 32	Základná škola, V Jame 3 *	1	14:36:46	2020-11-01 21:00:02.18048
OM 33 A	Základná škola, Maxima Gorkého 21 *	1	14:36:47	2020-11-01 21:00:02.18048
OM 33 B	Základná škola, Maxima Gorkého 21 *	1	14:36:47	2020-11-01 21:00:02.18048
OM 34 A	Základná škola, Maxima Gorkého 21 *	1	14:36:50	2020-11-01 21:00:02.18048
OM 34 B	Základná škola, Maxima Gorkého 21 *	1	14:36:50	2020-11-01 21:00:02.18048
OM 35 A	Súkromná základná škola BESST, Limbová 3 *	1	14:36:51	2020-11-01 21:00:02.18048
OM 35 B	Súkromná základná škola BESST, Limbová 3 *	1	14:36:52	2020-11-01 21:00:02.18048
OM 36 A	Súkromná základná škola BESST, Limbová 3 *	1	14:36:55	2020-11-01 21:00:02.18048
OM 36 B	Súkromná základná škola BESST, Limbová 3 *	1	14:36:56	2020-11-01 21:00:02.18048
OM 37	Trnavská univerzita v Trnave, Pedagogická fakulta, Priemyselná 4	1	14:36:57	2020-11-01 21:00:02.18048
OM 38 A	Kultúrny dom, Sereďská 131, Modranka *	1	14:36:57	2020-11-01 21:00:02.18048
OM 38 B	Kultúrny dom, Sereďská 131, Modranka *	1	14:36:58	2020-11-01 21:00:02.18048
OM 39	Mestská športová hala, Rybníková 576 (ľudia s prechodným pobytom, cudzinci)	1	14:36:58	2020-11-01 21:00:02.18048
OM 1	Radnica, Hlavná 1	1	14:36:12	2020-11-01 21:30:02.291735
OM 2	Mestský úrad v Trnave, Trhová 3	1	14:36:12	2020-11-01 21:30:02.291735
OM 3	Arcibiskupské gymnázium biskupa P. Jantauscha, Hollého 9	1	14:36:13	2020-11-01 21:30:02.291735
OM 4	Kino Hviezda, Paulínska 1	1	14:36:13	2020-11-01 21:30:02.291735
OM 5	Súkromná stredná odborná škola GOS, Ferka Urbánka 19	1	14:36:14	2020-11-01 21:30:02.291735
OM 6	Stredná priemyselná škola dopravná, Študentská 23	1	14:36:15	2020-11-01 21:30:02.291735
OM 7	Stredná priemyselná škola, Komenského 1	1	14:36:15	2020-11-01 21:30:02.291735
OM 8	Základná škola, Andreja Kubinu 34	1	14:36:16	2020-11-01 21:30:02.291735
OM 9	Stredná priemyselná škola, Komenského 1	1	14:36:16	2020-11-01 21:30:02.291735
OM 10	SPŠ stavebná Dušana S. Jurkoviča, Lomonosovova 7	1	14:36:17	2020-11-01 21:30:02.291735
OM 11 A	Základná umelecká škola, Mozartova 10 *	1	14:36:18	2020-11-01 21:30:02.291735
OM 11 B	Základná umelecká škola, Mozartova 10 *	1	14:36:19	2020-11-01 21:30:02.291735
OM 12	Základná umelecká škola, Mozartova 10 *	1	14:36:19	2020-11-01 21:30:02.291735
OM 13	Základná škola, Kornela Mahra 11 *	1	14:36:20	2020-11-01 21:30:02.291735
OM 14	Základná škola, Kornela Mahra 11 *	1	14:36:20	2020-11-01 21:30:02.291735
OM 15 A	Základná škola, Jána Bottu 27 *	1	14:36:21	2020-11-01 21:30:02.291735
OM 15 B	Základná škola, Jána Bottu 27 *	1	14:36:23	2020-11-01 21:30:02.291735
OM 16 A	Základná škola, Andreja Kubinu 34 *	1	14:36:24	2020-11-01 21:30:02.291735
OM 16 B	Základná škola, Andreja Kubinu 34 *	1	14:36:24	2020-11-01 21:30:02.291735
OM 17	Univerzita sv. Cyrila a Metoda, Námestie Jozefa Herdu 2	1	14:36:25	2020-11-01 21:30:02.291735
OM 18 A	Obchodná akadémia, Kukučínova 2 *	1	14:36:25	2020-11-01 21:30:02.291735
OM 18 B	Obchodná akadémia, Kukučínova 2 *	1	14:36:26	2020-11-01 21:30:02.291735
OM 19	Kultúrny dom CUBE, Ľudová 12	1	14:36:27	2020-11-01 21:30:02.291735
OM 20 A	Základná škola, Atómová 1 *	1	14:36:28	2020-11-01 21:30:02.291735
OM 20 B	Základná škola, Atómová 1 *	1	14:36:29	2020-11-01 21:30:02.291735
OM 21	Základná škola, Atómová 1 *	1	14:36:29	2020-11-01 21:30:02.291735
OM 22 A	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	1	14:36:30	2020-11-01 21:30:02.291735
OM 22 B	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	1	14:36:30	2020-11-01 21:30:02.291735
OM 23	Základná škola, Námestie Slovenského učeného tovarišstva 15 *	1	14:36:31	2020-11-01 21:30:02.291735
OM 24	Stredná odborná škola elektrotechnická, Sibírska 1	1	14:36:35	2020-11-01 21:30:02.291735
OM 25	Súkromná SOŠ polytechnická DSA, Koniarekova 15	1	14:36:36	2020-11-01 21:30:02.291735
OM 26	Stredná zdravotnícka škola, Daxnerova 6	1	14:36:37	2020-11-01 21:30:02.291735
OM 27 A	Základná škola, Spartakovská 5 *	1	14:36:37	2020-11-01 21:30:02.291735
OM 27 B	Základná škola, Spartakovská 5 *	1	14:36:39	2020-11-01 21:30:02.291735
OM 28 A	Základná škola, Spartakovská 5 *	1	14:36:40	2020-11-01 21:30:02.291735
OM 28 B	Základná škola, Spartakovská 5 *	1	14:36:42	2020-11-01 21:30:02.291735
OM 29 A	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	1	14:36:42	2020-11-01 21:30:02.291735
OM 29 B	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	1	14:36:43	2020-11-01 21:30:02.291735
OM 30 A	Mestský zimný štadión, Spartakovská 1B (vchod na trhovisko od sídliska) *	1	14:36:43	2020-11-01 21:30:02.291735
OM 30 B	Mestský zimný štadión, Spartakovská 1B (vchod od Hokejky) *	1	14:36:44	2020-11-01 21:30:02.291735
OM 31 A	Základná škola, V Jame 3 *	1	14:36:45	2020-11-01 21:30:02.291735
OM 31 B	Základná škola, V Jame 3 *	1	14:36:46	2020-11-01 21:30:02.291735
OM 32	Základná škola, V Jame 3 *	1	14:36:46	2020-11-01 21:30:02.291735
OM 33 A	Základná škola, Maxima Gorkého 21 *	1	14:36:47	2020-11-01 21:30:02.291735
OM 33 B	Základná škola, Maxima Gorkého 21 *	1	14:36:47	2020-11-01 21:30:02.291735
OM 34 A	Základná škola, Maxima Gorkého 21 *	1	14:36:50	2020-11-01 21:30:02.291735
OM 34 B	Základná škola, Maxima Gorkého 21 *	1	14:36:50	2020-11-01 21:30:02.291735
OM 35 A	Súkromná základná škola BESST, Limbová 3 *	1	14:36:51	2020-11-01 21:30:02.291735
OM 35 B	Súkromná základná škola BESST, Limbová 3 *	1	14:36:52	2020-11-01 21:30:02.291735
OM 36 A	Súkromná základná škola BESST, Limbová 3 *	1	14:36:55	2020-11-01 21:30:02.291735
OM 36 B	Súkromná základná škola BESST, Limbová 3 *	1	14:36:56	2020-11-01 21:30:02.291735
OM 37	Trnavská univerzita v Trnave, Pedagogická fakulta, Priemyselná 4	1	14:36:57	2020-11-01 21:30:02.291735
OM 38 A	Kultúrny dom, Sereďská 131, Modranka *	1	14:36:57	2020-11-01 21:30:02.291735
OM 38 B	Kultúrny dom, Sereďská 131, Modranka *	1	14:36:58	2020-11-01 21:30:02.291735
OM 39	Mestská športová hala, Rybníková 576 (ľudia s prechodným pobytom, cudzinci)	1	14:36:58	2020-11-01 21:30:02.291735
\.


--
-- PostgreSQL database dump complete
--

\connect template1

SET default_transaction_read_only = off;

--
-- PostgreSQL database dump
--

-- Dumped from database version 10.12 (Debian 10.12-2.pgdg90+1)
-- Dumped by pg_dump version 10.12 (Debian 10.12-2.pgdg90+1)

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

--
-- Name: DATABASE template1; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE template1 IS 'default template for new databases';


--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database cluster dump complete
--

