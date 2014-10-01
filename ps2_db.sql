--
-- PostgreSQL database dump
--

-- Dumped from database version 9.1.13
-- Dumped by pg_dump version 9.1.13
-- Started on 2014-10-01 00:23:49 COT

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- TOC entry 1909 (class 1262 OID 78498)
-- Name: ps2_db; Type: DATABASE; Schema: -; Owner: -
--

CREATE DATABASE ps2_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';


\connect ps2_db

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- TOC entry 165 (class 3079 OID 11681)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 1911 (class 0 OID 0)
-- Dependencies: 165
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

--
-- TOC entry 163 (class 1259 OID 78509)
-- Dependencies: 5
-- Name: categories_id_sequence; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE categories_id_sequence
    START WITH 17
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 164 (class 1259 OID 78511)
-- Dependencies: 1795 5
-- Name: categories; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE categories (
    id integer DEFAULT nextval('categories_id_sequence'::regclass) NOT NULL,
    description character varying(1000) NOT NULL,
    name character varying(50) NOT NULL
);


--
-- TOC entry 161 (class 1259 OID 78499)
-- Dependencies: 5
-- Name: locations_id_sequence; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE locations_id_sequence
    START WITH 15
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- TOC entry 162 (class 1259 OID 78501)
-- Dependencies: 1794 5
-- Name: locations; Type: TABLE; Schema: public; Owner: -; Tablespace: 
--

CREATE TABLE locations (
    id integer DEFAULT nextval('locations_id_sequence'::regclass) NOT NULL,
    name character varying(50) NOT NULL
);


--
-- TOC entry 1801 (class 2606 OID 78519)
-- Dependencies: 164 164 1906
-- Name: categories_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- TOC entry 1797 (class 2606 OID 78506)
-- Dependencies: 162 162 1906
-- Name: locations_pkey; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY locations
    ADD CONSTRAINT locations_pkey PRIMARY KEY (id);


--
-- TOC entry 1799 (class 2606 OID 78508)
-- Dependencies: 162 162 1906
-- Name: uk_qvgktk8bt8v993m1k9ld5036k; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY locations
    ADD CONSTRAINT uk_qvgktk8bt8v993m1k9ld5036k UNIQUE (name);


--
-- TOC entry 1803 (class 2606 OID 78521)
-- Dependencies: 164 164 1906
-- Name: uk_t8o6pivur7nn124jehx7cygw5; Type: CONSTRAINT; Schema: public; Owner: -; Tablespace: 
--

ALTER TABLE ONLY categories
    ADD CONSTRAINT uk_t8o6pivur7nn124jehx7cygw5 UNIQUE (name);


-- Completed on 2014-10-01 00:23:49 COT

--
-- PostgreSQL database dump complete
--

