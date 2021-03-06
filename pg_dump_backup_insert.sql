--
-- PostgreSQL database dump
--

-- Dumped from database version 14.1
-- Dumped by pg_dump version 14.1

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
-- Name: student; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.student (
    id character varying(9),
    first character varying(50),
    last character varying(50)
);


ALTER TABLE public.student OWNER TO postgres;

--
-- Name: student_view; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.student_view AS
 SELECT student.id,
    concat(student.first, ' ', student.last) AS concat
   FROM public.student;


ALTER TABLE public.student_view OWNER TO postgres;

--
-- Data for Name: student; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.student VALUES ('c18475892', 'Robert', 'Hatfield');
INSERT INTO public.student VALUES ('D12345678', 'Jack', 'O''Neill');


--
-- PostgreSQL database dump complete
--

