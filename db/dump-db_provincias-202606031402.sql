--
-- PostgreSQL database dump
--

-- Dumped from database version 16.2
-- Dumped by pg_dump version 16.2

-- Started on 2026-06-03 14:02:13

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
-- TOC entry 216 (class 1259 OID 16407)
-- Name: provinces; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.provinces (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    full_name character varying(150) NOT NULL,
    latitude numeric(18,15),
    longitude numeric(18,15),
    display_order integer
);


ALTER TABLE public.provinces OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16406)
-- Name: provinces_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.provinces_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.provinces_id_seq OWNER TO postgres;

--
-- TOC entry 4787 (class 0 OID 0)
-- Dependencies: 215
-- Name: provinces_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.provinces_id_seq OWNED BY public.provinces.id;


--
-- TOC entry 4634 (class 2604 OID 16410)
-- Name: provinces id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.provinces ALTER COLUMN id SET DEFAULT nextval('public.provinces_id_seq'::regclass);


--
-- TOC entry 4781 (class 0 OID 16407)
-- Dependencies: 216
-- Data for Name: provinces; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.provinces VALUES (1, 'Buenos Aires', 'Provincia de Buenos Aires', -36.676941518052700, -60.558831981571900, 1);
INSERT INTO public.provinces VALUES (2, 'CABA', 'Ciudad Autónoma de Buenos Aires', -34.614440917968750, -58.445877075195312, 2);
INSERT INTO public.provinces VALUES (3, 'Catamarca', 'Provincia de Catamarca', -28.479630000000000, -65.789510000000000, 3);
INSERT INTO public.provinces VALUES (4, 'Chaco', 'Provincia del Chaco', -27.425720000000000, -59.024310000000000, 4);
INSERT INTO public.provinces VALUES (5, 'Chubut', 'Provincia del Chubut', -43.293450000000000, -65.111440000000000, 5);
INSERT INTO public.provinces VALUES (6, 'Córdoba', 'Provincia de Córdoba', -31.400090000000000, -64.188780000000000, 6);
INSERT INTO public.provinces VALUES (7, 'Corrientes', 'Provincia de Corrientes', -27.469230000000000, -58.830640000000000, 7);
INSERT INTO public.provinces VALUES (8, 'Entre Ríos', 'Provincia de Entre Ríos', -31.774680000000000, -60.495660000000000, 8);
INSERT INTO public.provinces VALUES (9, 'Formosa', 'Provincia de Formosa', -26.177510000000000, -58.178070000000000, 9);
INSERT INTO public.provinces VALUES (10, 'Jujuy', 'Provincia de Jujuy', -24.185740000000000, -65.299440000000000, 10);
INSERT INTO public.provinces VALUES (11, 'La Pampa', 'Provincia de La Pampa', -36.616670000000000, -64.283330000000000, 11);
INSERT INTO public.provinces VALUES (12, 'La Rioja', 'Provincia de La Rioja', -29.413170000000000, -66.855980000000000, 12);
INSERT INTO public.provinces VALUES (13, 'Mendoza', 'Provincia de Mendoza', -32.889460000000000, -68.845830000000000, 13);
INSERT INTO public.provinces VALUES (14, 'Misiones', 'Provincia de Misiones', -27.426910000000000, -55.946720000000000, 14);
INSERT INTO public.provinces VALUES (15, 'Neuquén', 'Provincia del Neuquén', -38.951630000000000, -68.059150000000000, 15);
INSERT INTO public.provinces VALUES (16, 'Río Negro', 'Provincia de Río Negro', -40.826180000000000, -63.053340000000000, 16);
INSERT INTO public.provinces VALUES (17, 'Salta', 'Provincia de Salta', -24.797410000000000, -65.407490000000000, 17);
INSERT INTO public.provinces VALUES (18, 'San Juan', 'Provincia de San Juan', -30.865330000000000, -68.889470000000000, 18);
INSERT INTO public.provinces VALUES (19, 'San Luis', 'Provincia de San Luis', -33.296220000000000, -66.338650000000000, 19);
INSERT INTO public.provinces VALUES (20, 'Santa Cruz', 'Provincia de Santa Cruz', -51.623000000000000, -69.218490000000000, 20);
INSERT INTO public.provinces VALUES (21, 'Santa Fe', 'Provincia de Santa Fe', -30.706920000000000, -60.949820000000000, 21);
INSERT INTO public.provinces VALUES (22, 'Santiago del Estero', 'Provincia de Santiago del Estero', -27.782400000000000, -64.267270000000000, 22);
INSERT INTO public.provinces VALUES (23, 'Tierra del Fuego', 'Provincia de Tierra del Fuego', -54.801930000000000, -68.302920000000000, 23);
INSERT INTO public.provinces VALUES (24, 'Tucumán', 'Provincia de Tucumán', -26.808270000000000, -65.217630000000000, 24);


--
-- TOC entry 4788 (class 0 OID 0)
-- Dependencies: 215
-- Name: provinces_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.provinces_id_seq', 24, true);


--
-- TOC entry 4636 (class 2606 OID 16412)
-- Name: provinces provinces_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.provinces
    ADD CONSTRAINT provinces_pkey PRIMARY KEY (id);


-- Completed on 2026-06-03 14:02:14

--
-- PostgreSQL database dump complete
--

