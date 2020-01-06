--
-- PostgreSQL database dump
--

-- Dumped from database version 11.4
-- Dumped by pg_dump version 12.0

-- Started on 2019-12-29 16:01:32 SAST

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

--
-- TOC entry 202 (class 1259 OID 24867)
-- Name: Employees; Type: TABLE; Schema: public; Owner: employee
--

CREATE TABLE public."Employees" (
    "Id" integer NOT NULL,
    "IdentityUserId" text,
    "Staff_Number" character varying(50) NOT NULL,
    "Rank" integer NOT NULL,
    "RankStep" integer NOT NULL,
    "PhotoPath" text,
    "First_Name" text,
    "Last_Name" text,
    "Email" text,
    "DOB" timestamp without time zone NOT NULL,
    "Gender" integer NOT NULL,
    "Address_Street" text,
    "Address_City" text,
    "Address_State" text,
    "Address_PostCode" text,
    "Country" integer NOT NULL,
    "Department_Id" integer DEFAULT 0 NOT NULL,
    "Directorate_Id" integer DEFAULT 0 NOT NULL,
    "Employee_Status" boolean DEFAULT false NOT NULL,
    "TransactionDate" timestamp without time zone DEFAULT '0001-01-01 00:00:00'::timestamp without time zone NOT NULL
);


ALTER TABLE public."Employees" OWNER TO employee;

--
-- TOC entry 201 (class 1259 OID 24865)
-- Name: Employees_Id_seq; Type: SEQUENCE; Schema: public; Owner: employee
--

CREATE SEQUENCE public."Employees_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Employees_Id_seq" OWNER TO employee;

--
-- TOC entry 3367 (class 0 OID 0)
-- Dependencies: 201
-- Name: Employees_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: employee
--

ALTER SEQUENCE public."Employees_Id_seq" OWNED BY public."Employees"."Id";


--
-- TOC entry 3232 (class 2604 OID 24870)
-- Name: Employees Id; Type: DEFAULT; Schema: public; Owner: employee
--

ALTER TABLE ONLY public."Employees" ALTER COLUMN "Id" SET DEFAULT nextval('public."Employees_Id_seq"'::regclass);


--
-- TOC entry 3361 (class 0 OID 24867)
-- Dependencies: 202
-- Data for Name: Employees; Type: TABLE DATA; Schema: public; Owner: employee
--

INSERT INTO public."Employees" VALUES (38, NULL, '1000', 8, 1, NULL, 'Clement', 'Adjorlolo   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 11, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (39, NULL, '1000', 8, 1, NULL, 'Collen', 'Moyo   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 21, 5, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (40, NULL, '1000', 8, 1, NULL, 'Collet', 'Sibanda   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 26, 5, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (41, NULL, '1000', 8, 1, NULL, 'Cordelia', 'Kegoriloe   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 20, 5, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (42, NULL, '1000', 8, 1, NULL, 'Corine', 'Motouom   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 23, 5, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (43, NULL, '1000', 8, 1, NULL, 'Dorah', 'Mwaiseghe   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 22, 5, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (44, NULL, '1000', 8, 1, NULL, 'Dorcas', 'Bapela   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 26, 5, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (45, NULL, '1000', 8, 1, NULL, 'Duduzile', 'Mkumla   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 21, 5, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (46, NULL, '1000', 8, 1, NULL, 'Edith', 'Maboumba   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 11, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (47, NULL, '1000', 8, 1, NULL, 'Edna', 'Kalima   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 11, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (48, NULL, '1000', 8, 1, NULL, 'Eliane', 'Charlotte Ngnasoke Koko ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 12, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (49, NULL, '1000', 8, 1, NULL, 'Ellen', 'Huruva   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 21, 5, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (50, NULL, '1000', 8, 1, NULL, 'Elspeth', 'Coetzer   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 21, 5, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (51, NULL, '1000', 8, 1, NULL, 'Emmanuel', 'Kamdem   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 7, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (1, NULL, '1000', 8, 1, NULL, 'Abdou', 'Rahman Mboob  ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 14, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (2, NULL, '1000', 8, 1, NULL, 'Abiola', 'D. Ajayi  ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 16, 4, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (4, NULL, '1000', 8, 1, NULL, 'Adama', 'Kone   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 26, 5, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (5, NULL, '1000', 8, 1, NULL, 'Agnes', 'Amakie Gidimadzor  ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 19, 4, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (6, NULL, '1000', 8, 1, NULL, 'Ague', 'Charlotte   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 9, 2, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (7, NULL, '1000', 8, 1, NULL, 'Ahmed', 'Bakheit   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 26, 5, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (8, NULL, '1000', 8, 1, NULL, 'Amadou', 'Diallo   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 19, 4, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (9, NULL, '1000', 8, 1, NULL, 'Amb.', 'Haladou Salha  ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 11, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (12, NULL, '1000', 8, 1, NULL, 'Andile', 'Edmos Khanye  ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 26, 5, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (13, NULL, '1000', 8, 1, NULL, 'Andriette', 'Ferreira   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 16, 4, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (14, NULL, '1000', 8, 1, NULL, 'Andson', 'Nsune   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 7, 2, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (15, NULL, '1000', 8, 1, NULL, 'Arshfod', 'Njenga Ngugi  ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 12, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (16, NULL, '1000', 8, 1, NULL, 'Aseye', 'Ahoto   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 23, 5, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (17, NULL, '1000', 8, 1, NULL, 'Assia', 'Meghfour   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 1, 1, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (18, NULL, '1000', 8, 1, NULL, 'Augustin', 'H Wambo Yamdjeu ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 11, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (19, NULL, '1000', 8, 1, NULL, 'Axel', 'Rusenga   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 13, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (21, NULL, '1000', 8, 1, NULL, 'Barbara', 'Glover   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 16, 4, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (22, NULL, '1000', 8, 1, NULL, 'Batho', 'Meshack Maruping  ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 23, 5, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (23, NULL, '1000', 8, 1, NULL, 'Ben', 'Kenjiro   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 12, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (24, NULL, '1000', 8, 1, NULL, 'Benita', 'Mukania Nsabua  ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 19, 4, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (25, NULL, '1000', 8, 1, NULL, 'Benjamin', 'Akobundu   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 11, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (26, NULL, '1000', 8, 1, NULL, 'Bernice', 'Lynne Mclean  ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 11, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (27, NULL, '1000', 8, 1, NULL, 'Betty', 'Amunga   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 11, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (28, NULL, '1000', 8, 1, NULL, 'Bob', 'Kalanzi   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 9, 2, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (29, NULL, '1000', 8, 1, NULL, 'Boitshepo', 'Bibi Giyose  ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 12, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (30, NULL, '1000', 8, 1, NULL, 'Boitumelo', 'Mabusela   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 16, 4, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (31, NULL, '1000', 8, 1, NULL, 'Buhle', 'Hlatswayo   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 12, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (32, NULL, '1000', 8, 1, NULL, 'Caroline', 'Mutepfa   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 12, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (33, NULL, '1000', 8, 1, NULL, 'Cecillia', 'Tshinnane Lethole  ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 24, 5, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (34, NULL, '1000', 8, 1, NULL, 'Cheikh', 'Tidjane N''dongo  ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 11, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (36, NULL, '1000', 8, 1, NULL, 'Chipiliro', 'Saka   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 13, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (37, NULL, '1000', 8, 1, NULL, 'Chola', 'Mfula   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 19, 4, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (52, NULL, '1000', 8, 1, NULL, 'Eric', 'Fenu   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 22, 5, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (53, NULL, '1000', 8, 1, NULL, 'Eric', 'Sile   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 12, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (54, NULL, '1000', 8, 1, NULL, 'Ernestinna', 'Maame   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 27, 6, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (56, NULL, '1000', 8, 1, NULL, 'Etami', 'Ndoping   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 19, 4, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (57, NULL, '1000', 8, 1, NULL, 'Eugene', 'Owusu-Ansah   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 1, 1, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (58, NULL, '1000', 8, 1, NULL, 'Eva', 'Fatima Micheline Moussa ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 5, 1, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (59, NULL, '1000', 8, 1, NULL, 'Eva', 'Mashadi Rankoko  ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 6, 2, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (60, NULL, '1000', 8, 1, NULL, 'External', 'participant   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 27, 6, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (61, NULL, '1000', 8, 1, NULL, 'Eyram', 'Amovin-Assagba   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 19, 4, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (62, NULL, '1000', 8, 1, NULL, 'Fasil', 'Birega   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 21, 5, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (63, NULL, '1000', 8, 1, NULL, 'Faten', 'Aggad   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 1, 1, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (65, NULL, '1000', 8, 1, NULL, 'Fatou', 'Ceesay Jallow  ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 1, 1, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (66, NULL, '1000', 8, 1, NULL, 'Felistas', 'Lusungu Chirwa  ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 26, 5, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (67, NULL, '1000', 8, 1, NULL, 'FINANCE', 'STAFF TBD  ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 21, 5, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (55, 'e1ea3dd3-b12b-4ad3-986b-559612ef7818', '7004', 8, 1, NULL, 'Estherine', 'Lisinge-Fotabong   ', 'gideonn@nepad.org', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 6, 2, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (35, 'b05d8a80-47fc-4eb0-8494-d20db97f1765', '1000', 8, 1, NULL, 'Chimwemwe', 'Chamdimba   ', 'gideonn@nepad.org', '1900-01-01 00:00:00', 2, NULL, NULL, NULL, NULL, 190, 9, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (10, NULL, '3550', 8, 1, NULL, 'Ambali', 'Aggrey   ', 'gideonn@nepad.org', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 1, 6, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (70, NULL, '1000', 8, 1, NULL, 'Frederick', 'Kwame Ababio  ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 11, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (71, NULL, '1000', 8, 1, NULL, 'Fumito', 'Morinaga   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 12, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (72, NULL, '1000', 8, 1, NULL, 'George', 'Murumba   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 13, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (74, NULL, '1000', 8, 1, NULL, 'Gloria', 'Lufuno Manaka  ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 1, 1, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (75, NULL, '1000', 8, 1, NULL, 'Grace', 'Sauls   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 1, 1, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (76, NULL, '1000', 8, 1, NULL, 'Halilou', 'Soulemanou Mohaman  ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 12, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (77, NULL, '1000', 8, 1, NULL, 'Hamady', 'Diop   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 11, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (78, NULL, '1000', 8, 1, NULL, 'Hazvibvi', 'Daphine Muzawazi  ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 7, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (79, NULL, '1000', 8, 1, NULL, 'Hiligale', 'Flaure Lekpeli  ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 26, 5, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (80, NULL, '1000', 8, 1, NULL, 'Hlengekile', 'Thembekwayo   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 21, 5, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (81, NULL, '1000', 8, 1, NULL, 'Hlengiwe', 'Ginindza   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 22, 5, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (82, NULL, '1000', 8, 1, NULL, 'Hudu', 'Mogtari   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 19, 4, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (83, NULL, '1000', 8, 1, NULL, 'Ibrahim', 'Gourouza   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 19, 4, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (84, NULL, '1000', 8, 1, NULL, 'Ibrahima', 'Diene   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 19, 4, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (85, NULL, '1000', 8, 1, NULL, 'Irene', 'Okonkwo   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 12, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (86, NULL, '1000', 8, 1, NULL, 'Jacinta', 'Ndegwa   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 1, 1, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (88, NULL, '1000', 8, 1, NULL, 'Jason', 'Liddell   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 24, 5, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (89, NULL, '1000', 8, 1, NULL, 'Jean', 'Kebere   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 19, 4, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (90, NULL, '1000', 8, 1, NULL, 'Jennifer', 'Susan Chiriga  ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 1, 6, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (91, NULL, '1000', 8, 1, NULL, 'Jeremy', 'Tinga Ouedraogo  ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 19, 4, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (92, NULL, '1000', 8, 1, NULL, 'Jessica', 'Lobe   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 27, 6, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (93, NULL, '1000', 8, 1, NULL, 'Jessica', 'Randy Annor  ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 27, 6, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (94, NULL, '1000', 8, 1, NULL, 'Jessie', 'Mvula   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 19, 4, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (95, NULL, '1000', 8, 1, NULL, 'Josiane', 'Kantiono   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 1, 1, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (96, NULL, '1000', 8, 1, NULL, 'Justina', 'Dugbazah   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 12, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (97, NULL, '1000', 8, 1, NULL, 'Kamay', 'Andre Makusudi  ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 26, 5, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (98, NULL, '1000', 8, 1, NULL, 'Kebba', 'Colley   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 19, 4, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (99, NULL, '1000', 8, 1, NULL, 'Kefilwe', 'Moalosi   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 12, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (100, NULL, '1000', 8, 1, NULL, 'Kevin', 'Shukuru Kahatano  ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 27, 6, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (101, NULL, '1000', 8, 1, NULL, 'Kisa', 'Nkhoma   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 13, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (102, NULL, '1000', 8, 1, NULL, 'Kitemano', 'Mbilinyi   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 2, 1, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (104, NULL, '1000', 8, 1, NULL, 'Ladji', 'Sidibe   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 25, 5, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (105, NULL, '1000', 8, 1, NULL, 'Lassina', 'Drame   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 19, 4, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (107, NULL, '1000', 8, 1, NULL, 'Leah', 'Kasera   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 19, 4, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (108, NULL, '1000', 8, 1, NULL, 'Linda', 'Bhengu   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 24, 5, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (109, NULL, '1000', 8, 1, NULL, 'Linda', 'Gouman   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 22, 5, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (110, NULL, '1000', 8, 1, NULL, 'Litha', 'Musyimi Oganda  ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 27, 6, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (111, NULL, '1000', 8, 1, NULL, 'Louis', 'Gnagbe   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 13, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (112, NULL, '1000', 8, 1, NULL, 'Lukovi', 'Seke   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 4, 6, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (113, NULL, '1000', 8, 1, NULL, 'Madada', 'Diawara   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 19, 4, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (114, NULL, '1000', 8, 1, NULL, 'Makinde', 'Diran   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 27, 6, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (115, NULL, '1000', 8, 1, NULL, 'Mamadou', 'M Diakhite  ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 11, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (116, NULL, '1000', 8, 1, NULL, 'Mamoteane', 'Manana Mashologu  ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 1, 6, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (117, NULL, '1000', 8, 1, NULL, 'Manyewu', 'Mutamba   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 11, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (118, NULL, '1000', 8, 1, NULL, 'Margaret', 'Mahlomuza   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 1, 6, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (120, NULL, '1000', 8, 1, NULL, 'Maria', 'Jose Guerrero Ledo ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 12, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (121, NULL, '1000', 8, 1, NULL, 'Mariam', 'Seynou Ouedraogo  ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 19, 4, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (122, NULL, '1000', 8, 1, NULL, 'Mariam', 'Sow Soumare  ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 11, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (125, NULL, '1000', 8, 1, NULL, 'Mercedes', 'Leburu   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 16, 4, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (126, NULL, '1000', 8, 1, NULL, 'Mercy', 'Fomundam   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 7, 2, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (127, NULL, '1000', 8, 1, NULL, 'Mercy', 'King''ori   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 11, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (128, NULL, '1000', 8, 1, NULL, 'Millicent', 'Kgeledi   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 3, 1, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (129, NULL, '1000', 8, 1, NULL, 'Mkhanyeli', 'Michael Mabhena  ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 23, 5, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (130, NULL, '1000', 8, 1, NULL, 'Modupe', 'Adeyemo   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 19, 4, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (131, NULL, '1000', 8, 1, NULL, 'Mogomotsi', 'Seboko   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 6, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (133, NULL, '1000', 8, 1, NULL, 'Mosad', 'Elmissiry   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 13, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (134, NULL, '1000', 8, 1, NULL, 'Mountaka', 'Wahabou Ibrah  ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 13, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (69, NULL, '3632', 8, 1, NULL, 'Florence', 'Nazare   ', 'gideonn@nepad.org', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 9, 2, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (123, NULL, '3605', 8, 1, NULL, 'Martin', 'Bwalya   ', 'gideonn@nepad.org', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 14, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (103, NULL, '3642', 8, 1, NULL, 'Kossi', 'Toulassi   ', 'gideonn@nepad.org', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 7, 2, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (124, 'c115746d-921d-4c70-8853-c7123089c0e0', '3656', 8, 1, NULL, 'Mayaki', 'Ibrahim Assane (Dr) ', 'gideonn@nepad.org', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 1, 1, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (68, '42e61067-8906-415a-b53a-6e7718a7c724', '1000', 8, 1, NULL, 'Flore', 'Kamdomg   ', 'gideonn@nepad.org', '1900-01-01 00:00:00', 2, NULL, NULL, NULL, NULL, 190, 10, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (87, 'ac81ecdd-64a2-488e-a516-40fd8e1a93c8', '1000', 8, 1, NULL, 'Janet', 'Byaruhanga   ', 'janetb@nepad.org', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 12, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (135, NULL, '1000', 8, 1, NULL, 'Musa', 'Mukoma   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 22, 5, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (136, NULL, '1000', 8, 1, NULL, 'Mutale', 'Ng''andu   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 12, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (137, NULL, '1000', 8, 1, NULL, 'Mwanja', 'Susan Kayamba Ng''anjo ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 3, 1, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (139, NULL, '1000', 8, 1, NULL, 'Ngoni', 'Kachisi   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 23, 5, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (140, NULL, '1000', 8, 1, NULL, 'Nhamo', 'Simuka   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 23, 5, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (141, NULL, '1000', 8, 1, NULL, 'Nhlalwenhle', 'Mbuyazwe   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 26, 5, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (142, NULL, '1000', 8, 1, NULL, 'Nicole', 'Gounon   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 1, 1, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (143, NULL, '1000', 8, 1, NULL, 'Nina', 'Douonso Edwige Konate ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 19, 4, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (144, NULL, '1000', 8, 1, NULL, 'Noah', 'Kamanga   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 21, 5, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (145, NULL, '1000', 8, 1, NULL, 'Nomawethu', 'Sheila Msezana  ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 21, 5, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (146, NULL, '1000', 8, 1, NULL, 'Nonhlanhla', 'Thelma Dhlamini  ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 1, 6, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (147, NULL, '1000', 8, 1, NULL, 'Nonkululeko', 'Mtimunye   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 26, 5, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (148, NULL, '1000', 8, 1, NULL, 'Norman', 'Khoza   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 12, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (149, NULL, '1000', 8, 1, NULL, 'Nthabiseng', 'Moiloa   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 12, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (150, NULL, '1000', 8, 1, NULL, 'Nyiko', 'Khoza   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 19, 4, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (151, NULL, '1000', 8, 1, NULL, 'OCEO''s', 'COMMUNICATION STAFF - TBD', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 3, 1, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (152, NULL, '1000', 8, 1, NULL, 'Olalekan', 'Akinbo   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 19, 4, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (153, NULL, '1000', 8, 1, NULL, 'Ouma', 'Mokoena   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 21, 5, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (154, NULL, '1000', 8, 1, NULL, 'Oumou', 'Barry   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 19, 4, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (155, NULL, '1000', 8, 1, NULL, 'Pamla', 'Gopaul   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 1, 6, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (156, NULL, '1000', 8, 1, NULL, 'Patrick', 'Ramaoka   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 1, 1, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (158, NULL, '1000', 8, 1, NULL, 'Paul', 'Kiptum Tanui  ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 12, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (159, NULL, '1000', 8, 1, NULL, 'Peter', 'Chikati   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 25, 5, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (160, NULL, '1000', 8, 1, NULL, 'Petra', 'Lahan   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 27, 6, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (161, NULL, '1000', 8, 1, NULL, 'PROCUREMENT', 'STAFF - TBD ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 23, 5, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (162, NULL, '1000', 8, 1, NULL, 'Rachid', 'Basso Sanfo  ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 7, 2, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (164, NULL, '1000', 8, 1, NULL, 'Robert', 'Muyanga   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 14, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (165, NULL, '1000', 8, 1, NULL, 'Robert', 'Sithole   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 21, 5, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (166, NULL, '1000', 8, 1, NULL, 'Rosalie', 'Ndeye Lo  ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 12, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (167, NULL, '1000', 8, 1, NULL, 'Rose', 'Ngenue   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 26, 5, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (168, NULL, '1000', 8, 1, NULL, 'Rose-Mary', 'Nndanganeni   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 21, 5, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (169, NULL, '1000', 8, 1, NULL, 'Rudo', 'Makunike   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 11, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (170, NULL, '1000', 8, 1, NULL, 'Salif', 'Sada Sall  ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 1, 1, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (171, NULL, '1000', 8, 1, NULL, 'Sami', 'Hafnaoui   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 9, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (172, NULL, '1000', 8, 1, NULL, 'Samuel', 'Timpo   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 19, 4, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (173, NULL, '1000', 8, 1, NULL, 'Sandra', 'Naidoo   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 22, 5, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (174, NULL, '1000', 8, 1, NULL, 'Savadogo', 'Moussa   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 19, 4, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (175, NULL, '1000', 8, 1, NULL, 'Seleman', 'Kitenga   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 27, 6, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (176, NULL, '1000', 8, 1, NULL, 'Silas', 'Obukosia   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 19, 4, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (177, NULL, '1000', 8, 1, NULL, 'Simbini', 'Tichakunda   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 13, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (178, NULL, '1000', 8, 1, NULL, 'Simon', 'Kisira   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 1, 6, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (180, NULL, '1000', 8, 1, NULL, 'Sivetshe', 'Zodidi   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 11, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (181, NULL, '1000', 8, 1, NULL, 'Snowden', 'Mmadi   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 13, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (182, NULL, '1000', 8, 1, NULL, 'Solomon', 'Bopape   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 27, 6, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (183, NULL, '1000', 8, 1, NULL, 'Sunday', 'Akile   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 19, 4, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (186, NULL, '1000', 8, 1, NULL, 'Tandeka', 'Nkiwane C  ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 1, 1, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (188, NULL, '1000', 8, 1, NULL, 'Teko', 'Stephen Nhlapo  ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 11, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (189, NULL, '1000', 8, 1, NULL, 'Temalangeni', 'Dlamini   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 23, 5, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (190, NULL, '1000', 8, 1, NULL, 'Tendai', 'Tofa   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 11, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (192, NULL, '1000', 8, 1, NULL, 'Tomoyuki', 'Yamada   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 14, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (196, NULL, '1000', 8, 1, NULL, 'Vanessa', 'Msengezi   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 12, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (197, NULL, '1000', 8, 1, NULL, 'Victoria', 'Oyebanji   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 5, 1, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (198, NULL, '1000', 8, 1, NULL, 'Victorine', 'Mekesse Bikie  ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 23, 5, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (200, NULL, '1000', 8, 1, NULL, 'Vincent', 'Oparah   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 12, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (201, NULL, '1000', 8, 1, NULL, 'Woldeyesus', 'Sinebo   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 19, 4, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (202, NULL, '1000', 8, 1, NULL, 'Younes', 'Touitha   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 9, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (163, NULL, '3621', 8, 1, NULL, 'Rebecca', 'Oloo   ', 'gideonn@nepad.org', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 22, 5, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (199, NULL, '3503', 8, 1, NULL, 'Vincent', 'Moola   ', 'gideonn@nepad.org', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 23, 5, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (191, NULL, '7002', 8, 1, NULL, 'Tichaona', 'Mangwende   ', 'gideonn@nepad.org', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 8, 2, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (185, NULL, '3678', 8, 1, NULL, 'Talla', 'Kebe   ', 'gideonn@nepad.org', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 1, 1, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (184, NULL, '3593', 8, 1, NULL, 'Symerre', 'Grey-Johnson   ', 'gideonn@nepad.org', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 20, 5, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (179, 'ce777098-0692-4248-bb28-554acba8d021', '1000', 8, 1, NULL, 'Sindisiwe', 'Mkhize   ', 'gideonn@nepad.org', '1900-01-01 00:00:00', 2, NULL, NULL, NULL, NULL, 190, 9, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (203, NULL, '1000', 8, 1, NULL, 'Zaka', 'Diana Mawoko  ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 27, 6, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (157, NULL, '3650', 8, 1, NULL, 'Patrick', 'Sanyu Mbaijana  ', 'gideonn@nepad.org', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 26, 5, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (106, NULL, '3590', 8, 1, NULL, 'Lazare', 'Edzogo   ', 'gideonn@nepad.org', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 25, 5, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (187, '426f9586-3ac6-42f3-863f-a19f3e068d05', '3571', 8, 1, NULL, 'Tatek', 'Shewandagne   ', 'gideonn@nepad.org', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 24, 5, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (20, 'e1ea3dd3-b12b-4ad3-986b-559612ef7818', '3603', 8, 1, NULL, 'Azeb', 'Desta Gebreselassie  ', 'gideonn@nepad.org', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 21, 5, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (73, 'e1ea3dd3-b12b-4ad3-986b-559612ef7818', '6025', 6, 5, '1067808e-ea9f-4488-97dd-dd5422969631_gideon.jpg', 'Gideon', 'Nimako   ', 'gideonn@nepad.org', '1981-11-18 00:00:00', 1, '81 Tamboti Road, Unit 57A', 'Midrand', 'Gauteng', '1685', 190, 6, 2, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (3, '8cb59a1d-85f1-49f4-b11c-35e3f8a8dec7', '1000', 8, 1, NULL, 'Adama', 'Deen   ', 'gideonn@nepad.org', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 10, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (11, 'f5534c60-e2d2-4559-9447-be4214537f6c', '7003', 8, 1, NULL, 'Amine', 'Idriss Adoum  ', 'gideonn@nepad.org', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 6, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (195, 'e526e15d-47dd-46a4-93ea-c718a31ebc37', '1000', 8, 1, NULL, 'Unami', 'Teressa Mpofu  ', 'gideonn@nepad.org', '1900-01-01 00:00:00', 2, NULL, NULL, NULL, NULL, 190, 12, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (193, '932d7713-80a3-4b8d-8b71-56f24bfbad81', '1000', 8, 1, NULL, 'Toussainte', 'Nadje Tchakounte  ', 'gideonn@nepad.org', '1900-01-01 00:00:00', 2, NULL, NULL, NULL, NULL, 190, 10, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (194, 'ba0a2ad8-b885-4af3-ac43-3930844541da', '1000', 8, 1, NULL, 'Towela', 'Nyirenda-Jere   ', 'gideonn@nepad.org', '1900-01-01 00:00:00', 2, NULL, NULL, NULL, NULL, 190, 10, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (132, '456e0e1f-e6b0-40d4-bca4-e58405c84cf4', '7001', 8, 1, NULL, 'Mohamed', 'H Abdisalam  ', 'gideonn@nepad.org', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 10, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (64, '0f919f24-2586-46d8-85bb-56068bbde066', '3540', 8, 1, NULL, 'Fati', 'N''zi-Hassane   ', 'gideonn@nepad.org', '1900-01-01 00:00:00', 2, NULL, NULL, NULL, NULL, 190, 9, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (119, 'd1075c1c-cb7c-480d-93c8-6931090d1f3d', '1000', 8, 1, NULL, 'Margareth', 'Ndomondo-Sigonda   ', 'gideonn@nepad.org', '1900-01-01 00:00:00', 2, NULL, NULL, NULL, NULL, 190, 9, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" VALUES (138, '2c82c275-b340-45f3-86f5-4c819d4e9814', '1000', 8, 1, NULL, 'Nancy', 'Ngum   ', 'gideonn@nepad.org', '1900-01-01 00:00:00', 2, NULL, NULL, NULL, NULL, 190, 9, 3, true, '2019-09-04 00:00:00');


--
-- TOC entry 3368 (class 0 OID 0)
-- Dependencies: 201
-- Name: Employees_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: employee
--

SELECT pg_catalog.setval('public."Employees_Id_seq"', 1, false);


--
-- TOC entry 3238 (class 2606 OID 24875)
-- Name: Employees PK_Employees; Type: CONSTRAINT; Schema: public; Owner: employee
--

ALTER TABLE ONLY public."Employees"
    ADD CONSTRAINT "PK_Employees" PRIMARY KEY ("Id");


-- Completed on 2019-12-29 16:01:32 SAST

--
-- PostgreSQL database dump complete
--

