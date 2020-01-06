--
-- PostgreSQL database dump
--

-- Dumped from database version 11.4
-- Dumped by pg_dump version 12.0

-- Started on 2019-12-29 00:17:49 SAST

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

DROP DATABASE audaintegratedsys;
--
-- TOC entry 3662 (class 1262 OID 24832)
-- Name: audaintegratedsys; Type: DATABASE; Schema: -; Owner: employee
--

CREATE DATABASE audaintegratedsys WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C' LC_CTYPE = 'C';


ALTER DATABASE audaintegratedsys OWNER TO employee;

\connect audaintegratedsys

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
-- TOC entry 229 (class 1259 OID 25049)
-- Name: AUDAProgrammaticOutcomes; Type: TABLE; Schema: public; Owner: employee
--

CREATE TABLE public."AUDAProgrammaticOutcomes" (
    "ProgrammaticOutcome_Id" integer NOT NULL,
    "ProgrammaticOutcome" text,
    "ProgrammaticOutcome_Status" boolean NOT NULL,
    "Record_TransactionDate" timestamp without time zone NOT NULL
);


ALTER TABLE public."AUDAProgrammaticOutcomes" OWNER TO employee;

--
-- TOC entry 228 (class 1259 OID 25047)
-- Name: AUDAProgrammaticOutcomes_ProgrammaticOutcome_Id_seq; Type: SEQUENCE; Schema: public; Owner: employee
--

CREATE SEQUENCE public."AUDAProgrammaticOutcomes_ProgrammaticOutcome_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AUDAProgrammaticOutcomes_ProgrammaticOutcome_Id_seq" OWNER TO employee;

--
-- TOC entry 3663 (class 0 OID 0)
-- Dependencies: 228
-- Name: AUDAProgrammaticOutcomes_ProgrammaticOutcome_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: employee
--

ALTER SEQUENCE public."AUDAProgrammaticOutcomes_ProgrammaticOutcome_Id_seq" OWNED BY public."AUDAProgrammaticOutcomes"."ProgrammaticOutcome_Id";


--
-- TOC entry 231 (class 1259 OID 25060)
-- Name: AUDAProgrammaticOutputs; Type: TABLE; Schema: public; Owner: employee
--

CREATE TABLE public."AUDAProgrammaticOutputs" (
    "ProgrammaticOutput_Id" integer NOT NULL,
    "ProgrammaticOutcome_Id" integer NOT NULL,
    "ProgrammaticOutput" text,
    "ProgrammaticOutput_Status" boolean NOT NULL,
    "TransactionDate" timestamp without time zone NOT NULL
);


ALTER TABLE public."AUDAProgrammaticOutputs" OWNER TO employee;

--
-- TOC entry 230 (class 1259 OID 25058)
-- Name: AUDAProgrammaticOutputs_ProgrammaticOutput_Id_seq; Type: SEQUENCE; Schema: public; Owner: employee
--

CREATE SEQUENCE public."AUDAProgrammaticOutputs_ProgrammaticOutput_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AUDAProgrammaticOutputs_ProgrammaticOutput_Id_seq" OWNER TO employee;

--
-- TOC entry 3664 (class 0 OID 0)
-- Dependencies: 230
-- Name: AUDAProgrammaticOutputs_ProgrammaticOutput_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: employee
--

ALTER SEQUENCE public."AUDAProgrammaticOutputs_ProgrammaticOutput_Id_seq" OWNED BY public."AUDAProgrammaticOutputs"."ProgrammaticOutput_Id";


--
-- TOC entry 225 (class 1259 OID 25027)
-- Name: AUDAProgrammes; Type: TABLE; Schema: public; Owner: employee
--

CREATE TABLE public."AUDAProgrammes" (
    "Programme_Id" integer NOT NULL,
    "Programme_Dept_Id" integer NOT NULL,
    "Programme_Directorate_Id" integer NOT NULL,
    "Programme_Name" character varying(255) NOT NULL,
    "Programme_Country" text,
    "Programme_Address" text,
    "Programme_Status" boolean DEFAULT false NOT NULL,
    "TransactionDate" timestamp without time zone DEFAULT '0001-01-01 00:00:00'::timestamp without time zone NOT NULL
);


ALTER TABLE public."AUDAProgrammes" OWNER TO employee;

--
-- TOC entry 224 (class 1259 OID 25025)
-- Name: AUDAProgrammes_Programme_Id_seq; Type: SEQUENCE; Schema: public; Owner: employee
--

CREATE SEQUENCE public."AUDAProgrammes_Programme_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AUDAProgrammes_Programme_Id_seq" OWNER TO employee;

--
-- TOC entry 3665 (class 0 OID 0)
-- Dependencies: 224
-- Name: AUDAProgrammes_Programme_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: employee
--

ALTER SEQUENCE public."AUDAProgrammes_Programme_Id_seq" OWNED BY public."AUDAProgrammes"."Programme_Id";


--
-- TOC entry 227 (class 1259 OID 25038)
-- Name: AUDAProjects; Type: TABLE; Schema: public; Owner: employee
--

CREATE TABLE public."AUDAProjects" (
    "Project_Id" integer NOT NULL,
    "SAP_Id" integer NOT NULL,
    "Project_Dept_Id" integer NOT NULL,
    "Project_Unit_Id" integer NOT NULL,
    "Project_Programme_Id" integer NOT NULL,
    "Project_Directorate_Id" integer NOT NULL,
    "Project_Name" character varying(255) NOT NULL,
    "Project_Country" text,
    "Project_Address" text,
    "Project_Status" boolean DEFAULT false NOT NULL,
    "TransactionDate" timestamp without time zone DEFAULT '0001-01-01 00:00:00'::timestamp without time zone NOT NULL
);


ALTER TABLE public."AUDAProjects" OWNER TO employee;

--
-- TOC entry 226 (class 1259 OID 25036)
-- Name: AUDAProjects_Project_Id_seq; Type: SEQUENCE; Schema: public; Owner: employee
--

CREATE SEQUENCE public."AUDAProjects_Project_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AUDAProjects_Project_Id_seq" OWNER TO employee;

--
-- TOC entry 3666 (class 0 OID 0)
-- Dependencies: 226
-- Name: AUDAProjects_Project_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: employee
--

ALTER SEQUENCE public."AUDAProjects_Project_Id_seq" OWNED BY public."AUDAProjects"."Project_Id";


--
-- TOC entry 223 (class 1259 OID 25016)
-- Name: AUDAUnits; Type: TABLE; Schema: public; Owner: employee
--

CREATE TABLE public."AUDAUnits" (
    "Unit_Id" integer NOT NULL,
    "Unit_Dept_Id" integer NOT NULL,
    "Unit_Directorate_Id" integer NOT NULL,
    "Unit_Name" character varying(255) NOT NULL,
    "Unit_Country" text,
    "Unit_Address" text,
    "TransactionDate" timestamp without time zone DEFAULT '0001-01-01 00:00:00'::timestamp without time zone NOT NULL,
    "Unit_Status" boolean DEFAULT false NOT NULL
);


ALTER TABLE public."AUDAUnits" OWNER TO employee;

--
-- TOC entry 222 (class 1259 OID 25014)
-- Name: AUDAUnits_Unit_Id_seq; Type: SEQUENCE; Schema: public; Owner: employee
--

CREATE SEQUENCE public."AUDAUnits_Unit_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AUDAUnits_Unit_Id_seq" OWNER TO employee;

--
-- TOC entry 3667 (class 0 OID 0)
-- Dependencies: 222
-- Name: AUDAUnits_Unit_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: employee
--

ALTER SEQUENCE public."AUDAUnits_Unit_Id_seq" OWNED BY public."AUDAUnits"."Unit_Id";


--
-- TOC entry 233 (class 1259 OID 25071)
-- Name: ActivityTypes; Type: TABLE; Schema: public; Owner: employee
--

CREATE TABLE public."ActivityTypes" (
    "Activity_Id" integer NOT NULL,
    "Activity_Name" character varying(255) NOT NULL,
    "ActivityType_Status" boolean NOT NULL,
    "TransactionDate" timestamp without time zone NOT NULL
);


ALTER TABLE public."ActivityTypes" OWNER TO employee;

--
-- TOC entry 232 (class 1259 OID 25069)
-- Name: ActivityTypes_Activity_Id_seq; Type: SEQUENCE; Schema: public; Owner: employee
--

CREATE SEQUENCE public."ActivityTypes_Activity_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."ActivityTypes_Activity_Id_seq" OWNER TO employee;

--
-- TOC entry 3668 (class 0 OID 0)
-- Dependencies: 232
-- Name: ActivityTypes_Activity_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: employee
--

ALTER SEQUENCE public."ActivityTypes_Activity_Id_seq" OWNED BY public."ActivityTypes"."Activity_Id";


--
-- TOC entry 206 (class 1259 OID 24886)
-- Name: AspNetRoleClaims; Type: TABLE; Schema: public; Owner: employee
--

CREATE TABLE public."AspNetRoleClaims" (
    "Id" integer NOT NULL,
    "RoleId" text NOT NULL,
    "ClaimType" text,
    "ClaimValue" text
);


ALTER TABLE public."AspNetRoleClaims" OWNER TO employee;

--
-- TOC entry 205 (class 1259 OID 24884)
-- Name: AspNetRoleClaims_Id_seq; Type: SEQUENCE; Schema: public; Owner: employee
--

CREATE SEQUENCE public."AspNetRoleClaims_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AspNetRoleClaims_Id_seq" OWNER TO employee;

--
-- TOC entry 3669 (class 0 OID 0)
-- Dependencies: 205
-- Name: AspNetRoleClaims_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: employee
--

ALTER SEQUENCE public."AspNetRoleClaims_Id_seq" OWNED BY public."AspNetRoleClaims"."Id";


--
-- TOC entry 197 (class 1259 OID 24838)
-- Name: AspNetRoles; Type: TABLE; Schema: public; Owner: employee
--

CREATE TABLE public."AspNetRoles" (
    "Id" text NOT NULL,
    "Name" character varying(256),
    "NormalizedName" character varying(256),
    "ConcurrencyStamp" text
);


ALTER TABLE public."AspNetRoles" OWNER TO employee;

--
-- TOC entry 208 (class 1259 OID 24902)
-- Name: AspNetUserClaims; Type: TABLE; Schema: public; Owner: employee
--

CREATE TABLE public."AspNetUserClaims" (
    "Id" integer NOT NULL,
    "UserId" text NOT NULL,
    "ClaimType" text,
    "ClaimValue" text
);


ALTER TABLE public."AspNetUserClaims" OWNER TO employee;

--
-- TOC entry 207 (class 1259 OID 24900)
-- Name: AspNetUserClaims_Id_seq; Type: SEQUENCE; Schema: public; Owner: employee
--

CREATE SEQUENCE public."AspNetUserClaims_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."AspNetUserClaims_Id_seq" OWNER TO employee;

--
-- TOC entry 3670 (class 0 OID 0)
-- Dependencies: 207
-- Name: AspNetUserClaims_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: employee
--

ALTER SEQUENCE public."AspNetUserClaims_Id_seq" OWNED BY public."AspNetUserClaims"."Id";


--
-- TOC entry 209 (class 1259 OID 24916)
-- Name: AspNetUserLogins; Type: TABLE; Schema: public; Owner: employee
--

CREATE TABLE public."AspNetUserLogins" (
    "LoginProvider" text NOT NULL,
    "ProviderKey" text NOT NULL,
    "ProviderDisplayName" text,
    "UserId" text NOT NULL
);


ALTER TABLE public."AspNetUserLogins" OWNER TO employee;

--
-- TOC entry 210 (class 1259 OID 24929)
-- Name: AspNetUserRoles; Type: TABLE; Schema: public; Owner: employee
--

CREATE TABLE public."AspNetUserRoles" (
    "UserId" text NOT NULL,
    "RoleId" text NOT NULL
);


ALTER TABLE public."AspNetUserRoles" OWNER TO employee;

--
-- TOC entry 211 (class 1259 OID 24947)
-- Name: AspNetUserTokens; Type: TABLE; Schema: public; Owner: employee
--

CREATE TABLE public."AspNetUserTokens" (
    "UserId" text NOT NULL,
    "LoginProvider" text NOT NULL,
    "Name" text NOT NULL,
    "Value" text
);


ALTER TABLE public."AspNetUserTokens" OWNER TO employee;

--
-- TOC entry 198 (class 1259 OID 24846)
-- Name: AspNetUsers; Type: TABLE; Schema: public; Owner: employee
--

CREATE TABLE public."AspNetUsers" (
    "Id" text NOT NULL,
    "UserName" character varying(256),
    "NormalizedUserName" character varying(256),
    "Email" character varying(256),
    "NormalizedEmail" character varying(256),
    "EmailConfirmed" boolean NOT NULL,
    "PasswordHash" text,
    "SecurityStamp" text,
    "ConcurrencyStamp" text,
    "PhoneNumber" text,
    "PhoneNumberConfirmed" boolean NOT NULL,
    "TwoFactorEnabled" boolean NOT NULL,
    "LockoutEnd" timestamp with time zone,
    "LockoutEnabled" boolean NOT NULL,
    "AccessFailedCount" integer NOT NULL,
    "Staff_Number" text,
    "Admin_Generated" boolean DEFAULT false NOT NULL,
    "Employee_Id" integer DEFAULT 0 NOT NULL,
    "TransactionDate" timestamp without time zone DEFAULT '0001-01-01 00:00:00'::timestamp without time zone NOT NULL
);


ALTER TABLE public."AspNetUsers" OWNER TO employee;

--
-- TOC entry 239 (class 1259 OID 25126)
-- Name: CostCatelogues; Type: TABLE; Schema: public; Owner: employee
--

CREATE TABLE public."CostCatelogues" (
    "Cost_Id" integer NOT NULL,
    "Cost_Code" text,
    "Cost_Category" text,
    "Cost_Description" text,
    "Unit_Of_Measure" text,
    "Unit_Cost" real NOT NULL,
    "Cost_Status" boolean NOT NULL,
    "TransactionDate" timestamp without time zone NOT NULL
);


ALTER TABLE public."CostCatelogues" OWNER TO employee;

--
-- TOC entry 238 (class 1259 OID 25124)
-- Name: CostCatelogue_Cost_Id_seq; Type: SEQUENCE; Schema: public; Owner: employee
--

CREATE SEQUENCE public."CostCatelogue_Cost_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."CostCatelogue_Cost_Id_seq" OWNER TO employee;

--
-- TOC entry 3671 (class 0 OID 0)
-- Dependencies: 238
-- Name: CostCatelogue_Cost_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: employee
--

ALTER SEQUENCE public."CostCatelogue_Cost_Id_seq" OWNED BY public."CostCatelogues"."Cost_Id";


--
-- TOC entry 235 (class 1259 OID 25079)
-- Name: DSATypes; Type: TABLE; Schema: public; Owner: employee
--

CREATE TABLE public."DSATypes" (
    "DSA_Id" integer NOT NULL,
    "DSA_Name" character varying(255) NOT NULL,
    "DSA_Value" real NOT NULL,
    "DSAType_Status" boolean NOT NULL,
    "TransactionDate" timestamp without time zone NOT NULL
);


ALTER TABLE public."DSATypes" OWNER TO employee;

--
-- TOC entry 234 (class 1259 OID 25077)
-- Name: DSATypes_DSA_Id_seq; Type: SEQUENCE; Schema: public; Owner: employee
--

CREATE SEQUENCE public."DSATypes_DSA_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."DSATypes_DSA_Id_seq" OWNER TO employee;

--
-- TOC entry 3672 (class 0 OID 0)
-- Dependencies: 234
-- Name: DSATypes_DSA_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: employee
--

ALTER SEQUENCE public."DSATypes_DSA_Id_seq" OWNED BY public."DSATypes"."DSA_Id";


--
-- TOC entry 200 (class 1259 OID 24856)
-- Name: Departments; Type: TABLE; Schema: public; Owner: employee
--

CREATE TABLE public."Departments" (
    "Dept_Id" integer NOT NULL,
    "Dept_Name" character varying(255) NOT NULL,
    "Dept_Country" text,
    "Dept_Address" text,
    "Dept_Directorate_Id" integer DEFAULT 0 NOT NULL,
    "Dept_Status" boolean DEFAULT false NOT NULL,
    "TransactionDate" timestamp without time zone DEFAULT '0001-01-01 00:00:00'::timestamp without time zone NOT NULL
);


ALTER TABLE public."Departments" OWNER TO employee;

--
-- TOC entry 199 (class 1259 OID 24854)
-- Name: Departments_Dept_Id_seq; Type: SEQUENCE; Schema: public; Owner: employee
--

CREATE SEQUENCE public."Departments_Dept_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Departments_Dept_Id_seq" OWNER TO employee;

--
-- TOC entry 3673 (class 0 OID 0)
-- Dependencies: 199
-- Name: Departments_Dept_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: employee
--

ALTER SEQUENCE public."Departments_Dept_Id_seq" OWNED BY public."Departments"."Dept_Id";


--
-- TOC entry 219 (class 1259 OID 24997)
-- Name: Directorates; Type: TABLE; Schema: public; Owner: employee
--

CREATE TABLE public."Directorates" (
    "Directorate_Id" integer NOT NULL,
    "Directorate_Name" character varying(255) NOT NULL,
    "Directorate_Country" text,
    "Directorate_Address" text,
    "Directorate_Status" boolean DEFAULT false NOT NULL,
    "TransactionDate" timestamp without time zone DEFAULT '0001-01-01 00:00:00'::timestamp without time zone NOT NULL
);


ALTER TABLE public."Directorates" OWNER TO employee;

--
-- TOC entry 218 (class 1259 OID 24995)
-- Name: Directorates_Directorate_Id_seq; Type: SEQUENCE; Schema: public; Owner: employee
--

CREATE SEQUENCE public."Directorates_Directorate_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Directorates_Directorate_Id_seq" OWNER TO employee;

--
-- TOC entry 3674 (class 0 OID 0)
-- Dependencies: 218
-- Name: Directorates_Directorate_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: employee
--

ALTER SEQUENCE public."Directorates_Directorate_Id_seq" OWNED BY public."Directorates"."Directorate_Id";


--
-- TOC entry 213 (class 1259 OID 24969)
-- Name: EmployeeCountries; Type: TABLE; Schema: public; Owner: employee
--

CREATE TABLE public."EmployeeCountries" (
    "EmpCountry_Id" integer NOT NULL,
    "EmpCountry_Name" character varying(255) NOT NULL,
    "Country_Status" boolean DEFAULT false NOT NULL,
    "TransactionDate" timestamp without time zone DEFAULT '0001-01-01 00:00:00'::timestamp without time zone NOT NULL
);


ALTER TABLE public."EmployeeCountries" OWNER TO employee;

--
-- TOC entry 212 (class 1259 OID 24967)
-- Name: EmployeeCountries_EmpCountry_Id_seq; Type: SEQUENCE; Schema: public; Owner: employee
--

CREATE SEQUENCE public."EmployeeCountries_EmpCountry_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."EmployeeCountries_EmpCountry_Id_seq" OWNER TO employee;

--
-- TOC entry 3675 (class 0 OID 0)
-- Dependencies: 212
-- Name: EmployeeCountries_EmpCountry_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: employee
--

ALTER SEQUENCE public."EmployeeCountries_EmpCountry_Id_seq" OWNED BY public."EmployeeCountries"."EmpCountry_Id";


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
-- TOC entry 3676 (class 0 OID 0)
-- Dependencies: 201
-- Name: Employees_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: employee
--

ALTER SEQUENCE public."Employees_Id_seq" OWNED BY public."Employees"."Id";


--
-- TOC entry 246 (class 1259 OID 25188)
-- Name: ExternalPersonsTypes; Type: TABLE; Schema: public; Owner: employee
--

CREATE TABLE public."ExternalPersonsTypes" (
    "ExternalPersonsType_Id" integer NOT NULL,
    "ExternalPersonsType_Name" character varying(255) NOT NULL,
    "ExternalPersonsType_Status" boolean NOT NULL,
    "TransactionDate" timestamp without time zone NOT NULL
);


ALTER TABLE public."ExternalPersonsTypes" OWNER TO employee;

--
-- TOC entry 245 (class 1259 OID 25186)
-- Name: ExternalPersonsTypes_ExternalPersonsType_Id_seq; Type: SEQUENCE; Schema: public; Owner: employee
--

CREATE SEQUENCE public."ExternalPersonsTypes_ExternalPersonsType_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."ExternalPersonsTypes_ExternalPersonsType_Id_seq" OWNER TO employee;

--
-- TOC entry 3677 (class 0 OID 0)
-- Dependencies: 245
-- Name: ExternalPersonsTypes_ExternalPersonsType_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: employee
--

ALTER SEQUENCE public."ExternalPersonsTypes_ExternalPersonsType_Id_seq" OWNED BY public."ExternalPersonsTypes"."ExternalPersonsType_Id";


--
-- TOC entry 255 (class 1259 OID 33520)
-- Name: FiscalYears; Type: TABLE; Schema: public; Owner: employee
--

CREATE TABLE public."FiscalYears" (
    "Year_Id" text NOT NULL,
    "Year_Name" character varying(255) NOT NULL,
    "Year_Status" boolean NOT NULL,
    "TransactionDate" timestamp without time zone NOT NULL,
    "Year_Id_Iter" integer DEFAULT 0 NOT NULL
);


ALTER TABLE public."FiscalYears" OWNER TO employee;

--
-- TOC entry 215 (class 1259 OID 24977)
-- Name: Genders; Type: TABLE; Schema: public; Owner: employee
--

CREATE TABLE public."Genders" (
    "Gender_Id" integer NOT NULL,
    "Gender_Name" character varying(255) NOT NULL,
    "Gender_Status" boolean DEFAULT false NOT NULL,
    "TransactionDate" timestamp without time zone DEFAULT '0001-01-01 00:00:00'::timestamp without time zone NOT NULL
);


ALTER TABLE public."Genders" OWNER TO employee;

--
-- TOC entry 214 (class 1259 OID 24975)
-- Name: Genders_Gender_Id_seq; Type: SEQUENCE; Schema: public; Owner: employee
--

CREATE SEQUENCE public."Genders_Gender_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Genders_Gender_Id_seq" OWNER TO employee;

--
-- TOC entry 3678 (class 0 OID 0)
-- Dependencies: 214
-- Name: Genders_Gender_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: employee
--

ALTER SEQUENCE public."Genders_Gender_Id_seq" OWNED BY public."Genders"."Gender_Id";


--
-- TOC entry 248 (class 1259 OID 33385)
-- Name: LeadershipStatus; Type: TABLE; Schema: public; Owner: employee
--

CREATE TABLE public."LeadershipStatus" (
    "LeadStatus_Id" integer NOT NULL,
    "LeadStatus_Name" character varying(255) NOT NULL,
    "LeadStatus_Status" boolean NOT NULL,
    "TransactionDate" timestamp without time zone NOT NULL
);


ALTER TABLE public."LeadershipStatus" OWNER TO employee;

--
-- TOC entry 247 (class 1259 OID 33383)
-- Name: LeadershipStatus_LeadStatus_Id_seq; Type: SEQUENCE; Schema: public; Owner: employee
--

CREATE SEQUENCE public."LeadershipStatus_LeadStatus_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."LeadershipStatus_LeadStatus_Id_seq" OWNER TO employee;

--
-- TOC entry 3679 (class 0 OID 0)
-- Dependencies: 247
-- Name: LeadershipStatus_LeadStatus_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: employee
--

ALTER SEQUENCE public."LeadershipStatus_LeadStatus_Id_seq" OWNED BY public."LeadershipStatus"."LeadStatus_Id";


--
-- TOC entry 237 (class 1259 OID 25087)
-- Name: ParticipantTypes; Type: TABLE; Schema: public; Owner: employee
--

CREATE TABLE public."ParticipantTypes" (
    "ParticipantType_Id" integer NOT NULL,
    "ParticipantType_Name" character varying(255) NOT NULL,
    "ParticipantType_Status" boolean NOT NULL,
    "TransactionDate" timestamp without time zone NOT NULL
);


ALTER TABLE public."ParticipantTypes" OWNER TO employee;

--
-- TOC entry 236 (class 1259 OID 25085)
-- Name: ParticipantTypes_ParticipantType_Id_seq; Type: SEQUENCE; Schema: public; Owner: employee
--

CREATE SEQUENCE public."ParticipantTypes_ParticipantType_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."ParticipantTypes_ParticipantType_Id_seq" OWNER TO employee;

--
-- TOC entry 3680 (class 0 OID 0)
-- Dependencies: 236
-- Name: ParticipantTypes_ParticipantType_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: employee
--

ALTER SEQUENCE public."ParticipantTypes_ParticipantType_Id_seq" OWNED BY public."ParticipantTypes"."ParticipantType_Id";


--
-- TOC entry 254 (class 1259 OID 33512)
-- Name: ProjectProgrammeMappingStatus; Type: TABLE; Schema: public; Owner: employee
--

CREATE TABLE public."ProjectProgrammeMappingStatus" (
    "ProStatus_Id" integer NOT NULL,
    "ProStatus_Name" character varying(255) NOT NULL,
    "ProStatus_Status" boolean NOT NULL,
    "TransactionDate" timestamp without time zone NOT NULL
);


ALTER TABLE public."ProjectProgrammeMappingStatus" OWNER TO employee;

--
-- TOC entry 253 (class 1259 OID 33510)
-- Name: ProjectProgrammeMappingStatus_ProStatus_Id_seq; Type: SEQUENCE; Schema: public; Owner: employee
--

CREATE SEQUENCE public."ProjectProgrammeMappingStatus_ProStatus_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."ProjectProgrammeMappingStatus_ProStatus_Id_seq" OWNER TO employee;

--
-- TOC entry 3681 (class 0 OID 0)
-- Dependencies: 253
-- Name: ProjectProgrammeMappingStatus_ProStatus_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: employee
--

ALTER SEQUENCE public."ProjectProgrammeMappingStatus_ProStatus_Id_seq" OWNED BY public."ProjectProgrammeMappingStatus"."ProStatus_Id";


--
-- TOC entry 217 (class 1259 OID 24985)
-- Name: StaffRankSteps; Type: TABLE; Schema: public; Owner: employee
--

CREATE TABLE public."StaffRankSteps" (
    "StaffRankStep_Id" integer NOT NULL,
    "StaffRankStep_Name" character varying(255) NOT NULL,
    "StaffRankStep_Status" boolean DEFAULT false NOT NULL,
    "TransactionDate" timestamp without time zone DEFAULT '0001-01-01 00:00:00'::timestamp without time zone NOT NULL
);


ALTER TABLE public."StaffRankSteps" OWNER TO employee;

--
-- TOC entry 216 (class 1259 OID 24983)
-- Name: StaffRankSteps_StaffRankStep_Id_seq; Type: SEQUENCE; Schema: public; Owner: employee
--

CREATE SEQUENCE public."StaffRankSteps_StaffRankStep_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."StaffRankSteps_StaffRankStep_Id_seq" OWNER TO employee;

--
-- TOC entry 3682 (class 0 OID 0)
-- Dependencies: 216
-- Name: StaffRankSteps_StaffRankStep_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: employee
--

ALTER SEQUENCE public."StaffRankSteps_StaffRankStep_Id_seq" OWNED BY public."StaffRankSteps"."StaffRankStep_Id";


--
-- TOC entry 204 (class 1259 OID 24878)
-- Name: StaffRanks; Type: TABLE; Schema: public; Owner: employee
--

CREATE TABLE public."StaffRanks" (
    "StaffRank_Id" integer NOT NULL,
    "StaffRank_Name" character varying(255) NOT NULL,
    "StaffRank_Status" boolean DEFAULT false NOT NULL,
    "TransactionDate" timestamp without time zone DEFAULT '0001-01-01 00:00:00'::timestamp without time zone NOT NULL
);


ALTER TABLE public."StaffRanks" OWNER TO employee;

--
-- TOC entry 203 (class 1259 OID 24876)
-- Name: StaffRanks_StaffRank_Id_seq; Type: SEQUENCE; Schema: public; Owner: employee
--

CREATE SEQUENCE public."StaffRanks_StaffRank_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."StaffRanks_StaffRank_Id_seq" OWNER TO employee;

--
-- TOC entry 3683 (class 0 OID 0)
-- Dependencies: 203
-- Name: StaffRanks_StaffRank_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: employee
--

ALTER SEQUENCE public."StaffRanks_StaffRank_Id_seq" OWNED BY public."StaffRanks"."StaffRank_Id";


--
-- TOC entry 221 (class 1259 OID 25008)
-- Name: Titles; Type: TABLE; Schema: public; Owner: employee
--

CREATE TABLE public."Titles" (
    "Title_Id" integer NOT NULL,
    "Title_Name" character varying(255) NOT NULL,
    "Title_Status" boolean DEFAULT false NOT NULL,
    "TransactionDate" timestamp without time zone DEFAULT '0001-01-01 00:00:00'::timestamp without time zone NOT NULL
);


ALTER TABLE public."Titles" OWNER TO employee;

--
-- TOC entry 220 (class 1259 OID 25006)
-- Name: Titles_Title_Id_seq; Type: SEQUENCE; Schema: public; Owner: employee
--

CREATE SEQUENCE public."Titles_Title_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Titles_Title_Id_seq" OWNER TO employee;

--
-- TOC entry 3684 (class 0 OID 0)
-- Dependencies: 220
-- Name: Titles_Title_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: employee
--

ALTER SEQUENCE public."Titles_Title_Id_seq" OWNED BY public."Titles"."Title_Id";


--
-- TOC entry 263 (class 1259 OID 33588)
-- Name: TransAUDAProgrammaticOutcomeSessionals; Type: TABLE; Schema: public; Owner: employee
--

CREATE TABLE public."TransAUDAProgrammaticOutcomeSessionals" (
    "Transaction_Id" text NOT NULL,
    "ProgrammaticOutcome_Id" integer NOT NULL,
    "ProgrammaticOutcome" text,
    "TransactionDate" timestamp without time zone NOT NULL
);


ALTER TABLE public."TransAUDAProgrammaticOutcomeSessionals" OWNER TO employee;

--
-- TOC entry 264 (class 1259 OID 33596)
-- Name: TransAUDAProgrammaticOutputMaps; Type: TABLE; Schema: public; Owner: employee
--

CREATE TABLE public."TransAUDAProgrammaticOutputMaps" (
    "Transaction_Id" text NOT NULL,
    "ProgrammaticOutput_Id" integer NOT NULL,
    "ProgrammaticOutput" text,
    "TransactionDate" timestamp without time zone NOT NULL,
    "ProgrammaticOutcome_Id" integer DEFAULT 0 NOT NULL
);


ALTER TABLE public."TransAUDAProgrammaticOutputMaps" OWNER TO employee;

--
-- TOC entry 267 (class 1259 OID 33625)
-- Name: TransAnnualWPAUDAOutcomeExplains; Type: TABLE; Schema: public; Owner: employee
--

CREATE TABLE public."TransAnnualWPAUDAOutcomeExplains" (
    "Transaction_Id" text NOT NULL,
    "TransAnnualWPMaster_Id" text,
    "TransAnnualWP_AUDAOutcomeExplain" text,
    "TransactionDate" timestamp without time zone NOT NULL
);


ALTER TABLE public."TransAnnualWPAUDAOutcomeExplains" OWNER TO employee;

--
-- TOC entry 260 (class 1259 OID 33563)
-- Name: TransAnnualWPAUDAOutputExplains; Type: TABLE; Schema: public; Owner: employee
--

CREATE TABLE public."TransAnnualWPAUDAOutputExplains" (
    "Transaction_Id" text NOT NULL,
    "TransAnnualWPMaster_Id" text,
    "TransAnnualWP_AUDAOutputExplain" text,
    "TransactionDate" timestamp without time zone NOT NULL
);


ALTER TABLE public."TransAnnualWPAUDAOutputExplains" OWNER TO employee;

--
-- TOC entry 258 (class 1259 OID 33547)
-- Name: TransAnnualWPActivitys; Type: TABLE; Schema: public; Owner: employee
--

CREATE TABLE public."TransAnnualWPActivitys" (
    "Transaction_Id" text NOT NULL,
    "TransAnnualWPMaster_Id" text,
    "TransAnnualWP_Activity" text,
    "PerformedBy" integer NOT NULL,
    "TransactionDate" timestamp without time zone NOT NULL,
    "PerformedByName" text
);


ALTER TABLE public."TransAnnualWPActivitys" OWNER TO employee;

--
-- TOC entry 256 (class 1259 OID 33528)
-- Name: TransAnnualWPMasters; Type: TABLE; Schema: public; Owner: employee
--

CREATE TABLE public."TransAnnualWPMasters" (
    "Transaction_Id" text NOT NULL,
    "Employee_Id" integer NOT NULL,
    "IdentityUserId" text,
    "FiscalYear" text,
    "Submitted" boolean NOT NULL,
    "Queries" boolean NOT NULL,
    "Approved" boolean NOT NULL,
    "Status" text,
    "TransactionDate" timestamp without time zone NOT NULL,
    "Year_Id_Iter" integer DEFAULT 0 NOT NULL
);


ALTER TABLE public."TransAnnualWPMasters" OWNER TO employee;

--
-- TOC entry 268 (class 1259 OID 33633)
-- Name: TransAnnualWPOutcomes; Type: TABLE; Schema: public; Owner: employee
--

CREATE TABLE public."TransAnnualWPOutcomes" (
    "Transaction_Id" text NOT NULL,
    "TransAnnualWPMaster_Id" text,
    "TransAnnualWP_Outcome" text,
    "TransactionDate" timestamp without time zone NOT NULL,
    "Iter_Id" integer DEFAULT 0 NOT NULL
);


ALTER TABLE public."TransAnnualWPOutcomes" OWNER TO employee;

--
-- TOC entry 261 (class 1259 OID 33571)
-- Name: TransAnnualWPOutputs; Type: TABLE; Schema: public; Owner: employee
--

CREATE TABLE public."TransAnnualWPOutputs" (
    "Transaction_Id" text NOT NULL,
    "TransAnnualWPMaster_Id" text,
    "TransAnnualWP_Output" text,
    "TransactionDate" timestamp without time zone NOT NULL,
    "Iter_Id" integer DEFAULT 0 NOT NULL
);


ALTER TABLE public."TransAnnualWPOutputs" OWNER TO employee;

--
-- TOC entry 265 (class 1259 OID 33609)
-- Name: TransAnnualWPProgrammaticOutcomes; Type: TABLE; Schema: public; Owner: employee
--

CREATE TABLE public."TransAnnualWPProgrammaticOutcomes" (
    "Transaction_Id" text NOT NULL,
    "TransAnnualWPMaster_Id" text,
    "ProgrammaticOutcome_Id" integer NOT NULL,
    "ProgrammaticOutcome" text,
    "TransactionDate" timestamp without time zone NOT NULL
);


ALTER TABLE public."TransAnnualWPProgrammaticOutcomes" OWNER TO employee;

--
-- TOC entry 266 (class 1259 OID 33617)
-- Name: TransAnnualWPProgrammaticOutputs; Type: TABLE; Schema: public; Owner: employee
--

CREATE TABLE public."TransAnnualWPProgrammaticOutputs" (
    "Transaction_Id" text NOT NULL,
    "TransAnnualWPMaster_Id" text,
    "ProgrammaticOutput_Id" integer NOT NULL,
    "ProgrammaticOutput" text,
    "TransactionDate" timestamp without time zone NOT NULL
);


ALTER TABLE public."TransAnnualWPProgrammaticOutputs" OWNER TO employee;

--
-- TOC entry 257 (class 1259 OID 33536)
-- Name: TransAnnualWPProjects; Type: TABLE; Schema: public; Owner: employee
--

CREATE TABLE public."TransAnnualWPProjects" (
    "Transaction_Id" text NOT NULL,
    "TransAnnualWPMaster_Id" text,
    "Project_Id" integer NOT NULL,
    "Project_Name" text,
    "TransactionDate" timestamp without time zone NOT NULL
);


ALTER TABLE public."TransAnnualWPProjects" OWNER TO employee;

--
-- TOC entry 259 (class 1259 OID 33555)
-- Name: TransAnnualWPTransitions; Type: TABLE; Schema: public; Owner: employee
--

CREATE TABLE public."TransAnnualWPTransitions" (
    "Transaction_Id" text NOT NULL,
    "TransAnnualWPMaster_Id" text,
    "TransAnnualWP_State" text,
    "PerformedBy" integer NOT NULL,
    "TransactionDate" timestamp without time zone NOT NULL,
    "PerformedByName" text
);


ALTER TABLE public."TransAnnualWPTransitions" OWNER TO employee;

--
-- TOC entry 262 (class 1259 OID 33579)
-- Name: TransAuditRecords; Type: TABLE; Schema: public; Owner: employee
--

CREATE TABLE public."TransAuditRecords" (
    "Transaction_Id" text NOT NULL,
    "TransactionName" text,
    "PerformedBy" integer NOT NULL,
    "PerformedByName" text,
    "IPAddress" text,
    "TransactionDate" timestamp without time zone NOT NULL
);


ALTER TABLE public."TransAuditRecords" OWNER TO employee;

--
-- TOC entry 240 (class 1259 OID 25135)
-- Name: TransCEOs; Type: TABLE; Schema: public; Owner: employee
--

CREATE TABLE public."TransCEOs" (
    "Transaction_Id" text NOT NULL,
    "Head_StaffNumber" text,
    "Head_Status" text,
    "Show_Status" boolean NOT NULL,
    "TransactionDate" timestamp without time zone NOT NULL,
    "Employee_Id" integer DEFAULT 0 NOT NULL,
    "Head_Status_Id" integer DEFAULT 0 NOT NULL
);


ALTER TABLE public."TransCEOs" OWNER TO employee;

--
-- TOC entry 241 (class 1259 OID 25143)
-- Name: TransDirectorateHeads; Type: TABLE; Schema: public; Owner: employee
--

CREATE TABLE public."TransDirectorateHeads" (
    "Transaction_Id" text NOT NULL,
    "Directorate_Id" integer NOT NULL,
    "Head_StaffNumber" text,
    "Head_Status" text,
    "Show_Status" boolean NOT NULL,
    "TransactionDate" timestamp without time zone NOT NULL,
    "Employee_Id" integer DEFAULT 0 NOT NULL,
    "Head_Status_Id" integer DEFAULT 0 NOT NULL
);


ALTER TABLE public."TransDirectorateHeads" OWNER TO employee;

--
-- TOC entry 242 (class 1259 OID 25151)
-- Name: TransDivisionHeads; Type: TABLE; Schema: public; Owner: employee
--

CREATE TABLE public."TransDivisionHeads" (
    "Transaction_Id" text NOT NULL,
    "Dept_Id" integer NOT NULL,
    "Head_StaffNumber" text,
    "Head_Status" text,
    "Show_Status" boolean NOT NULL,
    "TransactionDate" timestamp without time zone NOT NULL,
    "Employee_Id" integer DEFAULT 0 NOT NULL,
    "Head_Status_Id" integer DEFAULT 0 NOT NULL
);


ALTER TABLE public."TransDivisionHeads" OWNER TO employee;

--
-- TOC entry 251 (class 1259 OID 33494)
-- Name: TransProgrammeDivisionMappings; Type: TABLE; Schema: public; Owner: employee
--

CREATE TABLE public."TransProgrammeDivisionMappings" (
    "Transaction_Id" text NOT NULL,
    "Programme_Id" integer NOT NULL,
    "Division_Id" integer NOT NULL,
    "Directorate_Id" integer NOT NULL,
    "Programme_Status" text,
    "Show_Status" boolean NOT NULL,
    "TransactionDate" timestamp without time zone NOT NULL
);


ALTER TABLE public."TransProgrammeDivisionMappings" OWNER TO employee;

--
-- TOC entry 243 (class 1259 OID 25159)
-- Name: TransProgrammeHeads; Type: TABLE; Schema: public; Owner: employee
--

CREATE TABLE public."TransProgrammeHeads" (
    "Transaction_Id" text NOT NULL,
    "Programme_Id" integer NOT NULL,
    "Head_StaffNumber" text,
    "Head_Status" text,
    "Show_Status" boolean NOT NULL,
    "TransactionDate" timestamp without time zone NOT NULL,
    "Employee_Id" integer DEFAULT 0 NOT NULL,
    "Head_Status_Id" integer DEFAULT 0 NOT NULL,
    "ProgDivMapTrans_Id" text
);


ALTER TABLE public."TransProgrammeHeads" OWNER TO employee;

--
-- TOC entry 250 (class 1259 OID 33486)
-- Name: TransProgrammeUnitStaffMappings; Type: TABLE; Schema: public; Owner: employee
--

CREATE TABLE public."TransProgrammeUnitStaffMappings" (
    "Transaction_Id" text NOT NULL,
    "Staff_Number" text,
    "Employee_Id" integer NOT NULL,
    "UnitOrProgramme_Id" integer NOT NULL,
    "Category" text,
    "PrimaryUnitOrProgramme" boolean NOT NULL,
    "Show_Status" boolean NOT NULL,
    "TransactionDate" timestamp without time zone NOT NULL,
    "ProgDivMapTrans_Id" text,
    "Division_Id" integer DEFAULT 0 NOT NULL
);


ALTER TABLE public."TransProgrammeUnitStaffMappings" OWNER TO employee;

--
-- TOC entry 252 (class 1259 OID 33502)
-- Name: TransProjectDivisionMappings; Type: TABLE; Schema: public; Owner: employee
--

CREATE TABLE public."TransProjectDivisionMappings" (
    "Transaction_Id" text NOT NULL,
    "Project_Id" integer NOT NULL,
    "Division_Id" integer NOT NULL,
    "Directorate_Id" integer NOT NULL,
    "Project_Status" text,
    "Show_Status" boolean NOT NULL,
    "TransactionDate" timestamp without time zone NOT NULL
);


ALTER TABLE public."TransProjectDivisionMappings" OWNER TO employee;

--
-- TOC entry 249 (class 1259 OID 33398)
-- Name: TransSysAdmins; Type: TABLE; Schema: public; Owner: employee
--

CREATE TABLE public."TransSysAdmins" (
    "Transaction_Id" text NOT NULL,
    "Employee_Id" integer NOT NULL,
    "Head_StaffNumber" text,
    "Head_Status" text,
    "Head_Status_Id" integer NOT NULL,
    "Show_Status" boolean NOT NULL,
    "TransactionDate" timestamp without time zone NOT NULL
);


ALTER TABLE public."TransSysAdmins" OWNER TO employee;

--
-- TOC entry 244 (class 1259 OID 25167)
-- Name: TransUnitHeads; Type: TABLE; Schema: public; Owner: employee
--

CREATE TABLE public."TransUnitHeads" (
    "Transaction_Id" text NOT NULL,
    "Unit_Id" integer NOT NULL,
    "Head_StaffNumber" text,
    "Head_Status" text,
    "Show_Status" boolean NOT NULL,
    "TransactionDate" timestamp without time zone NOT NULL,
    "Employee_Id" integer DEFAULT 0 NOT NULL
);


ALTER TABLE public."TransUnitHeads" OWNER TO employee;

--
-- TOC entry 196 (class 1259 OID 24833)
-- Name: __EFMigrationsHistory; Type: TABLE; Schema: public; Owner: employee
--

CREATE TABLE public."__EFMigrationsHistory" (
    "MigrationId" character varying(150) NOT NULL,
    "ProductVersion" character varying(32) NOT NULL
);


ALTER TABLE public."__EFMigrationsHistory" OWNER TO employee;

--
-- TOC entry 3324 (class 2604 OID 25052)
-- Name: AUDAProgrammaticOutcomes ProgrammaticOutcome_Id; Type: DEFAULT; Schema: public; Owner: employee
--

ALTER TABLE ONLY public."AUDAProgrammaticOutcomes" ALTER COLUMN "ProgrammaticOutcome_Id" SET DEFAULT nextval('public."AUDAProgrammaticOutcomes_ProgrammaticOutcome_Id_seq"'::regclass);


--
-- TOC entry 3325 (class 2604 OID 25063)
-- Name: AUDAProgrammaticOutputs ProgrammaticOutput_Id; Type: DEFAULT; Schema: public; Owner: employee
--

ALTER TABLE ONLY public."AUDAProgrammaticOutputs" ALTER COLUMN "ProgrammaticOutput_Id" SET DEFAULT nextval('public."AUDAProgrammaticOutputs_ProgrammaticOutput_Id_seq"'::regclass);


--
-- TOC entry 3318 (class 2604 OID 25030)
-- Name: AUDAProgrammes Programme_Id; Type: DEFAULT; Schema: public; Owner: employee
--

ALTER TABLE ONLY public."AUDAProgrammes" ALTER COLUMN "Programme_Id" SET DEFAULT nextval('public."AUDAProgrammes_Programme_Id_seq"'::regclass);


--
-- TOC entry 3321 (class 2604 OID 25041)
-- Name: AUDAProjects Project_Id; Type: DEFAULT; Schema: public; Owner: employee
--

ALTER TABLE ONLY public."AUDAProjects" ALTER COLUMN "Project_Id" SET DEFAULT nextval('public."AUDAProjects_Project_Id_seq"'::regclass);


--
-- TOC entry 3315 (class 2604 OID 25019)
-- Name: AUDAUnits Unit_Id; Type: DEFAULT; Schema: public; Owner: employee
--

ALTER TABLE ONLY public."AUDAUnits" ALTER COLUMN "Unit_Id" SET DEFAULT nextval('public."AUDAUnits_Unit_Id_seq"'::regclass);


--
-- TOC entry 3326 (class 2604 OID 25074)
-- Name: ActivityTypes Activity_Id; Type: DEFAULT; Schema: public; Owner: employee
--

ALTER TABLE ONLY public."ActivityTypes" ALTER COLUMN "Activity_Id" SET DEFAULT nextval('public."ActivityTypes_Activity_Id_seq"'::regclass);


--
-- TOC entry 3298 (class 2604 OID 24889)
-- Name: AspNetRoleClaims Id; Type: DEFAULT; Schema: public; Owner: employee
--

ALTER TABLE ONLY public."AspNetRoleClaims" ALTER COLUMN "Id" SET DEFAULT nextval('public."AspNetRoleClaims_Id_seq"'::regclass);


--
-- TOC entry 3299 (class 2604 OID 24905)
-- Name: AspNetUserClaims Id; Type: DEFAULT; Schema: public; Owner: employee
--

ALTER TABLE ONLY public."AspNetUserClaims" ALTER COLUMN "Id" SET DEFAULT nextval('public."AspNetUserClaims_Id_seq"'::regclass);


--
-- TOC entry 3329 (class 2604 OID 25129)
-- Name: CostCatelogues Cost_Id; Type: DEFAULT; Schema: public; Owner: employee
--

ALTER TABLE ONLY public."CostCatelogues" ALTER COLUMN "Cost_Id" SET DEFAULT nextval('public."CostCatelogue_Cost_Id_seq"'::regclass);


--
-- TOC entry 3327 (class 2604 OID 25082)
-- Name: DSATypes DSA_Id; Type: DEFAULT; Schema: public; Owner: employee
--

ALTER TABLE ONLY public."DSATypes" ALTER COLUMN "DSA_Id" SET DEFAULT nextval('public."DSATypes_DSA_Id_seq"'::regclass);


--
-- TOC entry 3286 (class 2604 OID 24859)
-- Name: Departments Dept_Id; Type: DEFAULT; Schema: public; Owner: employee
--

ALTER TABLE ONLY public."Departments" ALTER COLUMN "Dept_Id" SET DEFAULT nextval('public."Departments_Dept_Id_seq"'::regclass);


--
-- TOC entry 3309 (class 2604 OID 25000)
-- Name: Directorates Directorate_Id; Type: DEFAULT; Schema: public; Owner: employee
--

ALTER TABLE ONLY public."Directorates" ALTER COLUMN "Directorate_Id" SET DEFAULT nextval('public."Directorates_Directorate_Id_seq"'::regclass);


--
-- TOC entry 3300 (class 2604 OID 24972)
-- Name: EmployeeCountries EmpCountry_Id; Type: DEFAULT; Schema: public; Owner: employee
--

ALTER TABLE ONLY public."EmployeeCountries" ALTER COLUMN "EmpCountry_Id" SET DEFAULT nextval('public."EmployeeCountries_EmpCountry_Id_seq"'::regclass);


--
-- TOC entry 3290 (class 2604 OID 24870)
-- Name: Employees Id; Type: DEFAULT; Schema: public; Owner: employee
--

ALTER TABLE ONLY public."Employees" ALTER COLUMN "Id" SET DEFAULT nextval('public."Employees_Id_seq"'::regclass);


--
-- TOC entry 3339 (class 2604 OID 25191)
-- Name: ExternalPersonsTypes ExternalPersonsType_Id; Type: DEFAULT; Schema: public; Owner: employee
--

ALTER TABLE ONLY public."ExternalPersonsTypes" ALTER COLUMN "ExternalPersonsType_Id" SET DEFAULT nextval('public."ExternalPersonsTypes_ExternalPersonsType_Id_seq"'::regclass);


--
-- TOC entry 3303 (class 2604 OID 24980)
-- Name: Genders Gender_Id; Type: DEFAULT; Schema: public; Owner: employee
--

ALTER TABLE ONLY public."Genders" ALTER COLUMN "Gender_Id" SET DEFAULT nextval('public."Genders_Gender_Id_seq"'::regclass);


--
-- TOC entry 3340 (class 2604 OID 33388)
-- Name: LeadershipStatus LeadStatus_Id; Type: DEFAULT; Schema: public; Owner: employee
--

ALTER TABLE ONLY public."LeadershipStatus" ALTER COLUMN "LeadStatus_Id" SET DEFAULT nextval('public."LeadershipStatus_LeadStatus_Id_seq"'::regclass);


--
-- TOC entry 3328 (class 2604 OID 25090)
-- Name: ParticipantTypes ParticipantType_Id; Type: DEFAULT; Schema: public; Owner: employee
--

ALTER TABLE ONLY public."ParticipantTypes" ALTER COLUMN "ParticipantType_Id" SET DEFAULT nextval('public."ParticipantTypes_ParticipantType_Id_seq"'::regclass);


--
-- TOC entry 3342 (class 2604 OID 33515)
-- Name: ProjectProgrammeMappingStatus ProStatus_Id; Type: DEFAULT; Schema: public; Owner: employee
--

ALTER TABLE ONLY public."ProjectProgrammeMappingStatus" ALTER COLUMN "ProStatus_Id" SET DEFAULT nextval('public."ProjectProgrammeMappingStatus_ProStatus_Id_seq"'::regclass);


--
-- TOC entry 3306 (class 2604 OID 24988)
-- Name: StaffRankSteps StaffRankStep_Id; Type: DEFAULT; Schema: public; Owner: employee
--

ALTER TABLE ONLY public."StaffRankSteps" ALTER COLUMN "StaffRankStep_Id" SET DEFAULT nextval('public."StaffRankSteps_StaffRankStep_Id_seq"'::regclass);


--
-- TOC entry 3295 (class 2604 OID 24881)
-- Name: StaffRanks StaffRank_Id; Type: DEFAULT; Schema: public; Owner: employee
--

ALTER TABLE ONLY public."StaffRanks" ALTER COLUMN "StaffRank_Id" SET DEFAULT nextval('public."StaffRanks_StaffRank_Id_seq"'::regclass);


--
-- TOC entry 3312 (class 2604 OID 25011)
-- Name: Titles Title_Id; Type: DEFAULT; Schema: public; Owner: employee
--

ALTER TABLE ONLY public."Titles" ALTER COLUMN "Title_Id" SET DEFAULT nextval('public."Titles_Title_Id_seq"'::regclass);


--
-- TOC entry 3617 (class 0 OID 25049)
-- Dependencies: 229
-- Data for Name: AUDAProgrammaticOutcomes; Type: TABLE DATA; Schema: public; Owner: employee
--

INSERT INTO public."AUDAProgrammaticOutcomes" ("ProgrammaticOutcome_Id", "ProgrammaticOutcome", "ProgrammaticOutcome_Status", "Record_TransactionDate") VALUES (1, 'Economic Transformation through Industrialization and Integration', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutcomes" ("ProgrammaticOutcome_Id", "ProgrammaticOutcome", "ProgrammaticOutcome_Status", "Record_TransactionDate") VALUES (2, 'Food Security and Healthy Society Achieved with Inclusive Employment and Incomes', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutcomes" ("ProgrammaticOutcome_Id", "ProgrammaticOutcome", "ProgrammaticOutcome_Status", "Record_TransactionDate") VALUES (3, 'Transformation led by Augmented Human Capital and Capable Institutions', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutcomes" ("ProgrammaticOutcome_Id", "ProgrammaticOutcome", "ProgrammaticOutcome_Status", "Record_TransactionDate") VALUES (4, 'Climate, Energy and Water Smart Societies', true, '2019-09-12 00:00:00');


--
-- TOC entry 3619 (class 0 OID 25060)
-- Dependencies: 231
-- Data for Name: AUDAProgrammaticOutputs; Type: TABLE DATA; Schema: public; Owner: employee
--

INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (1, 1, 'Advocacy and promotion of Kaizen ', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (2, 1, 'STI web platform developed and awareness raised among key users', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (3, 1, 'STI training and raised awareness on R&D innovation indicators', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (4, 1, 'A system for measuring and tracking the utilization and awareness of STI indicators developed and adopted', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (5, 1, 'Knowledge products on Innovation Policy Comprehensiveness, Informal Sector innovations and National Innovation Systems produced', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (6, 1, 'A web-based framework for assessing and measuring innovation potential of a country developed', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (7, 1, 'STI, Education and Health indicators integrated into the African Union policy and decision making processes', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (8, 1, 'ASTII Impact evaluated', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (9, 1, 'ASTII Communication and  Knowledge products disseminated', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (10, 1, 'SGCs'' Capacity to design and monitor research programs strengthened  by developing a guide to best practice', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (11, 1, 'Private sector participation in PIDA projects is enhanced', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (12, 1, 'An Aggregated Financial Guarantee Mechanism for PIDA  projects developed and implemented', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (13, 1, 'Strengthening the North African transmission line and creation regional energy market platform', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (14, 1, 'Updated status of the Egypt, Sudan, Ethiopia, Kenya Interconnectors and implementation supported', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (15, 1, 'Synergistic integration of development of Batoka, Inga III, ZTK projects ', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (16, 1, 'West and Central Africa Power pools engaged  on PIDA projects', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (17, 1, 'Cross-border Cybersecurity Infrastructure and Coordination mechanisms established', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (18, 1, 'ICT Infrastructure (PIDA ICT Missing Links & Regional Data Centers) studies completed and implementation plans developed', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (19, 1, 'Resources mobilised for Entrepreneurship & digital economy (innovation and SME development) project', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (20, 1, 'Trade facilitation and integrated access to markets approach piloted in countries', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (21, 1, 'Data and information collected on PIDA projects ', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (22, 1, 'Communication of PIDA PAP implementation to stakeholders is enhanced', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (23, 1, 'PIDA Week 2018 organized ', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (24, 1, 'RECs enabling environment and need assessment conducted (PIDA CAP projects)', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (25, 1, 'Pre-feasibility and Feasibility Study Approved (PIDA CAP projects)', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (26, 1, 'Priority projects reviewed, selected packaged and showcased (PIDA CAP projects)', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (27, 1, 'Financial Structuring Plan Developed and Project Funding Approved (PIDA CAP projects)', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (28, 1, 'Strengthened technical capacity for PIDA implementation at RECs (PIDA CAP projects)', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (29, 1, 'Technical advisory services in early stage project preparation (pre-feasibility to feasibility) provided to RECs ', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (30, 1, 'Improved SDM financial  status and strategic outreach', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (31, 1, 'Traffic Light System (TLS) Operationalized', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (32, 1, 'MoveAfrica Status Report developed', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (33, 1, 'MoveAfrica results produced and Showcased', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (34, 1, 'OSBP sourcebook domesticated in West and Central Africa and mechanisms  for dissemination and experience sharing established', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (35, 1, 'Established monitoring framework of TLS and OSBP projects and impacts', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (36, 1, 'Established framework of human capital development of OSBP practitioners, in RECs and countries', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (37, 1, 'High Speed Rail Detailed Scoping Study (DSS) Process completed', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (38, 1, 'HSRNP Pre-Feasibility/Feasibility Studies resources mobilized and blended financing toolkit developed', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (39, 1, 'National readiness for implementation of PIDA/TAH Missing links: TAH 8 Lagos (Yaoundé-Bangui-Kisangani - Kampala-Mombasa); TAH 4 Cairo (Khartoum-Juba-Kampala-Cape Town); TAH 6 Ndjamena – Khartoum -Djibouti); ', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (40, 1, 'Program for Infrastructural Development of African Island States developed (Cape Verde, Sao Tome & Principe, Madagascar, Comoros, Seychelles, Mauritius)', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (41, 1, 'Policy and Regulatory frameworks for PIDA projects', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (42, 1, 'PIDA Impacts on job creation and economic growth produced', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (43, 1, 'Comprehensive Project Status Report for all PICI Projects published', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (44, 1, 'Technical Support and working missions to all PICI States and M&E study for the PICI undertaken. ', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (45, 1, 'Knowledge and information on extractive industry are produced and shared', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (46, 1, 'Selected countries (Central African Republic and Zambia) senior officials (25 each country) have been trained on tax policies and contract negotiation and a network of African experts on Extractive Industry established', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (47, 1, 'Agro industry framework developed: Four Pillars (Production systems – productivity and value addition, Food Safety systems and Biosecurity systems)', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (48, 2, 'Created an enabling environment for agreed AMRH outcomes to be achieved within each implementing REC', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (49, 2, 'The AMRH performance indicators disseminated to EAC, ECOWAS, SADC and all partners to inform policy and lesson sharing across RECs', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (50, 2, 'Facilitated effective implementation and accountability at AU, REC and country levels through targeted training and working with policy makers, media, legal experts, parliamentary health committees  and media', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (51, 2, 'Facilitated establishment of an AMRH fundholding facility to support sustainable financing of NMRAs, RECs and AMRH', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (52, 2, 'Provide Secretariat functions to the AMRH Initiative', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (53, 2, 'Impact Evaluation of the  of the effectiveness of the NEPAD Multi-Country Partnership Model for Nursing and Midwifery Postgraduate Education Development in Africa', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (54, 2, 'Adoption of the AESA Platform by AU Heads of State and Government and STC for science technology and innovation', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (55, 2, 'Evidence for supporting STI Policy Making at the continental, regional and national levels provided to policy makers', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (56, 2, '114 experts trained in different field of Occupational Health and Safety Mine Inspection', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (57, 2, 'Two operational research studies on TB and Occupational Health finalised', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (58, 2, 'Two communities of practice on TB and Occupational Health, and TB financing functional', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (59, 2, 'Regional guideline/model on (a) Mine Health and Safety Legislation; and (b) Mine inception and OH clinical Protocols for occupational health drafted', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (60, 2, '20 communicators on TB and occupational lung diseases trained and TB and Occupational Lung Disease control information developed and disseminated', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (61, 2, 'TB Project regionally coordinated and Technical Assistance provided', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (62, 2, 'Enhanced understanding and greater awareness on gene drive and their applications for human health among regulators from all AU Member States', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (63, 2, 'Regulators empowered in the understanding of risk assessment and risk management procedures and tools for contained use and field releases of genetically engineered insects         ', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (64, 2, 'Regulators adopt best practices for insect containment facilities', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (65, 2, 'An enabling regulatory environment created for emerging vector control technologies', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (66, 2, 'Regulators capable of administratively handling, reviewing and making decisions on applications', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (67, 2, 'Capacitated regulators to review dossiers for limited release to supportive of technology development and regulation', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (68, 2, 'Better understanding of the implications of the Cartagena Convention and its Protocols on Africa’s biotechnology development and management', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (69, 2, 'Capacitated regulators capable of and conducting monitoring and inspections for regulatory compliance', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (70, 2, 'And  sharing experiences and best practices', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (71, 2, 'Four countries have in place national action plans on youth employment and skills development in rural economic value chains', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (72, 2, 'Four countries pilot a catalytic set of interventions through the ASTF to support the design, development  and implementation of –Youth Capacity Development Projects', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (73, 2, 'Policy Dialogue on ATVET improved', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (74, 2, 'ASTF technically and managerially supported', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (75, 2, 'Institutional conditions for the implementation of Gender- sensitive ATVET exist in the pilot countries (Benin, Burkina Faso, Ghana, Kenya, Malawi, Namibia, Rwanda, Sierra Leone, South Africa, Togo, Tunisia, Uganda)', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (76, 2, 'Agricultural Qualification measures in ATVET Institutions are adapted to the needs of Women in the pilot countries (Benin, Burkina Faso, Ghana, Kenya, Malawi, Namibia, Rwanda, Sierra Leone, South Africa, Togo, Tunisia, Uganda)', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (77, 2, 'Good practices of gender-sensitive ATVET are nationally and internationally disseminated through Africa-wide exchange of good practices and joint learning among the pilot countries taking into account the RECs and AUC/NPCA', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (78, 2, 'Value chain actors, including farmers, with a specific focus on Women and youth have been trained in ATVET according to the CBT approach along the developed curricula (Namibia, Rwanda, Sierra Leone, South Africa, Tunisia, and Uganda)', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (79, 2, 'Offers adapted to the needs of women in rural regions for market-oriented qualification for entrepreneurship in the agricultural and food sector are implemented in Focused countries (Benin, Burkina Faso, Ghana, Kenya, Malawi, Namibia, Rwanda, Sierra Leone, South Africa, Togo, Tunisia, Uganda)', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (80, 2, 'Built Functional Biosafety Regulatory Framework in Ghana, Kenya, Malawi, Nigeria, Uganda, Ethiopia, Mozambique, Swaziland, Tanzania, Zambia, Burkina Faso, Senegal, Sudan, Namibia, Togo', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (81, 2, 'Accelerated implementation of BIAWE in ECOWAS and COMESA member States ', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (82, 2, 'Enhanced gender mainstreaming to project cycle management ', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (83, 2, 'Gender mainstreaming for Inclusive Infrastructure Development', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (84, 2, 'Evaluation of Gender Program', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (85, 2, 'Operationalized and coordinated Initiative Food and Nutrition in Africa (IFNA)', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (86, 2, 'Enhanced  Nutrition Education, Advocacy and Research in Africa', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (87, 2, 'Harnessed the potential of nutrition underutilized foods (indigenous foods)', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (88, 2, 'High Level Commitment mobilized', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (89, 2, 'Private sector mainstreamed into NAIPS', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (90, 2, 'Biennial Review of the African Agriculture Transformation Scorecard developed (Request HE Prime Minister of Federal Democratic Republic of Ethiopia', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (91, 2, 'CAADP technically and managerially supported', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (92, 2, 'Strengthened country systems of implementation  and increased national budget allocation to agriculture', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (93, 2, 'Strengthened and harmonized system for tracking and measurement of agriculture transformation at national, regional and continental levels', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (94, 2, 'Increased private sector investment in the prioritized commodity value chains', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (95, 2, 'Functional CAADP coordination mechanisms in place across levels', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (96, 2, 'Resource mobilized to CAADP implementation support', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (97, 2, 'Multi-partner institutional arrangements for country support on Small enterprise development established', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (98, 2, 'National Self-Assessment Toolkit on generation of employment and skills development developed', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (99, 2, 'Skills partnership development and resource mobilization undertaken', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (100, 2, 'Provided with checklist & tools to mainstream skills development and job creation within project delivery', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (101, 2, 'Knowledge products on employment, skills and entrepreneurship development are developed and disseminated to key decision makers', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (102, 2, '3 short term curricula in A2063 delivery areas are adapted and staff and country senior officials are trained', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (103, 2, 'SIFA innovative approaches of employment oriented TVET for pilot countries developed', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (104, 2, 'Skills Initiative for Africa launched, monitored and aligned with regional and bilateral programmes', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (105, 2, 'The institutional capacities of the NPCA in M&E, technical advice and knowledge management on TVET improved', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (106, 3, 'STI, Education and Health indicators integrated into the African Union policy and decision making processes', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (107, 3, 'Establish a support network for expanded use of the earth observation (ATLAS) across all regions ', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (108, 3, 'Examine and consider support to strengthen local capacity for generating quality data on rural development', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (109, 3, 'Develop an Implementation and Performance Management Framework for the Blue Print of rural transformation in Africa', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (110, 3, 'Gap Analysis: Country Capacity Development Assessments for Effective Implementation of AU Agenda 2063 and Agenda 2030 (10 Pilot Countries)                      ', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (111, 3, 'Institutional strengthening for national and regional executing entities for the application of TOCA ', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (112, 3, 'Country Results Frameworks and 1st Ten Year Implementation Plan for Agenda 2063 – Monitoring and Evaluation', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (113, 3, 'Implementation of 2015-2025 RECs CD Plan', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (114, 3, 'Standard Citizen Engagement tools and mechanisms for NEPAD horizontal Application (Parliaments, CSOs, Private Sector, Tertiary Institutions)', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (115, 3, 'Development of Strategic Plan (2018 to 2023) and associated implementation plans including partnership and resources mobilization strategies', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (116, 3, 'Joint planning and review mechanisms enhanced between AUC and NPCA management teams', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (117, 3, 'Advanced and digitalized Standard Operating Procedures in line with value based organizational systems  ', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (118, 3, 'Development of enterprise cross agency data inventory and policy framework', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (119, 3, 'Development of strategic foresight analysis report for the continent', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (120, 3, 'Enhanced portal and knowledge platform', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (121, 3, 'Enhanced internal capacity both technical and managerial of staff ', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (122, 3, 'Organizational Development of AUDA operating model developed and implemented', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (123, 3, 'Enterprise risks management application and diffusion', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (124, 3, 'Senior management partnership and resources mobilization support (Office of the CEO)', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (125, 4, 'Financial closure of 6MW Gambia wind project', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (126, 4, 'Financial closure of solar application of public buildings in Madagascar', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (127, 4, 'Financial closure for Tanzania small islands mini-grids', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (128, 4, 'Energy Audits for heavy industries in Rwanda and Tanzania', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (129, 4, 'Identification of Energy Efficiency and Renewable Energy projects in Uganda and Burundi', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (130, 4, 'Information on the structure, products and value of intra-regional fish trade in food security generated and made available to stakeholders', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (131, 4, 'A set of recommendations on policies, certification procedures, standards and regulations, well embedded in national and regional fisheries, agricultural, trade and food security policy frameworks', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (132, 4, 'Increased capacities for trade amongst private sector associations, in particular of women fish processors and traders and aquaculture producers, to make better use of expanding trade opportunities through competitive small and medium scale enterprises', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (133, 4, 'Adoption and implementation of appropriate policies, certification procedures, standards and regulations by key stakeholders participating in intra-regional trade in four selected trade corridors in Africa ', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (134, 4, 'Institutional capacity and regulatory frameworks for sustainable fisheries management improved', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (135, 4, 'Sustainable fisheries management in small-scale fisheries including inland water bodies enhanced', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (136, 4, 'Institutional capacity and regulatory framework for aquaculture development strengthened', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (137, 4, 'Advocacy, Lessons Learning for knowledge sharing and Capacity for increased investments and fostering reforms in the fisheries sector enhanced', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (138, 4, 'Provided technical support and backstopping at country, RECs and continental levels', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (139, 4, 'Documentation, Communication and Knowledge products', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (140, 4, 'Fishery projects supported both technically and managerially ', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (141, 4, 'Elaboration of feasibility studies for infrastructure development and complementary measures', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (142, 4, 'Africa Food Insecurity Risks Management (AFIRM)  knowledge products developed and mainstreamed into National and Regional Development Plans and CAADP implementation', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (143, 4, 'AFIRM technically and managerially supported', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (144, 4, 'Increased support for Regional Coalition Building', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (145, 4, 'Increased support for mutual learning among countries', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (146, 4, 'Increased support for countries on Sustainable Land Management  investment planning', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (147, 4, 'Land governance dynamics and impact on sustainable development and equity analyzed', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (148, 4, 'Mainstreaming land in investment programs', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (149, 4, 'Land policy dialogues and dissemination conducted', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (150, 4, 'Land policy Project implementation supported', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (151, 4, 'Regional Coalition building (including M&E)', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (152, 4, 'Regional knowledge management (Including M&E) - Stakeholders more effectively collecting, analyzing, managing and accessing data and information', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (153, 4, 'Supported SLWM country programs', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (154, 4, 'SLWM Project implementation supported', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (155, 4, 'Increased country commitments to African Forest Landscape Restoration Initiative (AFR100)', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (156, 4, 'Enable improved regional and global coordination', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (157, 4, 'Mobilized AFR 100 national actions', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (158, 4, 'Strengthened AFR100 Secretariat', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (159, 4, 'Countries supported to access climate financing', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (160, 4, 'NEPAD Accreditation to Green Climate Fund completed', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (161, 4, 'Agriculture Nationally Determined Contributions (NDC) s implementation strengthened', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (162, 4, 'CSA Facilitated and promoted through Peer learning and advocacy', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (163, 4, 'Regional Flagship projects implementation coordinated and supported', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (164, 4, 'Africa Environmental Partnership Platform (AEPP) fully functional', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (165, 4, 'Climate agriculture Project implementation supported', true, '2019-09-12 00:00:00');
INSERT INTO public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") VALUES (166, 4, 'Climate smart irrigation framework developed (application of renewable energy to unblock productivity, minimizing climate shocks, and water conservation)', true, '2019-09-12 00:00:00');


--
-- TOC entry 3613 (class 0 OID 25027)
-- Dependencies: 225
-- Data for Name: AUDAProgrammes; Type: TABLE DATA; Schema: public; Owner: employee
--

INSERT INTO public."AUDAProgrammes" ("Programme_Id", "Programme_Dept_Id", "Programme_Directorate_Id", "Programme_Name", "Programme_Country", "Programme_Address", "Programme_Status", "TransactionDate") VALUES (1, 8, 3, 'Climate Resilience ', 'South Africa', '231 15th Rd, Midrand, Johannesburg, 1685', true, '2019-09-24 00:00:00');
INSERT INTO public."AUDAProgrammes" ("Programme_Id", "Programme_Dept_Id", "Programme_Directorate_Id", "Programme_Name", "Programme_Country", "Programme_Address", "Programme_Status", "TransactionDate") VALUES (2, 8, 3, 'Energy Water Food Systems ', 'South Africa', '232 15th Rd, Midrand, Johannesburg, 1685', true, '2019-09-24 00:00:00');
INSERT INTO public."AUDAProgrammes" ("Programme_Id", "Programme_Dept_Id", "Programme_Directorate_Id", "Programme_Name", "Programme_Country", "Programme_Address", "Programme_Status", "TransactionDate") VALUES (3, 8, 3, 'Smart Places ', 'South Africa', '233 15th Rd, Midrand, Johannesburg, 1685', true, '2019-09-24 00:00:00');
INSERT INTO public."AUDAProgrammes" ("Programme_Id", "Programme_Dept_Id", "Programme_Directorate_Id", "Programme_Name", "Programme_Country", "Programme_Address", "Programme_Status", "TransactionDate") VALUES (4, 8, 3, 'Agriculture Transformation  ', 'South Africa', '234 15th Rd, Midrand, Johannesburg, 1685', true, '2019-09-24 00:00:00');
INSERT INTO public."AUDAProgrammes" ("Programme_Id", "Programme_Dept_Id", "Programme_Directorate_Id", "Programme_Name", "Programme_Country", "Programme_Address", "Programme_Status", "TransactionDate") VALUES (5, 9, 3, 'Health', 'South Africa', '235 15th Rd, Midrand, Johannesburg, 1685', true, '2019-09-24 00:00:00');
INSERT INTO public."AUDAProgrammes" ("Programme_Id", "Programme_Dept_Id", "Programme_Directorate_Id", "Programme_Name", "Programme_Country", "Programme_Address", "Programme_Status", "TransactionDate") VALUES (6, 9, 3, 'Nutrition ', 'South Africa', '236 15th Rd, Midrand, Johannesburg, 1685', true, '2019-09-24 00:00:00');
INSERT INTO public."AUDAProgrammes" ("Programme_Id", "Programme_Dept_Id", "Programme_Directorate_Id", "Programme_Name", "Programme_Country", "Programme_Address", "Programme_Status", "TransactionDate") VALUES (7, 9, 3, 'Education', 'South Africa', '237 15th Rd, Midrand, Johannesburg, 1685', true, '2019-09-24 00:00:00');
INSERT INTO public."AUDAProgrammes" ("Programme_Id", "Programme_Dept_Id", "Programme_Directorate_Id", "Programme_Name", "Programme_Country", "Programme_Address", "Programme_Status", "TransactionDate") VALUES (8, 9, 3, 'Employment and Skills ', 'South Africa', '238 15th Rd, Midrand, Johannesburg, 1685', true, '2019-09-24 00:00:00');
INSERT INTO public."AUDAProgrammes" ("Programme_Id", "Programme_Dept_Id", "Programme_Directorate_Id", "Programme_Name", "Programme_Country", "Programme_Address", "Programme_Status", "TransactionDate") VALUES (9, 9, 3, 'Gender Development ', 'South Africa', '239 15th Rd, Midrand, Johannesburg, 1685', true, '2019-09-24 00:00:00');
INSERT INTO public."AUDAProgrammes" ("Programme_Id", "Programme_Dept_Id", "Programme_Directorate_Id", "Programme_Name", "Programme_Country", "Programme_Address", "Programme_Status", "TransactionDate") VALUES (10, 10, 3, 'Regional Infrastructure and Connectivity', 'South Africa', '240 15th Rd, Midrand, Johannesburg, 1685', true, '2019-09-24 00:00:00');
INSERT INTO public."AUDAProgrammes" ("Programme_Id", "Programme_Dept_Id", "Programme_Directorate_Id", "Programme_Name", "Programme_Country", "Programme_Address", "Programme_Status", "TransactionDate") VALUES (11, 10, 3, 'Markets and Trade', 'South Africa', '241 15th Rd, Midrand, Johannesburg, 1685', true, '2019-09-24 00:00:00');
INSERT INTO public."AUDAProgrammes" ("Programme_Id", "Programme_Dept_Id", "Programme_Directorate_Id", "Programme_Name", "Programme_Country", "Programme_Address", "Programme_Status", "TransactionDate") VALUES (12, 10, 3, 'Public Private Engagement  ', 'South Africa', '242 15th Rd, Midrand, Johannesburg, 1685', true, '2019-09-24 00:00:00');
INSERT INTO public."AUDAProgrammes" ("Programme_Id", "Programme_Dept_Id", "Programme_Directorate_Id", "Programme_Name", "Programme_Country", "Programme_Address", "Programme_Status", "TransactionDate") VALUES (13, 11, 3, 'Manufacturing and Services ', 'South Africa', '243 15th Rd, Midrand, Johannesburg, 1685', true, '2019-09-24 00:00:00');
INSERT INTO public."AUDAProgrammes" ("Programme_Id", "Programme_Dept_Id", "Programme_Directorate_Id", "Programme_Name", "Programme_Country", "Programme_Address", "Programme_Status", "TransactionDate") VALUES (14, 11, 3, 'Blue Economy', 'South Africa', '244 15th Rd, Midrand, Johannesburg, 1685', true, '2019-09-24 00:00:00');
INSERT INTO public."AUDAProgrammes" ("Programme_Id", "Programme_Dept_Id", "Programme_Directorate_Id", "Programme_Name", "Programme_Country", "Programme_Address", "Programme_Status", "TransactionDate") VALUES (15, 11, 3, 'Digitalization and Technology ', 'South Africa', '245 15th Rd, Midrand, Johannesburg, 1685', true, '2019-09-24 00:00:00');


--
-- TOC entry 3615 (class 0 OID 25038)
-- Dependencies: 227
-- Data for Name: AUDAProjects; Type: TABLE DATA; Schema: public; Owner: employee
--

INSERT INTO public."AUDAProjects" ("Project_Id", "SAP_Id", "Project_Dept_Id", "Project_Unit_Id", "Project_Programme_Id", "Project_Directorate_Id", "Project_Name", "Project_Country", "Project_Address", "Project_Status", "TransactionDate") VALUES (1, 0, 0, 0, 0, 0, 'Capacity Development', NULL, NULL, true, '2019-10-07 00:00:00');
INSERT INTO public."AUDAProjects" ("Project_Id", "SAP_Id", "Project_Dept_Id", "Project_Unit_Id", "Project_Programme_Id", "Project_Directorate_Id", "Project_Name", "Project_Country", "Project_Address", "Project_Status", "TransactionDate") VALUES (2, 0, 0, 0, 0, 0, 'Sustainable Tourism (Youth Empowerment)', NULL, NULL, true, '2019-10-07 00:00:00');
INSERT INTO public."AUDAProjects" ("Project_Id", "SAP_Id", "Project_Dept_Id", "Project_Unit_Id", "Project_Programme_Id", "Project_Directorate_Id", "Project_Name", "Project_Country", "Project_Address", "Project_Status", "TransactionDate") VALUES (3, 0, 0, 0, 0, 0, 'Rural Futures - Operationalization of RF', NULL, NULL, true, '2019-10-07 00:00:00');
INSERT INTO public."AUDAProjects" ("Project_Id", "SAP_Id", "Project_Dept_Id", "Project_Unit_Id", "Project_Programme_Id", "Project_Directorate_Id", "Project_Name", "Project_Country", "Project_Address", "Project_Status", "TransactionDate") VALUES (4, 0, 0, 0, 0, 0, 'Communication', NULL, NULL, true, '2019-10-07 00:00:00');
INSERT INTO public."AUDAProjects" ("Project_Id", "SAP_Id", "Project_Dept_Id", "Project_Unit_Id", "Project_Programme_Id", "Project_Directorate_Id", "Project_Name", "Project_Country", "Project_Address", "Project_Status", "TransactionDate") VALUES (5, 0, 0, 0, 0, 0, 'Resources Mobilization and Partnerships', NULL, NULL, true, '2019-10-07 00:00:00');
INSERT INTO public."AUDAProjects" ("Project_Id", "SAP_Id", "Project_Dept_Id", "Project_Unit_Id", "Project_Programme_Id", "Project_Directorate_Id", "Project_Name", "Project_Country", "Project_Address", "Project_Status", "TransactionDate") VALUES (6, 0, 0, 0, 0, 0, 'Integrated Approach to Development', NULL, NULL, true, '2019-10-07 00:00:00');
INSERT INTO public."AUDAProjects" ("Project_Id", "SAP_Id", "Project_Dept_Id", "Project_Unit_Id", "Project_Programme_Id", "Project_Directorate_Id", "Project_Name", "Project_Country", "Project_Address", "Project_Status", "TransactionDate") VALUES (7, 0, 0, 0, 0, 0, 'Office of The Chief Executive Officer', NULL, NULL, true, '2019-10-07 00:00:00');
INSERT INTO public."AUDAProjects" ("Project_Id", "SAP_Id", "Project_Dept_Id", "Project_Unit_Id", "Project_Programme_Id", "Project_Directorate_Id", "Project_Name", "Project_Country", "Project_Address", "Project_Status", "TransactionDate") VALUES (8, 0, 0, 0, 0, 0, 'Program Development', NULL, NULL, true, '2019-10-07 00:00:00');
INSERT INTO public."AUDAProjects" ("Project_Id", "SAP_Id", "Project_Dept_Id", "Project_Unit_Id", "Project_Programme_Id", "Project_Directorate_Id", "Project_Name", "Project_Country", "Project_Address", "Project_Status", "TransactionDate") VALUES (9, 0, 0, 0, 0, 0, 'Provided Strategic and Supervision', NULL, NULL, true, '2019-10-07 00:00:00');
INSERT INTO public."AUDAProjects" ("Project_Id", "SAP_Id", "Project_Dept_Id", "Project_Unit_Id", "Project_Programme_Id", "Project_Directorate_Id", "Project_Name", "Project_Country", "Project_Address", "Project_Status", "TransactionDate") VALUES (10, 0, 0, 0, 0, 0, 'Private Sector Support ', NULL, NULL, true, '2019-10-07 00:00:00');
INSERT INTO public."AUDAProjects" ("Project_Id", "SAP_Id", "Project_Dept_Id", "Project_Unit_Id", "Project_Programme_Id", "Project_Directorate_Id", "Project_Name", "Project_Country", "Project_Address", "Project_Status", "TransactionDate") VALUES (11, 0, 0, 0, 0, 0, 'OneStopShop ', NULL, NULL, true, '2019-10-07 00:00:00');
INSERT INTO public."AUDAProjects" ("Project_Id", "SAP_Id", "Project_Dept_Id", "Project_Unit_Id", "Project_Programme_Id", "Project_Directorate_Id", "Project_Name", "Project_Country", "Project_Address", "Project_Status", "TransactionDate") VALUES (12, 0, 0, 0, 0, 0, 'ATVET (W)', NULL, NULL, true, '2019-10-07 00:00:00');
INSERT INTO public."AUDAProjects" ("Project_Id", "SAP_Id", "Project_Dept_Id", "Project_Unit_Id", "Project_Programme_Id", "Project_Directorate_Id", "Project_Name", "Project_Country", "Project_Address", "Project_Status", "TransactionDate") VALUES (13, 0, 0, 0, 0, 0, 'BIAWE ', NULL, NULL, true, '2019-10-07 00:00:00');
INSERT INTO public."AUDAProjects" ("Project_Id", "SAP_Id", "Project_Dept_Id", "Project_Unit_Id", "Project_Programme_Id", "Project_Directorate_Id", "Project_Name", "Project_Country", "Project_Address", "Project_Status", "TransactionDate") VALUES (14, 0, 0, 0, 0, 0, 'Base(Mapping   African   water   bodies)', NULL, NULL, true, '2019-10-07 00:00:00');
INSERT INTO public."AUDAProjects" ("Project_Id", "SAP_Id", "Project_Dept_Id", "Project_Unit_Id", "Project_Programme_Id", "Project_Directorate_Id", "Project_Name", "Project_Country", "Project_Address", "Project_Status", "TransactionDate") VALUES (15, 0, 0, 0, 0, 0, 'AKI', NULL, NULL, true, '2019-10-07 00:00:00');
INSERT INTO public."AUDAProjects" ("Project_Id", "SAP_Id", "Project_Dept_Id", "Project_Unit_Id", "Project_Programme_Id", "Project_Directorate_Id", "Project_Name", "Project_Country", "Project_Address", "Project_Status", "TransactionDate") VALUES (16, 0, 0, 0, 0, 0, 'Project Implementation Support', NULL, NULL, true, '2019-10-07 00:00:00');
INSERT INTO public."AUDAProjects" ("Project_Id", "SAP_Id", "Project_Dept_Id", "Project_Unit_Id", "Project_Programme_Id", "Project_Directorate_Id", "Project_Name", "Project_Country", "Project_Address", "Project_Status", "TransactionDate") VALUES (17, 0, 0, 0, 0, 0, 'Foresight', NULL, NULL, true, '2019-10-07 00:00:00');
INSERT INTO public."AUDAProjects" ("Project_Id", "SAP_Id", "Project_Dept_Id", "Project_Unit_Id", "Project_Programme_Id", "Project_Directorate_Id", "Project_Name", "Project_Country", "Project_Address", "Project_Status", "TransactionDate") VALUES (18, 0, 0, 0, 0, 0, 'Disaster Support', NULL, NULL, true, '2019-10-07 00:00:00');
INSERT INTO public."AUDAProjects" ("Project_Id", "SAP_Id", "Project_Dept_Id", "Project_Unit_Id", "Project_Programme_Id", "Project_Directorate_Id", "Project_Name", "Project_Country", "Project_Address", "Project_Status", "TransactionDate") VALUES (19, 0, 0, 0, 0, 0, 'STEM Education Pipeline Development Ince', NULL, NULL, true, '2019-10-07 00:00:00');
INSERT INTO public."AUDAProjects" ("Project_Id", "SAP_Id", "Project_Dept_Id", "Project_Unit_Id", "Project_Programme_Id", "Project_Directorate_Id", "Project_Name", "Project_Country", "Project_Address", "Project_Status", "TransactionDate") VALUES (20, 0, 0, 0, 0, 0, 'ASTII PHASE 4', NULL, NULL, true, '2019-10-07 00:00:00');
INSERT INTO public."AUDAProjects" ("Project_Id", "SAP_Id", "Project_Dept_Id", "Project_Unit_Id", "Project_Programme_Id", "Project_Directorate_Id", "Project_Name", "Project_Country", "Project_Address", "Project_Status", "TransactionDate") VALUES (21, 0, 0, 0, 0, 0, 'AMRH', NULL, NULL, true, '2019-10-07 00:00:00');
INSERT INTO public."AUDAProjects" ("Project_Id", "SAP_Id", "Project_Dept_Id", "Project_Unit_Id", "Project_Programme_Id", "Project_Directorate_Id", "Project_Name", "Project_Country", "Project_Address", "Project_Status", "TransactionDate") VALUES (22, 0, 0, 0, 0, 0, 'Southern Africa Tuberculosis and Health', NULL, NULL, true, '2019-10-07 00:00:00');
INSERT INTO public."AUDAProjects" ("Project_Id", "SAP_Id", "Project_Dept_Id", "Project_Unit_Id", "Project_Programme_Id", "Project_Directorate_Id", "Project_Name", "Project_Country", "Project_Address", "Project_Status", "TransactionDate") VALUES (23, 0, 0, 0, 0, 0, 'ASTF ', NULL, NULL, true, '2019-10-07 00:00:00');
INSERT INTO public."AUDAProjects" ("Project_Id", "SAP_Id", "Project_Dept_Id", "Project_Unit_Id", "Project_Programme_Id", "Project_Directorate_Id", "Project_Name", "Project_Country", "Project_Address", "Project_Status", "TransactionDate") VALUES (24, 0, 0, 0, 0, 0, 'ABNE', NULL, NULL, true, '2019-10-07 00:00:00');
INSERT INTO public."AUDAProjects" ("Project_Id", "SAP_Id", "Project_Dept_Id", "Project_Unit_Id", "Project_Programme_Id", "Project_Directorate_Id", "Project_Name", "Project_Country", "Project_Address", "Project_Status", "TransactionDate") VALUES (25, 0, 0, 0, 0, 0, 'Alliance Excellence In Science in Africa', NULL, NULL, true, '2019-10-07 00:00:00');
INSERT INTO public."AUDAProjects" ("Project_Id", "SAP_Id", "Project_Dept_Id", "Project_Unit_Id", "Project_Programme_Id", "Project_Directorate_Id", "Project_Name", "Project_Country", "Project_Address", "Project_Status", "TransactionDate") VALUES (26, 0, 0, 0, 0, 0, 'Tuberculosis in Mining Sector', NULL, NULL, true, '2019-10-07 00:00:00');
INSERT INTO public."AUDAProjects" ("Project_Id", "SAP_Id", "Project_Dept_Id", "Project_Unit_Id", "Project_Programme_Id", "Project_Directorate_Id", "Project_Name", "Project_Country", "Project_Address", "Project_Status", "TransactionDate") VALUES (27, 0, 0, 0, 0, 0, 'PIDA Implementation Support', NULL, NULL, true, '2019-10-07 00:00:00');
INSERT INTO public."AUDAProjects" ("Project_Id", "SAP_Id", "Project_Dept_Id", "Project_Unit_Id", "Project_Programme_Id", "Project_Directorate_Id", "Project_Name", "Project_Country", "Project_Address", "Project_Status", "TransactionDate") VALUES (28, 0, 0, 0, 0, 0, 'PIDA Preparation Support', NULL, NULL, true, '2019-10-07 00:00:00');
INSERT INTO public."AUDAProjects" ("Project_Id", "SAP_Id", "Project_Dept_Id", "Project_Unit_Id", "Project_Programme_Id", "Project_Directorate_Id", "Project_Name", "Project_Country", "Project_Address", "Project_Status", "TransactionDate") VALUES (29, 0, 0, 0, 0, 0, 'Digital for Rural Transformation', NULL, NULL, true, '2019-10-07 00:00:00');
INSERT INTO public."AUDAProjects" ("Project_Id", "SAP_Id", "Project_Dept_Id", "Project_Unit_Id", "Project_Programme_Id", "Project_Directorate_Id", "Project_Name", "Project_Country", "Project_Address", "Project_Status", "TransactionDate") VALUES (30, 0, 0, 0, 0, 0, 'Integrated energy security programme', NULL, NULL, true, '2019-10-07 00:00:00');
INSERT INTO public."AUDAProjects" ("Project_Id", "SAP_Id", "Project_Dept_Id", "Project_Unit_Id", "Project_Programme_Id", "Project_Directorate_Id", "Project_Name", "Project_Country", "Project_Address", "Project_Status", "TransactionDate") VALUES (31, 0, 0, 0, 0, 0, 'CAADP PP meeting', NULL, NULL, true, '2019-10-07 00:00:00');
INSERT INTO public."AUDAProjects" ("Project_Id", "SAP_Id", "Project_Dept_Id", "Project_Unit_Id", "Project_Programme_Id", "Project_Directorate_Id", "Project_Name", "Project_Country", "Project_Address", "Project_Status", "TransactionDate") VALUES (32, 0, 0, 0, 0, 0, 'Extractive Industry', NULL, NULL, true, '2019-10-07 00:00:00');
INSERT INTO public."AUDAProjects" ("Project_Id", "SAP_Id", "Project_Dept_Id", "Project_Unit_Id", "Project_Programme_Id", "Project_Directorate_Id", "Project_Name", "Project_Country", "Project_Address", "Project_Status", "TransactionDate") VALUES (33, 0, 0, 0, 0, 0, 'Sahel Corridor Resilience Capacity Development', NULL, NULL, true, '2019-10-07 00:00:00');
INSERT INTO public."AUDAProjects" ("Project_Id", "SAP_Id", "Project_Dept_Id", "Project_Unit_Id", "Project_Programme_Id", "Project_Directorate_Id", "Project_Name", "Project_Country", "Project_Address", "Project_Status", "TransactionDate") VALUES (34, 0, 0, 0, 0, 0, 'Nutrition', NULL, NULL, true, '2019-10-07 00:00:00');
INSERT INTO public."AUDAProjects" ("Project_Id", "SAP_Id", "Project_Dept_Id", "Project_Unit_Id", "Project_Programme_Id", "Project_Directorate_Id", "Project_Name", "Project_Country", "Project_Address", "Project_Status", "TransactionDate") VALUES (35, 0, 0, 0, 0, 0, 'Establishment of Africa Climate Resilience System', NULL, NULL, true, '2019-10-07 00:00:00');
INSERT INTO public."AUDAProjects" ("Project_Id", "SAP_Id", "Project_Dept_Id", "Project_Unit_Id", "Project_Programme_Id", "Project_Directorate_Id", "Project_Name", "Project_Country", "Project_Address", "Project_Status", "TransactionDate") VALUES (36, 0, 0, 0, 0, 0, 'AFIRM ', NULL, NULL, true, '2019-10-07 00:00:00');
INSERT INTO public."AUDAProjects" ("Project_Id", "SAP_Id", "Project_Dept_Id", "Project_Unit_Id", "Project_Programme_Id", "Project_Directorate_Id", "Project_Name", "Project_Country", "Project_Address", "Project_Status", "TransactionDate") VALUES (37, 0, 0, 0, 0, 0, 'SIP (SLMRECs)', NULL, NULL, true, '2019-10-07 00:00:00');
INSERT INTO public."AUDAProjects" ("Project_Id", "SAP_Id", "Project_Dept_Id", "Project_Unit_Id", "Project_Programme_Id", "Project_Directorate_Id", "Project_Name", "Project_Country", "Project_Address", "Project_Status", "TransactionDate") VALUES (38, 0, 0, 0, 0, 0, 'AFR100', NULL, NULL, true, '2019-10-07 00:00:00');
INSERT INTO public."AUDAProjects" ("Project_Id", "SAP_Id", "Project_Dept_Id", "Project_Unit_Id", "Project_Programme_Id", "Project_Directorate_Id", "Project_Name", "Project_Country", "Project_Address", "Project_Status", "TransactionDate") VALUES (39, 0, 0, 0, 0, 0, 'AMCEN ', NULL, NULL, true, '2019-10-07 00:00:00');
INSERT INTO public."AUDAProjects" ("Project_Id", "SAP_Id", "Project_Dept_Id", "Project_Unit_Id", "Project_Programme_Id", "Project_Directorate_Id", "Project_Name", "Project_Country", "Project_Address", "Project_Status", "TransactionDate") VALUES (40, 0, 0, 0, 0, 0, 'GCCASP', NULL, NULL, true, '2019-10-07 00:00:00');
INSERT INTO public."AUDAProjects" ("Project_Id", "SAP_Id", "Project_Dept_Id", "Project_Unit_Id", "Project_Programme_Id", "Project_Directorate_Id", "Project_Name", "Project_Country", "Project_Address", "Project_Status", "TransactionDate") VALUES (41, 0, 0, 0, 0, 0, 'CSA', NULL, NULL, true, '2019-10-07 00:00:00');
INSERT INTO public."AUDAProjects" ("Project_Id", "SAP_Id", "Project_Dept_Id", "Project_Unit_Id", "Project_Programme_Id", "Project_Directorate_Id", "Project_Name", "Project_Country", "Project_Address", "Project_Status", "TransactionDate") VALUES (42, 0, 0, 0, 0, 0, 'Grow Africa', NULL, NULL, true, '2019-10-07 00:00:00');
INSERT INTO public."AUDAProjects" ("Project_Id", "SAP_Id", "Project_Dept_Id", "Project_Unit_Id", "Project_Programme_Id", "Project_Directorate_Id", "Project_Name", "Project_Country", "Project_Address", "Project_Status", "TransactionDate") VALUES (43, 0, 0, 0, 0, 0, 'Agriculture Transformation - NAIPS', NULL, NULL, true, '2019-10-07 00:00:00');
INSERT INTO public."AUDAProjects" ("Project_Id", "SAP_Id", "Project_Dept_Id", "Project_Unit_Id", "Project_Programme_Id", "Project_Directorate_Id", "Project_Name", "Project_Country", "Project_Address", "Project_Status", "TransactionDate") VALUES (44, 0, 0, 0, 0, 0, 'Integrated Water security and Irrigation', NULL, NULL, true, '2019-10-07 00:00:00');
INSERT INTO public."AUDAProjects" ("Project_Id", "SAP_Id", "Project_Dept_Id", "Project_Unit_Id", "Project_Programme_Id", "Project_Directorate_Id", "Project_Name", "Project_Country", "Project_Address", "Project_Status", "TransactionDate") VALUES (45, 0, 0, 0, 0, 0, 'Blue economy', NULL, NULL, true, '2019-10-07 00:00:00');
INSERT INTO public."AUDAProjects" ("Project_Id", "SAP_Id", "Project_Dept_Id", "Project_Unit_Id", "Project_Programme_Id", "Project_Directorate_Id", "Project_Name", "Project_Country", "Project_Address", "Project_Status", "TransactionDate") VALUES (46, 0, 0, 0, 0, 0, 'No Project', NULL, NULL, true, '2019-10-07 00:00:00');


--
-- TOC entry 3611 (class 0 OID 25016)
-- Dependencies: 223
-- Data for Name: AUDAUnits; Type: TABLE DATA; Schema: public; Owner: employee
--

INSERT INTO public."AUDAUnits" ("Unit_Id", "Unit_Dept_Id", "Unit_Directorate_Id", "Unit_Name", "Unit_Country", "Unit_Address", "TransactionDate", "Unit_Status") VALUES (1, 5, 2, 'Programming and Budgeting', 'South Africa', '230 15th Rd, Midrand, Johannesburg, 1685', '2019-09-28 00:00:00', true);
INSERT INTO public."AUDAUnits" ("Unit_Id", "Unit_Dept_Id", "Unit_Directorate_Id", "Unit_Name", "Unit_Country", "Unit_Address", "TransactionDate", "Unit_Status") VALUES (2, 5, 2, 'Programme Development and Incubation', 'South Africa', '231 15th Rd, Midrand, Johannesburg, 1685', '2019-09-28 00:00:00', true);
INSERT INTO public."AUDAUnits" ("Unit_Id", "Unit_Dept_Id", "Unit_Directorate_Id", "Unit_Name", "Unit_Country", "Unit_Address", "TransactionDate", "Unit_Status") VALUES (3, 5, 2, 'Monitoring and Reporting', 'South Africa', '232 15th Rd, Midrand, Johannesburg, 1685', '2019-09-28 00:00:00', true);
INSERT INTO public."AUDAUnits" ("Unit_Id", "Unit_Dept_Id", "Unit_Directorate_Id", "Unit_Name", "Unit_Country", "Unit_Address", "TransactionDate", "Unit_Status") VALUES (4, 6, 2, 'Statistics and Big Data', 'South Africa', '233 15th Rd, Midrand, Johannesburg, 1685', '2019-09-28 00:00:00', true);
INSERT INTO public."AUDAUnits" ("Unit_Id", "Unit_Dept_Id", "Unit_Directorate_Id", "Unit_Name", "Unit_Country", "Unit_Address", "TransactionDate", "Unit_Status") VALUES (5, 6, 2, 'Accelerator Lab', 'South Africa', '234 15th Rd, Midrand, Johannesburg, 1685', '2019-09-28 00:00:00', true);
INSERT INTO public."AUDAUnits" ("Unit_Id", "Unit_Dept_Id", "Unit_Directorate_Id", "Unit_Name", "Unit_Country", "Unit_Address", "TransactionDate", "Unit_Status") VALUES (6, 6, 2, 'Development Economics', 'South Africa', '235 15th Rd, Midrand, Johannesburg, 1685', '2019-09-28 00:00:00', true);
INSERT INTO public."AUDAUnits" ("Unit_Id", "Unit_Dept_Id", "Unit_Directorate_Id", "Unit_Name", "Unit_Country", "Unit_Address", "TransactionDate", "Unit_Status") VALUES (7, 14, 4, 'Communities of Practice', 'South Africa', '236 15th Rd, Midrand, Johannesburg, 1685', '2019-09-28 00:00:00', true);
INSERT INTO public."AUDAUnits" ("Unit_Id", "Unit_Dept_Id", "Unit_Directorate_Id", "Unit_Name", "Unit_Country", "Unit_Address", "TransactionDate", "Unit_Status") VALUES (8, 14, 4, 'Publications', 'South Africa', '237 15th Rd, Midrand, Johannesburg, 1685', '2019-09-28 00:00:00', true);
INSERT INTO public."AUDAUnits" ("Unit_Id", "Unit_Dept_Id", "Unit_Directorate_Id", "Unit_Name", "Unit_Country", "Unit_Address", "TransactionDate", "Unit_Status") VALUES (9, 14, 4, 'Knowledge Dissemination', 'South Africa', '238 15th Rd, Midrand, Johannesburg, 1685', '2019-09-28 00:00:00', true);
INSERT INTO public."AUDAUnits" ("Unit_Id", "Unit_Dept_Id", "Unit_Directorate_Id", "Unit_Name", "Unit_Country", "Unit_Address", "TransactionDate", "Unit_Status") VALUES (10, 15, 4, 'Energy and Climate Resilience', 'South Africa', '239 15th Rd, Midrand, Johannesburg, 1685', '2019-09-28 00:00:00', true);
INSERT INTO public."AUDAUnits" ("Unit_Id", "Unit_Dept_Id", "Unit_Directorate_Id", "Unit_Name", "Unit_Country", "Unit_Address", "TransactionDate", "Unit_Status") VALUES (11, 15, 4, 'Science Technology and Innovation', 'South Africa', '240 15th Rd, Midrand, Johannesburg, 1685', '2019-09-28 00:00:00', true);
INSERT INTO public."AUDAUnits" ("Unit_Id", "Unit_Dept_Id", "Unit_Directorate_Id", "Unit_Name", "Unit_Country", "Unit_Address", "TransactionDate", "Unit_Status") VALUES (12, 15, 4, 'Rural Resources and Food Systems', 'South Africa', '241 15th Rd, Midrand, Johannesburg, 1685', '2019-09-28 00:00:00', true);
INSERT INTO public."AUDAUnits" ("Unit_Id", "Unit_Dept_Id", "Unit_Directorate_Id", "Unit_Name", "Unit_Country", "Unit_Address", "TransactionDate", "Unit_Status") VALUES (13, 15, 4, 'Supply Chain and Logistics Support', 'South Africa', '242 15th Rd, Midrand, Johannesburg, 1685', '2019-09-28 00:00:00', true);
INSERT INTO public."AUDAUnits" ("Unit_Id", "Unit_Dept_Id", "Unit_Directorate_Id", "Unit_Name", "Unit_Country", "Unit_Address", "TransactionDate", "Unit_Status") VALUES (14, 15, 4, 'Human Capital and Institutions', 'South Africa', '243 15th Rd, Midrand, Johannesburg, 1685', '2019-09-28 00:00:00', true);


--
-- TOC entry 3621 (class 0 OID 25071)
-- Dependencies: 233
-- Data for Name: ActivityTypes; Type: TABLE DATA; Schema: public; Owner: employee
--

INSERT INTO public."ActivityTypes" ("Activity_Id", "Activity_Name", "ActivityType_Status", "TransactionDate") VALUES (1, 'AU STC', true, '2019-09-11 00:00:00');
INSERT INTO public."ActivityTypes" ("Activity_Id", "Activity_Name", "ActivityType_Status", "TransactionDate") VALUES (2, 'AU Summit', true, '2019-09-11 00:00:00');
INSERT INTO public."ActivityTypes" ("Activity_Id", "Activity_Name", "ActivityType_Status", "TransactionDate") VALUES (3, 'AU Visit', true, '2019-09-11 00:00:00');
INSERT INTO public."ActivityTypes" ("Activity_Id", "Activity_Name", "ActivityType_Status", "TransactionDate") VALUES (4, 'Conference', true, '2019-09-11 00:00:00');
INSERT INTO public."ActivityTypes" ("Activity_Id", "Activity_Name", "ActivityType_Status", "TransactionDate") VALUES (5, 'Consultancy Services', true, '2019-09-11 00:00:00');
INSERT INTO public."ActivityTypes" ("Activity_Id", "Activity_Name", "ActivityType_Status", "TransactionDate") VALUES (6, 'Evaluation Mission', true, '2019-09-11 00:00:00');
INSERT INTO public."ActivityTypes" ("Activity_Id", "Activity_Name", "ActivityType_Status", "TransactionDate") VALUES (7, 'Executive Council Meeting', true, '2019-09-11 00:00:00');
INSERT INTO public."ActivityTypes" ("Activity_Id", "Activity_Name", "ActivityType_Status", "TransactionDate") VALUES (8, 'Field Study', true, '2019-09-11 00:00:00');
INSERT INTO public."ActivityTypes" ("Activity_Id", "Activity_Name", "ActivityType_Status", "TransactionDate") VALUES (9, 'Field Visit', true, '2019-09-11 00:00:00');
INSERT INTO public."ActivityTypes" ("Activity_Id", "Activity_Name", "ActivityType_Status", "TransactionDate") VALUES (10, 'Finance Support', true, '2019-09-11 00:00:00');
INSERT INTO public."ActivityTypes" ("Activity_Id", "Activity_Name", "ActivityType_Status", "TransactionDate") VALUES (11, 'IT Support', true, '2019-09-11 00:00:00');
INSERT INTO public."ActivityTypes" ("Activity_Id", "Activity_Name", "ActivityType_Status", "TransactionDate") VALUES (12, 'Monitoring Mission', true, '2019-09-11 00:00:00');
INSERT INTO public."ActivityTypes" ("Activity_Id", "Activity_Name", "ActivityType_Status", "TransactionDate") VALUES (13, 'Non-Consultancy and Other Services', true, '2019-09-11 00:00:00');
INSERT INTO public."ActivityTypes" ("Activity_Id", "Activity_Name", "ActivityType_Status", "TransactionDate") VALUES (14, 'Other Procurement Support', true, '2019-09-11 00:00:00');
INSERT INTO public."ActivityTypes" ("Activity_Id", "Activity_Name", "ActivityType_Status", "TransactionDate") VALUES (15, 'PRC Meeting', true, '2019-09-11 00:00:00');
INSERT INTO public."ActivityTypes" ("Activity_Id", "Activity_Name", "ActivityType_Status", "TransactionDate") VALUES (16, 'Procurement of Goods', true, '2019-09-11 00:00:00');
INSERT INTO public."ActivityTypes" ("Activity_Id", "Activity_Name", "ActivityType_Status", "TransactionDate") VALUES (17, 'Procurement of Works', true, '2019-09-11 00:00:00');
INSERT INTO public."ActivityTypes" ("Activity_Id", "Activity_Name", "ActivityType_Status", "TransactionDate") VALUES (18, 'Resource Mobilisation', true, '2019-09-11 00:00:00');
INSERT INTO public."ActivityTypes" ("Activity_Id", "Activity_Name", "ActivityType_Status", "TransactionDate") VALUES (19, 'Scoping Mission', true, '2019-09-11 00:00:00');
INSERT INTO public."ActivityTypes" ("Activity_Id", "Activity_Name", "ActivityType_Status", "TransactionDate") VALUES (20, 'Staff Training', true, '2019-09-11 00:00:00');
INSERT INTO public."ActivityTypes" ("Activity_Id", "Activity_Name", "ActivityType_Status", "TransactionDate") VALUES (21, 'Technical Advisory to MS/REC', true, '2019-09-11 00:00:00');
INSERT INTO public."ActivityTypes" ("Activity_Id", "Activity_Name", "ActivityType_Status", "TransactionDate") VALUES (22, 'Training for MS/REC', true, '2019-09-11 00:00:00');


--
-- TOC entry 3594 (class 0 OID 24886)
-- Dependencies: 206
-- Data for Name: AspNetRoleClaims; Type: TABLE DATA; Schema: public; Owner: employee
--



--
-- TOC entry 3585 (class 0 OID 24838)
-- Dependencies: 197
-- Data for Name: AspNetRoles; Type: TABLE DATA; Schema: public; Owner: employee
--

INSERT INTO public."AspNetRoles" ("Id", "Name", "NormalizedName", "ConcurrencyStamp") VALUES ('2bb3acf8-5a50-4b4d-a22b-3cd5b3a430ed', 'Admin', 'ADMIN', '5716610f-cc75-4fa5-aa67-17d15a69481f');
INSERT INTO public."AspNetRoles" ("Id", "Name", "NormalizedName", "ConcurrencyStamp") VALUES ('4c88c7e5-32b2-4f6b-bb38-2a1072c14aae', 'Nepad Staff', 'NEPAD STAFF', 'e64b128b-e1ca-4558-b086-541c50cd80cc');
INSERT INTO public."AspNetRoles" ("Id", "Name", "NormalizedName", "ConcurrencyStamp") VALUES ('78296c56-8402-46dd-b58e-cd8c78faf93c', 'Programme Lead', 'PROGRAMME LEAD', '800669cb-7ac4-4c03-a38f-790d18b4464d');
INSERT INTO public."AspNetRoles" ("Id", "Name", "NormalizedName", "ConcurrencyStamp") VALUES ('5ab4daee-253f-42d1-a94a-4a9f359186be', 'Unit Lead', 'UNIT LEAD', '00779600-976c-4a73-bd1e-38f157e7d630');
INSERT INTO public."AspNetRoles" ("Id", "Name", "NormalizedName", "ConcurrencyStamp") VALUES ('719dfc16-cdc7-4378-aed5-1ee3dadbe09f', 'Division Head', 'DIVISION HEAD', 'd05a9255-5f76-4452-9f33-6c31aa922450');
INSERT INTO public."AspNetRoles" ("Id", "Name", "NormalizedName", "ConcurrencyStamp") VALUES ('fc76fbde-2e74-40a2-9054-cc152778fef8', 'Director', 'DIRECTOR', 'fa839222-b233-4924-94fd-5decf3028143');
INSERT INTO public."AspNetRoles" ("Id", "Name", "NormalizedName", "ConcurrencyStamp") VALUES ('7802b02d-3a05-4863-81c7-3954306c20e9', 'CEO', 'CEO', '110959c4-a773-4331-9dbb-30e97de7bee1');


--
-- TOC entry 3596 (class 0 OID 24902)
-- Dependencies: 208
-- Data for Name: AspNetUserClaims; Type: TABLE DATA; Schema: public; Owner: employee
--



--
-- TOC entry 3597 (class 0 OID 24916)
-- Dependencies: 209
-- Data for Name: AspNetUserLogins; Type: TABLE DATA; Schema: public; Owner: employee
--



--
-- TOC entry 3598 (class 0 OID 24929)
-- Dependencies: 210
-- Data for Name: AspNetUserRoles; Type: TABLE DATA; Schema: public; Owner: employee
--

INSERT INTO public."AspNetUserRoles" ("UserId", "RoleId") VALUES ('e1ea3dd3-b12b-4ad3-986b-559612ef7818', '2bb3acf8-5a50-4b4d-a22b-3cd5b3a430ed');
INSERT INTO public."AspNetUserRoles" ("UserId", "RoleId") VALUES ('456e0e1f-e6b0-40d4-bca4-e58405c84cf4', '719dfc16-cdc7-4378-aed5-1ee3dadbe09f');
INSERT INTO public."AspNetUserRoles" ("UserId", "RoleId") VALUES ('e1ea3dd3-b12b-4ad3-986b-559612ef7818', '719dfc16-cdc7-4378-aed5-1ee3dadbe09f');
INSERT INTO public."AspNetUserRoles" ("UserId", "RoleId") VALUES ('8cb59a1d-85f1-49f4-b11c-35e3f8a8dec7', '78296c56-8402-46dd-b58e-cd8c78faf93c');
INSERT INTO public."AspNetUserRoles" ("UserId", "RoleId") VALUES ('ba0a2ad8-b885-4af3-ac43-3930844541da', '78296c56-8402-46dd-b58e-cd8c78faf93c');
INSERT INTO public."AspNetUserRoles" ("UserId", "RoleId") VALUES ('e526e15d-47dd-46a4-93ea-c718a31ebc37', '78296c56-8402-46dd-b58e-cd8c78faf93c');
INSERT INTO public."AspNetUserRoles" ("UserId", "RoleId") VALUES ('d1075c1c-cb7c-480d-93c8-6931090d1f3d', '78296c56-8402-46dd-b58e-cd8c78faf93c');
INSERT INTO public."AspNetUserRoles" ("UserId", "RoleId") VALUES ('c115746d-921d-4c70-8853-c7123089c0e0', '7802b02d-3a05-4863-81c7-3954306c20e9');
INSERT INTO public."AspNetUserRoles" ("UserId", "RoleId") VALUES ('f5534c60-e2d2-4559-9447-be4214537f6c', 'fc76fbde-2e74-40a2-9054-cc152778fef8');
INSERT INTO public."AspNetUserRoles" ("UserId", "RoleId") VALUES ('0f919f24-2586-46d8-85bb-56068bbde066', '719dfc16-cdc7-4378-aed5-1ee3dadbe09f');
INSERT INTO public."AspNetUserRoles" ("UserId", "RoleId") VALUES ('426f9586-3ac6-42f3-863f-a19f3e068d05', '5ab4daee-253f-42d1-a94a-4a9f359186be');
INSERT INTO public."AspNetUserRoles" ("UserId", "RoleId") VALUES ('2c82c275-b340-45f3-86f5-4c819d4e9814', '4c88c7e5-32b2-4f6b-bb38-2a1072c14aae');
INSERT INTO public."AspNetUserRoles" ("UserId", "RoleId") VALUES ('b05d8a80-47fc-4eb0-8494-d20db97f1765', '4c88c7e5-32b2-4f6b-bb38-2a1072c14aae');
INSERT INTO public."AspNetUserRoles" ("UserId", "RoleId") VALUES ('ce777098-0692-4248-bb28-554acba8d021', '4c88c7e5-32b2-4f6b-bb38-2a1072c14aae');
INSERT INTO public."AspNetUserRoles" ("UserId", "RoleId") VALUES ('42e61067-8906-415a-b53a-6e7718a7c724', '4c88c7e5-32b2-4f6b-bb38-2a1072c14aae');


--
-- TOC entry 3599 (class 0 OID 24947)
-- Dependencies: 211
-- Data for Name: AspNetUserTokens; Type: TABLE DATA; Schema: public; Owner: employee
--



--
-- TOC entry 3586 (class 0 OID 24846)
-- Dependencies: 198
-- Data for Name: AspNetUsers; Type: TABLE DATA; Schema: public; Owner: employee
--

INSERT INTO public."AspNetUsers" ("Id", "UserName", "NormalizedUserName", "Email", "NormalizedEmail", "EmailConfirmed", "PasswordHash", "SecurityStamp", "ConcurrencyStamp", "PhoneNumber", "PhoneNumberConfirmed", "TwoFactorEnabled", "LockoutEnd", "LockoutEnabled", "AccessFailedCount", "Staff_Number", "Admin_Generated", "Employee_Id", "TransactionDate") VALUES ('456e0e1f-e6b0-40d4-bca4-e58405c84cf4', 'mohamedab@nepad.org', 'MOHAMEDAB@NEPAD.ORG', 'mohamedab@nepad.org', 'MOHAMEDAB@NEPAD.ORG', false, 'AQAAAAEAACcQAAAAEMzLivcUsKBBhY1fBBFUSVncp30qlRMlBSc/Kk8kGPj+ALNz6IKRIqleJnTQ4dRvnw==', '3QQV4ESASVH4MVFS7IN4SNXXC2BWGSAL', 'e9c5d621-be16-41b1-9bca-2107a2653dff', NULL, false, false, NULL, true, 0, '7001', false, 132, '2019-09-24 00:00:00');
INSERT INTO public."AspNetUsers" ("Id", "UserName", "NormalizedUserName", "Email", "NormalizedEmail", "EmailConfirmed", "PasswordHash", "SecurityStamp", "ConcurrencyStamp", "PhoneNumber", "PhoneNumberConfirmed", "TwoFactorEnabled", "LockoutEnd", "LockoutEnabled", "AccessFailedCount", "Staff_Number", "Admin_Generated", "Employee_Id", "TransactionDate") VALUES ('0f919f24-2586-46d8-85bb-56068bbde066', 'fatin@nepad.org', 'FATIN@NEPAD.ORG', 'fatin@nepad.org', 'FATIN@NEPAD.ORG', false, 'AQAAAAEAACcQAAAAEGn28i9qf+4m10u6o+0UO5B5+vP+cKD6lp7EEUZDinc1V6sluIpwx4Lb8/d0hE4VNw==', '6RJTZTE4757IJNCT3EC5NAFM2YQUBBKQ', '87d7cd86-733b-4460-9b5c-b64d58399747', NULL, false, false, NULL, true, 0, '3540', false, 64, '2019-09-24 00:00:00');
INSERT INTO public."AspNetUsers" ("Id", "UserName", "NormalizedUserName", "Email", "NormalizedEmail", "EmailConfirmed", "PasswordHash", "SecurityStamp", "ConcurrencyStamp", "PhoneNumber", "PhoneNumberConfirmed", "TwoFactorEnabled", "LockoutEnd", "LockoutEnabled", "AccessFailedCount", "Staff_Number", "Admin_Generated", "Employee_Id", "TransactionDate") VALUES ('42e61067-8906-415a-b53a-6e7718a7c724', 'florek@nepad.org', 'FLOREK@NEPAD.ORG', 'florek@nepad.org', 'FLOREK@NEPAD.ORG', false, 'AQAAAAEAACcQAAAAEC7WzY8vIxLDUmbL2bERlkRDUkp6togQZqihhJ0gqp3JLcuiXf/wjPSuhy1uxyjNdw==', 'XA6FTNFSVWXFAUQEE3M7AOESOLDMFQZK', '041d4efb-22c3-44e8-b5cd-cdca96814454', NULL, false, false, NULL, true, 0, '1000', false, 68, '2019-09-24 00:00:00');
INSERT INTO public."AspNetUsers" ("Id", "UserName", "NormalizedUserName", "Email", "NormalizedEmail", "EmailConfirmed", "PasswordHash", "SecurityStamp", "ConcurrencyStamp", "PhoneNumber", "PhoneNumberConfirmed", "TwoFactorEnabled", "LockoutEnd", "LockoutEnabled", "AccessFailedCount", "Staff_Number", "Admin_Generated", "Employee_Id", "TransactionDate") VALUES ('d1075c1c-cb7c-480d-93c8-6931090d1f3d', 'margarets@nepad.org', 'MARGARETS@NEPAD.ORG', 'margarets@nepad.org', 'MARGARETS@NEPAD.ORG', false, 'AQAAAAEAACcQAAAAELnGEj9auTypNT0lBKHbSlgKrjusNVNafrEXADdss3vm/I/aSJvAnKJ3c69cnAMu9w==', 'ORXYZTJXBNE2KQEWMYW354MV7JLFIKQK', '25400ac0-eb6b-4fa6-90c7-29d51d7e3599', NULL, false, false, NULL, true, 0, '1000', false, 119, '2019-09-24 00:00:00');
INSERT INTO public."AspNetUsers" ("Id", "UserName", "NormalizedUserName", "Email", "NormalizedEmail", "EmailConfirmed", "PasswordHash", "SecurityStamp", "ConcurrencyStamp", "PhoneNumber", "PhoneNumberConfirmed", "TwoFactorEnabled", "LockoutEnd", "LockoutEnabled", "AccessFailedCount", "Staff_Number", "Admin_Generated", "Employee_Id", "TransactionDate") VALUES ('426f9586-3ac6-42f3-863f-a19f3e068d05', 'tateks@nepad.org', 'TATEKS@NEPAD.ORG', 'tateks@nepad.org', 'TATEKS@NEPAD.ORG', false, 'AQAAAAEAACcQAAAAEEUYKf3iEmxg06CdvpX7lpj1si09bbd13NkhzBxlIpeqNnEtCRtyRSWuEka+hn/WDg==', '2ADTABYTQ27TMZSF7HCCXVVLKQXQAEE6', '94175677-3526-4c4a-9ae7-2fb74b0291fb', NULL, false, false, NULL, true, 0, '3571', false, 187, '2019-09-27 00:00:00');
INSERT INTO public."AspNetUsers" ("Id", "UserName", "NormalizedUserName", "Email", "NormalizedEmail", "EmailConfirmed", "PasswordHash", "SecurityStamp", "ConcurrencyStamp", "PhoneNumber", "PhoneNumberConfirmed", "TwoFactorEnabled", "LockoutEnd", "LockoutEnabled", "AccessFailedCount", "Staff_Number", "Admin_Generated", "Employee_Id", "TransactionDate") VALUES ('2c82c275-b340-45f3-86f5-4c819d4e9814', 'nancyn@nepad.org', 'NANCYN@NEPAD.ORG', 'nancyn@nepad.org', 'NANCYN@NEPAD.ORG', false, 'AQAAAAEAACcQAAAAEM7v8CtipI6sfUXasPLY5XingecOPxwf3TOqYzB9v/tiB+21VGQxR6D2sjVR3jPwYw==', 'PUHQXMYQMVZNZK7UH7JERMWYNGBDF2ZS', 'ff19485f-ef0f-4966-96c7-831bc63b8aeb', NULL, false, false, NULL, true, 0, '1000', false, 138, '2019-09-24 00:00:00');
INSERT INTO public."AspNetUsers" ("Id", "UserName", "NormalizedUserName", "Email", "NormalizedEmail", "EmailConfirmed", "PasswordHash", "SecurityStamp", "ConcurrencyStamp", "PhoneNumber", "PhoneNumberConfirmed", "TwoFactorEnabled", "LockoutEnd", "LockoutEnabled", "AccessFailedCount", "Staff_Number", "Admin_Generated", "Employee_Id", "TransactionDate") VALUES ('b05d8a80-47fc-4eb0-8494-d20db97f1765', 'chimwemwe.chamdimba@nepad.org', 'CHIMWEMWE.CHAMDIMBA@NEPAD.ORG', 'chimwemwe.chamdimba@nepad.org', 'CHIMWEMWE.CHAMDIMBA@NEPAD.ORG', false, 'AQAAAAEAACcQAAAAEHBUIXXHpU/dofitHapKr0OFq5nfEwo73RsbDHzzCspKkZrC+Vd54VkfAbEBWzSGXw==', 'V2NHQOBXND4BHTEMCZ475SQK4LPDC3H3', 'fdda39e6-f09b-4df7-8c88-e54a9e180666', NULL, false, false, NULL, true, 0, '1000', false, 35, '2019-09-24 00:00:00');
INSERT INTO public."AspNetUsers" ("Id", "UserName", "NormalizedUserName", "Email", "NormalizedEmail", "EmailConfirmed", "PasswordHash", "SecurityStamp", "ConcurrencyStamp", "PhoneNumber", "PhoneNumberConfirmed", "TwoFactorEnabled", "LockoutEnd", "LockoutEnabled", "AccessFailedCount", "Staff_Number", "Admin_Generated", "Employee_Id", "TransactionDate") VALUES ('932d7713-80a3-4b8d-8b71-56f24bfbad81', 'toussainten@nepad.org', 'TOUSSAINTEN@NEPAD.ORG', 'toussainten@nepad.org', 'TOUSSAINTEN@NEPAD.ORG', false, 'AQAAAAEAACcQAAAAEBMxGwKsU6fFOieXYEKRi0BNj7ckN0PaNSOJeQG/2Umrz5HDtmqIvck6jTPxKz2gdg==', 'L5H76CUORPY6UUC5OPMEISOGBWABNL5X', '329fd039-9e3e-4912-acd8-507af4b97a01', NULL, false, false, NULL, true, 0, '1000', false, 193, '2019-09-24 00:00:00');
INSERT INTO public."AspNetUsers" ("Id", "UserName", "NormalizedUserName", "Email", "NormalizedEmail", "EmailConfirmed", "PasswordHash", "SecurityStamp", "ConcurrencyStamp", "PhoneNumber", "PhoneNumberConfirmed", "TwoFactorEnabled", "LockoutEnd", "LockoutEnabled", "AccessFailedCount", "Staff_Number", "Admin_Generated", "Employee_Id", "TransactionDate") VALUES ('8cb59a1d-85f1-49f4-b11c-35e3f8a8dec7', 'adamad@nepad.org', 'ADAMAD@NEPAD.ORG', 'adamad@nepad.org', 'ADAMAD@NEPAD.ORG', false, 'AQAAAAEAACcQAAAAEFa2FEtahSm/3Cjat36XBtW32EJZP/LhdkmpDyqmnqHrZf5VisoPmFjR6mICf93tOQ==', 'QXWCEPM2SRATEXUXONBBC4E2GS7EJIGX', '9333b341-e9f9-4e95-9610-bfa290640c2d', NULL, false, false, NULL, true, 0, '1000', false, 3, '2019-09-24 00:00:00');
INSERT INTO public."AspNetUsers" ("Id", "UserName", "NormalizedUserName", "Email", "NormalizedEmail", "EmailConfirmed", "PasswordHash", "SecurityStamp", "ConcurrencyStamp", "PhoneNumber", "PhoneNumberConfirmed", "TwoFactorEnabled", "LockoutEnd", "LockoutEnabled", "AccessFailedCount", "Staff_Number", "Admin_Generated", "Employee_Id", "TransactionDate") VALUES ('ba0a2ad8-b885-4af3-ac43-3930844541da', 'towelan@nepad.org', 'TOWELAN@NEPAD.ORG', 'towelan@nepad.org', 'TOWELAN@NEPAD.ORG', false, 'AQAAAAEAACcQAAAAEFmZavOeywltPdJUac5CmT3dz9OQSJjwgTV8i7pecQqqMZWSJRkHNOhDf+a3jY8ycA==', 'DNY6DMYHKKFW4NOINN4BZ43E7OWGO4L7', '2bd8086b-5a6e-44a1-8f94-0e10266f3792', NULL, false, false, NULL, true, 0, '1000', false, 194, '2019-09-24 00:00:00');
INSERT INTO public."AspNetUsers" ("Id", "UserName", "NormalizedUserName", "Email", "NormalizedEmail", "EmailConfirmed", "PasswordHash", "SecurityStamp", "ConcurrencyStamp", "PhoneNumber", "PhoneNumberConfirmed", "TwoFactorEnabled", "LockoutEnd", "LockoutEnabled", "AccessFailedCount", "Staff_Number", "Admin_Generated", "Employee_Id", "TransactionDate") VALUES ('c115746d-921d-4c70-8853-c7123089c0e0', 'ibrahimassanem@nepad.org', 'IBRAHIMASSANEM@NEPAD.ORG', 'ibrahimassanem@nepad.org', 'IBRAHIMASSANEM@NEPAD.ORG', false, 'AQAAAAEAACcQAAAAEE4tombzf2kIWyEdwUpQYWUcGNbmIepdrwjUJhWNUdoJLW/9U0pbinTGchRiuuWdYQ==', 'WFKJJIT243635YBIXWSHTIR5SUNDEMO4', '01036d5c-698b-4a88-8e1b-e5d92ec55d73', NULL, false, false, NULL, true, 0, '3656', false, 124, '2019-09-24 00:00:00');
INSERT INTO public."AspNetUsers" ("Id", "UserName", "NormalizedUserName", "Email", "NormalizedEmail", "EmailConfirmed", "PasswordHash", "SecurityStamp", "ConcurrencyStamp", "PhoneNumber", "PhoneNumberConfirmed", "TwoFactorEnabled", "LockoutEnd", "LockoutEnabled", "AccessFailedCount", "Staff_Number", "Admin_Generated", "Employee_Id", "TransactionDate") VALUES ('ac81ecdd-64a2-488e-a516-40fd8e1a93c8', 'janetb@nepad.org', 'JANETB@NEPAD.ORG', 'janetb@nepad.org', 'JANETB@NEPAD.ORG', false, 'AQAAAAEAACcQAAAAELz35/LoQ63I4b0UkbwPNRxhK7iGOZw1FcIRLRKQKesoGgT6noIE6Z0vFHS5iDUx+w==', 'RAZ7VAGUTRVJFTUH3MG3MJABL67HPPYC', 'd139884f-8cd9-40a1-84d5-8621bf669345', NULL, false, false, NULL, true, 0, '1000', true, 87, '2019-09-25 00:00:00');
INSERT INTO public."AspNetUsers" ("Id", "UserName", "NormalizedUserName", "Email", "NormalizedEmail", "EmailConfirmed", "PasswordHash", "SecurityStamp", "ConcurrencyStamp", "PhoneNumber", "PhoneNumberConfirmed", "TwoFactorEnabled", "LockoutEnd", "LockoutEnabled", "AccessFailedCount", "Staff_Number", "Admin_Generated", "Employee_Id", "TransactionDate") VALUES ('e526e15d-47dd-46a4-93ea-c718a31ebc37', 'unamim@nepad.org', 'UNAMIM@NEPAD.ORG', 'unamim@nepad.org', 'UNAMIM@NEPAD.ORG', false, 'AQAAAAEAACcQAAAAEDx0JCBcYtk3swm+A4tQXz+KHa+f/zWLD5mnbB7dU9/IvgZ12Mvo5PXDN5cDAux+iA==', 'JRFTG22VBBRW6M4UHTT5QPEAONWNOKJH', '1a02c7cd-ea90-4a99-8e1e-36118d8fd5c1', NULL, false, false, NULL, true, 0, '1000', false, 195, '2019-09-24 00:00:00');
INSERT INTO public."AspNetUsers" ("Id", "UserName", "NormalizedUserName", "Email", "NormalizedEmail", "EmailConfirmed", "PasswordHash", "SecurityStamp", "ConcurrencyStamp", "PhoneNumber", "PhoneNumberConfirmed", "TwoFactorEnabled", "LockoutEnd", "LockoutEnabled", "AccessFailedCount", "Staff_Number", "Admin_Generated", "Employee_Id", "TransactionDate") VALUES ('e1ea3dd3-b12b-4ad3-986b-559612ef7818', 'gideonn@nepad.org', 'GIDEONN@NEPAD.ORG', 'gideonn@nepad.org', 'GIDEONN@NEPAD.ORG', false, 'AQAAAAEAACcQAAAAEMebK3c8ClrR+L7D27+xNi8FDYSRDCStbWbm4KA5m5Yn+TCeBj+37XDREL/BgFXfkw==', 'GCVAYRLUGUUAL37LQ5V3SZ7AYH6VNJIA', 'bcb4ce6a-83d6-44df-b2e4-30962dd6befc', NULL, false, false, NULL, true, 0, '6025', false, 73, '2019-09-26 00:00:00');
INSERT INTO public."AspNetUsers" ("Id", "UserName", "NormalizedUserName", "Email", "NormalizedEmail", "EmailConfirmed", "PasswordHash", "SecurityStamp", "ConcurrencyStamp", "PhoneNumber", "PhoneNumberConfirmed", "TwoFactorEnabled", "LockoutEnd", "LockoutEnabled", "AccessFailedCount", "Staff_Number", "Admin_Generated", "Employee_Id", "TransactionDate") VALUES ('f5534c60-e2d2-4559-9447-be4214537f6c', 'amine.idriss@nepad.org', 'AMINE.IDRISS@NEPAD.ORG', 'amine.idriss@nepad.org', 'AMINE.IDRISS@NEPAD.ORG', false, 'AQAAAAEAACcQAAAAEONzXH0H5x/fQnmuJvmf6BsFz3svuR7qpmfEek0odTUBHueul4+wXZAGma5vfradnA==', 'MPTVCCYEWUJ4MPW4W4A53AJTAL64RR4Y', 'f447d569-8b7c-4027-a6c4-32f35bc29dde', NULL, false, false, NULL, true, 0, '7003', false, 11, '2019-09-24 00:00:00');
INSERT INTO public."AspNetUsers" ("Id", "UserName", "NormalizedUserName", "Email", "NormalizedEmail", "EmailConfirmed", "PasswordHash", "SecurityStamp", "ConcurrencyStamp", "PhoneNumber", "PhoneNumberConfirmed", "TwoFactorEnabled", "LockoutEnd", "LockoutEnabled", "AccessFailedCount", "Staff_Number", "Admin_Generated", "Employee_Id", "TransactionDate") VALUES ('ce777098-0692-4248-bb28-554acba8d021', 'sindisiwem@nepad.org', 'SINDISIWEM@NEPAD.ORG', 'sindisiwem@nepad.org', 'SINDISIWEM@NEPAD.ORG', false, 'AQAAAAEAACcQAAAAEAxeGwA0J15mFY9e/QypZ8uVIxTRPOmJrVbJEmvC770n5KhrgEhQQPH4DlQqHg8otg==', 'VKP3HZL5OHI6EYWGHQIRQBT7ZVHIIF2U', '48101756-8f4b-4f9a-8273-a1851d9ec9ec', NULL, false, false, NULL, true, 0, '1000', false, 179, '2019-09-24 00:00:00');


--
-- TOC entry 3627 (class 0 OID 25126)
-- Dependencies: 239
-- Data for Name: CostCatelogues; Type: TABLE DATA; Schema: public; Owner: employee
--

INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (1, 'CD-001', 'External Expertise', 'Interpreters-External Expertise', 'Daily Rate(US$)', 468, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (2, 'CD-002', 'External Expertise', 'Translators-External Expertise', 'Daily Rate(US$)', 252, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (3, 'CD-003', 'External Expertise', 'Revisers-External Expertise', 'Daily Rate(US$)', 300, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (4, 'CD-004', 'External Expertise', 'Proof Readers-External Expertise', 'Daily Rate(US$)', 147, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (5, 'CD-005', 'External Expertise', 'Project/short term Consultants-External Expertise', 'Daily Rate(US$)', 600, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (6, 'CD-006', 'External Expertise', 'Secretary-External Expertise', 'Daily Rate(US$)', 102, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (7, 'CD-007', 'External Expertise', 'High Level Honorarium-(Former Head of State or Gov.)', 'Daily Consultancy rate(US$)', 750, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (8, 'CD-008', 'External Expertise', 'Regular Honorarium-(Former Ministers, Special Envoy distinguished personalities)', 'Daily Consultancy rate(US$)', 500, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (9, 'CD-009', 'External Expertise', 'Basic Honorarium-(Personal, Academicians)', 'Daily Consultancy rate(US$)', 300, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (10, 'CD-010', 'External Expertise', 'Volunteer-Volunteer Allowance', 'Monthly Rate (US$)', 800, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (11, 'CD-011', 'Travel Ticket', 'Central Africa-Business-Travel-Tickets-Business', 'Return Trip (US$)', 1900, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (12, 'CD-012', 'Travel Ticket', 'Central Africa-Economy-Travel-Tickets-Economy', 'Return Trip (US$)', 950, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (13, 'CD-013', 'Travel Ticket', 'Africa-Harare-Business-Travel-Tickets-Business', 'Return Trip (US$)', 1600, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (14, 'CD-014', 'Travel Ticket', 'Africa-Harare-Economy-Travel-Tickets-Economy', 'Return Trip (US$)', 567, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (15, 'CD-015', 'Travel Ticket', 'Africa-Johannesburg-Business-Travel-Tickets-Business', 'Return Trip (US$)', 1600, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (16, 'CD-016', 'Travel Ticket', 'Africa-Johannesburg-Economy-Travel-Tickets-Economy', 'Return Trip (US$)', 580, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (17, 'CD-017', 'Travel Ticket', 'Africa-Cairo-Business-Travel-Tickets-Business', 'Return Trip (US$)', 1500, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (18, 'CD-018', 'Travel Ticket', 'Africa-Cairo-Economy-Travel-Tickets-Economy', 'Return Trip (US$)', 368, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (19, 'CD-019', 'Travel Ticket', 'East Africa-Economy-Travel-Tickets-Economy', 'Return Trip (US$)', 500, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (20, 'CD-020', 'Travel Ticket', 'East Africa-Business-Travel-Tickets-Business', 'Return Trip (US$)', 1050, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (21, 'CD-021', 'Travel Ticket', 'North Africa-Economy-Travel-Tickets-Economy', 'Return Trip (US$)', 1400, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (22, 'CD-022', 'Travel Ticket', 'North Africa-Business-Travel-Tickets-Business', 'Return Trip (US$)', 2400, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (23, 'CD-023', 'Travel Ticket', 'Southern Africa-Economy-Travel-Tickets-Economy', 'Return Trip (US$)', 838, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (24, 'CD-024', 'Travel Ticket', 'Southern Africa-Business-Travel-Tickets-Business', 'Return Trip (US$)', 1400, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (25, 'CD-025', 'Travel Ticket', 'West Africa-Business-Travel-Tickets-Business', 'Return Trip (US$)', 2400, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (26, 'CD-026', 'Travel Ticket', 'West Africa-Economy-Travel-Tickets-Economy', 'Return Trip (US$)', 1070, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (27, 'CD-027', 'Travel Ticket', 'Europe-Business-Travel-Tickets-Business', 'Return Trip (US$)', 1600, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (28, 'CD-028', 'Travel Ticket', 'Europe-Economy-Travel-Tickets-Economy', 'Return Trip (US$)', 833, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (29, 'CD-029', 'Travel Ticket', 'America-Business-Travel-Tickets-Business', 'Return Trip (US$)', 2700, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (30, 'CD-030', 'Travel Ticket', 'America-Economy-Travel-Tickets-Economy', 'Return Trip (US$)', 1003, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (31, 'CD-031', 'Travel Ticket', 'Asia-Business-Travel-Tickets-Business', 'Return Trip (US$)', 2200, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (32, 'CD-032', 'Travel Ticket', 'Asia-Economy-Travel-Tickets-Economy', 'Return Trip (US$)', 1100, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (33, 'CD-033', 'Travel Ticket', 'Africa-Lusaka-Business-Travel-Tickets-Business', 'Return Trip (US$)', 1400, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (34, 'CD-034', 'Travel Ticket', 'Africa-Lusaka-Economy-Travel-Tickets-Economy', 'Return Trip (US$)', 484, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (35, 'CD-035', 'Travel DSA', 'Chairperson-Travel-DSA ( Refer to the UN Monthly ICS update on DSA)', 'UN_Daily Rate(US$)', 1, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (36, 'CD-036', 'Travel DSA', 'Deputy Chairperson-Travel-DSA ( Refer to the UN Monthly ICS update on DSA)', 'UN_Daily Rate(US$)', 1, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (37, 'CD-037', 'Travel DSA', 'Commissioners-Travel-DSA ( Refer to the UN Monthly ICS update on DSA)', 'UN_Daily Rate(US$)', 1, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (38, 'CD-038', 'Travel DSA', 'AU Staff or Participants-Travel-DSA ( Refer to the UN Monthly ICS update on DSA)', 'UN_Daily Rate(US$)', 1, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (39, 'CD-039', 'Visa and Terminal', 'Visa fee-VISA', 'UnitCost(US$)', 50, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (40, 'CD-040', 'Visa and Terminal', 'Terminal-Terminal Cost', 'UnitCost(US$)', 24, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (41, 'CD-041', 'Ground Transportation', 'Ground Transportation - Car-Ground Transportation', 'Daily Rate (US$)', 250, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (42, 'CD-042', 'Ground Transportation', 'Ground Transportation - Bus(Coaster)-Ground Transportation', 'Daily Rate (US$)', 500, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (43, 'CD-043', 'Conference Facilities', 'Conference Addis - 100--200 People-Rental of Conference Hall in Addis', 'Daily Rate (US$)', 1000, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (44, 'CD-044', 'Conference Facilities', 'Conference Addis - Up to 500 People-Rental of Conference Hall in Addis', 'Daily Rate (US$)', 1300, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (45, 'CD-045', 'Conference Facilities', 'Conference Addis - More than 500 People-Rental of Conference Hall in Addis', 'Daily Rate (US$)', 1700, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (46, 'CD-046', 'Conference Facilities', 'Conference Addis - Rental of Office for Secretariat-Rental of Conference Hall in Addis', 'Daily Rate (US$)', 150, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (47, 'CD-047', 'Conference Facilities', 'Conference Addis - Wireless Internet Connection - Per Person-Rental of Conference Hall in Addis', 'Daily Rate (US$)', 7, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (48, 'CD-048', 'Conference Facilities', 'Conference Addis - Pause Café - Per Person-Rental of Conference Hall in Addis', 'UnitCost(US$)', 5, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (49, 'CD-049', 'Conference Facilities', 'Conference Addis - Cocktail - Per Person-Rental of Conference Hall in Addis', 'UnitCost(US$)', 25, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (50, 'CD-050', 'Conference Facilities', 'Conference Addis - Lunch - Per Person-Rental of Conference Hall in Addis', 'UnitCost(US$)', 35, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (51, 'CD-051', 'Conference Facilities', 'Conference Naz-Debrezeit-ILRI - 10--20 People-Rental of Conference Hall in Nazareth/ Debrezeit / ILRI', 'Daily Rate (US$)', 300, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (52, 'CD-052', 'Conference Facilities', 'Conference Naz-Debrezeit-ILRI - Up to 50 People-Rental of Conference Hall in Nazareth/ Debrezeit / ILRI', 'Daily Rate (US$)', 400, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (53, 'CD-053', 'Conference Facilities', 'Conference Naz-Debrezeit-ILRI - More than 50 People-Rental of Conference Hall in Nazareth/ Debrezeit / ILRI', 'Daily Rate (US$)', 500, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (54, 'CD-054', 'Conference Facilities', 'Conference Naz-Debrezeit-ILRI - Café - Per Person-Rental of Conference Hall in Nazareth/ Debrezeit / ILRI', 'UnitCost(US$)', 5, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (55, 'CD-055', 'Conference Facilities', 'Conference Naz-Debrezeit-ILRI - Cocktail - Per Person-Rental of Conference Hall in Nazareth/ Debrezeit / ILRI', 'UnitCost(US$)', 25, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (56, 'CD-056', 'Conference Facilities', 'Conference Naz-Debrezeit-ILRI - Buffet Lunch - Per Person-Rental of Conference Hall in Nazareth/ Debrezeit / ILRI', 'UnitCost(US$)', 35, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (57, 'CD-057', 'Conference Facilities', 'Conference OUTSIDE Addis - 100--200 People-Rental of Conference Hall Outside Addis', 'Daily Rate (US$)', 1500, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (58, 'CD-058', 'Conference Facilities', 'Conference OUTSIDE Addis - Up to 500 People-Rental of Conference Hall Outside Addis', 'Daily Rate (US$)', 1750, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (59, 'CD-059', 'Conference Facilities', 'Conference OUTSIDE Addis - More than 500 People-Rental of Conference Hall Outside Addis', 'Daily Rate (US$)', 2795, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (60, 'CD-060', 'Conference Facilities', 'Conference OUTSIDE Addis - Rental of Office for Secretariat-Rental of Conference Hall Outside Addis', 'Daily Rate (US$)', 300, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (61, 'CD-061', 'Conference Facilities', 'Conference OUTSIDE Addis - Wireless Internet Connection-Rental of Conference Hall Outside Addis', 'Daily Rate (US$)', 7, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (62, 'CD-062', 'Conference Facilities', 'Conference OUTSIDE Addis - Pause Café-Rental of Conference Hall Outside Addis', 'UnitCost(US$)', 15, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (63, 'CD-063', 'Conference Facilities', 'Conference OUTSIDE Addis - Cocktail-Rental of Conference Hall Outside Addis', 'UnitCost(US$)', 40, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (64, 'CD-064', 'Conference Facilities', 'Conference OUTSIDE Addis - Buffet Lunch-Rental of Conference Hall Outside Addis', 'UnitCost(US$)', 52, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (65, 'CD-065', 'Conference Materials', 'Translation Equipment (UP to 200 Persons (charge per Person)-Conference Materials', 'UnitCost(US$)', 1000, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (66, 'CD-066', 'Conference Materials', 'Translation Booth - Per Day-Conference Materials', 'UnitCost(US$)', 75, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (67, 'CD-067', 'Conference Materials', 'Technician - Per Day-Conference Materials', 'UnitCost(US$)', 50, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (68, 'CD-068', 'Conference Materials', 'Overhead Projector 500 - Per Day-Conference Materials', 'UnitCost(US$)', 100, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (69, 'CD-069', 'Conference Materials', 'Video-Photo Recording - Per Day-Conference Materials', 'UnitCost(US$)', 200, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (70, 'CD-070', 'Retreat - Workshop - Meeting', 'Stationary (Per person)-Retreat - Workshop - Meeting', 'UnitCost(US$)', 20, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (71, 'CD-071', 'Retreat - Workshop - Meeting', 'Car Rental - In Addis (Ethiopia)-Retreat - Workshop - Meeting', 'Daily Rate (US$)', 100, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (72, 'CD-072', 'Retreat - Workshop - Meeting', 'Car Rental Outside Ethiopia-Retreat - Workshop - Meeting', 'Daily Rate (US$)', 200, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (73, 'CD-073', 'Retreat - Workshop - Meeting', 'Toner Cartridge Canon C-EXV 11-COPIER TONERS', 'UnitCost(US$)', 150, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (74, 'CD-074', 'Retreat - Workshop - Meeting', 'Toner Cartridge Canon C-EXV 12-COPIER TONERS', 'UnitCost(US$)', 99, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (75, 'CD-075', 'Retreat - Workshop - Meeting', 'Toner Cartridge Canon C-EXV 15-COPIER TONERS', 'UnitCost(US$)', 162, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (76, 'CD-076', 'Retreat - Workshop - Meeting', 'Toner Cartridge Canon C-EXV 3-COPIER TONERS', 'UnitCost(US$)', 43, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (77, 'CD-077', 'Retreat - Workshop - Meeting', 'Toner Canon C-EXV 8/NPG-12 Black-COPIER TONERS', 'UnitCost(US$)', 159, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (78, 'CD-078', 'Retreat - Workshop - Meeting', 'Toner Cartridge Copier C-EXV 14 Black-COPIER TONERS', 'UnitCost(US$)', 91, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (79, 'CD-079', 'Retreat - Workshop - Meeting', 'Toner for copier Kyocera TK-6305-COPIER TONERS', 'UnitCost(US$)', 195, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (80, 'CD-080', 'Retreat - Workshop - Meeting', 'Toner for IR7105-C-EXV-15-COPIER TONERS', 'UnitCost(US$)', 210, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (81, 'CD-081', 'Retreat - Workshop - Meeting', 'Toner for canon 2545i C-EXV-32-COPIER TONERS', 'UnitCost(US$)', 85, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (82, 'CD-082', 'Retreat - Workshop - Meeting', 'Toner Cartridge HP C4096A-PRINTER TONERS', 'UnitCost(US$)', 66, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (83, 'CD-083', 'Retreat - Workshop - Meeting', 'Toner Cartridge HP Q2610A-PRINTER TONERS', 'UnitCost(US$)', 176, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (84, 'CD-084', 'Retreat - Workshop - Meeting', 'Toner Cartridge HP Q2670A Black-PRINTER TONERS', 'UnitCost(US$)', 211, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (85, 'CD-085', 'Retreat - Workshop - Meeting', 'Toner Cartridge HP Q5942A-PRINTER TONERS', 'UnitCost(US$)', 150, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (86, 'CD-086', 'Retreat - Workshop - Meeting', 'Toner Cartridge HP Q5949A-PRINTER TONERS', 'UnitCost(US$)', 100, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (87, 'CD-087', 'Retreat - Workshop - Meeting', 'Toner Cartridge HP Q7551A-PRINTER TONERS', 'UnitCost(US$)', 35, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (88, 'CD-088', 'Retreat - Workshop - Meeting', 'Toner for HP P1005-PRINTER TONERS', 'UnitCost(US$)', 69, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (89, 'CD-089', 'Retreat - Workshop - Meeting', 'Toner for P2015-Q7553A-PRINTER TONERS', 'UnitCost(US$)', 99, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (90, 'CD-090', 'Retreat - Workshop - Meeting', 'HP Toner CC364A for P4014dn-PRINTER TONERS', 'UnitCost(US$)', 178, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (91, 'CD-091', 'Retreat - Workshop - Meeting', 'HP Toner CE255A for 3015d-PRINTER TONERS', 'UnitCost(US$)', 162, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (92, 'CD-092', 'Retreat - Workshop - Meeting', 'Toner for HP M4555 MFP CE390A-PRINTER TONERS', 'UnitCost(US$)', 308, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (93, 'CD-093', 'Retreat - Workshop - Meeting', 'Toner Cartridge HP 12A-PRINTER TONERS', 'UnitCost(US$)', 61, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (94, 'CD-094', 'Retreat - Workshop - Meeting', 'toner for 4345mfp-Q5945A-PRINTER TONERS', 'UnitCost(US$)', 230, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (95, 'CD-095', 'Retreat - Workshop - Meeting', 'Toner for HP-LJ Pro-M401dn-PRINTER TONERS', 'UnitCost(US$)', 112, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (96, 'CD-096', 'Retreat - Workshop - Meeting', 'TONER for Kyocera FS4020dn-TK-362-PRINTER TONERS', 'UnitCost(US$)', 168, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (97, 'CD-097', 'Retreat - Workshop - Meeting', 'Toner Cartridge HP C3903A-PRINTER TONERS', 'UnitCost(US$)', 124, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (98, 'CD-098', 'Retreat - Workshop - Meeting', 'Toner Cartridge HP C4092A-PRINTER TONERS', 'UnitCost(US$)', 75, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (99, 'CD-099', 'Retreat - Workshop - Meeting', 'Toner Cartridge HP C9730A Black-PRINTER TONERS', 'UnitCost(US$)', 187, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (100, 'CD-100', 'Retreat - Workshop - Meeting', 'Toner Cartridge HP C9731A Cyan-PRINTER TONERS', 'UnitCost(US$)', 213, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (101, 'CD-101', 'Retreat - Workshop - Meeting', 'Toner Cartridge HP C9732A Yellow-PRINTER TONERS', 'UnitCost(US$)', 213, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (102, 'CD-102', 'Retreat - Workshop - Meeting', 'Toner Cartridge HP C9733A Magenta-PRINTER TONERS', 'UnitCost(US$)', 213, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (103, 'CD-103', 'Retreat - Workshop - Meeting', 'Toner Cartridge HP Q1338A-PRINTER TONERS', 'UnitCost(US$)', 202, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (104, 'CD-104', 'Retreat - Workshop - Meeting', 'CD Recordable-DISKS', 'UnitCost(US$)', 0, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (105, 'CD-105', 'Retreat - Workshop - Meeting', 'CD Rewritable-DISKS', 'UnitCost(US$)', 1, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (106, 'CD-106', 'Retreat - Workshop - Meeting', 'DVD-RW-DISKS', 'UnitCost(US$)', 1, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (107, 'CD-107', 'Retreat - Workshop - Meeting', 'Flash Disk, 2GB-DISKS', 'UnitCost(US$)', 12, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (108, 'CD-108', 'Retreat - Workshop - Meeting', 'Flash Disk, 4GB-DISKS', 'UnitCost(US$)', 16, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (109, 'CD-109', 'Retreat - Workshop - Meeting', 'UPS battery 12v -UPS Batteries', 'UnitCost(US$)', 25, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (110, 'CD-110', 'Retreat - Workshop - Meeting', 'Table Calendar  -Calendars and stamps', 'UnitCost(US$)', 3, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (111, 'CD-111', 'Retreat - Workshop - Meeting', 'Round stamp-Calendars and stamps', 'UnitCost(US$)', 20, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (112, 'CD-112', 'IT Equipment', 'Desktop Computer incl. Display - Purchase per Unit-IT Equipment - Purchase', 'UnitCost(US$)', 2000, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (113, 'CD-113', 'IT Equipment', 'Desktop Computer incl. Display - Rental per Unit-IT Equipment - Rental', 'Daily Rate (US$)', 50, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (114, 'CD-114', 'IT Equipment', 'Laptop - Purchase per Unit-IT Equipment - Purchase', 'UnitCost(US$)', 1500, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (115, 'CD-115', 'IT Equipment', 'Laptop- Rental per Unit-IT Equipment - Rental', 'Daily Rate (US$)', 25, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (116, 'CD-116', 'IT Equipment', 'Printer - Purchase per Unit-IT Equipment - Purchase', 'UnitCost(US$)', 1500, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (117, 'CD-117', 'IT Equipment', 'Printer- Rental per Unit-IT Equipment - Rental', 'Daily Rate (US$)', 25, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (118, 'CD-118', 'IT Equipment', 'Scanner - Purchase per Unit-IT Equipment - Purchase', 'UnitCost(US$)', 1500, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (119, 'CD-119', 'IT Equipment', 'Scanner- Rental per Unit-IT Equipment - Rental', 'Daily Rate (US$)', 200, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (120, 'CD-120', 'IT Equipment', 'Heavy Duty Copy Machine- Rental per Unit-IT Equipment - Rental', 'Daily Rate (US$)', 181, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (121, 'CD-121', 'IT Equipment', 'Heavy Duty Copy Machine - Purchase per Unit-IT Equipment - Purchase', 'UnitCost(US$)', 8000, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (122, 'CD-122', 'IT Equipment', 'Projector + Screen- Rental per Unit-IT Equipment - Rental', 'Daily Rate (US$)', 120, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (123, 'CD-123', 'IT Equipment', 'Projector + Screen - Purchase per Unit-IT Equipment - Purchase', 'UnitCost(US$)', 500, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (124, 'CD-124', 'Office Equipment', 'Desk - Rental per Unit-Office Equipment - Rental', 'Daily Rate (US$)', 25, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (125, 'CD-125', 'Office Equipment', 'Chair - Rental per Unit-Office Equipment - Rental', 'Daily Rate (US$)', 20, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (126, 'CD-126', 'Office Equipment', 'Office Container  - Rental per Unit-Office Equipment - Rental', 'Daily Rate (US$)', 150, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (127, 'CD-127', 'Office Equipment', 'Cabinet  - Rental per Unit-Office Equipment - Rental', 'Daily Rate (US$)', 150, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (128, 'CD-128', 'Office Equipment', 'Other Items (Ink for Copier and Printer) - Rental per Unit-Office Equipment - Rental', 'Daily Rate (US$)', 200, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (129, 'CD-129', 'Other Items - Supplies', 'Typing Paper A4 for Typewriter - Per packet-Other Items - Supplies', 'UnitCost(US$)', 20, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (130, 'CD-130', 'Other Items - Supplies', 'Writing Pad with line A5 - Per Pad-Other Items - Supplies', 'UnitCost(US$)', 0, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (131, 'CD-131', 'Other Items - Supplies', 'USB flash Disk: USB 2.0 flash Drive 512MB GENx - Per Pcs-Other Items - Supplies', 'UnitCost(US$)', 3, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (132, 'CD-132', 'Other Items - Supplies', 'USB Stick 250mb - Per Pcs-Other Items - Supplies', 'UnitCost(US$)', 2, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (133, 'CD-133', 'Other Items - Supplies', 'White Ash - Pencil Type - Per Pcs-Other Items - Supplies', 'UnitCost(US$)', 0, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (134, 'CD-134', 'Other Items - Supplies', 'White Board Marker - Per Pcs-Other Items - Supplies', 'UnitCost(US$)', 0, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (135, 'CD-135', 'Other Items - Supplies', 'White correcting fluid - Per Bottle-Other Items - Supplies', 'UnitCost(US$)', 0, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (136, 'CD-136', 'Other Items - Supplies', 'White Envelop Assorted Size (A4 & A5) - Per Pcs-Other Items - Supplies', 'UnitCost(US$)', 0, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (137, 'CD-137', 'Other Items - Supplies', 'Wire band note book - Per Pcs-Other Items - Supplies', 'UnitCost(US$)', 0, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (138, 'CD-138', 'Other Items - Supplies', 'Writing pad with line A 4 size  - Per Pad-Other Items - Supplies', 'UnitCost(US$)', 0, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (139, 'CD-139', 'Non Stock Items', 'Stand Alone Banner 2m*80cm-BANNERS', 'UnitCost(US$)', 136, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (140, 'CD-140', 'Non Stock Items', 'Road Banner 6m*1.50-BANNERS', 'UnitCost(US$)', 122, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (141, 'CD-141', 'Non Stock Items', 'Roll up Banner (With Thematic messages)-BANNERS', 'UnitCost(US$)', 85, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (142, 'CD-142', 'Non Stock Items', 'Banner 3x1-BANNERS', 'UnitCost(US$)', 29, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (143, 'CD-143', 'Non Stock Items', 'Wall banner-BANNERS', 'UnitCost(US$)', 133, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (144, 'CD-144', 'Non Stock Items', 'Bill board-BANNERS', 'UnitCost(US$)', 1005, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (145, 'CD-145', 'Non Stock Items', 'Water 0.5L-Bottled water', 'UnitCost(US$)', 0, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (146, 'CD-146', 'Non Stock Items', 'Art paper white 250 gm-PRINTING PAPERS', 'UnitCost(US$)', 86, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (147, 'CD-147', 'Non Stock Items', 'white bond paper 180 gm-PRINTING PAPERS', 'UnitCost(US$)', 47, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (148, 'CD-148', 'Non Stock Items', 'White glossy paper 100gm-PRINTING PAPERS', 'UnitCost(US$)', 110, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (149, 'CD-149', 'Non Stock Items', 'Color Bond paper 180 gm-PRINTING PAPERS', 'UnitCost(US$)', 47, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (150, 'CD-150', 'Non Stock Items', 'AU MAST FLAGS DOUBLE SIDED-AU FLAGS', 'UnitCost(US$)', 145, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (151, 'CD-151', 'Non Stock Items', 'AU DESK FLAGS -AU FLAGS', 'UnitCost(US$)', 64, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (152, 'CD-152', 'Non Stock Items', 'Teardrop flags-AU FLAGS', 'UnitCost(US$)', 107, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (153, 'CD-153', 'Non Stock Items', 'Medals-AU MEDALS AND BERETS', 'UnitCost(US$)', 15, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (154, 'CD-154', 'Non Stock Items', 'AU Beret with Leather Bands-AU MEDALS AND BERETS', 'UnitCost(US$)', 6, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (155, 'CD-155', 'Non Stock Items', 'Arm bands-AU MEDALS AND BERETS', 'UnitCost(US$)', 5, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (156, 'CD-156', 'Non Stock Items', 'Scarves-AU MEDALS AND BERETS', 'UnitCost(US$)', 5, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (157, 'CD-157', 'Non Stock Items', 'Insignia for Beret-AU MEDALS AND BERETS', 'UnitCost(US$)', 4, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (158, 'CD-158', 'Non Stock Items', 'Brochures A5-BOOKLETS AND BROCHURES', 'UnitCost(US$)', 1, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (159, 'CD-159', 'Non Stock Items', 'catalogue-BOOKLETS AND BROCHURES', 'UnitCost(US$)', 3, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (160, 'CD-160', 'Non Stock Items', 'booklet-BOOKLETS AND BROCHURES', 'UnitCost(US$)', 2, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (161, 'CD-161', 'Non Stock Items', 'flyer-BOOKLETS AND BROCHURES', 'UnitCost(US$)', 0, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (162, 'CD-162', 'Non Stock Items', 'Dairy-BOOKLETS AND BROCHURES', 'UnitCost(US$)', 5, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (163, 'CD-163', 'Non Stock Items', 'T-Shirt with Text and AU Logo-T-SHIRTS, CAPS', 'UnitCost(US$)', 7, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (164, 'CD-164', 'Non Stock Items', 'Caps-T-SHIRTS, CAPS', 'UnitCost(US$)', 3, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (165, 'CD-165', 'Non Stock Items', 'Mugs with logo-T-SHIRTS, CAPS', 'UnitCost(US$)', 11, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (166, 'CD-166', 'Non Stock Items', 'Exhibition Bags-T-SHIRTS, CAPS', 'UnitCost(US$)', 4, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (167, 'CD-167', 'Non Stock Items', 'Umbrella                                       -T-SHIRTS, CAPS', 'UnitCost(US$)', 11, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (168, 'CD-168', 'Fixed Asset', 'All in one workstation-LENOVO M93Z-Computers', 'UnitCost(US$)', 1170, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (169, 'CD-169', 'Fixed Asset', 'All in one Desktop –LENOVO M93Z-Computers', 'UnitCost(US$)', 880, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (170, 'CD-170', 'Fixed Asset', 'Desktop HP ENVY Phoenix 810-135qe-Computers', 'UnitCost(US$)', 2528, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (171, 'CD-171', 'Fixed Asset', 'Dell optilex 7010-CPU-Computers', 'UnitCost(US$)', 1411, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (172, 'CD-172', 'Fixed Asset', 'Dell 19’’ Monitor-Computers', 'UnitCost(US$)', 181, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (173, 'CD-173', 'Fixed Asset', 'HP elite desk 800-Computers', 'UnitCost(US$)', 1223, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (174, 'CD-174', 'Fixed Asset', 'Water dispenser-Other assets', 'UnitCost(US$)', 245, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (175, 'CD-175', 'Fixed Asset', 'Small refrigerator-Other assets', 'UnitCost(US$)', 190, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (176, 'CD-176', 'Fixed Asset', 'Coat hanger -Other assets', 'UnitCost(US$)', 63, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (177, 'CD-177', 'Fixed Asset', 'Raxel paper shredder-Other assets', 'UnitCost(US$)', 427, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (178, 'CD-178', 'Fixed Asset', 'MOTOR VEHICLE TOYOTA LANDCRUISER HARD TOP-VEHICLES', 'UnitCost(US$)', 35476, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (179, 'CD-179', 'Fixed Asset', 'Toyota Hilux -VEHICLES', 'UnitCost(US$)', 32539, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (180, 'CD-180', 'Fixed Asset', 'Toyota Land cruiser  -VEHICLES', 'UnitCost(US$)', 41028, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (181, 'CD-181', 'Fixed Asset', 'Toyota Hilace Bus                                                                                 -VEHICLES', 'UnitCost(US$)', 38062, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (182, 'CD-182', 'Fixed Asset', 'Lenovo Yogo ThinkPad 15-Laptops', 'UnitCost(US$)', 857, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (183, 'CD-183', 'Fixed Asset', 'Toshiba Tecra, A50-Laptops', 'UnitCost(US$)', 737, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (184, 'CD-184', 'Fixed Asset', 'Ultra book Core i5-Laptops', 'UnitCost(US$)', 943, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (185, 'CD-185', 'Fixed Asset', 'THINKPAD X1 CARBON ULTRABOOK       -Laptops', 'UnitCost(US$)', 2791, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (186, 'CD-186', 'Fixed Asset', 'UPS 750VA-POWER SUPPLY', 'UnitCost(US$)', 192, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (187, 'CD-187', 'Fixed Asset', 'PRINTER MFP KYOCERA ECOSYS M3560idn        -PRINTERS', 'UnitCost(US$)', 1486, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (188, 'CD-188', 'Fixed Asset', 'PRINTER NETWORK KYOCERA FS4200DN -PRINTERS', 'UnitCost(US$)', 578, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (189, 'CD-189', 'Fixed Asset', 'Printer HP M601n -PRINTERS', 'UnitCost(US$)', 1047, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (190, 'CD-190', 'Fixed Asset', 'MFP HP M4555         -PRINTERS', 'UnitCost(US$)', 3791, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (191, 'CD-191', 'Fixed Asset', 'SCANNER CANON DR-G 1100  -SCANNERS', 'UnitCost(US$)', 6220, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (192, 'CD-192', 'Fixed Asset', 'Scanner fujitsu FI-6770                  -SCANNERS', 'UnitCost(US$)', 6795, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (193, 'CD-193', 'Fixed Asset', 'Photocopier canon, IR2545i-PHOTOCOPIERS', 'UnitCost(US$)', 7322, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (194, 'CD-194', 'Fixed Asset', 'Photocopier Kyocera-4501i-PHOTOCOPIERS', 'UnitCost(US$)', 5760, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (195, 'CD-195', 'Fixed Asset', 'Sony VPL-DX10Z-PROJECTOR', 'UnitCost(US$)', 755, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (196, 'CD-196', 'Fixed Asset', 'Projector Panasonic PT-LX26EA-PROJECTOR', 'UnitCost(US$)', 1138, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (197, 'CD-197', 'Fixed Asset', 'Sofa two Setter leather-FURNITURE', 'UnitCost(US$)', 631, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (198, 'CD-198', 'Fixed Asset', 'FILING CABINET                             -FURNITURE', 'UnitCost(US$)', 259, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (199, 'CD-199', 'Fixed Asset', 'TABLE EXECUTIVE                            -FURNITURE', 'UnitCost(US$)', 1641, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (200, 'CD-200', 'Fixed Asset', 'Book shelf 4 doors-FURNITURE', 'UnitCost(US$)', 400, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (201, 'CD-201', 'Fixed Asset', 'Swivel Sitting Stools-FURNITURE', 'UnitCost(US$)', 117, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (202, 'CD-202', 'Fixed Asset', 'Coffee table-FURNITURE', 'UnitCost(US$)', 93, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (203, 'CD-203', 'Fixed Asset', 'Chair, conference-FURNITURE', 'UnitCost(US$)', 123, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (204, 'CD-204', 'Fixed Asset', 'Small Cupboard -FURNITURE', 'UnitCost(US$)', 136, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (205, 'CD-205', 'Fixed Asset', 'Center Table-FURNITURE', 'UnitCost(US$)', 47, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (206, 'CD-206', 'Fixed Asset', 'Conference Table ,-FURNITURE', 'UnitCost(US$)', 1778, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (207, 'CD-207', 'Fixed Asset', 'Chair, conference, leather-FURNITURE', 'UnitCost(US$)', 434, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (208, 'CD-208', 'Fixed Asset', 'Executive Chair, LEATHER-FURNITURE', 'UnitCost(US$)', 826, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (209, 'CD-209', 'Fixed Asset', 'TV Flat screen 42’’-TVs', 'UnitCost(US$)', 658, true, '2019-09-12 00:00:00');
INSERT INTO public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") VALUES (210, 'CD-210', 'Other Costs - Not Listed', 'Costs per Unit -Other Costs - Not Listed', 'UnitCost(US$)', 1, true, '2019-09-12 00:00:00');


--
-- TOC entry 3623 (class 0 OID 25079)
-- Dependencies: 235
-- Data for Name: DSATypes; Type: TABLE DATA; Schema: public; Owner: employee
--

INSERT INTO public."DSATypes" ("DSA_Id", "DSA_Name", "DSA_Value", "DSAType_Status", "TransactionDate") VALUES (1, '100%', 100, true, '2019-09-11 00:00:00');
INSERT INTO public."DSATypes" ("DSA_Id", "DSA_Name", "DSA_Value", "DSAType_Status", "TransactionDate") VALUES (2, '50%', 50, true, '2019-09-11 00:00:00');
INSERT INTO public."DSATypes" ("DSA_Id", "DSA_Name", "DSA_Value", "DSAType_Status", "TransactionDate") VALUES (3, '40%', 40, true, '2019-09-11 00:00:00');
INSERT INTO public."DSATypes" ("DSA_Id", "DSA_Name", "DSA_Value", "DSAType_Status", "TransactionDate") VALUES (4, '25%', 25, true, '2019-09-11 00:00:00');


--
-- TOC entry 3588 (class 0 OID 24856)
-- Dependencies: 200
-- Data for Name: Departments; Type: TABLE DATA; Schema: public; Owner: employee
--

INSERT INTO public."Departments" ("Dept_Id", "Dept_Name", "Dept_Country", "Dept_Address", "Dept_Directorate_Id", "Dept_Status", "TransactionDate") VALUES (1, 'Internal Audit', 'South Africa', '231 15th Rd, Midrand, Johannesburg, 1685', 1, false, '0001-01-01 00:00:00');
INSERT INTO public."Departments" ("Dept_Id", "Dept_Name", "Dept_Country", "Dept_Address", "Dept_Directorate_Id", "Dept_Status", "TransactionDate") VALUES (2, 'Communications ', 'South Africa', '232 15th Rd, Midrand, Johannesburg, 1685', 1, false, '0001-01-01 00:00:00');
INSERT INTO public."Departments" ("Dept_Id", "Dept_Name", "Dept_Country", "Dept_Address", "Dept_Directorate_Id", "Dept_Status", "TransactionDate") VALUES (3, 'Private Sector Engagement', 'South Africa', '233 15th Rd, Midrand, Johannesburg, 1685', 1, false, '0001-01-01 00:00:00');
INSERT INTO public."Departments" ("Dept_Id", "Dept_Name", "Dept_Country", "Dept_Address", "Dept_Directorate_Id", "Dept_Status", "TransactionDate") VALUES (4, 'Legal', 'South Africa', '234 15th Rd, Midrand, Johannesburg, 1685', 1, false, '0001-01-01 00:00:00');
INSERT INTO public."Departments" ("Dept_Id", "Dept_Name", "Dept_Country", "Dept_Address", "Dept_Directorate_Id", "Dept_Status", "TransactionDate") VALUES (5, 'Division of Programme Development', 'South Africa', '236 15th Rd, Midrand, Johannesburg, 1685', 2, false, '0001-01-01 00:00:00');
INSERT INTO public."Departments" ("Dept_Id", "Dept_Name", "Dept_Country", "Dept_Address", "Dept_Directorate_Id", "Dept_Status", "TransactionDate") VALUES (6, 'Division of Data Analytics, Research and Innovation', 'South Africa', '237 15th Rd, Midrand, Johannesburg, 1685', 2, false, '0001-01-01 00:00:00');
INSERT INTO public."Departments" ("Dept_Id", "Dept_Name", "Dept_Country", "Dept_Address", "Dept_Directorate_Id", "Dept_Status", "TransactionDate") VALUES (7, 'Division of Technical Cooperation and Advisory Services', 'South Africa', '238 15th Rd, Midrand, Johannesburg, 1685', 2, false, '0001-01-01 00:00:00');
INSERT INTO public."Departments" ("Dept_Id", "Dept_Name", "Dept_Country", "Dept_Address", "Dept_Directorate_Id", "Dept_Status", "TransactionDate") VALUES (8, 'Division of Environmental Sustainability', 'South Africa', '240 15th Rd, Midrand, Johannesburg, 1685', 3, false, '0001-01-01 00:00:00');
INSERT INTO public."Departments" ("Dept_Id", "Dept_Name", "Dept_Country", "Dept_Address", "Dept_Directorate_Id", "Dept_Status", "TransactionDate") VALUES (9, 'Division of Human Capital and Institutions Development', 'South Africa', '241 15th Rd, Midrand, Johannesburg, 1685', 3, false, '0001-01-01 00:00:00');
INSERT INTO public."Departments" ("Dept_Id", "Dept_Name", "Dept_Country", "Dept_Address", "Dept_Directorate_Id", "Dept_Status", "TransactionDate") VALUES (10, 'Division of Economic Integration', 'South Africa', '242 15th Rd, Midrand, Johannesburg, 1685', 3, false, '0001-01-01 00:00:00');
INSERT INTO public."Departments" ("Dept_Id", "Dept_Name", "Dept_Country", "Dept_Address", "Dept_Directorate_Id", "Dept_Status", "TransactionDate") VALUES (11, 'Division of Industrialization', 'South Africa', '243 15th Rd, Midrand, Johannesburg, 1685', 3, false, '0001-01-01 00:00:00');
INSERT INTO public."Departments" ("Dept_Id", "Dept_Name", "Dept_Country", "Dept_Address", "Dept_Directorate_Id", "Dept_Status", "TransactionDate") VALUES (12, 'Coordinating and Reporting', 'South Africa', '241 15th Rd, Midrand, Johannesburg, 1685', 3, false, '0001-01-01 00:00:00');
INSERT INTO public."Departments" ("Dept_Id", "Dept_Name", "Dept_Country", "Dept_Address", "Dept_Directorate_Id", "Dept_Status", "TransactionDate") VALUES (13, 'Division of Evaluation', 'South Africa', '243 15th Rd, Midrand, Johannesburg, 1685', 4, false, '0001-01-01 00:00:00');
INSERT INTO public."Departments" ("Dept_Id", "Dept_Name", "Dept_Country", "Dept_Address", "Dept_Directorate_Id", "Dept_Status", "TransactionDate") VALUES (14, 'Division of Knowledge Capitalization and Management', 'South Africa', '244 15th Rd, Midrand, Johannesburg, 1685', 4, false, '0001-01-01 00:00:00');
INSERT INTO public."Departments" ("Dept_Id", "Dept_Name", "Dept_Country", "Dept_Address", "Dept_Directorate_Id", "Dept_Status", "TransactionDate") VALUES (15, 'Division of Centre of Excellence Management', 'South Africa', '245 15th Rd, Midrand, Johannesburg, 1685', 4, false, '0001-01-01 00:00:00');
INSERT INTO public."Departments" ("Dept_Id", "Dept_Name", "Dept_Country", "Dept_Address", "Dept_Directorate_Id", "Dept_Status", "TransactionDate") VALUES (16, 'Division of Finance', 'South Africa', '247 15th Rd, Midrand, Johannesburg, 1685', 5, false, '0001-01-01 00:00:00');
INSERT INTO public."Departments" ("Dept_Id", "Dept_Name", "Dept_Country", "Dept_Address", "Dept_Directorate_Id", "Dept_Status", "TransactionDate") VALUES (17, 'Division of Human Resources', 'South Africa', '248 15th Rd, Midrand, Johannesburg, 1685', 5, false, '0001-01-01 00:00:00');
INSERT INTO public."Departments" ("Dept_Id", "Dept_Name", "Dept_Country", "Dept_Address", "Dept_Directorate_Id", "Dept_Status", "TransactionDate") VALUES (18, 'Division of Procurement ', 'South Africa', '249 15th Rd, Midrand, Johannesburg, 1685', 5, false, '0001-01-01 00:00:00');
INSERT INTO public."Departments" ("Dept_Id", "Dept_Name", "Dept_Country", "Dept_Address", "Dept_Directorate_Id", "Dept_Status", "TransactionDate") VALUES (19, 'Information Systems Management', 'South Africa', '250 15th Rd, Midrand, Johannesburg, 1685', 5, false, '0001-01-01 00:00:00');
INSERT INTO public."Departments" ("Dept_Id", "Dept_Name", "Dept_Country", "Dept_Address", "Dept_Directorate_Id", "Dept_Status", "TransactionDate") VALUES (20, 'Enterprise Resource Planning', 'South Africa', '251 15th Rd, Midrand, Johannesburg, 1685', 5, false, '0001-01-01 00:00:00');
INSERT INTO public."Departments" ("Dept_Id", "Dept_Name", "Dept_Country", "Dept_Address", "Dept_Directorate_Id", "Dept_Status", "TransactionDate") VALUES (21, 'Administration', 'South Africa', '252 15th Rd, Midrand, Johannesburg, 1685', 5, false, '0001-01-01 00:00:00');


--
-- TOC entry 3607 (class 0 OID 24997)
-- Dependencies: 219
-- Data for Name: Directorates; Type: TABLE DATA; Schema: public; Owner: employee
--

INSERT INTO public."Directorates" ("Directorate_Id", "Directorate_Name", "Directorate_Country", "Directorate_Address", "Directorate_Status", "TransactionDate") VALUES (1, 'BUREAU OF THE CHIEF EXECUTIVE OFFICER (CEO)', 'South Africa', '230 15th Rd, Midrand, Johannesburg, 1685', false, '0001-01-01 00:00:00');
INSERT INTO public."Directorates" ("Directorate_Id", "Directorate_Name", "Directorate_Country", "Directorate_Address", "Directorate_Status", "TransactionDate") VALUES (2, 'DIRECTORATE OF PROGRAMME INNOVATION AND PLANNING', 'South Africa', '231 15th Rd, Midrand, Johannesburg, 1685', false, '0001-01-01 00:00:00');
INSERT INTO public."Directorates" ("Directorate_Id", "Directorate_Name", "Directorate_Country", "Directorate_Address", "Directorate_Status", "TransactionDate") VALUES (3, 'DIRECTORATE OF PROGRAMME DELIVERY AND COORDINATION ', 'South Africa', '232 15th Rd, Midrand, Johannesburg, 1685', false, '0001-01-01 00:00:00');
INSERT INTO public."Directorates" ("Directorate_Id", "Directorate_Name", "Directorate_Country", "Directorate_Address", "Directorate_Status", "TransactionDate") VALUES (4, 'DIRECTORATE OF KNOWLEDGE MANAGEMENT & PROGRAMME EVALUATION', 'South Africa', '233 15th Rd, Midrand, Johannesburg, 1685', false, '0001-01-01 00:00:00');
INSERT INTO public."Directorates" ("Directorate_Id", "Directorate_Name", "Directorate_Country", "Directorate_Address", "Directorate_Status", "TransactionDate") VALUES (5, 'DIRECTORATE OF OPERATIONS', 'South Africa', '234 15th Rd, Midrand, Johannesburg, 1685', false, '0001-01-01 00:00:00');
INSERT INTO public."Directorates" ("Directorate_Id", "Directorate_Name", "Directorate_Country", "Directorate_Address", "Directorate_Status", "TransactionDate") VALUES (6, 'TECHNICAL COOPERATION AND PROGRAMME FUNDING', 'South Africa', '234 15th Rd, Midrand, Johannesburg, 1685', false, '0001-01-01 00:00:00');


--
-- TOC entry 3601 (class 0 OID 24969)
-- Dependencies: 213
-- Data for Name: EmployeeCountries; Type: TABLE DATA; Schema: public; Owner: employee
--

INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (1, 'Afghanistan ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (2, 'Albania ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (3, 'Algeria ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (4, 'American Samoa ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (5, 'Andorra ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (6, 'Angola ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (7, 'Anguilla ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (8, 'Antigua and Barbuda ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (9, 'Argentina ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (10, 'Armenia ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (11, 'Aruba ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (12, 'Australia ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (13, 'Austria ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (14, 'Azerbaijan ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (15, 'Bahamas, The ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (16, 'Bahrain ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (17, 'Bangladesh ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (18, 'Barbados ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (19, 'Belarus ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (20, 'Belgium ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (21, 'Belize ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (22, 'Benin ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (23, 'Bermuda ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (24, 'Bhutan ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (25, 'Bolivia ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (26, 'Bosnia and Herzegovina ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (27, 'Botswana ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (28, 'Brazil ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (29, 'British Virgin Is. ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (30, 'Brunei ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (31, 'Bulgaria ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (32, 'Burkina Faso ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (33, 'Burma ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (34, 'Burundi ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (35, 'Cambodia ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (36, 'Cameroon ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (37, 'Canada ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (38, 'Cape Verde ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (39, 'Cayman Islands ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (40, 'Central African Rep. ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (41, 'Chad ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (42, 'Chile ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (43, 'China ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (44, 'Colombia ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (45, 'Comoros ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (46, 'Congo, Dem. Rep. ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (47, 'Congo, Repub. of the ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (48, 'Cook Islands ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (49, 'Costa Rica ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (50, 'Cote d''Ivoire ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (51, 'Croatia ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (52, 'Cuba ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (53, 'Cyprus ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (54, 'Czech Republic ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (55, 'Denmark ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (56, 'Djibouti ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (57, 'Dominica ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (58, 'Dominican Republic ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (59, 'East Timor ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (60, 'Ecuador ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (61, 'Egypt ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (62, 'El Salvador ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (63, 'Equatorial Guinea ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (64, 'Eritrea ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (65, 'Estonia ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (66, 'Ethiopia ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (67, 'Faroe Islands ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (68, 'Fiji ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (69, 'Finland ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (70, 'France ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (71, 'French Guiana ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (72, 'French Polynesia ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (73, 'Gabon ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (74, 'Gambia, The ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (75, 'Gaza Strip ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (76, 'Georgia ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (77, 'Germany ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (78, 'Ghana ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (79, 'Gibraltar ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (80, 'Greece ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (81, 'Greenland ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (82, 'Grenada ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (83, 'Guadeloupe ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (84, 'Guam ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (85, 'Guatemala ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (86, 'Guernsey ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (87, 'Guinea ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (88, 'Guinea-Bissau ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (89, 'Guyana ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (90, 'Haiti ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (91, 'Honduras ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (92, 'Hong Kong ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (93, 'Hungary ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (94, 'Iceland ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (95, 'India ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (96, 'Indonesia ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (97, 'Iran ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (98, 'Iraq ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (99, 'Ireland ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (100, 'Isle of Man ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (101, 'Israel ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (102, 'Italy ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (103, 'Jamaica ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (104, 'Japan ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (105, 'Jersey ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (106, 'Jordan ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (107, 'Kazakhstan ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (108, 'Kenya ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (109, 'Kiribati ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (110, 'Korea, North ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (111, 'Korea, South ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (112, 'Kuwait ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (113, 'Kyrgyzstan ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (114, 'Laos ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (115, 'Latvia ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (116, 'Lebanon ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (117, 'Lesotho ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (118, 'Liberia ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (119, 'Libya ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (120, 'Liechtenstein ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (121, 'Lithuania ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (122, 'Luxembourg ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (123, 'Macau ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (124, 'Macedonia ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (125, 'Madagascar ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (126, 'Malawi ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (127, 'Malaysia ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (128, 'Maldives ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (129, 'Mali ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (130, 'Malta ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (131, 'Marshall Islands ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (132, 'Martinique ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (133, 'Mauritania ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (134, 'Mauritius ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (135, 'Mayotte ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (136, 'Mexico ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (137, 'Micronesia, Fed. St. ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (138, 'Moldova ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (139, 'Monaco ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (140, 'Mongolia ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (141, 'Montserrat ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (142, 'Morocco ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (143, 'Mozambique ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (144, 'Namibia ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (145, 'Nauru ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (146, 'Nepal ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (147, 'Netherlands ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (148, 'Netherlands Antilles ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (149, 'New Caledonia ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (150, 'New Zealand ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (151, 'Nicaragua ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (152, 'Niger ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (153, 'Nigeria ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (154, 'N. Mariana Islands ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (155, 'Norway ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (156, 'Oman ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (157, 'Pakistan ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (158, 'Palau ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (159, 'Panama ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (160, 'Papua New Guinea ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (161, 'Paraguay ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (162, 'Peru ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (163, 'Philippines ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (164, 'Poland ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (165, 'Portugal ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (166, 'Puerto Rico ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (167, 'Qatar ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (168, 'Reunion ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (169, 'Romania ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (170, 'Russia ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (171, 'Rwanda ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (172, 'Saint Helena ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (173, 'Saint Kitts and Nevis ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (174, 'Saint Lucia ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (175, 'St Pierre and Miquelon ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (176, 'Saint Vincent and the Grenadines ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (177, 'Samoa ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (178, 'San Marino ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (179, 'Sao Tome and Principe ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (180, 'Saudi Arabia ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (181, 'Senegal ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (182, 'Serbia ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (183, 'Seychelles ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (184, 'Sierra Leone ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (185, 'Singapore ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (186, 'Slovakia ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (187, 'Slovenia ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (188, 'Solomon Islands ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (189, 'Somalia ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (190, 'South Africa ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (191, 'Spain ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (192, 'Sri Lanka ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (193, 'Sudan ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (194, 'Suriname ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (195, 'Swaziland ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (196, 'Sweden ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (197, 'Switzerland ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (198, 'Syria ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (199, 'Taiwan ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (200, 'Tajikistan ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (201, 'Tanzania ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (202, 'Thailand ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (203, 'Togo ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (204, 'Tonga ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (205, 'Trinidad and Tobago ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (206, 'Tunisia ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (207, 'Turkey ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (208, 'Turkmenistan ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (209, 'Turks and Caicos Is ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (210, 'Tuvalu ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (211, 'Uganda ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (212, 'Ukraine ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (213, 'United Arab Emirates ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (214, 'United Kingdom ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (215, 'United States ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (216, 'Uruguay ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (217, 'Uzbekistan ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (218, 'Vanuatu ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (219, 'Venezuela ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (220, 'Vietnam ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (221, 'Virgin Islands ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (222, 'Wallis and Futuna ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (223, 'West Bank ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (224, 'Western Sahara ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (225, 'Yemen ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (226, 'Zambia ', false, '0001-01-01 00:00:00');
INSERT INTO public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") VALUES (227, 'Zimbabwe ', false, '0001-01-01 00:00:00');


--
-- TOC entry 3590 (class 0 OID 24867)
-- Dependencies: 202
-- Data for Name: Employees; Type: TABLE DATA; Schema: public; Owner: employee
--

INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (38, NULL, '1000', 8, 1, NULL, 'Clement', 'Adjorlolo   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 11, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (39, NULL, '1000', 8, 1, NULL, 'Collen', 'Moyo   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 21, 5, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (40, NULL, '1000', 8, 1, NULL, 'Collet', 'Sibanda   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 26, 5, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (41, NULL, '1000', 8, 1, NULL, 'Cordelia', 'Kegoriloe   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 20, 5, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (42, NULL, '1000', 8, 1, NULL, 'Corine', 'Motouom   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 23, 5, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (43, NULL, '1000', 8, 1, NULL, 'Dorah', 'Mwaiseghe   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 22, 5, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (44, NULL, '1000', 8, 1, NULL, 'Dorcas', 'Bapela   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 26, 5, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (45, NULL, '1000', 8, 1, NULL, 'Duduzile', 'Mkumla   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 21, 5, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (46, NULL, '1000', 8, 1, NULL, 'Edith', 'Maboumba   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 11, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (47, NULL, '1000', 8, 1, NULL, 'Edna', 'Kalima   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 11, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (48, NULL, '1000', 8, 1, NULL, 'Eliane', 'Charlotte Ngnasoke Koko ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 12, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (49, NULL, '1000', 8, 1, NULL, 'Ellen', 'Huruva   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 21, 5, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (50, NULL, '1000', 8, 1, NULL, 'Elspeth', 'Coetzer   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 21, 5, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (51, NULL, '1000', 8, 1, NULL, 'Emmanuel', 'Kamdem   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 7, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (1, NULL, '1000', 8, 1, NULL, 'Abdou', 'Rahman Mboob  ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 14, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (2, NULL, '1000', 8, 1, NULL, 'Abiola', 'D. Ajayi  ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 16, 4, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (4, NULL, '1000', 8, 1, NULL, 'Adama', 'Kone   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 26, 5, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (5, NULL, '1000', 8, 1, NULL, 'Agnes', 'Amakie Gidimadzor  ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 19, 4, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (6, NULL, '1000', 8, 1, NULL, 'Ague', 'Charlotte   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 9, 2, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (7, NULL, '1000', 8, 1, NULL, 'Ahmed', 'Bakheit   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 26, 5, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (8, NULL, '1000', 8, 1, NULL, 'Amadou', 'Diallo   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 19, 4, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (9, NULL, '1000', 8, 1, NULL, 'Amb.', 'Haladou Salha  ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 11, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (12, NULL, '1000', 8, 1, NULL, 'Andile', 'Edmos Khanye  ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 26, 5, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (13, NULL, '1000', 8, 1, NULL, 'Andriette', 'Ferreira   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 16, 4, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (14, NULL, '1000', 8, 1, NULL, 'Andson', 'Nsune   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 7, 2, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (15, NULL, '1000', 8, 1, NULL, 'Arshfod', 'Njenga Ngugi  ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 12, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (16, NULL, '1000', 8, 1, NULL, 'Aseye', 'Ahoto   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 23, 5, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (17, NULL, '1000', 8, 1, NULL, 'Assia', 'Meghfour   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 1, 1, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (18, NULL, '1000', 8, 1, NULL, 'Augustin', 'H Wambo Yamdjeu ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 11, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (19, NULL, '1000', 8, 1, NULL, 'Axel', 'Rusenga   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 13, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (21, NULL, '1000', 8, 1, NULL, 'Barbara', 'Glover   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 16, 4, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (22, NULL, '1000', 8, 1, NULL, 'Batho', 'Meshack Maruping  ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 23, 5, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (23, NULL, '1000', 8, 1, NULL, 'Ben', 'Kenjiro   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 12, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (24, NULL, '1000', 8, 1, NULL, 'Benita', 'Mukania Nsabua  ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 19, 4, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (25, NULL, '1000', 8, 1, NULL, 'Benjamin', 'Akobundu   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 11, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (26, NULL, '1000', 8, 1, NULL, 'Bernice', 'Lynne Mclean  ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 11, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (27, NULL, '1000', 8, 1, NULL, 'Betty', 'Amunga   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 11, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (28, NULL, '1000', 8, 1, NULL, 'Bob', 'Kalanzi   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 9, 2, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (29, NULL, '1000', 8, 1, NULL, 'Boitshepo', 'Bibi Giyose  ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 12, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (30, NULL, '1000', 8, 1, NULL, 'Boitumelo', 'Mabusela   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 16, 4, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (31, NULL, '1000', 8, 1, NULL, 'Buhle', 'Hlatswayo   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 12, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (32, NULL, '1000', 8, 1, NULL, 'Caroline', 'Mutepfa   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 12, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (33, NULL, '1000', 8, 1, NULL, 'Cecillia', 'Tshinnane Lethole  ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 24, 5, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (34, NULL, '1000', 8, 1, NULL, 'Cheikh', 'Tidjane N''dongo  ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 11, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (36, NULL, '1000', 8, 1, NULL, 'Chipiliro', 'Saka   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 13, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (37, NULL, '1000', 8, 1, NULL, 'Chola', 'Mfula   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 19, 4, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (52, NULL, '1000', 8, 1, NULL, 'Eric', 'Fenu   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 22, 5, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (53, NULL, '1000', 8, 1, NULL, 'Eric', 'Sile   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 12, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (54, NULL, '1000', 8, 1, NULL, 'Ernestinna', 'Maame   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 27, 6, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (56, NULL, '1000', 8, 1, NULL, 'Etami', 'Ndoping   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 19, 4, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (57, NULL, '1000', 8, 1, NULL, 'Eugene', 'Owusu-Ansah   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 1, 1, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (58, NULL, '1000', 8, 1, NULL, 'Eva', 'Fatima Micheline Moussa ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 5, 1, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (59, NULL, '1000', 8, 1, NULL, 'Eva', 'Mashadi Rankoko  ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 6, 2, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (60, NULL, '1000', 8, 1, NULL, 'External', 'participant   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 27, 6, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (61, NULL, '1000', 8, 1, NULL, 'Eyram', 'Amovin-Assagba   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 19, 4, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (62, NULL, '1000', 8, 1, NULL, 'Fasil', 'Birega   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 21, 5, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (63, NULL, '1000', 8, 1, NULL, 'Faten', 'Aggad   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 1, 1, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (65, NULL, '1000', 8, 1, NULL, 'Fatou', 'Ceesay Jallow  ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 1, 1, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (66, NULL, '1000', 8, 1, NULL, 'Felistas', 'Lusungu Chirwa  ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 26, 5, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (67, NULL, '1000', 8, 1, NULL, 'FINANCE', 'STAFF TBD  ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 21, 5, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (55, 'e1ea3dd3-b12b-4ad3-986b-559612ef7818', '7004', 8, 1, NULL, 'Estherine', 'Lisinge-Fotabong   ', 'gideonn@nepad.org', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 6, 2, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (35, 'b05d8a80-47fc-4eb0-8494-d20db97f1765', '1000', 8, 1, NULL, 'Chimwemwe', 'Chamdimba   ', 'gideonn@nepad.org', '1900-01-01 00:00:00', 2, NULL, NULL, NULL, NULL, 190, 9, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (10, NULL, '3550', 8, 1, NULL, 'Ambali', 'Aggrey   ', 'gideonn@nepad.org', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 1, 6, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (70, NULL, '1000', 8, 1, NULL, 'Frederick', 'Kwame Ababio  ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 11, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (71, NULL, '1000', 8, 1, NULL, 'Fumito', 'Morinaga   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 12, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (72, NULL, '1000', 8, 1, NULL, 'George', 'Murumba   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 13, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (74, NULL, '1000', 8, 1, NULL, 'Gloria', 'Lufuno Manaka  ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 1, 1, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (75, NULL, '1000', 8, 1, NULL, 'Grace', 'Sauls   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 1, 1, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (76, NULL, '1000', 8, 1, NULL, 'Halilou', 'Soulemanou Mohaman  ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 12, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (77, NULL, '1000', 8, 1, NULL, 'Hamady', 'Diop   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 11, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (78, NULL, '1000', 8, 1, NULL, 'Hazvibvi', 'Daphine Muzawazi  ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 7, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (79, NULL, '1000', 8, 1, NULL, 'Hiligale', 'Flaure Lekpeli  ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 26, 5, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (80, NULL, '1000', 8, 1, NULL, 'Hlengekile', 'Thembekwayo   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 21, 5, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (81, NULL, '1000', 8, 1, NULL, 'Hlengiwe', 'Ginindza   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 22, 5, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (82, NULL, '1000', 8, 1, NULL, 'Hudu', 'Mogtari   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 19, 4, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (83, NULL, '1000', 8, 1, NULL, 'Ibrahim', 'Gourouza   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 19, 4, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (84, NULL, '1000', 8, 1, NULL, 'Ibrahima', 'Diene   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 19, 4, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (85, NULL, '1000', 8, 1, NULL, 'Irene', 'Okonkwo   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 12, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (86, NULL, '1000', 8, 1, NULL, 'Jacinta', 'Ndegwa   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 1, 1, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (88, NULL, '1000', 8, 1, NULL, 'Jason', 'Liddell   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 24, 5, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (89, NULL, '1000', 8, 1, NULL, 'Jean', 'Kebere   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 19, 4, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (90, NULL, '1000', 8, 1, NULL, 'Jennifer', 'Susan Chiriga  ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 1, 6, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (91, NULL, '1000', 8, 1, NULL, 'Jeremy', 'Tinga Ouedraogo  ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 19, 4, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (92, NULL, '1000', 8, 1, NULL, 'Jessica', 'Lobe   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 27, 6, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (93, NULL, '1000', 8, 1, NULL, 'Jessica', 'Randy Annor  ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 27, 6, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (94, NULL, '1000', 8, 1, NULL, 'Jessie', 'Mvula   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 19, 4, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (95, NULL, '1000', 8, 1, NULL, 'Josiane', 'Kantiono   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 1, 1, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (96, NULL, '1000', 8, 1, NULL, 'Justina', 'Dugbazah   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 12, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (97, NULL, '1000', 8, 1, NULL, 'Kamay', 'Andre Makusudi  ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 26, 5, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (98, NULL, '1000', 8, 1, NULL, 'Kebba', 'Colley   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 19, 4, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (99, NULL, '1000', 8, 1, NULL, 'Kefilwe', 'Moalosi   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 12, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (100, NULL, '1000', 8, 1, NULL, 'Kevin', 'Shukuru Kahatano  ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 27, 6, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (101, NULL, '1000', 8, 1, NULL, 'Kisa', 'Nkhoma   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 13, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (102, NULL, '1000', 8, 1, NULL, 'Kitemano', 'Mbilinyi   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 2, 1, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (104, NULL, '1000', 8, 1, NULL, 'Ladji', 'Sidibe   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 25, 5, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (105, NULL, '1000', 8, 1, NULL, 'Lassina', 'Drame   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 19, 4, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (107, NULL, '1000', 8, 1, NULL, 'Leah', 'Kasera   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 19, 4, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (108, NULL, '1000', 8, 1, NULL, 'Linda', 'Bhengu   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 24, 5, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (109, NULL, '1000', 8, 1, NULL, 'Linda', 'Gouman   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 22, 5, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (110, NULL, '1000', 8, 1, NULL, 'Litha', 'Musyimi Oganda  ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 27, 6, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (111, NULL, '1000', 8, 1, NULL, 'Louis', 'Gnagbe   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 13, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (112, NULL, '1000', 8, 1, NULL, 'Lukovi', 'Seke   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 4, 6, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (113, NULL, '1000', 8, 1, NULL, 'Madada', 'Diawara   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 19, 4, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (114, NULL, '1000', 8, 1, NULL, 'Makinde', 'Diran   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 27, 6, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (115, NULL, '1000', 8, 1, NULL, 'Mamadou', 'M Diakhite  ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 11, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (116, NULL, '1000', 8, 1, NULL, 'Mamoteane', 'Manana Mashologu  ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 1, 6, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (117, NULL, '1000', 8, 1, NULL, 'Manyewu', 'Mutamba   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 11, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (118, NULL, '1000', 8, 1, NULL, 'Margaret', 'Mahlomuza   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 1, 6, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (120, NULL, '1000', 8, 1, NULL, 'Maria', 'Jose Guerrero Ledo ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 12, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (121, NULL, '1000', 8, 1, NULL, 'Mariam', 'Seynou Ouedraogo  ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 19, 4, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (122, NULL, '1000', 8, 1, NULL, 'Mariam', 'Sow Soumare  ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 11, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (125, NULL, '1000', 8, 1, NULL, 'Mercedes', 'Leburu   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 16, 4, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (126, NULL, '1000', 8, 1, NULL, 'Mercy', 'Fomundam   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 7, 2, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (127, NULL, '1000', 8, 1, NULL, 'Mercy', 'King''ori   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 11, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (128, NULL, '1000', 8, 1, NULL, 'Millicent', 'Kgeledi   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 3, 1, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (129, NULL, '1000', 8, 1, NULL, 'Mkhanyeli', 'Michael Mabhena  ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 23, 5, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (130, NULL, '1000', 8, 1, NULL, 'Modupe', 'Adeyemo   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 19, 4, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (131, NULL, '1000', 8, 1, NULL, 'Mogomotsi', 'Seboko   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 6, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (133, NULL, '1000', 8, 1, NULL, 'Mosad', 'Elmissiry   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 13, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (134, NULL, '1000', 8, 1, NULL, 'Mountaka', 'Wahabou Ibrah  ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 13, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (69, NULL, '3632', 8, 1, NULL, 'Florence', 'Nazare   ', 'gideonn@nepad.org', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 9, 2, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (123, NULL, '3605', 8, 1, NULL, 'Martin', 'Bwalya   ', 'gideonn@nepad.org', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 14, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (103, NULL, '3642', 8, 1, NULL, 'Kossi', 'Toulassi   ', 'gideonn@nepad.org', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 7, 2, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (124, 'c115746d-921d-4c70-8853-c7123089c0e0', '3656', 8, 1, NULL, 'Mayaki', 'Ibrahim Assane (Dr) ', 'gideonn@nepad.org', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 1, 1, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (68, '42e61067-8906-415a-b53a-6e7718a7c724', '1000', 8, 1, NULL, 'Flore', 'Kamdomg   ', 'gideonn@nepad.org', '1900-01-01 00:00:00', 2, NULL, NULL, NULL, NULL, 190, 10, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (87, 'ac81ecdd-64a2-488e-a516-40fd8e1a93c8', '1000', 8, 1, NULL, 'Janet', 'Byaruhanga   ', 'janetb@nepad.org', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 12, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (135, NULL, '1000', 8, 1, NULL, 'Musa', 'Mukoma   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 22, 5, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (136, NULL, '1000', 8, 1, NULL, 'Mutale', 'Ng''andu   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 12, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (137, NULL, '1000', 8, 1, NULL, 'Mwanja', 'Susan Kayamba Ng''anjo ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 3, 1, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (139, NULL, '1000', 8, 1, NULL, 'Ngoni', 'Kachisi   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 23, 5, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (140, NULL, '1000', 8, 1, NULL, 'Nhamo', 'Simuka   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 23, 5, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (141, NULL, '1000', 8, 1, NULL, 'Nhlalwenhle', 'Mbuyazwe   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 26, 5, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (142, NULL, '1000', 8, 1, NULL, 'Nicole', 'Gounon   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 1, 1, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (143, NULL, '1000', 8, 1, NULL, 'Nina', 'Douonso Edwige Konate ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 19, 4, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (144, NULL, '1000', 8, 1, NULL, 'Noah', 'Kamanga   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 21, 5, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (145, NULL, '1000', 8, 1, NULL, 'Nomawethu', 'Sheila Msezana  ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 21, 5, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (146, NULL, '1000', 8, 1, NULL, 'Nonhlanhla', 'Thelma Dhlamini  ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 1, 6, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (147, NULL, '1000', 8, 1, NULL, 'Nonkululeko', 'Mtimunye   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 26, 5, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (148, NULL, '1000', 8, 1, NULL, 'Norman', 'Khoza   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 12, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (149, NULL, '1000', 8, 1, NULL, 'Nthabiseng', 'Moiloa   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 12, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (150, NULL, '1000', 8, 1, NULL, 'Nyiko', 'Khoza   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 19, 4, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (151, NULL, '1000', 8, 1, NULL, 'OCEO''s', 'COMMUNICATION STAFF - TBD', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 3, 1, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (152, NULL, '1000', 8, 1, NULL, 'Olalekan', 'Akinbo   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 19, 4, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (153, NULL, '1000', 8, 1, NULL, 'Ouma', 'Mokoena   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 21, 5, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (154, NULL, '1000', 8, 1, NULL, 'Oumou', 'Barry   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 19, 4, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (155, NULL, '1000', 8, 1, NULL, 'Pamla', 'Gopaul   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 1, 6, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (156, NULL, '1000', 8, 1, NULL, 'Patrick', 'Ramaoka   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 1, 1, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (158, NULL, '1000', 8, 1, NULL, 'Paul', 'Kiptum Tanui  ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 12, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (159, NULL, '1000', 8, 1, NULL, 'Peter', 'Chikati   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 25, 5, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (160, NULL, '1000', 8, 1, NULL, 'Petra', 'Lahan   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 27, 6, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (161, NULL, '1000', 8, 1, NULL, 'PROCUREMENT', 'STAFF - TBD ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 23, 5, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (162, NULL, '1000', 8, 1, NULL, 'Rachid', 'Basso Sanfo  ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 7, 2, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (164, NULL, '1000', 8, 1, NULL, 'Robert', 'Muyanga   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 14, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (165, NULL, '1000', 8, 1, NULL, 'Robert', 'Sithole   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 21, 5, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (166, NULL, '1000', 8, 1, NULL, 'Rosalie', 'Ndeye Lo  ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 12, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (167, NULL, '1000', 8, 1, NULL, 'Rose', 'Ngenue   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 26, 5, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (168, NULL, '1000', 8, 1, NULL, 'Rose-Mary', 'Nndanganeni   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 21, 5, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (169, NULL, '1000', 8, 1, NULL, 'Rudo', 'Makunike   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 11, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (170, NULL, '1000', 8, 1, NULL, 'Salif', 'Sada Sall  ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 1, 1, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (171, NULL, '1000', 8, 1, NULL, 'Sami', 'Hafnaoui   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 9, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (172, NULL, '1000', 8, 1, NULL, 'Samuel', 'Timpo   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 19, 4, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (173, NULL, '1000', 8, 1, NULL, 'Sandra', 'Naidoo   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 22, 5, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (174, NULL, '1000', 8, 1, NULL, 'Savadogo', 'Moussa   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 19, 4, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (175, NULL, '1000', 8, 1, NULL, 'Seleman', 'Kitenga   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 27, 6, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (176, NULL, '1000', 8, 1, NULL, 'Silas', 'Obukosia   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 19, 4, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (177, NULL, '1000', 8, 1, NULL, 'Simbini', 'Tichakunda   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 13, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (178, NULL, '1000', 8, 1, NULL, 'Simon', 'Kisira   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 1, 6, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (180, NULL, '1000', 8, 1, NULL, 'Sivetshe', 'Zodidi   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 11, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (181, NULL, '1000', 8, 1, NULL, 'Snowden', 'Mmadi   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 13, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (182, NULL, '1000', 8, 1, NULL, 'Solomon', 'Bopape   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 27, 6, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (183, NULL, '1000', 8, 1, NULL, 'Sunday', 'Akile   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 19, 4, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (186, NULL, '1000', 8, 1, NULL, 'Tandeka', 'Nkiwane C  ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 1, 1, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (188, NULL, '1000', 8, 1, NULL, 'Teko', 'Stephen Nhlapo  ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 11, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (189, NULL, '1000', 8, 1, NULL, 'Temalangeni', 'Dlamini   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 23, 5, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (190, NULL, '1000', 8, 1, NULL, 'Tendai', 'Tofa   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 11, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (192, NULL, '1000', 8, 1, NULL, 'Tomoyuki', 'Yamada   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 14, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (196, NULL, '1000', 8, 1, NULL, 'Vanessa', 'Msengezi   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 12, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (197, NULL, '1000', 8, 1, NULL, 'Victoria', 'Oyebanji   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 5, 1, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (198, NULL, '1000', 8, 1, NULL, 'Victorine', 'Mekesse Bikie  ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 23, 5, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (200, NULL, '1000', 8, 1, NULL, 'Vincent', 'Oparah   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 12, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (201, NULL, '1000', 8, 1, NULL, 'Woldeyesus', 'Sinebo   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 19, 4, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (202, NULL, '1000', 8, 1, NULL, 'Younes', 'Touitha   ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 9, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (163, NULL, '3621', 8, 1, NULL, 'Rebecca', 'Oloo   ', 'gideonn@nepad.org', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 22, 5, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (199, NULL, '3503', 8, 1, NULL, 'Vincent', 'Moola   ', 'gideonn@nepad.org', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 23, 5, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (191, NULL, '7002', 8, 1, NULL, 'Tichaona', 'Mangwende   ', 'gideonn@nepad.org', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 8, 2, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (185, NULL, '3678', 8, 1, NULL, 'Talla', 'Kebe   ', 'gideonn@nepad.org', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 1, 1, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (184, NULL, '3593', 8, 1, NULL, 'Symerre', 'Grey-Johnson   ', 'gideonn@nepad.org', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 20, 5, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (179, 'ce777098-0692-4248-bb28-554acba8d021', '1000', 8, 1, NULL, 'Sindisiwe', 'Mkhize   ', 'gideonn@nepad.org', '1900-01-01 00:00:00', 2, NULL, NULL, NULL, NULL, 190, 9, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (203, NULL, '1000', 8, 1, NULL, 'Zaka', 'Diana Mawoko  ', '', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 27, 6, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (157, NULL, '3650', 8, 1, NULL, 'Patrick', 'Sanyu Mbaijana  ', 'gideonn@nepad.org', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 26, 5, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (106, NULL, '3590', 8, 1, NULL, 'Lazare', 'Edzogo   ', 'gideonn@nepad.org', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 25, 5, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (187, '426f9586-3ac6-42f3-863f-a19f3e068d05', '3571', 8, 1, NULL, 'Tatek', 'Shewandagne   ', 'gideonn@nepad.org', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 24, 5, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (20, 'e1ea3dd3-b12b-4ad3-986b-559612ef7818', '3603', 8, 1, NULL, 'Azeb', 'Desta Gebreselassie  ', 'gideonn@nepad.org', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 21, 5, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (73, 'e1ea3dd3-b12b-4ad3-986b-559612ef7818', '6025', 6, 5, '1067808e-ea9f-4488-97dd-dd5422969631_gideon.jpg', 'Gideon', 'Nimako   ', 'gideonn@nepad.org', '1981-11-18 00:00:00', 1, '81 Tamboti Road, Unit 57A', 'Midrand', 'Gauteng', '1685', 190, 6, 2, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (3, '8cb59a1d-85f1-49f4-b11c-35e3f8a8dec7', '1000', 8, 1, NULL, 'Adama', 'Deen   ', 'gideonn@nepad.org', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 10, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (11, 'f5534c60-e2d2-4559-9447-be4214537f6c', '7003', 8, 1, NULL, 'Amine', 'Idriss Adoum  ', 'gideonn@nepad.org', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 6, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (195, 'e526e15d-47dd-46a4-93ea-c718a31ebc37', '1000', 8, 1, NULL, 'Unami', 'Teressa Mpofu  ', 'gideonn@nepad.org', '1900-01-01 00:00:00', 2, NULL, NULL, NULL, NULL, 190, 12, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (193, '932d7713-80a3-4b8d-8b71-56f24bfbad81', '1000', 8, 1, NULL, 'Toussainte', 'Nadje Tchakounte  ', 'gideonn@nepad.org', '1900-01-01 00:00:00', 2, NULL, NULL, NULL, NULL, 190, 10, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (194, 'ba0a2ad8-b885-4af3-ac43-3930844541da', '1000', 8, 1, NULL, 'Towela', 'Nyirenda-Jere   ', 'gideonn@nepad.org', '1900-01-01 00:00:00', 2, NULL, NULL, NULL, NULL, 190, 10, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (132, '456e0e1f-e6b0-40d4-bca4-e58405c84cf4', '7001', 8, 1, NULL, 'Mohamed', 'H Abdisalam  ', 'gideonn@nepad.org', '1900-01-01 00:00:00', 1, NULL, NULL, NULL, NULL, 190, 10, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (64, '0f919f24-2586-46d8-85bb-56068bbde066', '3540', 8, 1, NULL, 'Fati', 'N''zi-Hassane   ', 'gideonn@nepad.org', '1900-01-01 00:00:00', 2, NULL, NULL, NULL, NULL, 190, 9, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (119, 'd1075c1c-cb7c-480d-93c8-6931090d1f3d', '1000', 8, 1, NULL, 'Margareth', 'Ndomondo-Sigonda   ', 'gideonn@nepad.org', '1900-01-01 00:00:00', 2, NULL, NULL, NULL, NULL, 190, 9, 3, true, '2019-09-04 00:00:00');
INSERT INTO public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") VALUES (138, '2c82c275-b340-45f3-86f5-4c819d4e9814', '1000', 8, 1, NULL, 'Nancy', 'Ngum   ', 'gideonn@nepad.org', '1900-01-01 00:00:00', 2, NULL, NULL, NULL, NULL, 190, 9, 3, true, '2019-09-04 00:00:00');


--
-- TOC entry 3634 (class 0 OID 25188)
-- Dependencies: 246
-- Data for Name: ExternalPersonsTypes; Type: TABLE DATA; Schema: public; Owner: employee
--

INSERT INTO public."ExternalPersonsTypes" ("ExternalPersonsType_Id", "ExternalPersonsType_Name", "ExternalPersonsType_Status", "TransactionDate") VALUES (1, 'AUC', true, '2019-09-12 00:00:00');
INSERT INTO public."ExternalPersonsTypes" ("ExternalPersonsType_Id", "ExternalPersonsType_Name", "ExternalPersonsType_Status", "TransactionDate") VALUES (2, 'REC Staff', true, '2019-09-12 00:00:00');
INSERT INTO public."ExternalPersonsTypes" ("ExternalPersonsType_Id", "ExternalPersonsType_Name", "ExternalPersonsType_Status", "TransactionDate") VALUES (3, 'Member State (Government)', true, '2019-09-12 00:00:00');
INSERT INTO public."ExternalPersonsTypes" ("ExternalPersonsType_Id", "ExternalPersonsType_Name", "ExternalPersonsType_Status", "TransactionDate") VALUES (4, 'Member State (Parliament)', true, '2019-09-12 00:00:00');
INSERT INTO public."ExternalPersonsTypes" ("ExternalPersonsType_Id", "ExternalPersonsType_Name", "ExternalPersonsType_Status", "TransactionDate") VALUES (5, 'NGOs', true, '2019-09-12 00:00:00');
INSERT INTO public."ExternalPersonsTypes" ("ExternalPersonsType_Id", "ExternalPersonsType_Name", "ExternalPersonsType_Status", "TransactionDate") VALUES (6, 'Private sector', true, '2019-09-12 00:00:00');
INSERT INTO public."ExternalPersonsTypes" ("ExternalPersonsType_Id", "ExternalPersonsType_Name", "ExternalPersonsType_Status", "TransactionDate") VALUES (7, 'UN Organisation', true, '2019-09-12 00:00:00');
INSERT INTO public."ExternalPersonsTypes" ("ExternalPersonsType_Id", "ExternalPersonsType_Name", "ExternalPersonsType_Status", "TransactionDate") VALUES (8, 'Other International Organisation', true, '2019-09-12 00:00:00');
INSERT INTO public."ExternalPersonsTypes" ("ExternalPersonsType_Id", "ExternalPersonsType_Name", "ExternalPersonsType_Status", "TransactionDate") VALUES (9, 'Private Sector Participants', true, '2019-09-12 00:00:00');
INSERT INTO public."ExternalPersonsTypes" ("ExternalPersonsType_Id", "ExternalPersonsType_Name", "ExternalPersonsType_Status", "TransactionDate") VALUES (10, 'Youth Organisation', true, '2019-09-12 00:00:00');
INSERT INTO public."ExternalPersonsTypes" ("ExternalPersonsType_Id", "ExternalPersonsType_Name", "ExternalPersonsType_Status", "TransactionDate") VALUES (11, 'Women Organisation', true, '2019-09-12 00:00:00');
INSERT INTO public."ExternalPersonsTypes" ("ExternalPersonsType_Id", "ExternalPersonsType_Name", "ExternalPersonsType_Status", "TransactionDate") VALUES (12, 'Research Center', true, '2019-09-12 00:00:00');
INSERT INTO public."ExternalPersonsTypes" ("ExternalPersonsType_Id", "ExternalPersonsType_Name", "ExternalPersonsType_Status", "TransactionDate") VALUES (13, 'Academia or Scholars', true, '2019-09-12 00:00:00');
INSERT INTO public."ExternalPersonsTypes" ("ExternalPersonsType_Id", "ExternalPersonsType_Name", "ExternalPersonsType_Status", "TransactionDate") VALUES (14, 'Community leaders', true, '2019-09-12 00:00:00');
INSERT INTO public."ExternalPersonsTypes" ("ExternalPersonsType_Id", "ExternalPersonsType_Name", "ExternalPersonsType_Status", "TransactionDate") VALUES (15, 'Others', true, '2019-09-12 00:00:00');


--
-- TOC entry 3643 (class 0 OID 33520)
-- Dependencies: 255
-- Data for Name: FiscalYears; Type: TABLE DATA; Schema: public; Owner: employee
--

INSERT INTO public."FiscalYears" ("Year_Id", "Year_Name", "Year_Status", "TransactionDate", "Year_Id_Iter") VALUES ('2020', '2020', true, '2019-10-10 00:00:00', 1);
INSERT INTO public."FiscalYears" ("Year_Id", "Year_Name", "Year_Status", "TransactionDate", "Year_Id_Iter") VALUES ('2021', '2021', true, '2019-10-10 00:00:00', 2);
INSERT INTO public."FiscalYears" ("Year_Id", "Year_Name", "Year_Status", "TransactionDate", "Year_Id_Iter") VALUES ('2022', '2022', true, '2019-10-10 00:00:00', 3);
INSERT INTO public."FiscalYears" ("Year_Id", "Year_Name", "Year_Status", "TransactionDate", "Year_Id_Iter") VALUES ('2023', '2023', true, '2019-10-10 00:00:00', 4);
INSERT INTO public."FiscalYears" ("Year_Id", "Year_Name", "Year_Status", "TransactionDate", "Year_Id_Iter") VALUES ('2024', '2024', true, '2019-10-10 00:00:00', 5);
INSERT INTO public."FiscalYears" ("Year_Id", "Year_Name", "Year_Status", "TransactionDate", "Year_Id_Iter") VALUES ('2025', '2025', true, '2019-10-10 00:00:00', 6);
INSERT INTO public."FiscalYears" ("Year_Id", "Year_Name", "Year_Status", "TransactionDate", "Year_Id_Iter") VALUES ('2026', '2026', true, '2019-10-10 00:00:00', 7);
INSERT INTO public."FiscalYears" ("Year_Id", "Year_Name", "Year_Status", "TransactionDate", "Year_Id_Iter") VALUES ('2027', '2027', true, '2019-10-10 00:00:00', 8);
INSERT INTO public."FiscalYears" ("Year_Id", "Year_Name", "Year_Status", "TransactionDate", "Year_Id_Iter") VALUES ('2028', '2028', true, '2019-10-10 00:00:00', 9);
INSERT INTO public."FiscalYears" ("Year_Id", "Year_Name", "Year_Status", "TransactionDate", "Year_Id_Iter") VALUES ('2029', '2029', true, '2019-10-10 00:00:00', 10);
INSERT INTO public."FiscalYears" ("Year_Id", "Year_Name", "Year_Status", "TransactionDate", "Year_Id_Iter") VALUES ('2030', '2030', true, '2019-10-10 00:00:00', 11);
INSERT INTO public."FiscalYears" ("Year_Id", "Year_Name", "Year_Status", "TransactionDate", "Year_Id_Iter") VALUES ('2031', '2031', true, '2019-10-10 00:00:00', 12);
INSERT INTO public."FiscalYears" ("Year_Id", "Year_Name", "Year_Status", "TransactionDate", "Year_Id_Iter") VALUES ('2032', '2032', true, '2019-10-10 00:00:00', 13);
INSERT INTO public."FiscalYears" ("Year_Id", "Year_Name", "Year_Status", "TransactionDate", "Year_Id_Iter") VALUES ('2033', '2033', true, '2019-10-10 00:00:00', 14);
INSERT INTO public."FiscalYears" ("Year_Id", "Year_Name", "Year_Status", "TransactionDate", "Year_Id_Iter") VALUES ('2034', '2034', true, '2019-10-10 00:00:00', 15);
INSERT INTO public."FiscalYears" ("Year_Id", "Year_Name", "Year_Status", "TransactionDate", "Year_Id_Iter") VALUES ('2035', '2035', true, '2019-10-10 00:00:00', 16);
INSERT INTO public."FiscalYears" ("Year_Id", "Year_Name", "Year_Status", "TransactionDate", "Year_Id_Iter") VALUES ('2036', '2036', true, '2019-10-10 00:00:00', 17);
INSERT INTO public."FiscalYears" ("Year_Id", "Year_Name", "Year_Status", "TransactionDate", "Year_Id_Iter") VALUES ('2037', '2037', true, '2019-10-10 00:00:00', 18);
INSERT INTO public."FiscalYears" ("Year_Id", "Year_Name", "Year_Status", "TransactionDate", "Year_Id_Iter") VALUES ('2038', '2038', true, '2019-10-10 00:00:00', 19);
INSERT INTO public."FiscalYears" ("Year_Id", "Year_Name", "Year_Status", "TransactionDate", "Year_Id_Iter") VALUES ('2039', '2039', true, '2019-10-10 00:00:00', 20);
INSERT INTO public."FiscalYears" ("Year_Id", "Year_Name", "Year_Status", "TransactionDate", "Year_Id_Iter") VALUES ('2040', '2040', true, '2019-10-10 00:00:00', 21);
INSERT INTO public."FiscalYears" ("Year_Id", "Year_Name", "Year_Status", "TransactionDate", "Year_Id_Iter") VALUES ('2041', '2041', true, '2019-10-10 00:00:00', 22);
INSERT INTO public."FiscalYears" ("Year_Id", "Year_Name", "Year_Status", "TransactionDate", "Year_Id_Iter") VALUES ('2042', '2042', true, '2019-10-10 00:00:00', 23);
INSERT INTO public."FiscalYears" ("Year_Id", "Year_Name", "Year_Status", "TransactionDate", "Year_Id_Iter") VALUES ('2043', '2043', true, '2019-10-10 00:00:00', 24);
INSERT INTO public."FiscalYears" ("Year_Id", "Year_Name", "Year_Status", "TransactionDate", "Year_Id_Iter") VALUES ('2044', '2044', true, '2019-10-10 00:00:00', 25);
INSERT INTO public."FiscalYears" ("Year_Id", "Year_Name", "Year_Status", "TransactionDate", "Year_Id_Iter") VALUES ('2045', '2045', true, '2019-10-10 00:00:00', 26);
INSERT INTO public."FiscalYears" ("Year_Id", "Year_Name", "Year_Status", "TransactionDate", "Year_Id_Iter") VALUES ('2046', '2046', true, '2019-10-10 00:00:00', 27);
INSERT INTO public."FiscalYears" ("Year_Id", "Year_Name", "Year_Status", "TransactionDate", "Year_Id_Iter") VALUES ('2047', '2047', true, '2019-10-10 00:00:00', 28);
INSERT INTO public."FiscalYears" ("Year_Id", "Year_Name", "Year_Status", "TransactionDate", "Year_Id_Iter") VALUES ('2048', '2048', true, '2019-10-10 00:00:00', 29);
INSERT INTO public."FiscalYears" ("Year_Id", "Year_Name", "Year_Status", "TransactionDate", "Year_Id_Iter") VALUES ('2049', '2049', true, '2019-10-10 00:00:00', 30);
INSERT INTO public."FiscalYears" ("Year_Id", "Year_Name", "Year_Status", "TransactionDate", "Year_Id_Iter") VALUES ('2050', '2050', true, '2019-10-10 00:00:00', 31);
INSERT INTO public."FiscalYears" ("Year_Id", "Year_Name", "Year_Status", "TransactionDate", "Year_Id_Iter") VALUES ('2051', '2051', true, '2019-10-10 00:00:00', 32);
INSERT INTO public."FiscalYears" ("Year_Id", "Year_Name", "Year_Status", "TransactionDate", "Year_Id_Iter") VALUES ('2052', '2052', true, '2019-10-10 00:00:00', 33);
INSERT INTO public."FiscalYears" ("Year_Id", "Year_Name", "Year_Status", "TransactionDate", "Year_Id_Iter") VALUES ('2053', '2053', true, '2019-10-10 00:00:00', 34);
INSERT INTO public."FiscalYears" ("Year_Id", "Year_Name", "Year_Status", "TransactionDate", "Year_Id_Iter") VALUES ('2054', '2054', true, '2019-10-10 00:00:00', 35);
INSERT INTO public."FiscalYears" ("Year_Id", "Year_Name", "Year_Status", "TransactionDate", "Year_Id_Iter") VALUES ('2055', '2055', true, '2019-10-10 00:00:00', 36);
INSERT INTO public."FiscalYears" ("Year_Id", "Year_Name", "Year_Status", "TransactionDate", "Year_Id_Iter") VALUES ('2056', '2056', true, '2019-10-10 00:00:00', 37);
INSERT INTO public."FiscalYears" ("Year_Id", "Year_Name", "Year_Status", "TransactionDate", "Year_Id_Iter") VALUES ('2057', '2057', true, '2019-10-10 00:00:00', 38);
INSERT INTO public."FiscalYears" ("Year_Id", "Year_Name", "Year_Status", "TransactionDate", "Year_Id_Iter") VALUES ('2058', '2058', true, '2019-10-10 00:00:00', 39);
INSERT INTO public."FiscalYears" ("Year_Id", "Year_Name", "Year_Status", "TransactionDate", "Year_Id_Iter") VALUES ('2059', '2059', true, '2019-10-10 00:00:00', 40);
INSERT INTO public."FiscalYears" ("Year_Id", "Year_Name", "Year_Status", "TransactionDate", "Year_Id_Iter") VALUES ('2060', '2060', true, '2019-10-10 00:00:00', 41);
INSERT INTO public."FiscalYears" ("Year_Id", "Year_Name", "Year_Status", "TransactionDate", "Year_Id_Iter") VALUES ('2061', '2061', true, '2019-10-10 00:00:00', 42);
INSERT INTO public."FiscalYears" ("Year_Id", "Year_Name", "Year_Status", "TransactionDate", "Year_Id_Iter") VALUES ('2062', '2062', true, '2019-10-10 00:00:00', 43);
INSERT INTO public."FiscalYears" ("Year_Id", "Year_Name", "Year_Status", "TransactionDate", "Year_Id_Iter") VALUES ('2063', '2063', true, '2019-10-10 00:00:00', 44);


--
-- TOC entry 3603 (class 0 OID 24977)
-- Dependencies: 215
-- Data for Name: Genders; Type: TABLE DATA; Schema: public; Owner: employee
--

INSERT INTO public."Genders" ("Gender_Id", "Gender_Name", "Gender_Status", "TransactionDate") VALUES (1, 'Male', true, '2019-09-12 00:00:00');
INSERT INTO public."Genders" ("Gender_Id", "Gender_Name", "Gender_Status", "TransactionDate") VALUES (2, 'Female', true, '2019-09-12 00:00:00');


--
-- TOC entry 3636 (class 0 OID 33385)
-- Dependencies: 248
-- Data for Name: LeadershipStatus; Type: TABLE DATA; Schema: public; Owner: employee
--

INSERT INTO public."LeadershipStatus" ("LeadStatus_Id", "LeadStatus_Name", "LeadStatus_Status", "TransactionDate") VALUES (1, 'Active', true, '2019-09-23 00:00:00');
INSERT INTO public."LeadershipStatus" ("LeadStatus_Id", "LeadStatus_Name", "LeadStatus_Status", "TransactionDate") VALUES (2, 'Acting', true, '2019-09-23 00:00:00');
INSERT INTO public."LeadershipStatus" ("LeadStatus_Id", "LeadStatus_Name", "LeadStatus_Status", "TransactionDate") VALUES (3, 'On Leave', true, '2019-09-23 00:00:00');
INSERT INTO public."LeadershipStatus" ("LeadStatus_Id", "LeadStatus_Name", "LeadStatus_Status", "TransactionDate") VALUES (4, 'Inactive', true, '2019-09-23 00:00:00');
INSERT INTO public."LeadershipStatus" ("LeadStatus_Id", "LeadStatus_Name", "LeadStatus_Status", "TransactionDate") VALUES (5, 'Not Assigned', true, '2019-09-23 00:00:00');


--
-- TOC entry 3625 (class 0 OID 25087)
-- Dependencies: 237
-- Data for Name: ParticipantTypes; Type: TABLE DATA; Schema: public; Owner: employee
--

INSERT INTO public."ParticipantTypes" ("ParticipantType_Id", "ParticipantType_Name", "ParticipantType_Status", "TransactionDate") VALUES (1, 'Internal-AUDA-NEPAD Staff', true, '2019-09-12 00:00:00');
INSERT INTO public."ParticipantTypes" ("ParticipantType_Id", "ParticipantType_Name", "ParticipantType_Status", "TransactionDate") VALUES (2, 'External ', true, '2019-09-12 00:00:00');


--
-- TOC entry 3642 (class 0 OID 33512)
-- Dependencies: 254
-- Data for Name: ProjectProgrammeMappingStatus; Type: TABLE DATA; Schema: public; Owner: employee
--

INSERT INTO public."ProjectProgrammeMappingStatus" ("ProStatus_Id", "ProStatus_Name", "ProStatus_Status", "TransactionDate") VALUES (1, 'Active', true, '2019-10-03 00:00:00');
INSERT INTO public."ProjectProgrammeMappingStatus" ("ProStatus_Id", "ProStatus_Name", "ProStatus_Status", "TransactionDate") VALUES (2, 'Inactive', true, '2019-10-03 00:00:00');
INSERT INTO public."ProjectProgrammeMappingStatus" ("ProStatus_Id", "ProStatus_Name", "ProStatus_Status", "TransactionDate") VALUES (3, 'Transferred', true, '2019-10-03 00:00:00');


--
-- TOC entry 3605 (class 0 OID 24985)
-- Dependencies: 217
-- Data for Name: StaffRankSteps; Type: TABLE DATA; Schema: public; Owner: employee
--

INSERT INTO public."StaffRankSteps" ("StaffRankStep_Id", "StaffRankStep_Name", "StaffRankStep_Status", "TransactionDate") VALUES (1, 'Step 1', false, '0001-01-01 00:00:00');
INSERT INTO public."StaffRankSteps" ("StaffRankStep_Id", "StaffRankStep_Name", "StaffRankStep_Status", "TransactionDate") VALUES (2, 'Step 2', false, '0001-01-01 00:00:00');
INSERT INTO public."StaffRankSteps" ("StaffRankStep_Id", "StaffRankStep_Name", "StaffRankStep_Status", "TransactionDate") VALUES (3, 'Step 3', false, '0001-01-01 00:00:00');
INSERT INTO public."StaffRankSteps" ("StaffRankStep_Id", "StaffRankStep_Name", "StaffRankStep_Status", "TransactionDate") VALUES (4, 'Step 4', false, '0001-01-01 00:00:00');
INSERT INTO public."StaffRankSteps" ("StaffRankStep_Id", "StaffRankStep_Name", "StaffRankStep_Status", "TransactionDate") VALUES (6, 'Step 6', false, '0001-01-01 00:00:00');
INSERT INTO public."StaffRankSteps" ("StaffRankStep_Id", "StaffRankStep_Name", "StaffRankStep_Status", "TransactionDate") VALUES (5, 'Step 5', false, '0001-01-01 00:00:00');
INSERT INTO public."StaffRankSteps" ("StaffRankStep_Id", "StaffRankStep_Name", "StaffRankStep_Status", "TransactionDate") VALUES (7, 'Step 7', false, '0001-01-01 00:00:00');


--
-- TOC entry 3592 (class 0 OID 24878)
-- Dependencies: 204
-- Data for Name: StaffRanks; Type: TABLE DATA; Schema: public; Owner: employee
--

INSERT INTO public."StaffRanks" ("StaffRank_Id", "StaffRank_Name", "StaffRank_Status", "TransactionDate") VALUES (2, 'D1', false, '0001-01-01 00:00:00');
INSERT INTO public."StaffRanks" ("StaffRank_Id", "StaffRank_Name", "StaffRank_Status", "TransactionDate") VALUES (1, 'D2', false, '0001-01-01 00:00:00');
INSERT INTO public."StaffRanks" ("StaffRank_Id", "StaffRank_Name", "StaffRank_Status", "TransactionDate") VALUES (4, 'P5', false, '0001-01-01 00:00:00');
INSERT INTO public."StaffRanks" ("StaffRank_Id", "StaffRank_Name", "StaffRank_Status", "TransactionDate") VALUES (3, 'P6', false, '0001-01-01 00:00:00');
INSERT INTO public."StaffRanks" ("StaffRank_Id", "StaffRank_Name", "StaffRank_Status", "TransactionDate") VALUES (6, 'P3', false, '0001-01-01 00:00:00');
INSERT INTO public."StaffRanks" ("StaffRank_Id", "StaffRank_Name", "StaffRank_Status", "TransactionDate") VALUES (5, 'P4', false, '0001-01-01 00:00:00');
INSERT INTO public."StaffRanks" ("StaffRank_Id", "StaffRank_Name", "StaffRank_Status", "TransactionDate") VALUES (8, 'P1', false, '0001-01-01 00:00:00');
INSERT INTO public."StaffRanks" ("StaffRank_Id", "StaffRank_Name", "StaffRank_Status", "TransactionDate") VALUES (7, 'P2', false, '0001-01-01 00:00:00');


--
-- TOC entry 3609 (class 0 OID 25008)
-- Dependencies: 221
-- Data for Name: Titles; Type: TABLE DATA; Schema: public; Owner: employee
--

INSERT INTO public."Titles" ("Title_Id", "Title_Name", "Title_Status", "TransactionDate") VALUES (1, 'Dr', true, '2019-09-11 00:00:00');
INSERT INTO public."Titles" ("Title_Id", "Title_Name", "Title_Status", "TransactionDate") VALUES (2, 'Miss', true, '2019-09-11 00:00:00');
INSERT INTO public."Titles" ("Title_Id", "Title_Name", "Title_Status", "TransactionDate") VALUES (3, 'Mr', true, '2019-09-11 00:00:00');
INSERT INTO public."Titles" ("Title_Id", "Title_Name", "Title_Status", "TransactionDate") VALUES (4, 'Mrs', true, '2019-09-11 00:00:00');
INSERT INTO public."Titles" ("Title_Id", "Title_Name", "Title_Status", "TransactionDate") VALUES (5, 'Ms', true, '2019-09-11 00:00:00');
INSERT INTO public."Titles" ("Title_Id", "Title_Name", "Title_Status", "TransactionDate") VALUES (6, 'Prof', true, '2019-09-11 00:00:00');


--
-- TOC entry 3651 (class 0 OID 33588)
-- Dependencies: 263
-- Data for Name: TransAUDAProgrammaticOutcomeSessionals; Type: TABLE DATA; Schema: public; Owner: employee
--

INSERT INTO public."TransAUDAProgrammaticOutcomeSessionals" ("Transaction_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutcome", "TransactionDate") VALUES ('721bd8b5-42ce-4950-a95c-49b9940a3d8f', 1, 'Economic Transformation through Industrialization and Integration', '2019-10-18 00:00:00');
INSERT INTO public."TransAUDAProgrammaticOutcomeSessionals" ("Transaction_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutcome", "TransactionDate") VALUES ('ff47157f-5817-4e24-9078-3c57e5b131c4', 2, 'Food Security and Healthy Society Achieved with Inclusive Employment and Incomes', '2019-10-18 00:00:00');
INSERT INTO public."TransAUDAProgrammaticOutcomeSessionals" ("Transaction_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutcome", "TransactionDate") VALUES ('2150c48e-879c-423f-8954-e7b63586b6be', 3, 'Transformation led by Augmented Human Capital and Capable Institutions', '2019-10-18 00:00:00');
INSERT INTO public."TransAUDAProgrammaticOutcomeSessionals" ("Transaction_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutcome", "TransactionDate") VALUES ('73ce086e-a487-41e1-9fca-91f63673fa56', 4, 'Climate, Energy and Water Smart Societies', '2019-10-18 00:00:00');


--
-- TOC entry 3652 (class 0 OID 33596)
-- Dependencies: 264
-- Data for Name: TransAUDAProgrammaticOutputMaps; Type: TABLE DATA; Schema: public; Owner: employee
--

INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('d5ab7cd6-9ecc-4d2b-a6dd-4a0576adb58a', 2, 'STI web platform developed and awareness raised among key users', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('14c86923-914c-4148-aa4b-728e55520690', 3, 'STI training and raised awareness on R&D innovation indicators', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('44cdafea-c4e2-43df-b3fc-c40f12947606', 1, 'Advocacy and promotion of Kaizen ', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('66feeaa4-3c6e-41ef-9b2f-c218a139b4ea', 4, 'A system for measuring and tracking the utilization and awareness of STI indicators developed and adopted', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('c1426049-c6ca-4de2-a56a-d69af8efa238', 5, 'Knowledge products on Innovation Policy Comprehensiveness, Informal Sector innovations and National Innovation Systems produced', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('8acd8e59-e80a-47b4-8ff2-4bb0d3ad17d5', 6, 'A web-based framework for assessing and measuring innovation potential of a country developed', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('6df66d60-b8e1-48e0-9e03-9b7036a5823e', 7, 'STI, Education and Health indicators integrated into the African Union policy and decision making processes', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('3c99f272-42a6-4e87-988c-86324b53a17c', 8, 'ASTII Impact evaluated', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('92a1aeba-dce6-4230-b151-0aaccf4ce1b9', 9, 'ASTII Communication and  Knowledge products disseminated', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('2e547543-e396-49f1-aaba-2fc2659046da', 10, 'SGCs'' Capacity to design and monitor research programs strengthened  by developing a guide to best practice', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('6dd895ee-1347-4f8d-ab48-04227109ebae', 11, 'Private sector participation in PIDA projects is enhanced', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('333bddc8-e8ae-4ef4-86f4-db0d18800abc', 12, 'An Aggregated Financial Guarantee Mechanism for PIDA  projects developed and implemented', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('fd61e5a5-b9a6-4ae6-a172-5a18afde092d', 13, 'Strengthening the North African transmission line and creation regional energy market platform', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('1ef1cfc8-3a2e-4fff-bfae-64540294611a', 14, 'Updated status of the Egypt, Sudan, Ethiopia, Kenya Interconnectors and implementation supported', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('a4a0375c-ec29-404a-91f9-884a194738d2', 15, 'Synergistic integration of development of Batoka, Inga III, ZTK projects ', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('f12b77ad-5321-404a-920d-07ba2b2fd8af', 16, 'West and Central Africa Power pools engaged  on PIDA projects', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('a163bc0d-9ac6-4b86-b40c-279ea9c5f370', 17, 'Cross-border Cybersecurity Infrastructure and Coordination mechanisms established', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('6c56e249-7328-44a1-aad4-6aa5f3ef6478', 18, 'ICT Infrastructure (PIDA ICT Missing Links & Regional Data Centers) studies completed and implementation plans developed', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('7388bdd1-49a1-46f9-98e4-95bb16f56a85', 19, 'Resources mobilised for Entrepreneurship & digital economy (innovation and SME development) project', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('3e915ece-e9b9-4922-ab88-d190e71a03ad', 20, 'Trade facilitation and integrated access to markets approach piloted in countries', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('efd18b82-43b5-4684-8d1e-c09f70cff4dc', 21, 'Data and information collected on PIDA projects ', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('dff9c900-f1cb-4249-9924-4716894777b4', 22, 'Communication of PIDA PAP implementation to stakeholders is enhanced', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('fb7e7582-5db0-4197-b59f-13af27dd7559', 23, 'PIDA Week 2018 organized ', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('804683da-146a-44f5-8919-18b75426d11e', 24, 'RECs enabling environment and need assessment conducted (PIDA CAP projects)', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('8fb731e5-08df-4f22-b597-461cb056fed2', 25, 'Pre-feasibility and Feasibility Study Approved (PIDA CAP projects)', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('c6a45a4e-6d7c-4d0c-b152-db376dfce205', 26, 'Priority projects reviewed, selected packaged and showcased (PIDA CAP projects)', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('3e901b6e-d820-4a45-80f6-68c47081c981', 27, 'Financial Structuring Plan Developed and Project Funding Approved (PIDA CAP projects)', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('1b279393-9efc-4678-9cfd-6da8c73bbe6d', 28, 'Strengthened technical capacity for PIDA implementation at RECs (PIDA CAP projects)', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('4b833440-fd65-4adf-8ad0-aae80b8b0b40', 29, 'Technical advisory services in early stage project preparation (pre-feasibility to feasibility) provided to RECs ', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('ef7b3edb-ee7c-451d-9c61-6e82df391ee9', 30, 'Improved SDM financial  status and strategic outreach', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('075f327f-da8f-4369-9fb8-3bb2324ed3c8', 31, 'Traffic Light System (TLS) Operationalized', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('c106d541-5062-4925-a4e6-71aefb9d847d', 32, 'MoveAfrica Status Report developed', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('dcca253d-9565-4047-ac4a-4b90e63b0947', 33, 'MoveAfrica results produced and Showcased', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('7c75d3a7-557a-4999-9539-75f469f295de', 34, 'OSBP sourcebook domesticated in West and Central Africa and mechanisms  for dissemination and experience sharing established', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('c7357cf1-3bb9-4dee-b8c0-35f00899d8c5', 35, 'Established monitoring framework of TLS and OSBP projects and impacts', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('c00d60a0-fce2-40ca-b5c1-be7e884b8c6b', 36, 'Established framework of human capital development of OSBP practitioners, in RECs and countries', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('26b50909-ceb7-4eba-8b85-0e21c7aae8e2', 37, 'High Speed Rail Detailed Scoping Study (DSS) Process completed', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('d5a3795f-40f5-41d4-bc21-ff0deb5b5f21', 38, 'HSRNP Pre-Feasibility/Feasibility Studies resources mobilized and blended financing toolkit developed', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('f0860329-56cf-4f95-b1e8-a2ef6223b799', 39, 'National readiness for implementation of PIDA/TAH Missing links: TAH 8 Lagos (Yaoundé-Bangui-Kisangani - Kampala-Mombasa); TAH 4 Cairo (Khartoum-Juba-Kampala-Cape Town); TAH 6 Ndjamena – Khartoum -Djibouti); ', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('a8c66a20-5fcf-4812-997c-148e112d9c9e', 40, 'Program for Infrastructural Development of African Island States developed (Cape Verde, Sao Tome & Principe, Madagascar, Comoros, Seychelles, Mauritius)', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('bf472f8b-dc5d-4777-bddc-75bde12307ca', 41, 'Policy and Regulatory frameworks for PIDA projects', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('484f41a5-8c94-4045-b057-e148ebc2190b', 42, 'PIDA Impacts on job creation and economic growth produced', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('7370d2c5-e2c4-4828-a428-1aa965fa67df', 43, 'Comprehensive Project Status Report for all PICI Projects published', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('204fc79e-2242-4414-bb5a-d0f620813eec', 44, 'Technical Support and working missions to all PICI States and M&E study for the PICI undertaken. ', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('25e8dae8-3f3f-483a-8ea4-74770312a226', 45, 'Knowledge and information on extractive industry are produced and shared', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('df38f65d-f0b6-47d5-ad11-c6448a2b1ea8', 46, 'Selected countries (Central African Republic and Zambia) senior officials (25 each country) have been trained on tax policies and contract negotiation and a network of African experts on Extractive Industry established', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('e46f3cad-79bb-44fb-8bf2-ce3f1cd11aee', 47, 'Agro industry framework developed: Four Pillars (Production systems – productivity and value addition, Food Safety systems and Biosecurity systems)', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('2a04099d-cd86-4c25-b9d8-70493eb9501c', 48, 'Created an enabling environment for agreed AMRH outcomes to be achieved within each implementing REC', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('ced323f3-7d45-4798-884b-171bb68a48c1', 49, 'The AMRH performance indicators disseminated to EAC, ECOWAS, SADC and all partners to inform policy and lesson sharing across RECs', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('f64a1ec7-4713-4beb-8827-53f21e978160', 50, 'Facilitated effective implementation and accountability at AU, REC and country levels through targeted training and working with policy makers, media, legal experts, parliamentary health committees  and media', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('91b0c4d3-f778-49ed-8ea4-ec00082b174f', 51, 'Facilitated establishment of an AMRH fundholding facility to support sustainable financing of NMRAs, RECs and AMRH', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('2f83edbc-4adc-4089-be26-84aa394a7c1a', 52, 'Provide Secretariat functions to the AMRH Initiative', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('abd18482-3f8a-44d8-9ac5-489bae2bce83', 53, 'Impact Evaluation of the  of the effectiveness of the NEPAD Multi-Country Partnership Model for Nursing and Midwifery Postgraduate Education Development in Africa', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('90afe92b-b354-4bb4-91f3-ab0dce9bc749', 54, 'Adoption of the AESA Platform by AU Heads of State and Government and STC for science technology and innovation', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('8ef7c8d0-489b-45f4-87ee-8d2f62eccdd3', 55, 'Evidence for supporting STI Policy Making at the continental, regional and national levels provided to policy makers', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('1dfacc53-570c-45b3-b008-7e58a77639ed', 56, '114 experts trained in different field of Occupational Health and Safety Mine Inspection', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('f578e629-e945-492f-b084-f11bbde16e0d', 57, 'Two operational research studies on TB and Occupational Health finalised', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('ba595d5e-ed88-4a32-b89c-aecfb2fced36', 58, 'Two communities of practice on TB and Occupational Health, and TB financing functional', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('97d0eec7-fe55-4306-9b1f-3beeca809030', 59, 'Regional guideline/model on (a) Mine Health and Safety Legislation; and (b) Mine inception and OH clinical Protocols for occupational health drafted', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('fda10ebf-7f61-4e48-821a-27174fee6d4b', 60, '20 communicators on TB and occupational lung diseases trained and TB and Occupational Lung Disease control information developed and disseminated', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('85263674-b119-4630-9cb4-3d57bba5b003', 61, 'TB Project regionally coordinated and Technical Assistance provided', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('a22e1c71-812b-4ced-b900-25c614db6cd3', 62, 'Enhanced understanding and greater awareness on gene drive and their applications for human health among regulators from all AU Member States', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('c2ecbb27-b429-46de-b004-0c51ecd1fd81', 63, 'Regulators empowered in the understanding of risk assessment and risk management procedures and tools for contained use and field releases of genetically engineered insects         ', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('5a6f58bf-973a-441c-997a-2a71ed71bac8', 64, 'Regulators adopt best practices for insect containment facilities', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('a1aef9b8-6003-4875-a3ae-676d220fb34d', 65, 'An enabling regulatory environment created for emerging vector control technologies', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('575c3f70-d159-4d66-8b56-8ead0840fdb4', 66, 'Regulators capable of administratively handling, reviewing and making decisions on applications', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('4f119217-678b-4087-b094-6e023462e534', 67, 'Capacitated regulators to review dossiers for limited release to supportive of technology development and regulation', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('d871060b-6562-4cc1-a7cc-dc680d3745d5', 68, 'Better understanding of the implications of the Cartagena Convention and its Protocols on Africa’s biotechnology development and management', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('c13daef6-8f40-4a8e-9252-c2a6afccc1f3', 69, 'Capacitated regulators capable of and conducting monitoring and inspections for regulatory compliance', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('02e2b835-1d40-4885-b9a7-9c83cf361106', 70, 'And  sharing experiences and best practices', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('f8dbd956-c620-4a06-88d1-4c9e6b77b2da', 71, 'Four countries have in place national action plans on youth employment and skills development in rural economic value chains', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('b2b59599-f901-4626-ae10-7201c293878c', 72, 'Four countries pilot a catalytic set of interventions through the ASTF to support the design, development  and implementation of –Youth Capacity Development Projects', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('f8f210bf-af23-4175-b5fd-0afcec4094c8', 73, 'Policy Dialogue on ATVET improved', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('926d0412-4351-46ed-8625-e6fe842ddd4b', 74, 'ASTF technically and managerially supported', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('83d09951-db27-4207-b1f0-1fe8b022f8ab', 75, 'Institutional conditions for the implementation of Gender- sensitive ATVET exist in the pilot countries (Benin, Burkina Faso, Ghana, Kenya, Malawi, Namibia, Rwanda, Sierra Leone, South Africa, Togo, Tunisia, Uganda)', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('97e91875-af2c-473a-a55e-eb664831d503', 76, 'Agricultural Qualification measures in ATVET Institutions are adapted to the needs of Women in the pilot countries (Benin, Burkina Faso, Ghana, Kenya, Malawi, Namibia, Rwanda, Sierra Leone, South Africa, Togo, Tunisia, Uganda)', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('5df19bb7-656a-42af-989d-71a75d7936c9', 77, 'Good practices of gender-sensitive ATVET are nationally and internationally disseminated through Africa-wide exchange of good practices and joint learning among the pilot countries taking into account the RECs and AUC/NPCA', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('649620a5-a84f-4446-9ca9-4e73e897ea9f', 78, 'Value chain actors, including farmers, with a specific focus on Women and youth have been trained in ATVET according to the CBT approach along the developed curricula (Namibia, Rwanda, Sierra Leone, South Africa, Tunisia, and Uganda)', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('b43abb55-d7c7-4d93-bc16-613c2054ff24', 79, 'Offers adapted to the needs of women in rural regions for market-oriented qualification for entrepreneurship in the agricultural and food sector are implemented in Focused countries (Benin, Burkina Faso, Ghana, Kenya, Malawi, Namibia, Rwanda, Sierra Leone, South Africa, Togo, Tunisia, Uganda)', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('b3f38365-554b-46ad-902b-49c3a474515f', 80, 'Built Functional Biosafety Regulatory Framework in Ghana, Kenya, Malawi, Nigeria, Uganda, Ethiopia, Mozambique, Swaziland, Tanzania, Zambia, Burkina Faso, Senegal, Sudan, Namibia, Togo', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('78be9028-2b8e-4b67-a2fd-c9e5ae93194c', 81, 'Accelerated implementation of BIAWE in ECOWAS and COMESA member States ', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('3b5c5a22-d00c-464d-9742-83a9bcaa2a89', 82, 'Enhanced gender mainstreaming to project cycle management ', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('7b0b8ccb-ade5-4475-aa3e-4281f53da4fa', 83, 'Gender mainstreaming for Inclusive Infrastructure Development', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('6c98ae51-b75d-4cc3-a5f8-87d4327583ce', 84, 'Evaluation of Gender Program', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('d51ffdd2-2a93-4f4a-b84c-85e5aba20f20', 85, 'Operationalized and coordinated Initiative Food and Nutrition in Africa (IFNA)', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('5d5e2547-0ab0-482b-9bf6-59e1e895cdfd', 86, 'Enhanced  Nutrition Education, Advocacy and Research in Africa', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('184cf981-4fa5-4b19-9651-ad6eff648db2', 87, 'Harnessed the potential of nutrition underutilized foods (indigenous foods)', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('b63576b6-0e22-438e-9b95-18be2a5438a6', 88, 'High Level Commitment mobilized', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('4c6b9c3f-53a7-4f27-83e4-28398c9d550a', 89, 'Private sector mainstreamed into NAIPS', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('07660d09-a01a-4037-9b8e-f12f7ab880d1', 90, 'Biennial Review of the African Agriculture Transformation Scorecard developed (Request HE Prime Minister of Federal Democratic Republic of Ethiopia', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('fef72e4a-24f5-4c73-a285-dad645a9fe5c', 91, 'CAADP technically and managerially supported', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('af129816-8c8b-42b6-854c-b849eef60f66', 92, 'Strengthened country systems of implementation  and increased national budget allocation to agriculture', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('ba96489d-51e1-4fa8-b9d3-3785214e50a5', 93, 'Strengthened and harmonized system for tracking and measurement of agriculture transformation at national, regional and continental levels', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('cf457224-9e52-4bc7-875e-8b4cff09f3dd', 94, 'Increased private sector investment in the prioritized commodity value chains', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('6a8f3ab4-2a27-42bd-b1e2-14d83855b533', 95, 'Functional CAADP coordination mechanisms in place across levels', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('06d48f6f-f657-4372-a844-1ec65a2745b6', 96, 'Resource mobilized to CAADP implementation support', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('f59add92-1dae-499a-920a-b28142121dd9', 97, 'Multi-partner institutional arrangements for country support on Small enterprise development established', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('cea2176d-6525-46c6-aab6-140485a1e34c', 98, 'National Self-Assessment Toolkit on generation of employment and skills development developed', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('afa49395-fb6b-4e0b-b494-b10892a82ae3', 99, 'Skills partnership development and resource mobilization undertaken', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('2cec98a6-bd27-4a91-aa0e-ad97cf538909', 100, 'Provided with checklist & tools to mainstream skills development and job creation within project delivery', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('92baecba-b620-48c6-8642-d71bc29bbe58', 101, 'Knowledge products on employment, skills and entrepreneurship development are developed and disseminated to key decision makers', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('1bd35bd2-c7eb-486e-9c69-fe46ef9b06cc', 102, '3 short term curricula in A2063 delivery areas are adapted and staff and country senior officials are trained', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('29bc7352-33ea-46f9-bbce-9446910a8b2a', 103, 'SIFA innovative approaches of employment oriented TVET for pilot countries developed', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('cf2d0f86-5361-4115-baf9-4cd2ff11c8c9', 104, 'Skills Initiative for Africa launched, monitored and aligned with regional and bilateral programmes', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('3bcea00d-f290-4f81-bd45-06a12957922b', 105, 'The institutional capacities of the NPCA in M&E, technical advice and knowledge management on TVET improved', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('2b573a1d-8226-43d2-b7eb-7dcd9846eb87', 106, 'STI, Education and Health indicators integrated into the African Union policy and decision making processes', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('52ba2d5d-cb25-4041-8a23-4e6e296b1cf5', 107, 'Establish a support network for expanded use of the earth observation (ATLAS) across all regions ', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('35a9333d-0b24-4c49-8dbe-5274ade2c8a7', 108, 'Examine and consider support to strengthen local capacity for generating quality data on rural development', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('c401ba02-61ac-45e9-b108-c380dd34ad04', 109, 'Develop an Implementation and Performance Management Framework for the Blue Print of rural transformation in Africa', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('fa65ab00-d956-471d-b312-e2ed5dd22af5', 110, 'Gap Analysis: Country Capacity Development Assessments for Effective Implementation of AU Agenda 2063 and Agenda 2030 (10 Pilot Countries)                      ', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('451b61f3-7caa-4619-bd0e-96ec1d730612', 111, 'Institutional strengthening for national and regional executing entities for the application of TOCA ', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('85c9b06e-cf03-4834-bf0e-f5abe90fe3c0', 112, 'Country Results Frameworks and 1st Ten Year Implementation Plan for Agenda 2063 – Monitoring and Evaluation', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('a308fb9c-80e8-4c34-8afd-60b5faeb8f46', 113, 'Implementation of 2015-2025 RECs CD Plan', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('fea71576-8f61-4e07-a316-03672d38d211', 114, 'Standard Citizen Engagement tools and mechanisms for NEPAD horizontal Application (Parliaments, CSOs, Private Sector, Tertiary Institutions)', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('1355138b-340a-4e89-9031-52a5e2042a5b', 115, 'Development of Strategic Plan (2018 to 2023) and associated implementation plans including partnership and resources mobilization strategies', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('d32feaaf-14e1-4ee9-ac5a-293b75dd69f8', 116, 'Joint planning and review mechanisms enhanced between AUC and NPCA management teams', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('dabc30d5-72ed-4595-9e37-1c57a139d05f', 117, 'Advanced and digitalized Standard Operating Procedures in line with value based organizational systems  ', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('9aebeaaf-0791-4bf0-b2f6-cfd3b0a17540', 118, 'Development of enterprise cross agency data inventory and policy framework', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('37d80997-5a30-47bf-ab13-d20c20653148', 119, 'Development of strategic foresight analysis report for the continent', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('67ed8b80-42f4-4728-93d4-ff2ae4bb3b41', 120, 'Enhanced portal and knowledge platform', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('fd79cbac-1ab3-4072-bee0-74e731ccddf3', 121, 'Enhanced internal capacity both technical and managerial of staff ', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('9cb47222-6708-4825-b426-9c63ed1fd2af', 122, 'Organizational Development of AUDA operating model developed and implemented', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('34b44667-ce96-4542-80ad-31d6956673d7', 123, 'Enterprise risks management application and diffusion', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('5af60173-3300-452e-8d2d-ec9a1d3eb33f', 124, 'Senior management partnership and resources mobilization support (Office of the CEO)', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('58c2c3d5-933b-4c28-99cd-df9137acbcf8', 125, 'Financial closure of 6MW Gambia wind project', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('e2874dbf-c728-411e-82ed-f19116023333', 126, 'Financial closure of solar application of public buildings in Madagascar', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('8cd85368-946d-46b1-bd24-6ac47812de1e', 127, 'Financial closure for Tanzania small islands mini-grids', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('f1aa05ee-1968-4d40-90b6-6c794b9d5ac5', 128, 'Energy Audits for heavy industries in Rwanda and Tanzania', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('f272a8c8-f013-4f4c-89db-142ab2f29919', 9, 'ASTII Communication and  Knowledge products disseminated', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('7ea55ca0-6c45-4168-939f-93499ee87f66', 129, 'Identification of Energy Efficiency and Renewable Energy projects in Uganda and Burundi', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('f7790f81-d34c-4c8a-a36d-3064cc7e629c', 130, 'Information on the structure, products and value of intra-regional fish trade in food security generated and made available to stakeholders', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('2a06014e-eb56-4f71-9635-86c7af928f28', 131, 'A set of recommendations on policies, certification procedures, standards and regulations, well embedded in national and regional fisheries, agricultural, trade and food security policy frameworks', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('a438f754-c958-411e-8eaf-301efada0831', 132, 'Increased capacities for trade amongst private sector associations, in particular of women fish processors and traders and aquaculture producers, to make better use of expanding trade opportunities through competitive small and medium scale enterprises', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('4cf373be-45e2-4f75-9910-6602e6b7b2e8', 133, 'Adoption and implementation of appropriate policies, certification procedures, standards and regulations by key stakeholders participating in intra-regional trade in four selected trade corridors in Africa ', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('6d767253-6963-46f2-8dcc-7ceb42b5a159', 134, 'Institutional capacity and regulatory frameworks for sustainable fisheries management improved', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('d13f97df-8cbe-4be3-ae09-e1a75151856b', 135, 'Sustainable fisheries management in small-scale fisheries including inland water bodies enhanced', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('c061b215-6148-4008-8cd4-45249c87939d', 136, 'Institutional capacity and regulatory framework for aquaculture development strengthened', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('046c55e4-5068-444e-8ab0-12545078ee47', 137, 'Advocacy, Lessons Learning for knowledge sharing and Capacity for increased investments and fostering reforms in the fisheries sector enhanced', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('f567e779-4116-469f-b441-3b98030e9ff6', 138, 'Provided technical support and backstopping at country, RECs and continental levels', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('913a4889-3ac3-4205-868c-0dec25eee40b', 139, 'Documentation, Communication and Knowledge products', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('9633693f-a15b-46ee-b57c-2bdb11ce1d0c', 140, 'Fishery projects supported both technically and managerially ', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('981495d3-57eb-4ebd-b295-c1f0a4d59b4c', 141, 'Elaboration of feasibility studies for infrastructure development and complementary measures', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('dfbaa322-7bfe-482c-894e-1615b33fe7b5', 142, 'Africa Food Insecurity Risks Management (AFIRM)  knowledge products developed and mainstreamed into National and Regional Development Plans and CAADP implementation', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('f5153f77-1a68-4fe6-a9fd-9a594427f4a0', 143, 'AFIRM technically and managerially supported', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('a06a9115-9710-48e2-90f9-aa72c96099cb', 144, 'Increased support for Regional Coalition Building', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('6cc18eb0-3364-440e-8bc2-92bf2de10a66', 145, 'Increased support for mutual learning among countries', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('157b2a03-87b5-4ea3-88e6-537599c08d21', 146, 'Increased support for countries on Sustainable Land Management  investment planning', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('eb577891-90d6-4873-b310-76c713f50a0b', 147, 'Land governance dynamics and impact on sustainable development and equity analyzed', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('bc602021-cbaa-4879-96f2-5bd03bd9dc3c', 148, 'Mainstreaming land in investment programs', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('97322143-49c2-4949-b103-78b717cd00c5', 149, 'Land policy dialogues and dissemination conducted', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('732f51f6-d1be-43e2-9242-076e906266dd', 150, 'Land policy Project implementation supported', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('df1c19ff-ebe1-4bde-8743-03b7c3de4b05', 151, 'Regional Coalition building (including M&E)', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('449ef242-a2a4-423a-8cb5-89116ea54043', 152, 'Regional knowledge management (Including M&E) - Stakeholders more effectively collecting, analyzing, managing and accessing data and information', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('ab0b3a54-2982-45e3-9971-caa5806c42f1', 153, 'Supported SLWM country programs', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('00d5df5c-4f99-44ab-afc7-d94d8d13a69d', 154, 'SLWM Project implementation supported', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('02ca0dce-c141-48c7-a95c-46726a0ddf61', 155, 'Increased country commitments to African Forest Landscape Restoration Initiative (AFR100)', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('aa77409d-0cbe-4f5f-a858-55d51febbabc', 156, 'Enable improved regional and global coordination', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('b5f8b8f4-94b0-4472-b722-2c944e3cd888', 157, 'Mobilized AFR 100 national actions', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('be428a4e-a28e-43dd-9a1d-879daf3c6279', 158, 'Strengthened AFR100 Secretariat', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('6ee9af26-c49e-4036-96f5-1db826a23625', 159, 'Countries supported to access climate financing', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('1f49d091-78d1-42ee-9553-bfef2d423dca', 160, 'NEPAD Accreditation to Green Climate Fund completed', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('41f3daec-2c4a-45c3-ab48-5364ccba4f46', 161, 'Agriculture Nationally Determined Contributions (NDC) s implementation strengthened', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('152c0c76-a37a-496b-8948-9bf53d443bd6', 162, 'CSA Facilitated and promoted through Peer learning and advocacy', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('f980574d-2690-4fda-b348-df5fe39bae6a', 163, 'Regional Flagship projects implementation coordinated and supported', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('29db1ac6-6a75-4e46-8e79-726dab00f6eb', 164, 'Africa Environmental Partnership Platform (AEPP) fully functional', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('0a37c479-200b-4938-959a-1c9eae49e375', 165, 'Climate agriculture Project implementation supported', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('50f55d24-2e9b-474f-b3d1-935de4192818', 166, 'Climate smart irrigation framework developed (application of renewable energy to unblock productivity, minimizing climate shocks, and water conservation)', '2019-10-19 00:00:00', 1);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('4ef404d3-032a-48f0-b239-77a5388e2fa7', 1, 'Advocacy and promotion of Kaizen ', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('667a2901-d08b-41a1-aaad-32cc3961cd4a', 2, 'STI web platform developed and awareness raised among key users', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('6103e7f0-7029-419e-999a-17bf645ea56d', 3, 'STI training and raised awareness on R&D innovation indicators', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('d9a9d8b0-89ad-4b42-b51e-b6e7edc5eef0', 4, 'A system for measuring and tracking the utilization and awareness of STI indicators developed and adopted', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('e7ef7899-5b03-4851-ba64-138135736fc9', 5, 'Knowledge products on Innovation Policy Comprehensiveness, Informal Sector innovations and National Innovation Systems produced', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('0bf028d1-2819-47f1-952e-fcc293f5d55c', 6, 'A web-based framework for assessing and measuring innovation potential of a country developed', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('2981df77-fe3d-423a-b6c4-4a90c7506e88', 7, 'STI, Education and Health indicators integrated into the African Union policy and decision making processes', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('69a62ed0-85b1-4fd5-92c9-2f0a33dc2d12', 8, 'ASTII Impact evaluated', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('5732f1c4-a549-4a57-8218-8cf5b1f49ac1', 10, 'SGCs'' Capacity to design and monitor research programs strengthened  by developing a guide to best practice', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('92392e4c-a524-4789-8acc-1b07481ae929', 11, 'Private sector participation in PIDA projects is enhanced', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('2458950b-6d5d-479a-b18d-2247a2ed36a7', 12, 'An Aggregated Financial Guarantee Mechanism for PIDA  projects developed and implemented', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('6552b2b5-e268-4431-8d92-6f41e9f3799d', 13, 'Strengthening the North African transmission line and creation regional energy market platform', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('393384d1-95cf-48ef-abe8-4e05388c62b3', 14, 'Updated status of the Egypt, Sudan, Ethiopia, Kenya Interconnectors and implementation supported', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('739fa5aa-29ae-40ba-8249-570729efacda', 15, 'Synergistic integration of development of Batoka, Inga III, ZTK projects ', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('f8220866-581a-4b89-8bb9-64237d2e1a90', 16, 'West and Central Africa Power pools engaged  on PIDA projects', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('e55119e6-58d4-414e-8b35-abdb7b3c0c39', 17, 'Cross-border Cybersecurity Infrastructure and Coordination mechanisms established', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('6dc8ea6e-725e-4d64-adb8-3e100a3aa617', 18, 'ICT Infrastructure (PIDA ICT Missing Links & Regional Data Centers) studies completed and implementation plans developed', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('abb238e0-1b78-4e75-a0bd-0bb0a1a58198', 19, 'Resources mobilised for Entrepreneurship & digital economy (innovation and SME development) project', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('0537a7bc-4de3-42cb-b24d-7674ddd6018e', 20, 'Trade facilitation and integrated access to markets approach piloted in countries', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('172922eb-d528-451e-920b-7788bb871c61', 21, 'Data and information collected on PIDA projects ', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('03c428ff-d866-4bc9-b1f8-af697608a00d', 22, 'Communication of PIDA PAP implementation to stakeholders is enhanced', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('36b036c8-9086-454a-85a8-0bd04932c230', 23, 'PIDA Week 2018 organized ', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('546048eb-39a0-4800-99ed-5eeabe4d1dc8', 24, 'RECs enabling environment and need assessment conducted (PIDA CAP projects)', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('92d9c19f-448a-4178-af5a-1d46aac4d015', 25, 'Pre-feasibility and Feasibility Study Approved (PIDA CAP projects)', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('8c88fa05-106b-4da8-b814-169b32ba1a31', 26, 'Priority projects reviewed, selected packaged and showcased (PIDA CAP projects)', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('9ecfbab3-cafb-417e-a82b-3c5fb8b4c3df', 27, 'Financial Structuring Plan Developed and Project Funding Approved (PIDA CAP projects)', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('c07f0f13-d30e-47ec-8267-b21c7ef1b888', 28, 'Strengthened technical capacity for PIDA implementation at RECs (PIDA CAP projects)', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('26b05260-1d3a-4f56-9520-271edcd5e26c', 29, 'Technical advisory services in early stage project preparation (pre-feasibility to feasibility) provided to RECs ', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('cad5b8a5-6de8-44e0-a295-42b6d35234ae', 30, 'Improved SDM financial  status and strategic outreach', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('044abebe-17ca-4534-9e22-b15d92244244', 31, 'Traffic Light System (TLS) Operationalized', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('0ce8c660-3bc3-4677-8b75-5a8de83e739d', 32, 'MoveAfrica Status Report developed', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('84c740ad-7026-41da-8888-879ed95d934c', 33, 'MoveAfrica results produced and Showcased', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('0df00951-869d-4ec0-a414-68c1b5ac13c0', 34, 'OSBP sourcebook domesticated in West and Central Africa and mechanisms  for dissemination and experience sharing established', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('8ad6de50-3604-4ad2-818c-f9afb2f4fbe9', 35, 'Established monitoring framework of TLS and OSBP projects and impacts', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('1e50dc54-9b60-46be-a350-6c4a26a45645', 36, 'Established framework of human capital development of OSBP practitioners, in RECs and countries', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('302dea94-3093-4db3-90db-b9f3071eaeff', 37, 'High Speed Rail Detailed Scoping Study (DSS) Process completed', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('8ccab616-3e3d-4641-8964-721a2915b30d', 38, 'HSRNP Pre-Feasibility/Feasibility Studies resources mobilized and blended financing toolkit developed', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('82731b18-0faf-4dfd-8ae3-9f3f7b9680c7', 39, 'National readiness for implementation of PIDA/TAH Missing links: TAH 8 Lagos (Yaoundé-Bangui-Kisangani - Kampala-Mombasa); TAH 4 Cairo (Khartoum-Juba-Kampala-Cape Town); TAH 6 Ndjamena – Khartoum -Djibouti); ', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('e6fcaa71-3710-4b28-97d7-cd746b6740fc', 40, 'Program for Infrastructural Development of African Island States developed (Cape Verde, Sao Tome & Principe, Madagascar, Comoros, Seychelles, Mauritius)', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('bcbf31e7-7982-471e-804b-f1c65dbab5fe', 41, 'Policy and Regulatory frameworks for PIDA projects', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('fdaad124-701d-4e73-a2d6-7feb5cc625e2', 42, 'PIDA Impacts on job creation and economic growth produced', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('8850b150-20b4-4773-af05-1dd137067f57', 43, 'Comprehensive Project Status Report for all PICI Projects published', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('b82f6ed8-3603-40c7-8005-2d9c83f08ec7', 44, 'Technical Support and working missions to all PICI States and M&E study for the PICI undertaken. ', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('a03120c4-065a-4fa4-b761-1df05ace3089', 45, 'Knowledge and information on extractive industry are produced and shared', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('a7f70603-4a4e-4a44-9085-a0771289cbbf', 46, 'Selected countries (Central African Republic and Zambia) senior officials (25 each country) have been trained on tax policies and contract negotiation and a network of African experts on Extractive Industry established', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('e7420a95-d46f-4af2-98ff-41a668c2659a', 47, 'Agro industry framework developed: Four Pillars (Production systems – productivity and value addition, Food Safety systems and Biosecurity systems)', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('8cd344ab-5924-419d-bef8-48ce1a33aa12', 48, 'Created an enabling environment for agreed AMRH outcomes to be achieved within each implementing REC', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('05571a82-8a97-4b72-891e-4372ca28ed5d', 49, 'The AMRH performance indicators disseminated to EAC, ECOWAS, SADC and all partners to inform policy and lesson sharing across RECs', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('40e6cad5-954a-4219-9992-0b4f58e9d74d', 50, 'Facilitated effective implementation and accountability at AU, REC and country levels through targeted training and working with policy makers, media, legal experts, parliamentary health committees  and media', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('58349bb0-ea59-4767-a28e-022f9a4c6a11', 51, 'Facilitated establishment of an AMRH fundholding facility to support sustainable financing of NMRAs, RECs and AMRH', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('97ab36ab-0136-4c47-9d1a-cd0dd96ab8ca', 52, 'Provide Secretariat functions to the AMRH Initiative', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('7093f956-728a-47ba-8a4b-92a191c242a9', 53, 'Impact Evaluation of the  of the effectiveness of the NEPAD Multi-Country Partnership Model for Nursing and Midwifery Postgraduate Education Development in Africa', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('de8f7b38-cb12-4511-b26c-2225709a7905', 54, 'Adoption of the AESA Platform by AU Heads of State and Government and STC for science technology and innovation', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('d16a4906-7c74-4510-8c3a-b6da323b9658', 55, 'Evidence for supporting STI Policy Making at the continental, regional and national levels provided to policy makers', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('0ccab27c-c440-4a69-b9a7-861167a36bfb', 56, '114 experts trained in different field of Occupational Health and Safety Mine Inspection', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('68daa8e4-17be-4d03-bbab-47c052bd85c3', 57, 'Two operational research studies on TB and Occupational Health finalised', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('ab0ddb33-96b0-4a56-863f-2150ec06f3cd', 58, 'Two communities of practice on TB and Occupational Health, and TB financing functional', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('0604c0d7-bd99-4168-852d-03d0c1dc00c1', 59, 'Regional guideline/model on (a) Mine Health and Safety Legislation; and (b) Mine inception and OH clinical Protocols for occupational health drafted', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('999831a3-cc9e-4cdf-ae6c-39f7c4bb5352', 60, '20 communicators on TB and occupational lung diseases trained and TB and Occupational Lung Disease control information developed and disseminated', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('ecacaebe-66b8-49d0-a0f1-5d108117a631', 61, 'TB Project regionally coordinated and Technical Assistance provided', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('21b2aacc-c122-4868-a055-255bf15faad2', 62, 'Enhanced understanding and greater awareness on gene drive and their applications for human health among regulators from all AU Member States', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('bdadb379-df4f-4ee9-8466-3fe482680edf', 63, 'Regulators empowered in the understanding of risk assessment and risk management procedures and tools for contained use and field releases of genetically engineered insects         ', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('ebfa05b1-1946-4d16-bb3d-f61db2577cf0', 64, 'Regulators adopt best practices for insect containment facilities', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('7e3cddff-dd59-4a2c-a4c3-02a12cfc61ef', 65, 'An enabling regulatory environment created for emerging vector control technologies', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('e7deca67-a868-45ea-9ec0-4f6ed50a68d3', 66, 'Regulators capable of administratively handling, reviewing and making decisions on applications', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('c28bce77-d396-4b56-ac58-03cf2cb802e0', 67, 'Capacitated regulators to review dossiers for limited release to supportive of technology development and regulation', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('c813d9e6-f5f0-4140-8c08-0c697842efa3', 68, 'Better understanding of the implications of the Cartagena Convention and its Protocols on Africa’s biotechnology development and management', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('76cdc9fe-1543-49d4-9482-a3348a0c4e2c', 69, 'Capacitated regulators capable of and conducting monitoring and inspections for regulatory compliance', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('883e0c72-0021-4bf1-a5a3-c7dca295f5af', 70, 'And  sharing experiences and best practices', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('12807dc2-685d-430d-ae6c-814f189d96c3', 71, 'Four countries have in place national action plans on youth employment and skills development in rural economic value chains', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('c6195526-3679-4586-9c22-e68a8c0704dd', 72, 'Four countries pilot a catalytic set of interventions through the ASTF to support the design, development  and implementation of –Youth Capacity Development Projects', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('6809dc6c-2c87-4e27-a7b3-eba44f0c9dfc', 73, 'Policy Dialogue on ATVET improved', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('bca547b5-39e8-4360-9bca-17d16f7c5524', 74, 'ASTF technically and managerially supported', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('471973bd-776d-4f11-84cf-5a146b0831eb', 75, 'Institutional conditions for the implementation of Gender- sensitive ATVET exist in the pilot countries (Benin, Burkina Faso, Ghana, Kenya, Malawi, Namibia, Rwanda, Sierra Leone, South Africa, Togo, Tunisia, Uganda)', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('59c55163-ff22-45b5-8c56-48699e9a95c8', 76, 'Agricultural Qualification measures in ATVET Institutions are adapted to the needs of Women in the pilot countries (Benin, Burkina Faso, Ghana, Kenya, Malawi, Namibia, Rwanda, Sierra Leone, South Africa, Togo, Tunisia, Uganda)', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('724ea433-316b-441f-ba00-9236ec7133eb', 77, 'Good practices of gender-sensitive ATVET are nationally and internationally disseminated through Africa-wide exchange of good practices and joint learning among the pilot countries taking into account the RECs and AUC/NPCA', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('1e1372fe-1bf3-4f77-a1b7-d90414785630', 78, 'Value chain actors, including farmers, with a specific focus on Women and youth have been trained in ATVET according to the CBT approach along the developed curricula (Namibia, Rwanda, Sierra Leone, South Africa, Tunisia, and Uganda)', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('5f63857f-f2ee-483f-806a-7b2d5f9718cc', 79, 'Offers adapted to the needs of women in rural regions for market-oriented qualification for entrepreneurship in the agricultural and food sector are implemented in Focused countries (Benin, Burkina Faso, Ghana, Kenya, Malawi, Namibia, Rwanda, Sierra Leone, South Africa, Togo, Tunisia, Uganda)', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('4c7c1734-b849-4c66-a7b0-6406cb4a6dd8', 80, 'Built Functional Biosafety Regulatory Framework in Ghana, Kenya, Malawi, Nigeria, Uganda, Ethiopia, Mozambique, Swaziland, Tanzania, Zambia, Burkina Faso, Senegal, Sudan, Namibia, Togo', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('572dc0ff-bb66-4de2-b3a7-9206e4470b3b', 81, 'Accelerated implementation of BIAWE in ECOWAS and COMESA member States ', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('9ecf4d5c-e0e2-406d-b874-1c8fe17b35fc', 82, 'Enhanced gender mainstreaming to project cycle management ', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('58773757-2e02-4d14-9358-f493b96b77f5', 83, 'Gender mainstreaming for Inclusive Infrastructure Development', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('9bb5ccce-342a-42d9-94ce-b6e442985174', 84, 'Evaluation of Gender Program', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('ca5152cf-9597-416a-b68e-980ef78809c1', 85, 'Operationalized and coordinated Initiative Food and Nutrition in Africa (IFNA)', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('9e76d5a5-79dd-43ec-85cc-2143d04e074e', 86, 'Enhanced  Nutrition Education, Advocacy and Research in Africa', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('885ee0db-e8db-4b42-8159-ab12895c519b', 87, 'Harnessed the potential of nutrition underutilized foods (indigenous foods)', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('1a518823-c32e-4b9c-a26c-c219c8550743', 88, 'High Level Commitment mobilized', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('6b4d6e77-15f4-4195-b35e-254f7a9c0568', 89, 'Private sector mainstreamed into NAIPS', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('378b6c4e-541d-47e7-8996-d493ce3d4d5a', 90, 'Biennial Review of the African Agriculture Transformation Scorecard developed (Request HE Prime Minister of Federal Democratic Republic of Ethiopia', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('595db78c-faae-4997-b69a-3a4b22e92c72', 91, 'CAADP technically and managerially supported', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('d61b41cb-2814-4905-9b7b-6e1a4f3091e5', 92, 'Strengthened country systems of implementation  and increased national budget allocation to agriculture', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('3fa3fa0c-6935-4906-9de1-b7f79d858489', 93, 'Strengthened and harmonized system for tracking and measurement of agriculture transformation at national, regional and continental levels', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('e50ea395-7348-4381-b353-6f0500acd1f9', 94, 'Increased private sector investment in the prioritized commodity value chains', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('13d8e105-de17-4de8-a5be-b1e1eed79b17', 95, 'Functional CAADP coordination mechanisms in place across levels', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('69e31b68-e6fc-4518-a647-ea3f96b1bb4d', 96, 'Resource mobilized to CAADP implementation support', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('2566a263-e403-470c-bc55-6f1db669e1d3', 97, 'Multi-partner institutional arrangements for country support on Small enterprise development established', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('ebf2e168-3e75-4ddb-a1d8-9ee1818d8653', 98, 'National Self-Assessment Toolkit on generation of employment and skills development developed', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('560f3404-d241-4ffd-8e92-d7153dbafa2f', 99, 'Skills partnership development and resource mobilization undertaken', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('3136cb9a-f697-4473-8967-454a9d38477b', 100, 'Provided with checklist & tools to mainstream skills development and job creation within project delivery', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('4f255dad-ee2b-476e-8e46-c223b0ef3a86', 101, 'Knowledge products on employment, skills and entrepreneurship development are developed and disseminated to key decision makers', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('218d40d1-70b6-47bc-b26b-90cbe912ffdf', 102, '3 short term curricula in A2063 delivery areas are adapted and staff and country senior officials are trained', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('ced5c3dc-07e3-467f-b9d1-ee5317a1f73b', 103, 'SIFA innovative approaches of employment oriented TVET for pilot countries developed', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('1efbdfba-0953-43e3-9b33-bef29033f3c1', 104, 'Skills Initiative for Africa launched, monitored and aligned with regional and bilateral programmes', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('b27bbe9b-3218-4b8b-a5c7-ebdf941fece8', 105, 'The institutional capacities of the NPCA in M&E, technical advice and knowledge management on TVET improved', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('68121425-852b-4e69-8da4-e8f2d3d46922', 106, 'STI, Education and Health indicators integrated into the African Union policy and decision making processes', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('7b5cae96-4306-4e75-b505-6f54b585e611', 107, 'Establish a support network for expanded use of the earth observation (ATLAS) across all regions ', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('1e4581ce-b593-4de9-878d-f8172d11f1dc', 108, 'Examine and consider support to strengthen local capacity for generating quality data on rural development', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('a7b297f7-5cb3-4d2d-a8bb-9a1a3f8d7fd5', 109, 'Develop an Implementation and Performance Management Framework for the Blue Print of rural transformation in Africa', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('2f6861fb-2cd6-4592-8729-8f37c3d4e472', 110, 'Gap Analysis: Country Capacity Development Assessments for Effective Implementation of AU Agenda 2063 and Agenda 2030 (10 Pilot Countries)                      ', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('1ff45d3a-d2f1-429b-a127-3328d630c2a1', 111, 'Institutional strengthening for national and regional executing entities for the application of TOCA ', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('7f65001b-2ebc-4c7e-9988-a2a1754a7c72', 112, 'Country Results Frameworks and 1st Ten Year Implementation Plan for Agenda 2063 – Monitoring and Evaluation', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('1d48b179-db3f-4eeb-9877-8cdfaf634ce2', 113, 'Implementation of 2015-2025 RECs CD Plan', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('92032426-964a-45fc-bcdf-375bdd812804', 114, 'Standard Citizen Engagement tools and mechanisms for NEPAD horizontal Application (Parliaments, CSOs, Private Sector, Tertiary Institutions)', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('09739d8c-99bd-43dd-a98f-b91bb6fc6e3b', 115, 'Development of Strategic Plan (2018 to 2023) and associated implementation plans including partnership and resources mobilization strategies', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('adda42c6-9d7f-48b1-9fb4-40d1924a249c', 116, 'Joint planning and review mechanisms enhanced between AUC and NPCA management teams', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('6714c3f7-68c5-4a7d-bbf3-f5b3ddc5ef3b', 117, 'Advanced and digitalized Standard Operating Procedures in line with value based organizational systems  ', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('c2df6aef-f3dc-4e3e-8bfb-b063fea77d08', 118, 'Development of enterprise cross agency data inventory and policy framework', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('ccae3fb8-9b20-4de3-bf84-f54eb5daf41f', 119, 'Development of strategic foresight analysis report for the continent', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('b2b90b41-0bdc-4b70-ab64-da92db337089', 120, 'Enhanced portal and knowledge platform', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('8af3c5f3-89d0-4ddb-a7ca-80341f851864', 121, 'Enhanced internal capacity both technical and managerial of staff ', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('e0feab2e-efc5-4e93-bee9-23ff5a7a592c', 122, 'Organizational Development of AUDA operating model developed and implemented', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('01e98658-a54f-491e-8fb9-2ed4197781ca', 123, 'Enterprise risks management application and diffusion', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('590bb851-459b-4681-9565-88066830f520', 124, 'Senior management partnership and resources mobilization support (Office of the CEO)', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('63f5cefb-4269-4100-bfbf-9e80da75fecd', 125, 'Financial closure of 6MW Gambia wind project', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('200a7699-3701-46a4-b37c-1cc309f3c61b', 126, 'Financial closure of solar application of public buildings in Madagascar', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('7e500d51-1fc3-418d-81d1-05acf361bbe1', 127, 'Financial closure for Tanzania small islands mini-grids', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('c317cfd5-8591-42d2-8301-e940347db1d7', 128, 'Energy Audits for heavy industries in Rwanda and Tanzania', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('6247e882-4fca-4876-b6e8-952cefe4b74c', 129, 'Identification of Energy Efficiency and Renewable Energy projects in Uganda and Burundi', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('f816e672-797c-4b9c-9e34-1acd353d25df', 130, 'Information on the structure, products and value of intra-regional fish trade in food security generated and made available to stakeholders', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('05707825-b541-4314-a902-382b7338d556', 131, 'A set of recommendations on policies, certification procedures, standards and regulations, well embedded in national and regional fisheries, agricultural, trade and food security policy frameworks', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('9e401405-73b4-489f-97d9-7724c36b299e', 132, 'Increased capacities for trade amongst private sector associations, in particular of women fish processors and traders and aquaculture producers, to make better use of expanding trade opportunities through competitive small and medium scale enterprises', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('c4f606ef-dd93-479b-a6b3-6ce04eda4eed', 133, 'Adoption and implementation of appropriate policies, certification procedures, standards and regulations by key stakeholders participating in intra-regional trade in four selected trade corridors in Africa ', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('51e079fe-d46f-4a2c-8404-544fd7c41ccb', 134, 'Institutional capacity and regulatory frameworks for sustainable fisheries management improved', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('cd14bcc9-559f-4416-8c21-d0d437d4235f', 135, 'Sustainable fisheries management in small-scale fisheries including inland water bodies enhanced', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('86a028da-5bec-4554-961f-9dac3de6b479', 136, 'Institutional capacity and regulatory framework for aquaculture development strengthened', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('0e5d1fb8-d541-431f-a55d-d91d2b9cc4d0', 137, 'Advocacy, Lessons Learning for knowledge sharing and Capacity for increased investments and fostering reforms in the fisheries sector enhanced', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('a249669a-e8c4-4ad8-ae14-2cf98406a3cc', 138, 'Provided technical support and backstopping at country, RECs and continental levels', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('77957780-00d9-487f-8450-92f6b646c914', 139, 'Documentation, Communication and Knowledge products', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('3bf76952-8a7e-4a6d-bf2e-8d033b08aca9', 140, 'Fishery projects supported both technically and managerially ', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('21cc10e3-444e-4c2c-866d-1d5f41c64221', 141, 'Elaboration of feasibility studies for infrastructure development and complementary measures', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('1f466bd5-c977-4b66-a0d2-fcf93996af80', 142, 'Africa Food Insecurity Risks Management (AFIRM)  knowledge products developed and mainstreamed into National and Regional Development Plans and CAADP implementation', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('c72e55cc-1701-40d0-946a-187bb1a24108', 143, 'AFIRM technically and managerially supported', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('33286219-1bc8-4853-907d-c8d72dcaba9d', 144, 'Increased support for Regional Coalition Building', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('4bbacc23-cb2e-4daf-8cc9-0764b5992452', 145, 'Increased support for mutual learning among countries', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('26cece5e-5c6b-496c-91a6-147f8b5c83be', 146, 'Increased support for countries on Sustainable Land Management  investment planning', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('d665f8d1-6ec2-4728-b6ee-206011b61a02', 147, 'Land governance dynamics and impact on sustainable development and equity analyzed', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('2368eeb5-e531-42bd-8f81-94f553a7abef', 148, 'Mainstreaming land in investment programs', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('f9cb1ac5-4dfc-4f02-8c3e-c8dba85efca8', 149, 'Land policy dialogues and dissemination conducted', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('56a92c84-273a-46aa-a94c-7bb7800e7c3c', 150, 'Land policy Project implementation supported', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('f9a89a40-825c-42cd-8165-3bd13a820f29', 151, 'Regional Coalition building (including M&E)', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('68985577-8425-4add-85fb-3b32eef7fd5b', 152, 'Regional knowledge management (Including M&E) - Stakeholders more effectively collecting, analyzing, managing and accessing data and information', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('fbad93ff-6423-4ba4-8bfe-68cc6be85ae9', 153, 'Supported SLWM country programs', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('93566368-fd18-4520-bf79-5c3cabc850f5', 154, 'SLWM Project implementation supported', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('db56bf1a-3ed8-4ad0-af2a-9c49237f57c9', 155, 'Increased country commitments to African Forest Landscape Restoration Initiative (AFR100)', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('9fa2b3d4-8592-423b-9953-60f1ea0679bb', 156, 'Enable improved regional and global coordination', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('8cdc4154-d686-449d-bbec-a7da43096d91', 157, 'Mobilized AFR 100 national actions', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('38ae1fb9-d2fd-420e-be34-593364d96659', 158, 'Strengthened AFR100 Secretariat', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('14a2fcef-b08a-4226-9055-5b9b90b8739c', 159, 'Countries supported to access climate financing', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('7de9ee28-80f3-4392-84b6-0edd355d338e', 160, 'NEPAD Accreditation to Green Climate Fund completed', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('2243d03f-d53c-4bdd-9d67-0e40563b4b94', 161, 'Agriculture Nationally Determined Contributions (NDC) s implementation strengthened', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('eef70bac-5242-4436-9357-90b47a1431c1', 162, 'CSA Facilitated and promoted through Peer learning and advocacy', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('2e2cb101-eca2-417c-aa5e-1e1f1281d8b7', 163, 'Regional Flagship projects implementation coordinated and supported', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('53b40316-328d-4df5-abf0-14339c4165b4', 164, 'Africa Environmental Partnership Platform (AEPP) fully functional', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('fb5ff3fb-28e8-4944-9252-075a09ad2532', 165, 'Climate agriculture Project implementation supported', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('5b366478-88d7-412b-83b7-3f5249ad2bb7', 166, 'Climate smart irrigation framework developed (application of renewable energy to unblock productivity, minimizing climate shocks, and water conservation)', '2019-10-19 00:00:00', 2);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('edb23f72-d4e1-4ff3-833b-bfb9186cb17b', 1, 'Advocacy and promotion of Kaizen ', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('30c3b0a2-b11f-4e63-92b2-796be4daa8f7', 2, 'STI web platform developed and awareness raised among key users', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('66117295-ef85-40f6-9b7b-5683aa5ea001', 3, 'STI training and raised awareness on R&D innovation indicators', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('72dc4615-2f71-4c9f-8c27-c36235d14fa4', 4, 'A system for measuring and tracking the utilization and awareness of STI indicators developed and adopted', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('7a6599a7-ead6-4895-af07-9cb838784a4f', 5, 'Knowledge products on Innovation Policy Comprehensiveness, Informal Sector innovations and National Innovation Systems produced', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('2d3b197e-98d0-4f1a-8348-1ef4ff86af38', 6, 'A web-based framework for assessing and measuring innovation potential of a country developed', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('cef672ba-0a97-4c44-9849-6d06bafbc43e', 7, 'STI, Education and Health indicators integrated into the African Union policy and decision making processes', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('1c41bef3-aaaf-4f9d-b563-e6a316da2903', 8, 'ASTII Impact evaluated', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('9c62738d-b822-42a3-bf3b-078a7be7e5b9', 9, 'ASTII Communication and  Knowledge products disseminated', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('76f2f9f2-d317-4c3f-a51b-5e2615c18ab1', 10, 'SGCs'' Capacity to design and monitor research programs strengthened  by developing a guide to best practice', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('d461a8f4-a6ad-42b0-a24a-5380aba2a90f', 11, 'Private sector participation in PIDA projects is enhanced', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('5b23caaf-9cdd-43d4-966c-e8a54eea8071', 12, 'An Aggregated Financial Guarantee Mechanism for PIDA  projects developed and implemented', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('dfa8aee7-d372-4999-9108-4eaaa95e01f2', 13, 'Strengthening the North African transmission line and creation regional energy market platform', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('34564750-aea8-42e3-b85c-e66a370e392e', 14, 'Updated status of the Egypt, Sudan, Ethiopia, Kenya Interconnectors and implementation supported', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('893ea7bd-bb77-4db0-bdbe-1d4c7b969446', 15, 'Synergistic integration of development of Batoka, Inga III, ZTK projects ', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('b0109c37-4010-4c40-884a-968747153b0d', 16, 'West and Central Africa Power pools engaged  on PIDA projects', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('91bf0858-9156-45d0-a8bd-77d2127b9f4f', 17, 'Cross-border Cybersecurity Infrastructure and Coordination mechanisms established', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('c5faa77a-0693-4f2c-8f9a-87cdd94c1b15', 18, 'ICT Infrastructure (PIDA ICT Missing Links & Regional Data Centers) studies completed and implementation plans developed', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('7ebac770-a217-4a01-948e-2ecad0d776a9', 19, 'Resources mobilised for Entrepreneurship & digital economy (innovation and SME development) project', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('33d8e442-b42d-4ec2-928a-6f11fb2eb512', 20, 'Trade facilitation and integrated access to markets approach piloted in countries', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('9188873f-86e6-4099-8179-c3ce5bc6a885', 21, 'Data and information collected on PIDA projects ', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('e3479bd8-2568-47ac-aec6-4744d30f7dea', 22, 'Communication of PIDA PAP implementation to stakeholders is enhanced', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('7fa22772-4573-4295-905c-24bd8d8bc441', 23, 'PIDA Week 2018 organized ', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('58283307-578e-45d3-bce6-214ed0eb9b5f', 24, 'RECs enabling environment and need assessment conducted (PIDA CAP projects)', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('b63a455d-9d12-485c-ba91-b42569e3dc10', 25, 'Pre-feasibility and Feasibility Study Approved (PIDA CAP projects)', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('305e7399-3b99-42b5-ac7d-ffbcf91a75fc', 26, 'Priority projects reviewed, selected packaged and showcased (PIDA CAP projects)', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('a047a7eb-b713-450c-a632-143774d93d49', 27, 'Financial Structuring Plan Developed and Project Funding Approved (PIDA CAP projects)', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('4877a496-ab79-46c5-aa3c-b512b79318ac', 28, 'Strengthened technical capacity for PIDA implementation at RECs (PIDA CAP projects)', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('72d706e7-fd02-4bbb-bb55-0ab235eccc29', 29, 'Technical advisory services in early stage project preparation (pre-feasibility to feasibility) provided to RECs ', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('1db89a75-8cce-4e80-8f62-04cbfebc4f6e', 30, 'Improved SDM financial  status and strategic outreach', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('3a3480f2-2086-4942-9a1c-a11e8793fcf8', 31, 'Traffic Light System (TLS) Operationalized', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('878577c0-4a90-46a7-aac6-e324f5f658eb', 32, 'MoveAfrica Status Report developed', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('4d7c1dd4-9025-4052-aa2d-d89a909f5b2d', 33, 'MoveAfrica results produced and Showcased', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('e0fbf868-69fd-4dc3-9005-32542c39212c', 34, 'OSBP sourcebook domesticated in West and Central Africa and mechanisms  for dissemination and experience sharing established', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('cdfec52b-9bb3-4db1-9080-6ee3f677c147', 35, 'Established monitoring framework of TLS and OSBP projects and impacts', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('b4ca52f5-822d-42a3-a23d-35bc325fc78a', 36, 'Established framework of human capital development of OSBP practitioners, in RECs and countries', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('0baa2976-0cde-4fb6-8479-76ff3b4d9a8b', 37, 'High Speed Rail Detailed Scoping Study (DSS) Process completed', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('1196f9af-d2f9-49bb-942a-b4d2b8a789d3', 38, 'HSRNP Pre-Feasibility/Feasibility Studies resources mobilized and blended financing toolkit developed', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('9c39b6fc-a999-496c-8cc9-160557bc5e56', 39, 'National readiness for implementation of PIDA/TAH Missing links: TAH 8 Lagos (Yaoundé-Bangui-Kisangani - Kampala-Mombasa); TAH 4 Cairo (Khartoum-Juba-Kampala-Cape Town); TAH 6 Ndjamena – Khartoum -Djibouti); ', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('80110ace-e1f0-4611-836d-90eaff0458b5', 40, 'Program for Infrastructural Development of African Island States developed (Cape Verde, Sao Tome & Principe, Madagascar, Comoros, Seychelles, Mauritius)', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('4b820ac6-08b5-4884-b327-68c02674c1e4', 41, 'Policy and Regulatory frameworks for PIDA projects', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('44ae468d-b939-471c-9bfa-c97fb2f07644', 42, 'PIDA Impacts on job creation and economic growth produced', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('9a94e53d-a2bb-49af-9a7f-2df8cd304744', 43, 'Comprehensive Project Status Report for all PICI Projects published', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('56c19f35-26cf-4436-8c2b-8cec4d83abcd', 44, 'Technical Support and working missions to all PICI States and M&E study for the PICI undertaken. ', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('99113cb5-b74f-4983-a167-354feb183d3a', 45, 'Knowledge and information on extractive industry are produced and shared', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('8a8d7592-c3b6-4a59-8a9a-75d2fa74eff3', 46, 'Selected countries (Central African Republic and Zambia) senior officials (25 each country) have been trained on tax policies and contract negotiation and a network of African experts on Extractive Industry established', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('7b03e846-6f94-47c8-85e5-14c755a15348', 47, 'Agro industry framework developed: Four Pillars (Production systems – productivity and value addition, Food Safety systems and Biosecurity systems)', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('0c5b8b56-fc95-455a-9f9e-dd96a50656bf', 48, 'Created an enabling environment for agreed AMRH outcomes to be achieved within each implementing REC', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('485b8589-40b5-4589-8bc1-a3c55deb56e4', 49, 'The AMRH performance indicators disseminated to EAC, ECOWAS, SADC and all partners to inform policy and lesson sharing across RECs', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('40a26040-6733-4084-bb6c-7e2c7113b337', 50, 'Facilitated effective implementation and accountability at AU, REC and country levels through targeted training and working with policy makers, media, legal experts, parliamentary health committees  and media', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('4aafe976-6bec-4eb8-a1f1-24ff3b436a77', 51, 'Facilitated establishment of an AMRH fundholding facility to support sustainable financing of NMRAs, RECs and AMRH', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('4d53b6f6-24c0-448e-b793-e8aaaf8d8265', 52, 'Provide Secretariat functions to the AMRH Initiative', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('aaadc3c2-0591-49c8-8645-35d1ac04d62b', 53, 'Impact Evaluation of the  of the effectiveness of the NEPAD Multi-Country Partnership Model for Nursing and Midwifery Postgraduate Education Development in Africa', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('f9965fc7-2a41-4b27-b80b-bd59b7e62432', 54, 'Adoption of the AESA Platform by AU Heads of State and Government and STC for science technology and innovation', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('9f7d9e74-fb29-41d3-ae25-553c35947f27', 55, 'Evidence for supporting STI Policy Making at the continental, regional and national levels provided to policy makers', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('c8eb7724-ab5a-4333-8965-0fd7444c9cf5', 56, '114 experts trained in different field of Occupational Health and Safety Mine Inspection', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('80c0e71c-ff6b-4d01-aa07-8bb60098613b', 57, 'Two operational research studies on TB and Occupational Health finalised', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('a4b80d55-721a-4974-a0a6-b411e0072e21', 58, 'Two communities of practice on TB and Occupational Health, and TB financing functional', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('6920b800-7e8c-476e-960d-22c886300dfa', 59, 'Regional guideline/model on (a) Mine Health and Safety Legislation; and (b) Mine inception and OH clinical Protocols for occupational health drafted', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('b609c6e2-b27a-4de9-a666-c4bec7d38be2', 100, 'Provided with checklist & tools to mainstream skills development and job creation within project delivery', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('7ab1caac-de27-4056-bf24-eb07851ffa7f', 60, '20 communicators on TB and occupational lung diseases trained and TB and Occupational Lung Disease control information developed and disseminated', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('8447265a-fcc0-4050-8b23-c6b95cd6fe2d', 61, 'TB Project regionally coordinated and Technical Assistance provided', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('261bf118-d7e5-49eb-bcac-74ccc650d801', 62, 'Enhanced understanding and greater awareness on gene drive and their applications for human health among regulators from all AU Member States', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('e582a3ba-4792-4188-bb9e-d4a9413ae7db', 63, 'Regulators empowered in the understanding of risk assessment and risk management procedures and tools for contained use and field releases of genetically engineered insects         ', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('fa814078-32f2-43f8-8534-a13b2f4e1e17', 64, 'Regulators adopt best practices for insect containment facilities', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('8e7b1cc7-d08d-4f0c-84c9-96b9fddc2e66', 65, 'An enabling regulatory environment created for emerging vector control technologies', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('4b835417-b16e-4b6a-8de7-88fdb67c6aaf', 66, 'Regulators capable of administratively handling, reviewing and making decisions on applications', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('29d260a4-b70c-4d4b-9c72-ef65ba0d5374', 67, 'Capacitated regulators to review dossiers for limited release to supportive of technology development and regulation', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('909f14e0-ff3b-4725-97b5-bca5d20fd6f3', 68, 'Better understanding of the implications of the Cartagena Convention and its Protocols on Africa’s biotechnology development and management', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('00337ffb-f898-475a-9ec4-6c91a968140a', 69, 'Capacitated regulators capable of and conducting monitoring and inspections for regulatory compliance', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('03b4281e-bda7-42fa-98d6-fa6d6a55d3b3', 70, 'And  sharing experiences and best practices', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('3b5f9a5f-8825-4707-a7bd-cab2dd2a65d1', 71, 'Four countries have in place national action plans on youth employment and skills development in rural economic value chains', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('30687881-ec98-4d15-bfed-3aa6c49b97c2', 72, 'Four countries pilot a catalytic set of interventions through the ASTF to support the design, development  and implementation of –Youth Capacity Development Projects', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('9bf2bc5f-271c-4153-9ffb-959a1dd0699f', 73, 'Policy Dialogue on ATVET improved', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('aafd6d9d-8207-410e-a6e5-d48119a0396b', 74, 'ASTF technically and managerially supported', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('cb9a571c-94af-4f75-8d05-4d9f9f36f3b5', 75, 'Institutional conditions for the implementation of Gender- sensitive ATVET exist in the pilot countries (Benin, Burkina Faso, Ghana, Kenya, Malawi, Namibia, Rwanda, Sierra Leone, South Africa, Togo, Tunisia, Uganda)', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('ccfcc02b-f77d-44d5-b45d-d38d9146d226', 76, 'Agricultural Qualification measures in ATVET Institutions are adapted to the needs of Women in the pilot countries (Benin, Burkina Faso, Ghana, Kenya, Malawi, Namibia, Rwanda, Sierra Leone, South Africa, Togo, Tunisia, Uganda)', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('5258238d-e2ca-4eee-861d-a878ca505a52', 77, 'Good practices of gender-sensitive ATVET are nationally and internationally disseminated through Africa-wide exchange of good practices and joint learning among the pilot countries taking into account the RECs and AUC/NPCA', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('89904a75-05a4-46bb-af4c-a82788ed4395', 78, 'Value chain actors, including farmers, with a specific focus on Women and youth have been trained in ATVET according to the CBT approach along the developed curricula (Namibia, Rwanda, Sierra Leone, South Africa, Tunisia, and Uganda)', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('f952d224-0bcf-42e2-ad02-03d3818d29ba', 79, 'Offers adapted to the needs of women in rural regions for market-oriented qualification for entrepreneurship in the agricultural and food sector are implemented in Focused countries (Benin, Burkina Faso, Ghana, Kenya, Malawi, Namibia, Rwanda, Sierra Leone, South Africa, Togo, Tunisia, Uganda)', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('199e32e5-3948-40b1-93f9-cc5f31f17a87', 80, 'Built Functional Biosafety Regulatory Framework in Ghana, Kenya, Malawi, Nigeria, Uganda, Ethiopia, Mozambique, Swaziland, Tanzania, Zambia, Burkina Faso, Senegal, Sudan, Namibia, Togo', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('ecfb43dd-e1e5-449c-96f8-51655acf68e9', 81, 'Accelerated implementation of BIAWE in ECOWAS and COMESA member States ', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('858e3180-902b-4dd3-85e8-46945e79612a', 82, 'Enhanced gender mainstreaming to project cycle management ', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('58052f68-98ea-45fe-95ed-15d3fe40096e', 83, 'Gender mainstreaming for Inclusive Infrastructure Development', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('4a8a1845-bd00-4d96-8f1f-1e9ed4962358', 84, 'Evaluation of Gender Program', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('c9442dc1-400b-4cc8-8ece-3f5c09d1e16e', 85, 'Operationalized and coordinated Initiative Food and Nutrition in Africa (IFNA)', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('32116fa9-93c6-4d19-a13e-044c3b336c11', 86, 'Enhanced  Nutrition Education, Advocacy and Research in Africa', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('02e1c6c1-5ca4-43b8-a0bd-dea87f64bd13', 87, 'Harnessed the potential of nutrition underutilized foods (indigenous foods)', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('d01bb8da-dc72-4a38-bf35-418074d05b66', 88, 'High Level Commitment mobilized', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('d6c9615e-a4bb-47e0-989f-63b7823fb604', 89, 'Private sector mainstreamed into NAIPS', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('74f24de4-89a5-4431-901f-1f651cd058ff', 90, 'Biennial Review of the African Agriculture Transformation Scorecard developed (Request HE Prime Minister of Federal Democratic Republic of Ethiopia', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('86990d40-b907-465a-a380-b6442f7d0d40', 91, 'CAADP technically and managerially supported', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('37b5b6eb-2e91-4daf-aa12-3196ab976f69', 92, 'Strengthened country systems of implementation  and increased national budget allocation to agriculture', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('cb975569-d380-42ee-ad68-3a61958205dc', 93, 'Strengthened and harmonized system for tracking and measurement of agriculture transformation at national, regional and continental levels', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('361bf192-ae68-4b59-a055-3381db907271', 94, 'Increased private sector investment in the prioritized commodity value chains', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('3d2129dc-a0ab-4f3f-b30e-2953310be742', 95, 'Functional CAADP coordination mechanisms in place across levels', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('7d195121-9ff9-40e1-ae92-ae5f7e54aa8c', 96, 'Resource mobilized to CAADP implementation support', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('e2e6c454-09ca-46c5-b264-a916d4523f1d', 97, 'Multi-partner institutional arrangements for country support on Small enterprise development established', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('abd8f8d0-f687-4075-a9ff-bd84b9761e84', 98, 'National Self-Assessment Toolkit on generation of employment and skills development developed', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('75e49cc9-f76a-458d-a60d-04b0f8d799f7', 99, 'Skills partnership development and resource mobilization undertaken', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('e64ccac1-c681-4278-b44c-86566c560206', 101, 'Knowledge products on employment, skills and entrepreneurship development are developed and disseminated to key decision makers', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('fa7a6464-513c-4d90-81e9-e7340c5d15a8', 102, '3 short term curricula in A2063 delivery areas are adapted and staff and country senior officials are trained', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('337d770f-c8ab-4ce1-b8fb-68d4b6d22320', 103, 'SIFA innovative approaches of employment oriented TVET for pilot countries developed', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('df1916ff-1773-4f95-9115-d9906f2097b5', 104, 'Skills Initiative for Africa launched, monitored and aligned with regional and bilateral programmes', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('ed026017-e2f7-42f4-8083-f44095620f27', 105, 'The institutional capacities of the NPCA in M&E, technical advice and knowledge management on TVET improved', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('1a1fb732-9424-4428-bb9b-50d6954ad4c8', 106, 'STI, Education and Health indicators integrated into the African Union policy and decision making processes', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('33937710-7324-4026-b205-fbbc64bc9a77', 107, 'Establish a support network for expanded use of the earth observation (ATLAS) across all regions ', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('3ad3df42-5e0a-4def-96d0-62379cd17749', 108, 'Examine and consider support to strengthen local capacity for generating quality data on rural development', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('22c3505f-2852-4580-a303-b599d772c59c', 109, 'Develop an Implementation and Performance Management Framework for the Blue Print of rural transformation in Africa', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('bc599bb1-04fc-4c10-b17a-20cc1810e2c0', 110, 'Gap Analysis: Country Capacity Development Assessments for Effective Implementation of AU Agenda 2063 and Agenda 2030 (10 Pilot Countries)                      ', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('7b1fc90b-5e60-4c59-bb80-27d54856bdf7', 111, 'Institutional strengthening for national and regional executing entities for the application of TOCA ', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('a24052d9-0315-41c9-a0cd-6c7f05e49eda', 112, 'Country Results Frameworks and 1st Ten Year Implementation Plan for Agenda 2063 – Monitoring and Evaluation', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('21c382ae-a1c5-499f-b9af-633cf7dbee06', 113, 'Implementation of 2015-2025 RECs CD Plan', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('725a519b-c921-490f-a44c-7a3ddb25069e', 114, 'Standard Citizen Engagement tools and mechanisms for NEPAD horizontal Application (Parliaments, CSOs, Private Sector, Tertiary Institutions)', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('37a71721-ee18-4a01-8d07-feee58bd58f0', 115, 'Development of Strategic Plan (2018 to 2023) and associated implementation plans including partnership and resources mobilization strategies', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('e29b2299-3b61-4ed9-ae69-fce7f1de27bf', 116, 'Joint planning and review mechanisms enhanced between AUC and NPCA management teams', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('e566648f-7b50-4033-8412-3b4ae9aa7a6b', 117, 'Advanced and digitalized Standard Operating Procedures in line with value based organizational systems  ', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('fef2268d-0fc4-4d1a-9259-44ed386b363f', 118, 'Development of enterprise cross agency data inventory and policy framework', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('eb716cef-c0d7-45b2-a4ae-829314d63e1c', 119, 'Development of strategic foresight analysis report for the continent', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('f4880988-59af-487e-9230-10e9e260d3bc', 120, 'Enhanced portal and knowledge platform', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('ecef36dd-41ec-4f4b-9c07-6527577444eb', 121, 'Enhanced internal capacity both technical and managerial of staff ', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('9b9950ce-9fb5-480a-b579-eda95cf1e71a', 122, 'Organizational Development of AUDA operating model developed and implemented', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('8aee5d15-39f6-48b5-ac75-670a12cadd3f', 123, 'Enterprise risks management application and diffusion', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('828d8285-63a8-48c0-bba5-55089ae78b6f', 124, 'Senior management partnership and resources mobilization support (Office of the CEO)', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('2a8a2935-723f-4b86-b95c-6a7ffd3768c4', 125, 'Financial closure of 6MW Gambia wind project', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('eb0bcca4-ad54-4f39-b43c-a387c80e46d2', 126, 'Financial closure of solar application of public buildings in Madagascar', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('3cdfee2c-92c5-45d0-8224-673b71ca1151', 127, 'Financial closure for Tanzania small islands mini-grids', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('329386a8-8ec0-468e-8e9b-9d33bc39b635', 128, 'Energy Audits for heavy industries in Rwanda and Tanzania', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('0fbe4a7b-b81d-42aa-87f7-a10810d1d2e5', 129, 'Identification of Energy Efficiency and Renewable Energy projects in Uganda and Burundi', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('258a1123-be41-4bd2-9bda-7302b39b3975', 130, 'Information on the structure, products and value of intra-regional fish trade in food security generated and made available to stakeholders', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('883f4345-8df3-473b-8d5a-a536044e63e9', 131, 'A set of recommendations on policies, certification procedures, standards and regulations, well embedded in national and regional fisheries, agricultural, trade and food security policy frameworks', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('3d56e82b-a74a-45bd-be60-c4ff6f0c1788', 132, 'Increased capacities for trade amongst private sector associations, in particular of women fish processors and traders and aquaculture producers, to make better use of expanding trade opportunities through competitive small and medium scale enterprises', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('ef01678b-9818-4807-abe0-af8a544081a5', 133, 'Adoption and implementation of appropriate policies, certification procedures, standards and regulations by key stakeholders participating in intra-regional trade in four selected trade corridors in Africa ', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('11106d19-b1c8-48b8-826a-60e564bda312', 134, 'Institutional capacity and regulatory frameworks for sustainable fisheries management improved', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('cff22d9c-84ff-4019-86f6-2311349ec282', 135, 'Sustainable fisheries management in small-scale fisheries including inland water bodies enhanced', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('96c3a90d-3d60-483b-aa11-abc859c9964b', 136, 'Institutional capacity and regulatory framework for aquaculture development strengthened', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('4751ce85-8975-4430-8679-abda5d94b595', 137, 'Advocacy, Lessons Learning for knowledge sharing and Capacity for increased investments and fostering reforms in the fisheries sector enhanced', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('8d50ddc2-e49a-4c35-8f3d-498600cbaeca', 138, 'Provided technical support and backstopping at country, RECs and continental levels', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('22fd95b8-c10b-4d2b-b318-339c3e5d95b9', 139, 'Documentation, Communication and Knowledge products', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('ccb52e7b-494a-4da3-8bcd-6199b7097921', 140, 'Fishery projects supported both technically and managerially ', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('3db38081-aa64-41e9-8921-ddb1ce92abe6', 141, 'Elaboration of feasibility studies for infrastructure development and complementary measures', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('78302701-026f-45a5-80c0-9b5731187b83', 26, 'Priority projects reviewed, selected packaged and showcased (PIDA CAP projects)', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('7550f6cc-46c3-4416-9cd8-f8f4da33ff70', 142, 'Africa Food Insecurity Risks Management (AFIRM)  knowledge products developed and mainstreamed into National and Regional Development Plans and CAADP implementation', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('de7448e2-7cb1-4e69-8abc-7bc2dad84fcb', 143, 'AFIRM technically and managerially supported', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('f54d651e-dc7b-405e-8250-7d0f78dfaf47', 144, 'Increased support for Regional Coalition Building', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('27b7f3e9-c937-4c32-9240-002269ec857f', 145, 'Increased support for mutual learning among countries', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('446de1a6-1d4a-4a99-a670-b3796330d2eb', 146, 'Increased support for countries on Sustainable Land Management  investment planning', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('04d4ba23-8f8e-4020-8c97-2a9606f2a3bb', 147, 'Land governance dynamics and impact on sustainable development and equity analyzed', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('a8da6dbf-dbe7-4c51-9b1b-e088e40ef014', 148, 'Mainstreaming land in investment programs', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('1931fabe-ab10-4cc3-8c5a-ab81db08122c', 149, 'Land policy dialogues and dissemination conducted', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('b1ac3735-1912-4062-bc81-ab2bf1ca5e1f', 150, 'Land policy Project implementation supported', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('cfff003f-34c8-447f-ae3b-b28cde950157', 151, 'Regional Coalition building (including M&E)', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('733b98c5-c5e5-4510-a740-c488d4226a79', 152, 'Regional knowledge management (Including M&E) - Stakeholders more effectively collecting, analyzing, managing and accessing data and information', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('a52c5de2-b68a-4270-8deb-34c5ecb66ab5', 153, 'Supported SLWM country programs', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('7f36b558-6a1d-43a5-a7dc-6055ad237ced', 154, 'SLWM Project implementation supported', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('1c7bba4f-b93e-4c1e-bd19-cca7489e5411', 155, 'Increased country commitments to African Forest Landscape Restoration Initiative (AFR100)', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('5e88fb94-4862-443c-a8a2-8bbeb3d21469', 156, 'Enable improved regional and global coordination', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('c16c09af-d676-4292-b1c1-3b6049ce6cc5', 157, 'Mobilized AFR 100 national actions', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('837432a5-9dc5-47e0-9aac-20f8dc6dc643', 158, 'Strengthened AFR100 Secretariat', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('b59966aa-f044-44e6-9395-80daf04c9eea', 159, 'Countries supported to access climate financing', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('a58b7f37-94aa-44ff-bf00-eeb086d2aaaa', 160, 'NEPAD Accreditation to Green Climate Fund completed', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('d39fffff-d0c1-479a-a611-d1ad30cadc66', 161, 'Agriculture Nationally Determined Contributions (NDC) s implementation strengthened', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('0979e942-4d32-4aae-9e83-a9c2df1dbece', 162, 'CSA Facilitated and promoted through Peer learning and advocacy', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('e713f9f7-5c86-412f-b1ca-15cd1f8a54ea', 163, 'Regional Flagship projects implementation coordinated and supported', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('0250995d-81cc-4424-a084-62e1421b3d57', 164, 'Africa Environmental Partnership Platform (AEPP) fully functional', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('cc7617f0-cc89-430f-add9-824b45187b80', 165, 'Climate agriculture Project implementation supported', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('c99f5a1c-9c09-41e3-929b-694d82d2940b', 166, 'Climate smart irrigation framework developed (application of renewable energy to unblock productivity, minimizing climate shocks, and water conservation)', '2019-10-19 00:00:00', 3);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('0e827845-5855-4757-bb6f-c0c4e163fe22', 1, 'Advocacy and promotion of Kaizen ', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('932c456f-ce04-4f53-89a2-822632d79e58', 2, 'STI web platform developed and awareness raised among key users', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('53b581da-1ffa-4bda-b5a5-61cacca5d250', 3, 'STI training and raised awareness on R&D innovation indicators', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('7598d850-2227-4cfa-a309-df2ca89fc3cb', 4, 'A system for measuring and tracking the utilization and awareness of STI indicators developed and adopted', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('26215cfe-1d77-437c-8c6b-84f3a94b84b9', 5, 'Knowledge products on Innovation Policy Comprehensiveness, Informal Sector innovations and National Innovation Systems produced', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('f70bdd37-77f1-4595-9d36-434710369938', 6, 'A web-based framework for assessing and measuring innovation potential of a country developed', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('d97de2aa-43ba-44c6-a87e-d8296b44d8e3', 7, 'STI, Education and Health indicators integrated into the African Union policy and decision making processes', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('5b5a9913-2af3-4079-89a4-9e1b89ece410', 8, 'ASTII Impact evaluated', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('551201bf-0b57-432b-a8e3-ce24d120363f', 9, 'ASTII Communication and  Knowledge products disseminated', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('0bd19642-3728-44e0-80b0-d09ae6f5732a', 10, 'SGCs'' Capacity to design and monitor research programs strengthened  by developing a guide to best practice', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('44fbba2f-7168-40ca-8b2b-31f198d83332', 11, 'Private sector participation in PIDA projects is enhanced', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('2a0f43f4-9c87-4a57-84b3-77e224696586', 12, 'An Aggregated Financial Guarantee Mechanism for PIDA  projects developed and implemented', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('027adb94-47a5-46b1-9f1f-5dfb810e5e1a', 13, 'Strengthening the North African transmission line and creation regional energy market platform', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('73f1099b-d7dc-4a93-bcb1-8402289b6c4a', 14, 'Updated status of the Egypt, Sudan, Ethiopia, Kenya Interconnectors and implementation supported', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('3fc326e2-905e-4f0c-87ee-0c20b94d599e', 15, 'Synergistic integration of development of Batoka, Inga III, ZTK projects ', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('8c4d34d2-0a0c-4af9-9e6b-437d500db663', 16, 'West and Central Africa Power pools engaged  on PIDA projects', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('9e1754c2-a975-415a-95e1-742992868d7e', 17, 'Cross-border Cybersecurity Infrastructure and Coordination mechanisms established', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('c1311cf3-4bd7-44ee-90c5-9f08bbd99c48', 18, 'ICT Infrastructure (PIDA ICT Missing Links & Regional Data Centers) studies completed and implementation plans developed', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('a9cdb70c-adae-44df-8c08-60a3b1e7dd09', 19, 'Resources mobilised for Entrepreneurship & digital economy (innovation and SME development) project', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('0406e086-dcf5-4b50-aea8-718e3d62cd51', 20, 'Trade facilitation and integrated access to markets approach piloted in countries', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('e66a99da-4345-4d0e-9826-21e1a3a4cca0', 21, 'Data and information collected on PIDA projects ', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('d1bc88e9-ef34-4e25-b7ec-500284e58d92', 22, 'Communication of PIDA PAP implementation to stakeholders is enhanced', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('95d7a067-37a1-433e-919b-7336d70067c8', 23, 'PIDA Week 2018 organized ', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('e058aef2-b151-4b9e-9640-907897a055cf', 24, 'RECs enabling environment and need assessment conducted (PIDA CAP projects)', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('268db597-a78d-4186-87aa-368429e9ef58', 25, 'Pre-feasibility and Feasibility Study Approved (PIDA CAP projects)', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('75df510c-3c99-433e-9f5a-59e99ca959ae', 27, 'Financial Structuring Plan Developed and Project Funding Approved (PIDA CAP projects)', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('75e4e7ed-0036-4f20-8e5b-896871daf78a', 28, 'Strengthened technical capacity for PIDA implementation at RECs (PIDA CAP projects)', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('ccc6d654-59ff-4000-8d0a-facb5e0a144c', 29, 'Technical advisory services in early stage project preparation (pre-feasibility to feasibility) provided to RECs ', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('d965f3d8-86ef-45c7-93cf-ec2cfd8187b4', 30, 'Improved SDM financial  status and strategic outreach', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('1299596c-9de4-4a12-8ff2-07b49f8fa77c', 31, 'Traffic Light System (TLS) Operationalized', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('ca278590-6810-45b1-a4ba-08332863dee5', 32, 'MoveAfrica Status Report developed', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('b0acb6b8-ccbb-44c3-8743-65832b0c246e', 33, 'MoveAfrica results produced and Showcased', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('aa35674f-0393-409a-b5d6-466201445ce7', 34, 'OSBP sourcebook domesticated in West and Central Africa and mechanisms  for dissemination and experience sharing established', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('81699468-a044-4dea-8203-37cc59b0abc1', 35, 'Established monitoring framework of TLS and OSBP projects and impacts', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('ea449a6f-8a0d-4a51-b9de-2ecc95a183ff', 36, 'Established framework of human capital development of OSBP practitioners, in RECs and countries', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('72a6cf5d-279d-4d1b-a83f-5ea03aad251a', 37, 'High Speed Rail Detailed Scoping Study (DSS) Process completed', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('2eb9e24a-aca3-40f2-bfb9-e0209e36f736', 38, 'HSRNP Pre-Feasibility/Feasibility Studies resources mobilized and blended financing toolkit developed', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('9779395e-1068-4d40-aa3d-b32fc2d3ed97', 39, 'National readiness for implementation of PIDA/TAH Missing links: TAH 8 Lagos (Yaoundé-Bangui-Kisangani - Kampala-Mombasa); TAH 4 Cairo (Khartoum-Juba-Kampala-Cape Town); TAH 6 Ndjamena – Khartoum -Djibouti); ', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('6faa9be1-8f32-4fd6-ae7f-dd50b96961a6', 40, 'Program for Infrastructural Development of African Island States developed (Cape Verde, Sao Tome & Principe, Madagascar, Comoros, Seychelles, Mauritius)', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('32e969f1-d620-4ee6-afab-88f3e06dd2ae', 41, 'Policy and Regulatory frameworks for PIDA projects', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('8d7ce7eb-2331-4d52-8e47-45ba72756376', 42, 'PIDA Impacts on job creation and economic growth produced', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('32ecb3b8-fc7e-4600-ae90-d93caf0da1d1', 43, 'Comprehensive Project Status Report for all PICI Projects published', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('c41e56e2-74ea-4b21-bf29-31a876e03ce9', 44, 'Technical Support and working missions to all PICI States and M&E study for the PICI undertaken. ', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('96d71b1b-4cc3-4663-a166-7fd8135e02e8', 45, 'Knowledge and information on extractive industry are produced and shared', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('f244ed93-b484-4d58-b185-ac2a0a6fe37d', 46, 'Selected countries (Central African Republic and Zambia) senior officials (25 each country) have been trained on tax policies and contract negotiation and a network of African experts on Extractive Industry established', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('7c923f5e-3f54-4dfe-9777-8a9a22930a17', 47, 'Agro industry framework developed: Four Pillars (Production systems – productivity and value addition, Food Safety systems and Biosecurity systems)', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('f372d4c5-2f1d-408c-9b70-50672cd2b1de', 48, 'Created an enabling environment for agreed AMRH outcomes to be achieved within each implementing REC', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('020e7bf5-8ee5-429f-b621-53edfe19d405', 49, 'The AMRH performance indicators disseminated to EAC, ECOWAS, SADC and all partners to inform policy and lesson sharing across RECs', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('4c20a2c5-56fd-4b9f-907d-c1dadd7c2682', 50, 'Facilitated effective implementation and accountability at AU, REC and country levels through targeted training and working with policy makers, media, legal experts, parliamentary health committees  and media', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('2a1c0132-f673-4d26-b263-1106e62e5840', 51, 'Facilitated establishment of an AMRH fundholding facility to support sustainable financing of NMRAs, RECs and AMRH', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('69717387-7e7c-4a03-b660-dee19f821b20', 52, 'Provide Secretariat functions to the AMRH Initiative', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('d77c7d02-c576-4521-a36a-f073e4c73ec6', 53, 'Impact Evaluation of the  of the effectiveness of the NEPAD Multi-Country Partnership Model for Nursing and Midwifery Postgraduate Education Development in Africa', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('5fcee6bf-d080-4d05-9afd-e10f353e0e22', 54, 'Adoption of the AESA Platform by AU Heads of State and Government and STC for science technology and innovation', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('5b8d0c20-d879-4adc-9eac-082b73ff7270', 55, 'Evidence for supporting STI Policy Making at the continental, regional and national levels provided to policy makers', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('e8c29162-c008-483e-b7bb-366cbf982253', 56, '114 experts trained in different field of Occupational Health and Safety Mine Inspection', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('9ecfa653-bf19-4a5c-bfd5-00b88c957be6', 57, 'Two operational research studies on TB and Occupational Health finalised', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('ee739fec-6545-4889-8256-9856c499a8b5', 58, 'Two communities of practice on TB and Occupational Health, and TB financing functional', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('8aaa7d33-023e-4da5-ac14-1905e3f80734', 59, 'Regional guideline/model on (a) Mine Health and Safety Legislation; and (b) Mine inception and OH clinical Protocols for occupational health drafted', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('4e30634e-88b1-48ab-9b90-0b186f9f49ef', 60, '20 communicators on TB and occupational lung diseases trained and TB and Occupational Lung Disease control information developed and disseminated', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('25e06e7f-d59c-467d-8945-3615ef15e6b4', 61, 'TB Project regionally coordinated and Technical Assistance provided', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('3bf21b30-eb30-447b-a3b2-1f79f650ca37', 62, 'Enhanced understanding and greater awareness on gene drive and their applications for human health among regulators from all AU Member States', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('f3f5075d-7265-4d13-871e-187d7f2496dc', 63, 'Regulators empowered in the understanding of risk assessment and risk management procedures and tools for contained use and field releases of genetically engineered insects         ', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('11a918a0-1fcc-44e2-9b1b-3a8ba11f62c9', 64, 'Regulators adopt best practices for insect containment facilities', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('b368b24c-0f34-4f2f-9820-287f92613e7b', 65, 'An enabling regulatory environment created for emerging vector control technologies', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('66a7121f-1db7-4932-bdea-69f0a18052a2', 66, 'Regulators capable of administratively handling, reviewing and making decisions on applications', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('b09bad25-5ba9-4b98-88e1-811223482957', 67, 'Capacitated regulators to review dossiers for limited release to supportive of technology development and regulation', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('92f61144-0c01-4ec7-85ae-85e71af5d76d', 68, 'Better understanding of the implications of the Cartagena Convention and its Protocols on Africa’s biotechnology development and management', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('c9bd5df5-3bad-48dd-aff8-73b082f4ef5d', 69, 'Capacitated regulators capable of and conducting monitoring and inspections for regulatory compliance', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('209bc228-e61c-44c5-b0d0-be1294d10688', 70, 'And  sharing experiences and best practices', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('4c9d4f8a-b8df-43ad-a690-685ab8795c0d', 71, 'Four countries have in place national action plans on youth employment and skills development in rural economic value chains', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('e3c7133a-b544-4946-a02d-83d176bebf66', 72, 'Four countries pilot a catalytic set of interventions through the ASTF to support the design, development  and implementation of –Youth Capacity Development Projects', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('ca3c6a57-dbb7-43f4-8f39-be5afaa17e99', 73, 'Policy Dialogue on ATVET improved', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('5ff56d30-4941-4d80-a270-6c6e8b209664', 74, 'ASTF technically and managerially supported', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('6b5fb5f7-c389-4f3a-b7bd-3a573d688bb0', 75, 'Institutional conditions for the implementation of Gender- sensitive ATVET exist in the pilot countries (Benin, Burkina Faso, Ghana, Kenya, Malawi, Namibia, Rwanda, Sierra Leone, South Africa, Togo, Tunisia, Uganda)', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('76701a41-5027-45e7-b657-42dff55545eb', 76, 'Agricultural Qualification measures in ATVET Institutions are adapted to the needs of Women in the pilot countries (Benin, Burkina Faso, Ghana, Kenya, Malawi, Namibia, Rwanda, Sierra Leone, South Africa, Togo, Tunisia, Uganda)', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('2d05e266-60cb-4de5-99ca-59c41c855eb3', 77, 'Good practices of gender-sensitive ATVET are nationally and internationally disseminated through Africa-wide exchange of good practices and joint learning among the pilot countries taking into account the RECs and AUC/NPCA', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('3406f107-3052-4b86-abd9-6d890cfe4962', 78, 'Value chain actors, including farmers, with a specific focus on Women and youth have been trained in ATVET according to the CBT approach along the developed curricula (Namibia, Rwanda, Sierra Leone, South Africa, Tunisia, and Uganda)', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('c4d0c30f-4470-419e-8a76-57fbbeb41280', 79, 'Offers adapted to the needs of women in rural regions for market-oriented qualification for entrepreneurship in the agricultural and food sector are implemented in Focused countries (Benin, Burkina Faso, Ghana, Kenya, Malawi, Namibia, Rwanda, Sierra Leone, South Africa, Togo, Tunisia, Uganda)', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('7d934df6-99e8-4a0c-bff5-4f7dca6f2e36', 80, 'Built Functional Biosafety Regulatory Framework in Ghana, Kenya, Malawi, Nigeria, Uganda, Ethiopia, Mozambique, Swaziland, Tanzania, Zambia, Burkina Faso, Senegal, Sudan, Namibia, Togo', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('f186bd58-1984-4af5-9b4c-505250c92812', 81, 'Accelerated implementation of BIAWE in ECOWAS and COMESA member States ', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('159d19ff-ed59-4dc8-a9ec-4478f20ab400', 82, 'Enhanced gender mainstreaming to project cycle management ', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('5490546c-b4b6-4b80-860d-a20ea2953ae9', 83, 'Gender mainstreaming for Inclusive Infrastructure Development', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('0de65a5d-a4a5-46ea-b08a-f03a08384a51', 84, 'Evaluation of Gender Program', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('971e019e-63ad-47eb-9f26-eda2e7fc25ec', 85, 'Operationalized and coordinated Initiative Food and Nutrition in Africa (IFNA)', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('320fc650-c1b2-4d34-898d-95808b0d4dcc', 86, 'Enhanced  Nutrition Education, Advocacy and Research in Africa', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('b128819b-ea97-4d15-92b9-e6a6645c8c9d', 87, 'Harnessed the potential of nutrition underutilized foods (indigenous foods)', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('99afa3c7-070e-46a5-b3c6-de1502ee284d', 88, 'High Level Commitment mobilized', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('18f983c7-96b5-4530-bae7-fe439728f5c7', 89, 'Private sector mainstreamed into NAIPS', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('60c06864-5541-425b-b585-354c8f5dabd1', 90, 'Biennial Review of the African Agriculture Transformation Scorecard developed (Request HE Prime Minister of Federal Democratic Republic of Ethiopia', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('e7172ce4-741a-4fa8-bafe-e5c50ead7761', 91, 'CAADP technically and managerially supported', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('a713c520-0f9b-473b-af88-c6b08c7bddd3', 92, 'Strengthened country systems of implementation  and increased national budget allocation to agriculture', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('7338f5c1-d13d-40bc-9514-aabae3c8daa8', 93, 'Strengthened and harmonized system for tracking and measurement of agriculture transformation at national, regional and continental levels', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('341ee7a4-42fd-4a7a-949d-71aca5e6d303', 94, 'Increased private sector investment in the prioritized commodity value chains', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('457d4292-b859-4e42-95c8-6a3167304bfc', 95, 'Functional CAADP coordination mechanisms in place across levels', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('c871793e-dea8-4df9-b58d-c094debcc350', 96, 'Resource mobilized to CAADP implementation support', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('a09351e3-fcf0-48ed-9ac7-722517938bc6', 97, 'Multi-partner institutional arrangements for country support on Small enterprise development established', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('8081b370-3712-4ae3-9bd7-e35ef705c9d3', 98, 'National Self-Assessment Toolkit on generation of employment and skills development developed', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('89cddc00-7cd5-4dd8-a651-4324e902b6c0', 99, 'Skills partnership development and resource mobilization undertaken', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('066cd542-59ad-4c99-bd58-ce6313456e86', 100, 'Provided with checklist & tools to mainstream skills development and job creation within project delivery', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('33bd601f-e3e9-4703-86a1-21ec509790fa', 101, 'Knowledge products on employment, skills and entrepreneurship development are developed and disseminated to key decision makers', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('1aceb96a-42f3-432c-8d0d-4a1e09de3bec', 102, '3 short term curricula in A2063 delivery areas are adapted and staff and country senior officials are trained', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('710ffd2a-f172-447e-9698-4f471d58a1e9', 103, 'SIFA innovative approaches of employment oriented TVET for pilot countries developed', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('1db60eaf-f8c6-480d-a61c-b5790e7a0951', 104, 'Skills Initiative for Africa launched, monitored and aligned with regional and bilateral programmes', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('9f42ad01-b360-411d-ad49-09b88c0336f4', 105, 'The institutional capacities of the NPCA in M&E, technical advice and knowledge management on TVET improved', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('ff4a62c6-878a-42ea-9743-77b92c2a8dcb', 106, 'STI, Education and Health indicators integrated into the African Union policy and decision making processes', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('1bd9ae70-976c-4c76-9a2b-cfe71215380b', 107, 'Establish a support network for expanded use of the earth observation (ATLAS) across all regions ', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('43377d45-8575-4892-a9c7-c820d6202d81', 108, 'Examine and consider support to strengthen local capacity for generating quality data on rural development', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('ba7e0bac-a67e-4073-98e1-ba1e8b5057f0', 109, 'Develop an Implementation and Performance Management Framework for the Blue Print of rural transformation in Africa', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('e21cdef2-5c52-412d-8114-663a9f186659', 110, 'Gap Analysis: Country Capacity Development Assessments for Effective Implementation of AU Agenda 2063 and Agenda 2030 (10 Pilot Countries)                      ', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('1ba34a4a-8df4-46ee-a652-9db6f96dc0a3', 111, 'Institutional strengthening for national and regional executing entities for the application of TOCA ', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('2219290a-1855-4944-af4a-9026f72f87c2', 112, 'Country Results Frameworks and 1st Ten Year Implementation Plan for Agenda 2063 – Monitoring and Evaluation', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('87f085f7-5fce-4d20-9d20-cf3f694d8f7c', 113, 'Implementation of 2015-2025 RECs CD Plan', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('1efeb639-ace8-454e-896c-a2890c5b52e4', 114, 'Standard Citizen Engagement tools and mechanisms for NEPAD horizontal Application (Parliaments, CSOs, Private Sector, Tertiary Institutions)', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('1ccfaf70-0732-4891-b575-211ee4c0b7a0', 115, 'Development of Strategic Plan (2018 to 2023) and associated implementation plans including partnership and resources mobilization strategies', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('d4f5973b-d942-4a99-a05c-61a159052fe6', 116, 'Joint planning and review mechanisms enhanced between AUC and NPCA management teams', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('c61cef52-6fb0-4f33-bbd3-5b396c9c1706', 117, 'Advanced and digitalized Standard Operating Procedures in line with value based organizational systems  ', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('ee145ce9-69b2-4839-9af4-861b483ad0f3', 118, 'Development of enterprise cross agency data inventory and policy framework', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('72984667-a604-42ce-af38-ba65e3e19847', 119, 'Development of strategic foresight analysis report for the continent', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('cbdb7c3d-9316-45c8-9446-7ec68b79a1ad', 120, 'Enhanced portal and knowledge platform', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('6c02e81b-3d71-494d-81e2-38aada993cc6', 121, 'Enhanced internal capacity both technical and managerial of staff ', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('d3149efb-e7ad-4c8d-a2e0-9f9855491ae4', 122, 'Organizational Development of AUDA operating model developed and implemented', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('b7b3a07a-3ed4-4f05-9d50-68bf94d492f3', 123, 'Enterprise risks management application and diffusion', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('9be54fb7-7894-4b98-99d1-07f107abe37c', 124, 'Senior management partnership and resources mobilization support (Office of the CEO)', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('9491d745-50bc-4ad5-a230-98c359b98a80', 125, 'Financial closure of 6MW Gambia wind project', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('8b26eae5-e6aa-4211-ae33-901338f91247', 126, 'Financial closure of solar application of public buildings in Madagascar', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('009fb1ed-9428-41eb-a60b-de906388ae16', 127, 'Financial closure for Tanzania small islands mini-grids', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('8691f340-f462-4b3d-b3c3-dd91c713eadf', 128, 'Energy Audits for heavy industries in Rwanda and Tanzania', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('43eb1381-199a-4fcb-ba99-6b896f1d7c8d', 129, 'Identification of Energy Efficiency and Renewable Energy projects in Uganda and Burundi', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('a4bec7b6-7381-48cc-b794-6df2f0096000', 130, 'Information on the structure, products and value of intra-regional fish trade in food security generated and made available to stakeholders', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('4836638b-a370-4bdc-8af8-68b7892ff88c', 131, 'A set of recommendations on policies, certification procedures, standards and regulations, well embedded in national and regional fisheries, agricultural, trade and food security policy frameworks', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('4ade1597-1a6e-42a7-a6fe-c21c3087836c', 132, 'Increased capacities for trade amongst private sector associations, in particular of women fish processors and traders and aquaculture producers, to make better use of expanding trade opportunities through competitive small and medium scale enterprises', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('50c2561c-cada-4166-9b4a-273504adbb05', 133, 'Adoption and implementation of appropriate policies, certification procedures, standards and regulations by key stakeholders participating in intra-regional trade in four selected trade corridors in Africa ', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('0ec428e0-ed9c-49fe-9295-17fa804c14d4', 134, 'Institutional capacity and regulatory frameworks for sustainable fisheries management improved', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('84f2912a-f869-4660-b12c-b847df5844dc', 135, 'Sustainable fisheries management in small-scale fisheries including inland water bodies enhanced', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('7d0906d3-7ee6-4c2f-9c17-d0c10e0db22c', 136, 'Institutional capacity and regulatory framework for aquaculture development strengthened', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('6b78727f-ed7c-47b9-91a5-4fa47ffaeb4e', 137, 'Advocacy, Lessons Learning for knowledge sharing and Capacity for increased investments and fostering reforms in the fisheries sector enhanced', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('b3400463-0fbc-4b26-a5de-2eecdb87c316', 138, 'Provided technical support and backstopping at country, RECs and continental levels', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('f419f76a-040c-44cd-bf42-4ea4d027a0ae', 139, 'Documentation, Communication and Knowledge products', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('95ddb8ba-a181-4dd7-9c2b-58fe2493ba44', 140, 'Fishery projects supported both technically and managerially ', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('fb70119c-15ba-4f01-bcc0-0f1c0919342d', 141, 'Elaboration of feasibility studies for infrastructure development and complementary measures', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('223f9dac-cbe8-4710-95ef-7248912ec61a', 142, 'Africa Food Insecurity Risks Management (AFIRM)  knowledge products developed and mainstreamed into National and Regional Development Plans and CAADP implementation', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('fd1ec855-5e8b-432b-834f-87645a5b191c', 143, 'AFIRM technically and managerially supported', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('d098516b-684f-4099-a9ff-978586c976e9', 144, 'Increased support for Regional Coalition Building', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('4344d486-d16b-4164-b7a9-521ff9f277a7', 145, 'Increased support for mutual learning among countries', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('8b080d86-faf4-43b2-8620-4879cd68fbd8', 146, 'Increased support for countries on Sustainable Land Management  investment planning', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('a78b3a61-c72c-46f9-9231-0e0b56c933de', 147, 'Land governance dynamics and impact on sustainable development and equity analyzed', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('8dc542a3-e74b-4632-b9e0-848cb603ac59', 148, 'Mainstreaming land in investment programs', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('b3c9f57b-9ca3-4569-8b07-7b721869d2a1', 149, 'Land policy dialogues and dissemination conducted', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('3102f7b5-1550-4423-854f-486345a2b235', 150, 'Land policy Project implementation supported', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('e6c0b593-aa19-42f1-9981-c7cd5c2e41e5', 151, 'Regional Coalition building (including M&E)', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('53f2f32f-65ed-4a94-887d-730a9935cc16', 152, 'Regional knowledge management (Including M&E) - Stakeholders more effectively collecting, analyzing, managing and accessing data and information', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('44c9d465-2e80-433f-86ed-0e49efe8d5b8', 153, 'Supported SLWM country programs', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('8df865c9-fa93-4134-a353-ce850292bae6', 154, 'SLWM Project implementation supported', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('d921cde0-1dfd-4deb-96eb-e916c6c1b0cb', 155, 'Increased country commitments to African Forest Landscape Restoration Initiative (AFR100)', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('293bbba9-e34a-40e0-b207-996c9720c76b', 156, 'Enable improved regional and global coordination', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('0b406a0b-7ae1-495c-a0a9-3d97eb03d20d', 157, 'Mobilized AFR 100 national actions', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('bac66aac-3d90-47cd-920e-736b5ec8b98e', 158, 'Strengthened AFR100 Secretariat', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('475ca747-cb84-4ae1-9552-984656116d2c', 159, 'Countries supported to access climate financing', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('444323b4-50f1-41b5-9def-645b2204b8ee', 160, 'NEPAD Accreditation to Green Climate Fund completed', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('87f4531e-3e28-478e-bf94-15050f320069', 161, 'Agriculture Nationally Determined Contributions (NDC) s implementation strengthened', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('a62e5250-27d0-4066-aeb5-3fdbaadec382', 162, 'CSA Facilitated and promoted through Peer learning and advocacy', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('8b6d5cf3-ca67-4825-8faa-4e8c105b1bbf', 163, 'Regional Flagship projects implementation coordinated and supported', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('97f5cd9d-0aed-452f-9f10-0969b5cbdedf', 164, 'Africa Environmental Partnership Platform (AEPP) fully functional', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('32add3ce-a4c3-4d19-96ef-268da2a111f1', 165, 'Climate agriculture Project implementation supported', '2019-10-19 00:00:00', 4);
INSERT INTO public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") VALUES ('c4897e0b-8b90-4263-92dc-4cbdae0c75b3', 166, 'Climate smart irrigation framework developed (application of renewable energy to unblock productivity, minimizing climate shocks, and water conservation)', '2019-10-19 00:00:00', 4);


--
-- TOC entry 3655 (class 0 OID 33625)
-- Dependencies: 267
-- Data for Name: TransAnnualWPAUDAOutcomeExplains; Type: TABLE DATA; Schema: public; Owner: employee
--



--
-- TOC entry 3648 (class 0 OID 33563)
-- Dependencies: 260
-- Data for Name: TransAnnualWPAUDAOutputExplains; Type: TABLE DATA; Schema: public; Owner: employee
--

INSERT INTO public."TransAnnualWPAUDAOutputExplains" ("Transaction_Id", "TransAnnualWPMaster_Id", "TransAnnualWP_AUDAOutputExplain", "TransactionDate") VALUES ('39e441ff-b806-4bb5-8d43-c3331cf13b1c', '6fef49d5-d18a-4978-821a-6670fb08242b', 'This is the explanation for ....This is an addition, Bur OK', '2019-10-20 00:00:00');


--
-- TOC entry 3646 (class 0 OID 33547)
-- Dependencies: 258
-- Data for Name: TransAnnualWPActivitys; Type: TABLE DATA; Schema: public; Owner: employee
--



--
-- TOC entry 3644 (class 0 OID 33528)
-- Dependencies: 256
-- Data for Name: TransAnnualWPMasters; Type: TABLE DATA; Schema: public; Owner: employee
--

INSERT INTO public."TransAnnualWPMasters" ("Transaction_Id", "Employee_Id", "IdentityUserId", "FiscalYear", "Submitted", "Queries", "Approved", "Status", "TransactionDate", "Year_Id_Iter") VALUES ('6fef49d5-d18a-4978-821a-6670fb08242b', 68, '42e61067-8906-415a-b53a-6e7718a7c724', '2020', false, false, false, 'Draft', '2019-10-16 00:00:00', 1);


--
-- TOC entry 3656 (class 0 OID 33633)
-- Dependencies: 268
-- Data for Name: TransAnnualWPOutcomes; Type: TABLE DATA; Schema: public; Owner: employee
--

INSERT INTO public."TransAnnualWPOutcomes" ("Transaction_Id", "TransAnnualWPMaster_Id", "TransAnnualWP_Outcome", "TransactionDate", "Iter_Id") VALUES ('a3466da2-0f66-4fec-b6c0-77126aa394bb', '6fef49d5-d18a-4978-821a-6670fb08242b', 'First', '2019-10-28 00:00:00', 2);
INSERT INTO public."TransAnnualWPOutcomes" ("Transaction_Id", "TransAnnualWPMaster_Id", "TransAnnualWP_Outcome", "TransactionDate", "Iter_Id") VALUES ('2ea67c36-baaa-4271-a99a-e51ea5833a1a', '6fef49d5-d18a-4978-821a-6670fb08242b', 'Second', '2019-10-28 00:00:00', 3);
INSERT INTO public."TransAnnualWPOutcomes" ("Transaction_Id", "TransAnnualWPMaster_Id", "TransAnnualWP_Outcome", "TransactionDate", "Iter_Id") VALUES ('52c09b80-7c08-4409-bec4-31f0a5a89e8c', '6fef49d5-d18a-4978-821a-6670fb08242b', 'Third outcome', '2019-11-01 00:00:00', 1);


--
-- TOC entry 3649 (class 0 OID 33571)
-- Dependencies: 261
-- Data for Name: TransAnnualWPOutputs; Type: TABLE DATA; Schema: public; Owner: employee
--

INSERT INTO public."TransAnnualWPOutputs" ("Transaction_Id", "TransAnnualWPMaster_Id", "TransAnnualWP_Output", "TransactionDate", "Iter_Id") VALUES ('0d3c9e93-7c4a-4500-bfc2-2ffe09aa98c4', '6fef49d5-d18a-4978-821a-6670fb08242b', 'MMXX', '2019-11-04 00:00:00', 4);
INSERT INTO public."TransAnnualWPOutputs" ("Transaction_Id", "TransAnnualWPMaster_Id", "TransAnnualWP_Output", "TransactionDate", "Iter_Id") VALUES ('7d0445e5-afd1-4705-8625-25b8ed6b0153', '6fef49d5-d18a-4978-821a-6670fb08242b', 'He is good', '2019-11-04 00:00:00', 5);
INSERT INTO public."TransAnnualWPOutputs" ("Transaction_Id", "TransAnnualWPMaster_Id", "TransAnnualWP_Output", "TransactionDate", "Iter_Id") VALUES ('e18cfda8-599f-445f-b666-a76afb8417a8', '6fef49d5-d18a-4978-821a-6670fb08242b', 'Gideon Nimako PhD', '2019-10-16 00:00:00', 2);
INSERT INTO public."TransAnnualWPOutputs" ("Transaction_Id", "TransAnnualWPMaster_Id", "TransAnnualWP_Output", "TransactionDate", "Iter_Id") VALUES ('3b939476-231a-45d0-803a-9adf01244305', '6fef49d5-d18a-4978-821a-6670fb08242b', 'Nimako1', '2019-11-01 00:00:00', 1);
INSERT INTO public."TransAnnualWPOutputs" ("Transaction_Id", "TransAnnualWPMaster_Id", "TransAnnualWP_Output", "TransactionDate", "Iter_Id") VALUES ('cdb8d4a4-fd2a-4886-b7c6-90ef87633972', '6fef49d5-d18a-4978-821a-6670fb08242b', 'Kwabena', '2019-11-04 00:00:00', 3);


--
-- TOC entry 3653 (class 0 OID 33609)
-- Dependencies: 265
-- Data for Name: TransAnnualWPProgrammaticOutcomes; Type: TABLE DATA; Schema: public; Owner: employee
--



--
-- TOC entry 3654 (class 0 OID 33617)
-- Dependencies: 266
-- Data for Name: TransAnnualWPProgrammaticOutputs; Type: TABLE DATA; Schema: public; Owner: employee
--

INSERT INTO public."TransAnnualWPProgrammaticOutputs" ("Transaction_Id", "TransAnnualWPMaster_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate") VALUES ('b2f7c6ad-b10e-4f61-8bd2-61d70d69d21a', '6fef49d5-d18a-4978-821a-6670fb08242b', 13, 'Strengthening the North African transmission line and creation regional energy market platform', '2019-10-20 00:00:00');


--
-- TOC entry 3645 (class 0 OID 33536)
-- Dependencies: 257
-- Data for Name: TransAnnualWPProjects; Type: TABLE DATA; Schema: public; Owner: employee
--

INSERT INTO public."TransAnnualWPProjects" ("Transaction_Id", "TransAnnualWPMaster_Id", "Project_Id", "Project_Name", "TransactionDate") VALUES ('b578fd28-6fce-47e2-be05-e6973a9b965d', '6fef49d5-d18a-4978-821a-6670fb08242b', 21, 'AMRH', '2019-10-16 00:00:00');
INSERT INTO public."TransAnnualWPProjects" ("Transaction_Id", "TransAnnualWPMaster_Id", "Project_Id", "Project_Name", "TransactionDate") VALUES ('b0b784f6-52ba-47c7-bdec-0949caa4caaa', '6fef49d5-d18a-4978-821a-6670fb08242b', 2, 'Sustainable Tourism (Youth Empowerment)', '2019-10-20 00:00:00');


--
-- TOC entry 3647 (class 0 OID 33555)
-- Dependencies: 259
-- Data for Name: TransAnnualWPTransitions; Type: TABLE DATA; Schema: public; Owner: employee
--

INSERT INTO public."TransAnnualWPTransitions" ("Transaction_Id", "TransAnnualWPMaster_Id", "TransAnnualWP_State", "PerformedBy", "TransactionDate", "PerformedByName") VALUES ('a83afff6-c54b-4828-b7e9-f79ce7bb4a8d', '6fef49d5-d18a-4978-821a-6670fb08242b', 'Draft', 68, '2019-10-16 00:00:00', 'Flore Kamdomg   ');


--
-- TOC entry 3650 (class 0 OID 33579)
-- Dependencies: 262
-- Data for Name: TransAuditRecords; Type: TABLE DATA; Schema: public; Owner: employee
--

INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('445f7457-4d65-4615-af14-325765719751', 'Login', 68, 'Flore Kamdomg   ', '0.0.0.1', '2019-10-13 21:42:19');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('3d693d8e-dde2-40a5-a9aa-2171609dc79f', 'Login', 68, 'Flore Kamdomg   ', '0.0.0.1', '2019-10-13 22:09:50');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('75b997e9-8270-411d-b7fd-a44582c3b3dd', 'Annual Workplan Draft Created', 68, 'Flore Kamdomg   ', '0.0.0.1', '2019-10-13 22:10:10');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('ca6a2b12-4eb8-4670-8294-196afd257be5', 'Logout', 68, 'Flore Kamdomg   ', '0.0.0.1', '2019-10-13 22:11:55');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('ad526314-ad0b-43d8-85d2-73d4e214b52f', 'Login', 68, 'Flore Kamdomg   ', '0.0.0.1', '2019-10-13 23:11:15');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('fd3ecf93-825e-4f69-b3e3-d9aeaf7d10be', 'Annual Workplan Draft Created', 68, 'Flore Kamdomg   ', '0.0.0.1', '2019-10-13 23:11:48');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('895291a5-d2f4-4ac9-8935-1843e9f8c4ca', 'Annual Workplan Draft Deleted', 68, 'Flore Kamdomg   ', '0.0.0.1', '2019-10-13 23:12:01');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('4f5a490e-ca0b-4b00-b86c-90f33dac4cdd', 'Logout', 68, 'Flore Kamdomg   ', '0.0.0.1', '2019-10-13 23:13:15');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('b0ad1ba5-6bff-410a-a23b-91ceadd215a7', 'Login', 73, 'Gideon Nimako   ', '0.0.0.1', '2019-10-13 23:13:42');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('ee9fb57c-0157-445f-a9bc-562ab4bb01e5', 'Logout', 73, 'Gideon Nimako   ', '0.0.0.1', '2019-10-14 11:15:08');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('e5f940db-03f1-4e33-892b-4fe3790e783b', 'Login', 68, 'Flore Kamdomg   ', '0.0.0.1', '2019-10-15 14:29:50');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('83dc4318-38c7-40a3-ade0-e06eb3fc5138', 'Login', 68, 'Flore Kamdomg   ', '0.0.0.1', '2019-10-15 15:25:15');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('3d6c5056-072f-44a7-87f5-7fa84a316976', 'Login', 68, 'Flore Kamdomg   ', '0.0.0.1', '2019-10-15 17:36:29');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('9a79124a-d38c-4633-83e4-11c845d6a746', 'Logout', 68, 'Flore Kamdomg   ', '0.0.0.1', '2019-10-15 17:37:47');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('68091276-5233-493b-8935-5dd7c92f994a', 'Login', 68, 'Flore Kamdomg   ', '0.0.0.1', '2019-10-15 17:38:32');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('d1327dbb-85ee-480e-b93a-138aa03e4649', 'Annual Workplan Draft Created', 68, 'Flore Kamdomg   ', '0.0.0.1', '2019-10-15 17:38:49');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('f2c57396-d68d-40f8-89bd-fc94af42fce5', 'Login', 68, 'Flore Kamdomg   ', '0.0.0.1', '2019-10-15 20:20:30');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('4819c6c2-76bd-4845-818c-812295f87547', 'Login', 73, 'Gideon Nimako   ', '0.0.0.1', '2019-10-15 21:28:24');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('6aa3a023-54a3-48a4-9018-6afcf3b5d0a4', 'Login', 68, 'Flore Kamdomg   ', '0.0.0.1', '2019-10-15 23:05:41');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('5fc9e023-cdb0-43b8-9f15-7afb018abd87', 'Login', 68, 'Flore Kamdomg   ', '0.0.0.1', '2019-10-15 23:46:44');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('e10b958d-1f93-49f1-9a93-7c3b817ef34a', 'Annual Workplan Draft Created', 68, 'Flore Kamdomg   ', '0.0.0.1', '2019-10-15 23:47:22');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('0647cb43-7855-43e5-b8d0-4ae7e13b93d2', 'Login', 68, 'Flore Kamdomg   ', '0.0.0.1', '2019-10-16 00:15:05');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('8ed75bc5-8435-4845-a680-85b826e6429f', 'Login', 68, 'Flore Kamdomg   ', '0.0.0.1', '2019-10-16 00:24:16');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('f1369206-732a-4dbe-b0ba-45582f0929c4', 'Annual Workplan Draft Deleted', 68, 'Flore Kamdomg   ', '0.0.0.1', '2019-10-16 00:24:36');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('092e1d59-5365-46db-be90-0d9b9a7dcda6', 'Annual Workplan Draft Created', 68, 'Flore Kamdomg   ', '0.0.0.1', '2019-10-16 00:29:33');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('21f0eeb4-6eab-40da-9eba-c1fdd0b0aa7f', 'Annual Workplan Draft Deleted', 68, 'Flore Kamdomg   ', '0.0.0.1', '2019-10-16 00:29:48');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('d25b5580-cf3e-4537-b2e4-2281c38d3b53', 'Logout', 68, 'Flore Kamdomg   ', '0.0.0.1', '2019-10-16 11:08:41');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('d30dafd6-c967-4d04-a9cc-a8b857642b96', 'Login', 68, 'Flore Kamdomg   ', '0.0.0.1', '2019-10-16 12:59:16');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('fc7e34ba-c16a-4323-843b-239c0d72b60c', 'Annual Workplan Draft Created', 68, 'Flore Kamdomg   ', '0.0.0.1', '2019-10-16 12:59:35');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('87b74544-85ec-474a-826e-cf32ad652ad6', 'Annual Workplan Draft Deleted', 68, 'Flore Kamdomg   ', '0.0.0.1', '2019-10-16 13:00:02');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('3af7c3c6-cdc1-45cc-ad90-e5c92bee531d', 'Login', 68, 'Flore Kamdomg   ', '0.0.0.1', '2019-10-16 14:19:28');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('f9eb6abe-f486-4660-8597-5cd9aa0d79e2', 'Annual Workplan Draft Created', 68, 'Flore Kamdomg   ', '0.0.0.1', '2019-10-16 14:19:46');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('3eaa4aa0-74e8-49e4-96e2-b005d09597fc', 'Login', 68, 'Flore Kamdomg   ', '0.0.0.1', '2019-10-16 14:40:16');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('932a3dec-fb3d-4986-957d-0661a6f14d32', 'Login', 68, 'Flore Kamdomg   ', '0.0.0.1', '2019-10-16 14:48:37');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('61cbb649-552b-4c61-b421-ddf35e1cb832', 'Login', 68, 'Flore Kamdomg   ', '0.0.0.1', '2019-10-16 15:26:59');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('c86d5dee-65cf-4e4f-b0d5-a698e122dd79', 'Login', 68, 'Flore Kamdomg   ', '0.0.0.1', '2019-10-16 15:44:19');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('89b36997-0aa0-4bb8-b5c8-f307d03ec86f', 'Logout', 68, 'Flore Kamdomg   ', '0.0.0.1', '2019-10-16 16:28:35');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('b39e6278-e680-43b6-83e2-243705eee916', 'Login', 73, 'Gideon Nimako   ', '0.0.0.1', '2019-10-16 16:28:47');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('6060c9a0-c27e-4d3e-8e42-0e4e402a10a4', 'Logout', 73, 'Gideon Nimako   ', '0.0.0.1', '2019-10-16 16:38:31');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('91de8c02-5211-4c26-b8e1-066de2f758d1', 'Login', 73, 'Gideon Nimako   ', '0.0.0.1', '2019-10-16 16:38:38');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('8704b276-1328-45d1-acc0-578209862b34', 'Login', 73, 'Gideon Nimako   ', '0.0.0.1', '2019-10-16 22:18:12');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('e24a5d1f-e917-4dfd-9af1-eac5a3e4ca65', 'Login', 73, 'Gideon Nimako   ', '0.0.0.1', '2019-10-16 22:54:58');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('ab92193d-f1a9-41b9-9167-395a16b32e0d', 'Login', 73, 'Gideon Nimako   ', '0.0.0.1', '2019-10-17 11:09:54');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('bf5f41cc-59a4-45df-a70f-e711f4eb1247', 'Login', 73, 'Gideon Nimako   ', '0.0.0.1', '2019-10-17 16:10:27');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('c742da19-b3f6-4255-85cf-0b296ac6922d', 'Login', 73, 'Gideon Nimako   ', '0.0.0.1', '2019-10-17 23:05:29');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('67746b8e-f4c0-43de-8ebc-27386cb235d5', 'Login', 73, 'Gideon Nimako   ', '0.0.0.1', '2019-10-18 00:51:09');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('ad9b3c27-4585-4e8c-b6d4-483730b9e98b', 'Programmatic Outcome: ''Food Security and Healthy Society Achieved with Inclusive Employment and Incomes'' Mapped', 73, 'Gideon Nimako   ', '0.0.0.1', '2019-10-18 00:51:23');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('e3c87042-1a39-48fd-9d8d-53db538b0b9b', '2Programmatic Outcomes Mapped', 73, 'Gideon Nimako   ', '0.0.0.1', '2019-10-18 00:52:42');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('6a454373-466b-4928-a48a-81fdd6cd9224', 'Login', 73, 'Gideon Nimako   ', '0.0.0.1', '2019-10-18 00:56:30');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('a0d4b7b9-f806-42e8-959e-d175d6713fc6', '4 Programmatic Outcomes Mapped', 73, 'Gideon Nimako   ', '0.0.0.1', '2019-10-18 00:58:23');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('5f1eaf0d-73f2-4c12-8b78-4fdb91f7623c', 'Login', 73, 'Gideon Nimako   ', '0.0.0.1', '2019-10-18 11:34:25');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('c8bfb5e1-e0d3-4647-b002-65e5ea0f2e20', 'Login', 73, 'Gideon Nimako   ', '0.0.0.1', '2019-10-18 12:25:36');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('909484fa-e0a9-43a0-8330-bf787039b648', 'Login', 73, 'Gideon Nimako   ', '0.0.0.1', '2019-10-18 17:37:45');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('f1320a52-ddab-4e0d-9974-453471b6a6b9', 'Login', 73, 'Gideon Nimako   ', '0.0.0.1', '2019-10-19 09:38:44');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('64917a48-b648-4a05-8b78-e2c96c8b015b', 'Login', 73, 'Gideon Nimako   ', '0.0.0.1', '2019-10-19 10:26:08');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('80300c60-f74a-4581-8f78-b954572e7702', 'Login', 73, 'Gideon Nimako   ', '0.0.0.1', '2019-10-19 13:48:28');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('8401ab7b-b11a-46b0-80e6-3ba07a1f12ff', 'Logout', 73, 'Gideon Nimako   ', '0.0.0.1', '2019-10-19 13:51:02');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('d00a7969-a180-4239-b594-b5407d1d3855', 'Login', 73, 'Gideon Nimako   ', '0.0.0.1', '2019-10-19 13:52:03');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('444024a4-a12f-4dce-b421-8ab83bde3f97', 'Login', 73, 'Gideon Nimako   ', '0.0.0.1', '2019-10-19 15:10:27');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('1f31c4a9-2406-4a93-8e33-ca4cb9095aba', '0 Programmatic Outcomes Mapped', 73, 'Gideon Nimako   ', '0.0.0.1', '2019-10-19 15:10:37');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('d384b2fc-f081-4353-ac40-c33d2cc24952', '0 Programmatic Outcomes Mapped', 73, 'Gideon Nimako   ', '0.0.0.1', '2019-10-19 15:11:58');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('94bcb6a5-7ccc-4b37-b651-fd8493749ba5', 'All Programmatic Outputs Mapped to 4 Programmatic Outcomes', 73, 'Gideon Nimako   ', '0.0.0.1', '2019-10-19 15:16:45');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('37ccdde5-d3d0-4276-bfa7-0dc53d27984e', 'All Programmatic Outputs Mapped to 4 Programmatic Outcomes', 73, 'Gideon Nimako   ', '0.0.0.1', '2019-10-19 15:21:25');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('0db87dcf-7360-4c08-973d-73e53ed675f2', 'All Programmatic Outputs Mapped to 4 Programmatic Outcomes', 73, 'Gideon Nimako   ', '0.0.0.1', '2019-10-19 15:21:39');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('dc5cbb9a-d569-45da-b15c-c3bffd6d74e1', 'All Programmatic Outputs Mapped to 4 Programmatic Outcomes', 73, 'Gideon Nimako   ', '0.0.0.1', '2019-10-19 15:22:10');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('820cf9e7-29e3-4432-a65a-47d5de84cc06', 'All Programmatic Outputs Mapped to 4 Programmatic Outcomes', 73, 'Gideon Nimako   ', '0.0.0.1', '2019-10-19 15:23:03');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('22bfc343-1eac-4070-aaeb-06c0672ad0ae', 'All Programmatic Outputs Mapped to 4 Programmatic Outcomes', 73, 'Gideon Nimako   ', '0.0.0.1', '2019-10-19 15:24:24');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('100175bc-45a8-4f19-affb-b3329fc7caa0', 'All Programmatic Outputs Mapped to 4 Programmatic Outcomes', 73, 'Gideon Nimako   ', '0.0.0.1', '2019-10-19 15:25:16');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('21028fc9-f703-46a5-a0d3-f1b6feb90309', 'All Programmatic Outputs Mapped to 4 Programmatic Outcomes', 73, 'Gideon Nimako   ', '0.0.0.1', '2019-10-19 15:27:46');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('18a9e8e3-f2cf-4709-bc4e-eb4f668a0d52', 'All Programmatic Outputs Mapped to 4 Programmatic Outcomes', 73, 'Gideon Nimako   ', '0.0.0.1', '2019-10-19 15:27:50');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('ca7c7d8b-2310-4a3a-94a0-05a43540baab', 'All Programmatic Outputs Mapped to 4 Programmatic Outcomes', 73, 'Gideon Nimako   ', '0.0.0.1', '2019-10-19 15:27:52');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('a0060d15-2d14-4695-ac4d-eea6a62881db', 'All Programmatic Outputs Mapped to 4 Programmatic Outcomes', 73, 'Gideon Nimako   ', '0.0.0.1', '2019-10-19 15:28:42');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('3d119362-98a9-425e-a7c9-277955b32723', 'All Programmatic Outputs Mapped to 4 Programmatic Outcomes', 73, 'Gideon Nimako   ', '0.0.0.1', '2019-10-19 15:28:50');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('f25d20f4-da46-4262-a2be-11af913381aa', 'Logout', 73, 'Gideon Nimako   ', '0.0.0.1', '2019-10-19 15:29:03');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('5e39c236-830f-4666-b702-c128cf408964', 'Login', 73, 'Gideon Nimako   ', '0.0.0.1', '2019-10-19 15:29:09');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('a22fdab1-a0cc-4f7e-b621-ef536bca9b13', 'Login', 68, 'Flore Kamdomg   ', '0.0.0.1', '2019-10-19 22:27:53');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('0c0c7748-1705-4ecf-a46e-11050f6d8a87', 'Login', 68, 'Flore Kamdomg   ', '0.0.0.1', '2019-10-20 01:59:58');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('94a5b66d-d9f3-4cfc-93e3-32f4aae430f6', 'AUDA Programmatic Output: ''STI web platform developed and awareness raised among key users'' added to Annual Workplan', 68, 'Flore Kamdomg   ', '0.0.0.1', '2019-10-20 11:38:15');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('3d8f45ac-5a64-49cd-9245-b68c7aea10d6', 'AUDA Programmatic Output: ''Advocacy and promotion of Kaizen '' added to Annual Workplan', 68, 'Flore Kamdomg   ', '0.0.0.1', '2019-10-20 11:45:56');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('4a497acb-86dd-476a-beb4-5638b0adfeb6', 'AUDA Programmatic Output: ''A system for measuring and tracking the utilization and awareness of STI indicators developed and adopted'' added to Annual Workplan', 68, 'Flore Kamdomg   ', '0.0.0.1', '2019-10-20 11:46:39');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('5c333a3f-a215-4ab5-8fa1-ae8ef6329bd7', 'AUDA Programmatic Output: ''Strengthening the North African transmission line and creation regional energy market platform'' added to Annual Workplan', 68, 'Flore Kamdomg   ', '0.0.0.1', '2019-10-20 11:46:56');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('b629356f-07eb-4ff9-b4ec-e57f338c4c3d', 'Login', 68, 'Flore Kamdomg   ', '0.0.0.1', '2019-10-20 12:10:49');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('fceb5918-a286-45aa-aeea-9c3b3947067d', 'AUDA Programmatic Output: ''Advocacy and promotion of Kaizen '' added to Annual Workplan', 68, 'Flore Kamdomg   ', '0.0.0.1', '2019-10-20 12:14:18');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('28770671-53ea-46fb-8603-4eb42f407c60', 'Login', 68, 'Flore Kamdomg   ', '0.0.0.1', '2019-10-20 15:20:04');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('11286042-f9e5-4fcb-87c8-1df8277624bd', 'An explanation for the link between the annual workplan outputs and the AUDA programmatic outputs have been saved.', 68, 'Flore Kamdomg   ', '0.0.0.1', '2019-10-20 16:17:06');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('666436ae-166e-476c-8618-139a3b591eb8', 'Login', 68, 'Flore Kamdomg   ', '0.0.0.1', '2019-10-21 00:20:29');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('46d02e51-db94-452f-8ea4-77f4ee8a0ef6', 'Login', 68, 'Flore Kamdomg   ', '0.0.0.1', '2019-10-21 00:24:30');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('da56d887-1b4d-4614-9fa6-5154bc915d13', 'Login', 68, 'Flore Kamdomg   ', '0.0.0.1', '2019-10-21 15:41:01');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('b09ac5cf-a96f-4fb6-a58b-83c591a8f559', 'Login', 68, 'Flore Kamdomg   ', '0.0.0.1', '2019-10-22 16:13:29');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('4b916d50-5707-4e0a-933d-fee8caf491a3', 'Login', 68, 'Flore Kamdomg   ', '0.0.0.1', '2019-10-22 16:17:39');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('43bcc8bf-3fbd-43a3-80de-25db3663b512', 'Login', 68, 'Flore Kamdomg   ', '0.0.0.1', '2019-10-22 16:26:33');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('52ac3a75-2357-427c-89c4-3f40d410cf32', 'Login', 68, 'Flore Kamdomg   ', '0.0.0.1', '2019-10-22 16:37:15');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('ead39657-5c3d-42e4-a4aa-13bc2ab6e63d', 'Login', 68, 'Flore Kamdomg   ', '0.0.0.1', '2019-10-22 17:16:19');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('ed277373-d331-421a-966b-7a74603045b0', 'Login', 68, 'Flore Kamdomg   ', '0.0.0.1', '2019-10-22 17:27:53');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('f95972ae-e93e-4c09-b120-4213bb33a39d', 'Login', 68, 'Flore Kamdomg   ', '0.0.0.1', '2019-10-23 00:10:54');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('893fd9ab-b746-46bf-9634-375c79a25a94', 'Login', 68, 'Flore Kamdomg   ', '0.0.0.1', '2019-10-23 01:00:49');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('0073c2f0-9bdd-49ac-93ab-517070d3c251', 'Login', 68, 'Flore Kamdomg   ', '0.0.0.1', '2019-10-23 18:58:17');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('a14347f2-49ea-4a49-80f0-806e12ca8ab1', 'Login', 68, 'Flore Kamdomg   ', '0.0.0.1', '2019-10-24 06:48:08');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('f44f1b4f-72f0-42e2-8981-f6b70e84505f', 'Logout', 68, 'Flore Kamdomg   ', '0.0.0.1', '2019-10-24 13:17:11');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('958a06c7-2ba2-4b09-ba22-47a009bd234c', 'Login', 68, 'Flore Kamdomg   ', '0.0.0.1', '2019-10-28 00:59:55');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('96c912b2-d25e-4254-8954-fb87d8b5c678', 'Logout', 68, 'Flore Kamdomg   ', '0.0.0.1', '2019-10-28 22:22:02');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('14b25f7e-b659-4cb2-84a5-7b7cce79e10b', 'Login', 68, 'Flore Kamdomg   ', '0.0.0.1', '2019-10-28 23:53:26');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('a54bfb8a-3772-4dbe-b60c-708416881277', 'Login', 68, 'Flore Kamdomg   ', '0.0.0.1', '2019-11-01 17:29:56');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('948188fa-08d2-454b-a342-2699f8c8699b', 'Login', 68, 'Flore Kamdomg   ', '0.0.0.1', '2019-11-04 11:01:31');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('e06ef415-3d6a-41f1-81ab-8044bee321d8', 'Login', 68, 'Flore Kamdomg   ', '0.0.0.1', '2019-11-04 14:07:42');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('a15d539a-f3c2-450d-b103-59f06fcc3bcb', 'Login', 73, 'Gideon Nimako   ', '0.0.0.1', '2019-12-19 23:05:26');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('f448f90a-85d6-4257-93fb-1e33c5e9ba24', 'Logout', 73, 'Gideon Nimako   ', '0.0.0.1', '2019-12-19 23:05:44');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('bb18622e-c5ce-4a53-ae6f-600138814fe9', 'Login', 68, 'Flore Kamdomg   ', '0.0.0.1', '2019-12-19 23:06:42');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('42b306b4-39ca-493b-b8d1-42852b51ea15', 'Login', 68, 'Flore Kamdomg   ', '0.0.0.1', '2019-12-26 23:12:50');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('30a7ca5f-39c9-497b-bb83-b234d63de839', 'Login', 73, 'Gideon Nimako   ', '0.0.0.1', '2019-12-28 00:15:41');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('71465b2a-9293-4361-90de-857ed711762e', 'Logout', 73, 'Gideon Nimako   ', '0.0.0.1', '2019-12-28 00:59:55');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('bf860e9e-5f54-4024-b938-a301719b6370', 'Login', 68, 'Flore Kamdomg   ', '0.0.0.1', '2019-12-28 01:00:02');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('de4d086b-3cd6-481b-8094-2b5e87c31a95', 'Logout', 68, 'Flore Kamdomg   ', '0.0.0.1', '2019-12-28 01:00:19');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('89dd0ea6-de9e-4876-a5e1-3c957daad168', 'Login', 73, 'Gideon Nimako   ', '0.0.0.1', '2019-12-28 01:00:40');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('992aecbe-eb28-4447-b82f-7a21b309e925', 'Logout', 73, 'Gideon Nimako   ', '0.0.0.1', '2019-12-28 18:13:39');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('3cd2e4fe-ea35-4a59-9e76-8e6a9827dfb8', 'Login', 73, 'Gideon Nimako   ', '0.0.0.1', '2019-12-28 18:13:46');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('6b4b56e6-7dcc-412b-b2ee-550c8c5ee3d4', 'Login', 73, 'Gideon Nimako   ', '0.0.0.1', '2019-12-28 18:14:06');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('aaf4555e-a518-4b2a-9d72-b9a1b66589b3', 'Login', 73, 'Gideon Nimako   ', '0.0.0.1', '2019-12-28 18:28:53');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('01b4c338-8d8a-43dd-ac7e-0a4c18b5d0b3', 'Login', 73, 'Gideon Nimako   ', '0.0.0.1', '2019-12-28 21:07:57');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('95f902e2-d392-4d3e-8e85-b0a057f08ae4', 'Logout', 73, 'Gideon Nimako   ', '0.0.0.1', '2019-12-28 21:25:42');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('62b6b5f1-3b11-413c-afdc-11f58accedc0', 'Login', 68, 'Flore Kamdomg   ', '0.0.0.1', '2019-12-28 21:25:49');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('1ec73957-ca41-4b88-b67f-497882272e8e', 'Logout', 68, 'Flore Kamdomg   ', '0.0.0.1', '2019-12-28 21:29:10');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('a64d8ae5-3d56-4248-9eae-1a5c15dcdce5', 'Login', 124, 'Mayaki Ibrahim Assane (Dr) ', '0.0.0.1', '2019-12-28 21:29:17');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('23363508-5f2f-46a7-851c-ff9ced76008b', 'Logout', 124, 'Mayaki Ibrahim Assane (Dr) ', '0.0.0.1', '2019-12-28 21:29:31');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('6b5d4f8e-9edd-4810-bcd1-fab09bef851f', 'Login', 73, 'Gideon Nimako   ', '0.0.0.1', '2019-12-28 21:29:44');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('bbb65999-0f6f-4864-a074-e13fa30f4ae0', 'Logout', 73, 'Gideon Nimako   ', '0.0.0.1', '2019-12-28 21:31:31');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('2c95bfbe-de11-4dad-80ad-105ec08bf6d8', 'Login', 11, 'Amine Idriss Adoum  ', '0.0.0.1', '2019-12-28 21:31:40');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('27f988c2-87e0-4868-bdf1-063712d65573', 'Logout', 11, 'Amine Idriss Adoum  ', '0.0.0.1', '2019-12-28 21:33:55');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('1569a667-11a8-48bd-a815-6f19b5a61a35', 'Login', 132, 'Mohamed H Abdisalam  ', '0.0.0.1', '2019-12-28 21:34:10');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('96eb5271-7533-412c-9fa9-2272e03a7953', 'Logout', 132, 'Mohamed H Abdisalam  ', '0.0.0.1', '2019-12-28 21:34:42');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('d2df8250-4b62-4b27-896a-80ac1ebdb1fc', 'Login', 119, 'Margareth Ndomondo-Sigonda   ', '0.0.0.1', '2019-12-28 21:37:55');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('30a10958-92ca-459d-834c-6896c3c2a52f', 'Logout', 119, 'Margareth Ndomondo-Sigonda   ', '0.0.0.1', '2019-12-28 21:38:01');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('ebb3fad3-d7ab-4f96-92ca-14cd985b5ceb', 'Login', 119, 'Margareth Ndomondo-Sigonda   ', '0.0.0.1', '2019-12-28 21:38:09');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('15c8e2fe-0c7e-4dc5-aebf-acf47d1bce33', 'Logout', 119, 'Margareth Ndomondo-Sigonda   ', '0.0.0.1', '2019-12-28 21:38:14');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('9ecc6008-4f0a-4b9e-bfaa-7495b1fa8da2', 'Login', 179, 'Sindisiwe Mkhize   ', '0.0.0.1', '2019-12-28 21:38:48');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('01cde7de-e70f-4cbe-957f-9ff13fa5d459', 'Logout', 179, 'Sindisiwe Mkhize   ', '0.0.0.1', '2019-12-28 21:40:15');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('1774d879-1a9c-46d6-9dff-1fdcd8c960ae', 'Login', 138, 'Nancy Ngum   ', '0.0.0.1', '2019-12-28 21:40:55');
INSERT INTO public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") VALUES ('49d98ec9-d088-4420-a583-a2c0967f80ad', 'Logout', 138, 'Nancy Ngum   ', '0.0.0.1', '2019-12-28 21:41:07');


--
-- TOC entry 3628 (class 0 OID 25135)
-- Dependencies: 240
-- Data for Name: TransCEOs; Type: TABLE DATA; Schema: public; Owner: employee
--

INSERT INTO public."TransCEOs" ("Transaction_Id", "Head_StaffNumber", "Head_Status", "Show_Status", "TransactionDate", "Employee_Id", "Head_Status_Id") VALUES ('d04fda46-1e32-4542-bbad-829548d6699a', '3656', 'Active', true, '2019-09-23 00:00:00', 124, 1);


--
-- TOC entry 3629 (class 0 OID 25143)
-- Dependencies: 241
-- Data for Name: TransDirectorateHeads; Type: TABLE DATA; Schema: public; Owner: employee
--

INSERT INTO public."TransDirectorateHeads" ("Transaction_Id", "Directorate_Id", "Head_StaffNumber", "Head_Status", "Show_Status", "TransactionDate", "Employee_Id", "Head_Status_Id") VALUES ('6f0a990e-c486-4a76-9570-40f3b8681dfc', 1, '3678', 'Active', true, '2019-09-26 00:00:00', 185, 1);
INSERT INTO public."TransDirectorateHeads" ("Transaction_Id", "Directorate_Id", "Head_StaffNumber", "Head_Status", "Show_Status", "TransactionDate", "Employee_Id", "Head_Status_Id") VALUES ('76013e9e-d937-4e0c-9c4a-d604baf52f96', 2, '7004', 'Active', true, '2019-09-26 00:00:00', 55, 1);
INSERT INTO public."TransDirectorateHeads" ("Transaction_Id", "Directorate_Id", "Head_StaffNumber", "Head_Status", "Show_Status", "TransactionDate", "Employee_Id", "Head_Status_Id") VALUES ('856d2f25-05ec-4986-93a6-de7a5a8c9621', 3, '7003', 'Active', true, '2019-09-26 00:00:00', 11, 1);
INSERT INTO public."TransDirectorateHeads" ("Transaction_Id", "Directorate_Id", "Head_StaffNumber", "Head_Status", "Show_Status", "TransactionDate", "Employee_Id", "Head_Status_Id") VALUES ('246d5956-3eb2-4d87-a4c9-9e5d6f0ccf3a', 4, '3678', 'Active', true, '2019-09-26 00:00:00', 185, 1);
INSERT INTO public."TransDirectorateHeads" ("Transaction_Id", "Directorate_Id", "Head_StaffNumber", "Head_Status", "Show_Status", "TransactionDate", "Employee_Id", "Head_Status_Id") VALUES ('79c092a2-54d6-4e13-b4f3-069361be6a30', 5, '3593', 'Active', true, '2019-09-26 00:00:00', 184, 1);
INSERT INTO public."TransDirectorateHeads" ("Transaction_Id", "Directorate_Id", "Head_StaffNumber", "Head_Status", "Show_Status", "TransactionDate", "Employee_Id", "Head_Status_Id") VALUES ('5a4b9ad6-5b26-4d19-8b63-42c6ae7e25db', 6, '3550', 'Active', true, '2019-09-26 00:00:00', 10, 1);


--
-- TOC entry 3630 (class 0 OID 25151)
-- Dependencies: 242
-- Data for Name: TransDivisionHeads; Type: TABLE DATA; Schema: public; Owner: employee
--

INSERT INTO public."TransDivisionHeads" ("Transaction_Id", "Dept_Id", "Head_StaffNumber", "Head_Status", "Show_Status", "TransactionDate", "Employee_Id", "Head_Status_Id") VALUES ('eacd3257-f150-4967-85cf-fadbd419c313', 1, '6025', 'Not Assigned', true, '2019-09-26 00:00:00', 73, 5);
INSERT INTO public."TransDivisionHeads" ("Transaction_Id", "Dept_Id", "Head_StaffNumber", "Head_Status", "Show_Status", "TransactionDate", "Employee_Id", "Head_Status_Id") VALUES ('665f9053-a5ec-46cc-a829-dc3b13e9f534', 2, '6025', 'Not Assigned', true, '2019-09-26 00:00:00', 73, 5);
INSERT INTO public."TransDivisionHeads" ("Transaction_Id", "Dept_Id", "Head_StaffNumber", "Head_Status", "Show_Status", "TransactionDate", "Employee_Id", "Head_Status_Id") VALUES ('954cb1a3-e347-4b2b-bd66-6cddc31cd072', 3, '6025', 'Not Assigned', true, '2019-09-26 00:00:00', 73, 5);
INSERT INTO public."TransDivisionHeads" ("Transaction_Id", "Dept_Id", "Head_StaffNumber", "Head_Status", "Show_Status", "TransactionDate", "Employee_Id", "Head_Status_Id") VALUES ('20abd93e-4276-4cbc-8bf7-44eb0bf25012', 4, '6025', 'Not Assigned', true, '2019-09-26 00:00:00', 73, 5);
INSERT INTO public."TransDivisionHeads" ("Transaction_Id", "Dept_Id", "Head_StaffNumber", "Head_Status", "Show_Status", "TransactionDate", "Employee_Id", "Head_Status_Id") VALUES ('4f1c3855-8211-4d34-bcc5-19a92b3b07aa', 5, '3642', 'Active', true, '2019-09-26 00:00:00', 103, 1);
INSERT INTO public."TransDivisionHeads" ("Transaction_Id", "Dept_Id", "Head_StaffNumber", "Head_Status", "Show_Status", "TransactionDate", "Employee_Id", "Head_Status_Id") VALUES ('87b18e65-3c96-41b3-a91f-85d98fa8ad08', 6, '7002', 'Active', true, '2019-09-26 00:00:00', 191, 1);
INSERT INTO public."TransDivisionHeads" ("Transaction_Id", "Dept_Id", "Head_StaffNumber", "Head_Status", "Show_Status", "TransactionDate", "Employee_Id", "Head_Status_Id") VALUES ('2683c1ed-d214-4975-8eb7-b694ce9f8d72', 7, '3632', 'Active', true, '2019-09-26 00:00:00', 69, 1);
INSERT INTO public."TransDivisionHeads" ("Transaction_Id", "Dept_Id", "Head_StaffNumber", "Head_Status", "Show_Status", "TransactionDate", "Employee_Id", "Head_Status_Id") VALUES ('1f8d2bca-55d5-4616-8272-5df055569964', 8, '7001', 'Active', true, '2019-09-26 00:00:00', 132, 1);
INSERT INTO public."TransDivisionHeads" ("Transaction_Id", "Dept_Id", "Head_StaffNumber", "Head_Status", "Show_Status", "TransactionDate", "Employee_Id", "Head_Status_Id") VALUES ('070dc44a-65a1-42c3-88f3-c008a8860ff0', 9, '3540', 'Active', true, '2019-09-26 00:00:00', 64, 1);
INSERT INTO public."TransDivisionHeads" ("Transaction_Id", "Dept_Id", "Head_StaffNumber", "Head_Status", "Show_Status", "TransactionDate", "Employee_Id", "Head_Status_Id") VALUES ('11413c98-3d71-43b7-9ce4-c131f751d27c', 10, '7001', 'Acting', true, '2019-09-26 00:00:00', 132, 2);
INSERT INTO public."TransDivisionHeads" ("Transaction_Id", "Dept_Id", "Head_StaffNumber", "Head_Status", "Show_Status", "TransactionDate", "Employee_Id", "Head_Status_Id") VALUES ('6abdec18-cc48-4d1d-816e-1b025a30b61e', 11, '3605', 'Active', true, '2019-09-26 00:00:00', 123, 1);
INSERT INTO public."TransDivisionHeads" ("Transaction_Id", "Dept_Id", "Head_StaffNumber", "Head_Status", "Show_Status", "TransactionDate", "Employee_Id", "Head_Status_Id") VALUES ('d3943795-5be9-4fc6-96f7-0f44c6f82c17', 12, '6025', 'Not Assigned', true, '2019-09-26 00:00:00', 73, 5);
INSERT INTO public."TransDivisionHeads" ("Transaction_Id", "Dept_Id", "Head_StaffNumber", "Head_Status", "Show_Status", "TransactionDate", "Employee_Id", "Head_Status_Id") VALUES ('75c8056e-9cf0-4a2b-8575-1079448e6032', 13, '6025', 'Not Assigned', true, '2019-09-26 00:00:00', 73, 5);
INSERT INTO public."TransDivisionHeads" ("Transaction_Id", "Dept_Id", "Head_StaffNumber", "Head_Status", "Show_Status", "TransactionDate", "Employee_Id", "Head_Status_Id") VALUES ('21afb6db-0bd5-4681-bcc8-76e6a3ab63c6', 14, '6025', 'Not Assigned', true, '2019-09-26 00:00:00', 73, 5);
INSERT INTO public."TransDivisionHeads" ("Transaction_Id", "Dept_Id", "Head_StaffNumber", "Head_Status", "Show_Status", "TransactionDate", "Employee_Id", "Head_Status_Id") VALUES ('06038f61-09b2-4e04-ad7e-a4a938da0a1c', 15, '6025', 'Not Assigned', true, '2019-09-26 00:00:00', 73, 5);
INSERT INTO public."TransDivisionHeads" ("Transaction_Id", "Dept_Id", "Head_StaffNumber", "Head_Status", "Show_Status", "TransactionDate", "Employee_Id", "Head_Status_Id") VALUES ('a7a5b837-4629-4efb-9433-4d2a3d10dc25', 16, '3603', 'Active', true, '2019-09-26 00:00:00', 20, 1);
INSERT INTO public."TransDivisionHeads" ("Transaction_Id", "Dept_Id", "Head_StaffNumber", "Head_Status", "Show_Status", "TransactionDate", "Employee_Id", "Head_Status_Id") VALUES ('75441c93-dd53-40ad-adb4-a95bbea13823', 17, '3621', 'Active', true, '2019-09-26 00:00:00', 163, 1);
INSERT INTO public."TransDivisionHeads" ("Transaction_Id", "Dept_Id", "Head_StaffNumber", "Head_Status", "Show_Status", "TransactionDate", "Employee_Id", "Head_Status_Id") VALUES ('74e927be-6f36-4316-a351-f774ca796192', 18, '3503', 'Active', true, '2019-09-26 00:00:00', 199, 1);
INSERT INTO public."TransDivisionHeads" ("Transaction_Id", "Dept_Id", "Head_StaffNumber", "Head_Status", "Show_Status", "TransactionDate", "Employee_Id", "Head_Status_Id") VALUES ('28230f76-caa0-41a5-bae3-dd03be8dcd75', 19, '3571', 'Active', true, '2019-09-26 00:00:00', 187, 1);
INSERT INTO public."TransDivisionHeads" ("Transaction_Id", "Dept_Id", "Head_StaffNumber", "Head_Status", "Show_Status", "TransactionDate", "Employee_Id", "Head_Status_Id") VALUES ('f6fa03cd-de69-4649-a055-f341d91423c9', 20, '3590', 'Active', true, '2019-09-26 00:00:00', 106, 1);
INSERT INTO public."TransDivisionHeads" ("Transaction_Id", "Dept_Id", "Head_StaffNumber", "Head_Status", "Show_Status", "TransactionDate", "Employee_Id", "Head_Status_Id") VALUES ('50c140ae-c9e6-40bd-9bfb-19e544b122bd', 21, '3650', 'Active', true, '2019-09-26 00:00:00', 157, 1);


--
-- TOC entry 3639 (class 0 OID 33494)
-- Dependencies: 251
-- Data for Name: TransProgrammeDivisionMappings; Type: TABLE DATA; Schema: public; Owner: employee
--

INSERT INTO public."TransProgrammeDivisionMappings" ("Transaction_Id", "Programme_Id", "Division_Id", "Directorate_Id", "Programme_Status", "Show_Status", "TransactionDate") VALUES ('a661f885-78c2-4562-bf90-81a11b72522e', 5, 9, 0, 'Active', true, '2019-10-04 00:00:00');
INSERT INTO public."TransProgrammeDivisionMappings" ("Transaction_Id", "Programme_Id", "Division_Id", "Directorate_Id", "Programme_Status", "Show_Status", "TransactionDate") VALUES ('9b3526ed-656d-4985-8e1a-90b928e6183e', 6, 9, 0, 'Active', true, '2019-10-04 00:00:00');
INSERT INTO public."TransProgrammeDivisionMappings" ("Transaction_Id", "Programme_Id", "Division_Id", "Directorate_Id", "Programme_Status", "Show_Status", "TransactionDate") VALUES ('f2d966bc-05a9-4628-90fe-3ac40337799a', 7, 9, 0, 'Active', true, '2019-10-04 00:00:00');
INSERT INTO public."TransProgrammeDivisionMappings" ("Transaction_Id", "Programme_Id", "Division_Id", "Directorate_Id", "Programme_Status", "Show_Status", "TransactionDate") VALUES ('1ffc6b28-60ce-4a52-bd05-3fa4d008451e', 8, 9, 0, 'Active', true, '2019-10-04 00:00:00');
INSERT INTO public."TransProgrammeDivisionMappings" ("Transaction_Id", "Programme_Id", "Division_Id", "Directorate_Id", "Programme_Status", "Show_Status", "TransactionDate") VALUES ('d1083192-29ac-41e1-b230-faf76c1d4c37', 9, 9, 0, 'Active', true, '2019-10-04 00:00:00');
INSERT INTO public."TransProgrammeDivisionMappings" ("Transaction_Id", "Programme_Id", "Division_Id", "Directorate_Id", "Programme_Status", "Show_Status", "TransactionDate") VALUES ('c2ea5f7d-8b36-4c56-ae4a-4b08d99b78ae', 1, 8, 0, 'Active', true, '2019-10-04 00:00:00');
INSERT INTO public."TransProgrammeDivisionMappings" ("Transaction_Id", "Programme_Id", "Division_Id", "Directorate_Id", "Programme_Status", "Show_Status", "TransactionDate") VALUES ('4ebf1eb0-54bb-4141-b17b-f0c23a720057', 2, 8, 0, 'Active', true, '2019-10-04 00:00:00');
INSERT INTO public."TransProgrammeDivisionMappings" ("Transaction_Id", "Programme_Id", "Division_Id", "Directorate_Id", "Programme_Status", "Show_Status", "TransactionDate") VALUES ('f13448db-bcc9-4345-a64d-9ee7485ebdc4', 3, 8, 0, 'Active', true, '2019-10-04 00:00:00');
INSERT INTO public."TransProgrammeDivisionMappings" ("Transaction_Id", "Programme_Id", "Division_Id", "Directorate_Id", "Programme_Status", "Show_Status", "TransactionDate") VALUES ('c95f4e1c-8eeb-4fb2-a8e1-0d0009b26c41', 4, 8, 0, 'Active', true, '2019-10-04 00:00:00');
INSERT INTO public."TransProgrammeDivisionMappings" ("Transaction_Id", "Programme_Id", "Division_Id", "Directorate_Id", "Programme_Status", "Show_Status", "TransactionDate") VALUES ('8b4f5dda-2d76-47db-8443-b5a6f36c02b8', 10, 10, 0, 'Active', true, '2019-10-04 00:00:00');
INSERT INTO public."TransProgrammeDivisionMappings" ("Transaction_Id", "Programme_Id", "Division_Id", "Directorate_Id", "Programme_Status", "Show_Status", "TransactionDate") VALUES ('2a6f5121-793b-4724-bbfd-ddf85cd77983', 11, 10, 0, 'Active', true, '2019-10-04 00:00:00');
INSERT INTO public."TransProgrammeDivisionMappings" ("Transaction_Id", "Programme_Id", "Division_Id", "Directorate_Id", "Programme_Status", "Show_Status", "TransactionDate") VALUES ('9f2eb31e-c9d6-4c07-8ce7-51efd71f204e', 12, 10, 0, 'Active', true, '2019-10-04 00:00:00');
INSERT INTO public."TransProgrammeDivisionMappings" ("Transaction_Id", "Programme_Id", "Division_Id", "Directorate_Id", "Programme_Status", "Show_Status", "TransactionDate") VALUES ('9d858181-d25e-4de3-8fc1-ea1a90406497', 13, 11, 0, 'Active', true, '2019-10-04 00:00:00');
INSERT INTO public."TransProgrammeDivisionMappings" ("Transaction_Id", "Programme_Id", "Division_Id", "Directorate_Id", "Programme_Status", "Show_Status", "TransactionDate") VALUES ('212151d4-127f-4aaf-8d8e-7a4eb79b7442', 14, 11, 0, 'Active', true, '2019-10-04 00:00:00');
INSERT INTO public."TransProgrammeDivisionMappings" ("Transaction_Id", "Programme_Id", "Division_Id", "Directorate_Id", "Programme_Status", "Show_Status", "TransactionDate") VALUES ('a1e73e64-8e6f-4822-8290-970b7483d83e', 15, 11, 0, 'Active', true, '2019-10-04 00:00:00');


--
-- TOC entry 3631 (class 0 OID 25159)
-- Dependencies: 243
-- Data for Name: TransProgrammeHeads; Type: TABLE DATA; Schema: public; Owner: employee
--

INSERT INTO public."TransProgrammeHeads" ("Transaction_Id", "Programme_Id", "Head_StaffNumber", "Head_Status", "Show_Status", "TransactionDate", "Employee_Id", "Head_Status_Id", "ProgDivMapTrans_Id") VALUES ('612db669-e233-4234-af3f-16d4d0e23e01', 5, '1000', 'Active', true, '2019-10-04 00:00:00', 119, 1, 'a661f885-78c2-4562-bf90-81a11b72522e');
INSERT INTO public."TransProgrammeHeads" ("Transaction_Id", "Programme_Id", "Head_StaffNumber", "Head_Status", "Show_Status", "TransactionDate", "Employee_Id", "Head_Status_Id", "ProgDivMapTrans_Id") VALUES ('d55f76a3-14ab-407c-be64-9cd8fd6d843f', 8, '1000', 'Active', true, '2019-10-04 00:00:00', 195, 1, '1ffc6b28-60ce-4a52-bd05-3fa4d008451e');
INSERT INTO public."TransProgrammeHeads" ("Transaction_Id", "Programme_Id", "Head_StaffNumber", "Head_Status", "Show_Status", "TransactionDate", "Employee_Id", "Head_Status_Id", "ProgDivMapTrans_Id") VALUES ('70f1c063-4282-470b-a9d7-8bb8ddfe3237', 10, '1000', 'Active', true, '2019-10-04 00:00:00', 3, 1, '8b4f5dda-2d76-47db-8443-b5a6f36c02b8');
INSERT INTO public."TransProgrammeHeads" ("Transaction_Id", "Programme_Id", "Head_StaffNumber", "Head_Status", "Show_Status", "TransactionDate", "Employee_Id", "Head_Status_Id", "ProgDivMapTrans_Id") VALUES ('167e5c34-a9bb-4cb4-89aa-73c86396058b', 11, '1000', 'Active', true, '2019-10-04 00:00:00', 194, 1, '2a6f5121-793b-4724-bbfd-ddf85cd77983');


--
-- TOC entry 3638 (class 0 OID 33486)
-- Dependencies: 250
-- Data for Name: TransProgrammeUnitStaffMappings; Type: TABLE DATA; Schema: public; Owner: employee
--

INSERT INTO public."TransProgrammeUnitStaffMappings" ("Transaction_Id", "Staff_Number", "Employee_Id", "UnitOrProgramme_Id", "Category", "PrimaryUnitOrProgramme", "Show_Status", "TransactionDate", "ProgDivMapTrans_Id", "Division_Id") VALUES ('65f2d756-596e-44a8-8b2b-00799dc1d208', '1000', 138, 5, 'Programme', true, true, '2019-10-04 00:00:00', 'a661f885-78c2-4562-bf90-81a11b72522e', 9);
INSERT INTO public."TransProgrammeUnitStaffMappings" ("Transaction_Id", "Staff_Number", "Employee_Id", "UnitOrProgramme_Id", "Category", "PrimaryUnitOrProgramme", "Show_Status", "TransactionDate", "ProgDivMapTrans_Id", "Division_Id") VALUES ('06075629-c445-4ead-ad63-a22392f5cc46', '1000', 35, 5, 'Programme', true, true, '2019-10-04 00:00:00', 'a661f885-78c2-4562-bf90-81a11b72522e', 9);
INSERT INTO public."TransProgrammeUnitStaffMappings" ("Transaction_Id", "Staff_Number", "Employee_Id", "UnitOrProgramme_Id", "Category", "PrimaryUnitOrProgramme", "Show_Status", "TransactionDate", "ProgDivMapTrans_Id", "Division_Id") VALUES ('821ec102-1662-4109-a41f-bb260f30f048', '1000', 119, 5, 'Programme', true, true, '2019-10-04 00:00:00', 'a661f885-78c2-4562-bf90-81a11b72522e', 9);
INSERT INTO public."TransProgrammeUnitStaffMappings" ("Transaction_Id", "Staff_Number", "Employee_Id", "UnitOrProgramme_Id", "Category", "PrimaryUnitOrProgramme", "Show_Status", "TransactionDate", "ProgDivMapTrans_Id", "Division_Id") VALUES ('6bdb2a58-b146-4533-a65a-156102b020ad', '1000', 194, 11, 'Programme', true, true, '2019-10-04 00:00:00', '2a6f5121-793b-4724-bbfd-ddf85cd77983', 10);
INSERT INTO public."TransProgrammeUnitStaffMappings" ("Transaction_Id", "Staff_Number", "Employee_Id", "UnitOrProgramme_Id", "Category", "PrimaryUnitOrProgramme", "Show_Status", "TransactionDate", "ProgDivMapTrans_Id", "Division_Id") VALUES ('c7b874e9-74ce-4daa-a9ad-d067a0e9f088', '1000', 193, 11, 'Programme', true, true, '2019-10-04 00:00:00', '2a6f5121-793b-4724-bbfd-ddf85cd77983', 10);
INSERT INTO public."TransProgrammeUnitStaffMappings" ("Transaction_Id", "Staff_Number", "Employee_Id", "UnitOrProgramme_Id", "Category", "PrimaryUnitOrProgramme", "Show_Status", "TransactionDate", "ProgDivMapTrans_Id", "Division_Id") VALUES ('8e4d440c-bae6-460b-a49b-4bb2d4341921', '1000', 3, 10, 'Programme', true, true, '2019-10-04 00:00:00', '8b4f5dda-2d76-47db-8443-b5a6f36c02b8', 10);
INSERT INTO public."TransProgrammeUnitStaffMappings" ("Transaction_Id", "Staff_Number", "Employee_Id", "UnitOrProgramme_Id", "Category", "PrimaryUnitOrProgramme", "Show_Status", "TransactionDate", "ProgDivMapTrans_Id", "Division_Id") VALUES ('d68ca3c6-8851-43b8-b629-190b16207670', '1000', 179, 8, 'Programme', true, true, '2019-10-04 00:00:00', '1ffc6b28-60ce-4a52-bd05-3fa4d008451e', 9);
INSERT INTO public."TransProgrammeUnitStaffMappings" ("Transaction_Id", "Staff_Number", "Employee_Id", "UnitOrProgramme_Id", "Category", "PrimaryUnitOrProgramme", "Show_Status", "TransactionDate", "ProgDivMapTrans_Id", "Division_Id") VALUES ('c9b01573-14fc-4847-982b-0cf2cc6b583c', '1000', 68, 10, 'Programme', true, true, '2019-10-04 00:00:00', '8b4f5dda-2d76-47db-8443-b5a6f36c02b8', 10);
INSERT INTO public."TransProgrammeUnitStaffMappings" ("Transaction_Id", "Staff_Number", "Employee_Id", "UnitOrProgramme_Id", "Category", "PrimaryUnitOrProgramme", "Show_Status", "TransactionDate", "ProgDivMapTrans_Id", "Division_Id") VALUES ('d8947092-fafd-419b-b0e3-33444ff89e6a', '1000', 195, 8, 'Programme', true, true, '2019-10-04 00:00:00', '1ffc6b28-60ce-4a52-bd05-3fa4d008451e', 9);


--
-- TOC entry 3640 (class 0 OID 33502)
-- Dependencies: 252
-- Data for Name: TransProjectDivisionMappings; Type: TABLE DATA; Schema: public; Owner: employee
--

INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('8a638b60-9fd9-4805-abb0-4f6cdf059867', 21, 9, 0, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('6c556302-f10b-4a35-b8ed-136e18bcb652', 1, 9, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('1a40c004-b472-4143-b354-239a9d9266f1', 2, 9, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('392a5c36-0f75-4ec8-a0ff-8b89c334c9b4', 3, 9, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('8e62aef3-c6d8-400e-9138-35f62c7a6182', 4, 9, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('20a6eef5-7c4f-4a49-b9c0-34ff89201f62', 5, 9, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('9c5edfe9-f300-4536-89f0-d17136b3b781', 6, 9, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('14fbe831-5f78-4658-9f31-518937c0e789', 7, 9, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('0287b087-f5a6-4340-80db-3dd984d18630', 8, 9, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('96e3eed0-3082-487a-b34a-f4d1376582cf', 9, 9, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('b78dff87-c81d-468d-bf2b-eeb6133aaa50', 10, 9, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('79eb774c-b8c9-49e4-a1e3-9eec15ff994c', 11, 9, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('8771ccbb-06bf-46ca-b8b5-63b2bab77de6', 12, 9, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('6df0afc2-22f6-4736-979a-72c168f39b2d', 13, 9, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('a80fff3c-0a03-42a2-8300-439eab11f5f7', 14, 9, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('3e8c342b-06d2-4571-9673-d6eef518a29f', 15, 9, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('3b581db5-8830-4c38-a462-098939945f5c', 16, 9, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('ab3685f0-6ab2-4d21-b250-fa4db501897e', 17, 9, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('95d5df5f-28b2-46e9-aff7-b934b0cd8a1a', 18, 9, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('b0a1dba0-a190-40dd-aa18-187bc459334b', 19, 9, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('fe788fb9-f140-4b8c-ba0f-db95d5d8cfdb', 20, 9, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('3567668b-e83f-4882-ab88-d391d3d8b0b3', 22, 9, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('8030dd45-3707-4973-a352-6be29085aa07', 23, 9, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('0470b69a-2752-4e58-a59e-67a2df99eea9', 24, 9, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('1604b297-eb77-41fc-836d-0363bdcf9880', 25, 9, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('8484f1f6-91fd-4039-925c-7b023174a3db', 26, 9, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('b698aeee-4f8b-40d2-869a-df0c8b752dbb', 27, 9, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('cafeb581-df98-4e52-a7a4-e8375eaceda6', 28, 9, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('64d09802-85df-404e-a9b3-397c496b4e91', 29, 9, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('d48a58a1-0bc9-4a94-bf87-edfb6191350f', 30, 9, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('3684f70f-7cff-4687-b897-03fa0f918423', 31, 9, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('d72c7c25-6fad-412f-9f5a-6cb828c98587', 32, 9, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('2532d856-1eba-4024-8516-c01463e2f496', 33, 9, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('40dd305e-e051-4dcc-ba5a-c78c9831030e', 34, 9, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('792d0dac-4429-4a18-a4fc-97cd0df4e858', 35, 9, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('08f3637e-0d21-431c-96f9-957e9db46ff4', 36, 9, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('e863e6df-5865-40e8-bf13-9fdf82f95db0', 37, 9, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('38fc13a2-46fe-4f90-aa82-1287ac913ce9', 38, 9, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('cfa2cb19-9045-4104-9c5f-2cbdd5c2116d', 39, 9, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('757ef812-4ae1-46c0-bf83-b4008464ef0b', 40, 9, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('c437b6de-bc1b-49c8-bf0f-397f4a3fb0a3', 41, 9, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('7183c82e-ea53-49c4-9a0e-42deb1b4ec11', 42, 9, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('9895865f-c28c-4f7b-8a7b-b83e2c8606b8', 43, 9, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('8c90b3fd-940d-4f7f-b94f-641398ad9c53', 44, 9, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('d32b71f4-7fa5-49e8-b0fc-c7bc53d373f3', 45, 9, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('d1f44d6a-194d-45ee-ac3c-7700f5324fa0', 1, 8, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('5f568a38-ae10-46b9-a389-410193f02b39', 2, 8, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('dd31471d-e7ef-45f6-a331-63c660830ca1', 3, 8, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('00283742-526e-4dc5-88ae-69feb20ef5c3', 4, 8, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('3ae61dc9-b125-403e-abdc-dd1863da56ef', 5, 8, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('1a5be10a-ff1b-4f0f-af0c-d0687449ebd0', 6, 8, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('d976c20c-478e-4195-95f1-a72085e32469', 7, 8, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('9197b6c0-88c7-42a1-bbe8-5bb47df790f6', 8, 8, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('6e03d788-0f71-418e-891c-2a9f03c0ca73', 9, 8, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('844d19c0-2efe-491a-9ebb-cf22d7cf7cc5', 10, 8, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('5844e3d7-a7e1-4395-b11e-2ea9e5b937a1', 11, 8, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('2bcba27f-a457-4779-98c7-5225ac583d51', 12, 8, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('edde6ae3-03e0-4cd1-9670-04b9b5ccd62e', 13, 8, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('2e43d4cc-57ed-452d-b771-fa14df3612ba', 14, 8, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('10fbb652-b190-4b52-a70d-6034744a7f36', 15, 8, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('86a1984c-984c-4fc1-93c0-8a4fbf6d1a7e', 16, 8, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('7118c556-3774-4538-87d3-46d0296ea9fa', 17, 8, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('2983f3a1-9888-4cfb-8db1-d9f4afcf9635', 18, 8, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('d1020fe3-fa4b-4c2f-b0b7-b540b09d4a5a', 19, 8, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('488f3cd7-0775-4ebd-9692-f52891c1f61f', 20, 8, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('37be6ee1-c91b-4aec-a35f-7a0c651fe2f7', 21, 8, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('f97d755d-6429-4f37-96b2-0b7fc0ce72ca', 22, 8, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('6caa6e63-d2a6-4b3c-af72-1bcc903dffca', 23, 8, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('d854fb52-0e7b-4e66-b3d5-2ea49814c803', 24, 8, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('75faca5f-22fe-4049-bc39-9ff3c22157fb', 25, 8, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('534ba3c7-839e-49ea-aad9-049b0fb2bca9', 26, 8, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('afcdc78b-1d41-4f89-8e0d-6711b8ea9d82', 27, 8, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('bcabe965-ce53-45ca-8060-98cb8fc0d828', 28, 8, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('022b31ac-43fb-4313-9bb5-e83fbe73351c', 29, 8, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('89fc40ba-acdb-4be8-82b0-1f3f57d06555', 30, 8, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('0a60397c-b3bd-4e42-8de7-2fa4f69b0111', 31, 8, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('3e81c2e8-da21-4109-8070-7450c2b6fb13', 32, 8, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('a979d00f-65cf-4f6a-9925-54946960c2c4', 33, 8, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('b19f614b-89f5-400a-8ea7-5b4a95c63c51', 34, 8, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('c989b602-4924-4110-936f-aeb1fcb2e101', 35, 8, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('fdca6df2-f622-4ebc-ae25-f9b2a2b90e74', 36, 8, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('c6b2d659-6c9e-4ef5-a23f-b1a93a5eca1c', 37, 8, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('9f6b6d5d-781f-42be-b3a2-9259b16a0190', 38, 8, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('705dbc41-4374-4394-acec-d352d7fc6444', 39, 8, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('3c64d57a-7c6d-49a3-b14d-65f6d77548ae', 40, 8, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('77cd59e9-d02f-4292-bbd2-b8749df36f9a', 41, 8, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('3c4a9cda-bab4-40ff-be91-8b7cdf601160', 42, 8, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('2b084162-0b71-4675-8740-9458bb6ab245', 43, 8, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('996c80ad-908f-4c03-8631-c7de86b736bf', 44, 8, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('fea9eb23-4156-4538-ac06-6fd38b73fc55', 45, 8, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('32f50320-b11c-4a0d-9002-b9c1556f46f2', 1, 10, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('951d81c4-a108-4ade-a789-bd95534be021', 2, 10, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('550255cb-4384-4337-a57e-a2531418f6a6', 3, 10, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('f656e627-e48a-44e0-bce8-a311277a0242', 4, 10, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('992c72be-c0cb-4493-b730-75b3804d14ac', 5, 10, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('ae7d1394-56d7-4bc1-97e5-31a908eeb441', 6, 10, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('41babeaf-30dc-416e-a1d7-c346449be591', 7, 10, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('6afa59fd-2470-4579-b5d4-f5d2f6d5c20e', 8, 10, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('f9f44c58-df53-4821-85cd-ffc53cd7288f', 9, 10, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('aee86dab-604c-4618-a16b-f536cb0c190b', 10, 10, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('11bbfa3d-875d-4f79-a6e7-a654e6c4f6ac', 11, 10, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('2ba1ca9f-a240-4472-9ed0-c754e4579938', 12, 10, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('e0ee824e-9c83-4cc1-9147-6bf5f03df7b1', 13, 10, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('f4156dea-6c4b-416c-b519-8770c475ada2', 14, 10, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('e58c586f-8de5-4d84-a2f9-32643eae22e3', 15, 10, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('e90e82f3-402c-4365-bc3e-077a65d8666a', 16, 10, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('1a553066-11fb-4a50-b1d0-67f089f6a649', 17, 10, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('7064fafc-f2a1-4bd6-bc41-bbe277f13947', 18, 10, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('5a73770a-15a0-4157-bb60-4fa626d2accc', 19, 10, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('6a8165ca-4773-4753-83d5-dfea5b1f6cc1', 20, 10, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('77d1a71f-4361-4696-836b-50a1ac71352b', 21, 10, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('e3129b28-0573-4133-bc56-796ef6c1c45e', 22, 10, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('1a64eec2-c62b-46cb-9aaf-d2b187a1ffcd', 23, 10, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('052cd561-166d-4ceb-904b-369786e48eb2', 24, 10, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('7273cc1a-3f68-4700-9d11-8da3c2179e26', 25, 10, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('45dd23a3-54ba-4249-945c-44d4cb01b016', 26, 10, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('5f0b3a88-cad4-4766-a606-33c0adc41ef1', 27, 10, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('9887191c-e1cd-4409-8146-fad3e21fbbfc', 28, 10, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('d6244b34-1d32-438a-906a-f36f74d7893a', 29, 10, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('6641c8c5-f50d-4198-8b8e-94e81f16421a', 30, 10, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('90be47f0-5423-4c0f-a4d7-a223d98e0b74', 31, 10, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('1737ef8f-242f-4410-970b-eb953e865976', 32, 10, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('7f1dd770-2137-468b-ac14-f1ddd352a781', 33, 10, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('7cd2e539-1a58-44d3-a528-891dbba41971', 34, 10, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('a8190983-fd0b-43f1-81d1-5e3c1e3ea7df', 35, 10, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('5bbf2cb3-afd7-4e97-8835-2320ae884171', 36, 10, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('f008cd9d-c252-4b36-b72b-159b23f033db', 37, 10, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('0e883344-0e09-4b95-ab51-ae87674c1ec3', 38, 10, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('c54e1423-a1a1-4ea9-b5f5-931169eb9f6c', 39, 10, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('2d2e472c-0ec4-4daa-8d21-c984186dbc5d', 40, 10, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('eb9bd363-6cf1-4081-ac8d-8f7b1d915c1c', 41, 10, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('bcf75c53-7205-4fc3-9fbe-f50ef1f109c8', 42, 10, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('ec843b9b-0475-4803-95e1-df0c61492177', 43, 10, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('8d4d406a-5b23-41a9-84e8-f2b8d6964932', 44, 10, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('0bf5d83f-ae65-4abc-ad56-855cff824c00', 45, 10, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('f49e64ed-7075-4c4e-b72e-15a7391adc41', 1, 11, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('8ab3fc49-452c-4721-bcf6-a11d0519f74d', 2, 11, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('3014be28-3343-4e7d-afa8-7bb5da075860', 3, 11, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('c38cb5f2-e791-4586-82b7-4e9768eb3571', 4, 11, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('0d8aa0b2-d118-4de6-af1c-0bdc1d88fa8d', 5, 11, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('c76bca3f-afcd-4fe0-a21f-8320792afc29', 6, 11, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('31a902c6-6051-4132-bc0f-e9bdaa141de9', 7, 11, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('3ae5ea64-829e-40dd-9f2b-79f729e0b93d', 8, 11, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('b0b6b122-8bf7-4999-94c9-b05ad7f472be', 9, 11, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('55c11260-694b-40b6-929f-dce72d1e170f', 10, 11, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('4da7ac05-95bc-499d-80a9-97a1093312ba', 11, 11, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('569e5768-b2ee-4cef-a709-68d1a41b677e', 12, 11, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('8676312d-caa0-42f7-a9db-07704df04e9a', 13, 11, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('6cf1a774-8f4b-4761-a612-f5f94bfe5b7e', 14, 11, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('74e20cf7-de55-4262-a877-3acce7c9ee66', 15, 11, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('23033511-7331-4db5-9638-1b2cf59a400f', 16, 11, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('102e5236-d76a-4bdb-b81a-4493dc33a68e', 17, 11, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('81681d65-8935-48fd-ad22-fde15313759d', 18, 11, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('9f61dca8-2946-4c23-a81f-876438bc668e', 19, 11, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('789edbce-7c26-4a66-b9d6-2948625b857b', 20, 11, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('6e9f8f66-8a66-4b62-b733-6fde004fd551', 21, 11, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('6f6c3f1a-4c7d-4b22-8321-07a02d26aaff', 22, 11, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('98c6467d-d724-49ba-9ac2-9389e2d70b24', 23, 11, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('812605e0-ff7d-4a42-84da-dc937f585956', 24, 11, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('d904c52a-a167-4b78-b849-e2e01f645c2b', 25, 11, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('d790ba00-e793-4c6c-941f-971e3e5bfc3e', 26, 11, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('160cca72-403b-4b53-85d5-917d4945fd4c', 27, 11, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('50f8ee56-1657-40cf-ad4a-76ea5dbb8769', 28, 11, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('492e6dc0-bb97-4958-b6d7-eea9e39a0ff4', 29, 11, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('2c49f775-eb04-4154-b5b0-214f4e802e1e', 30, 11, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('ea394bbe-a4cb-46cb-a58e-494d08405398', 31, 11, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('ef1bfd7c-a5c9-4e06-af10-e1c42a94d3cc', 32, 11, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('fd71fd9a-49a9-43e1-af75-2e567fe3e5ff', 33, 11, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('8159988d-2128-41b7-9216-e70bccff157e', 34, 11, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('310c055e-c3ec-4cde-859a-3c0881ad97c1', 35, 11, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('f31be366-0369-4b2a-9efc-2da92593e1da', 36, 11, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('35dd743d-f362-4c30-9a3e-6d477ea40a33', 37, 11, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('3d40d5c5-60c4-4ab2-966b-dcbd0e205041', 38, 11, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('4984dd12-4c88-456e-8ae9-4cec729ae510', 39, 11, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('c6fb77de-8530-48f8-99be-bda64c5bad3a', 40, 11, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('f12de633-c93e-4c6a-9e00-7bc31afe19a6', 41, 11, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('c4441d8d-5e82-406c-81c0-4b32aeb7936c', 42, 11, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('bdbf737b-d984-4292-b372-b56139d6e5dc', 43, 11, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('8e043808-db3c-4cf1-adb8-6826d57e2ea0', 44, 11, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('1e4cdcd4-5c1e-4979-b39c-2bfa382714d3', 45, 11, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('79755b12-5206-4edd-a5eb-a09bb63f8777', 1, 12, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('784b82fc-ec34-4f85-bc83-23f4c0222c39', 2, 12, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('8abb2e8a-6057-4e40-b70c-9017d3893f00', 3, 12, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('88ecc179-5ca2-4a9d-bd19-ea66d4ddba20', 4, 12, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('bfc5c426-b2ea-4625-a275-0fe24420d8d1', 5, 12, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('369c4832-252d-4d8f-8d07-94fa72990c5f', 6, 12, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('106af2eb-506c-47d3-9040-8b0d58126f5a', 7, 12, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('232b72e6-3912-44e8-80e0-8a2f53d50af2', 8, 12, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('cd492f71-2103-4b47-b90c-71ddc8f1004f', 9, 12, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('14160151-57eb-4220-8bce-6bfb42a044ff', 10, 12, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('42dc6b9e-c58a-4039-81be-8860385e6135', 11, 12, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('2dce4a49-e0b1-4b1a-9d4c-1888f41ad002', 12, 12, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('b5c2621c-36e6-406b-b270-943879539f5e', 13, 12, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('1911ca59-941b-4fc0-a42b-849e2d8ccead', 14, 12, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('29f02ee1-2375-4d48-b137-24f0364dc524', 15, 12, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('832c8e62-7c03-431b-81bf-263b61631633', 16, 12, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('527b7eac-1354-4c28-9169-f692a0810d1b', 17, 12, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('e7dc487d-6cf6-4638-9f3c-4a4ca7bf4719', 18, 12, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('aabe596c-5566-49df-a608-3c432f65239a', 19, 12, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('a84944d5-132e-4e2c-80a8-c08b12b76f12', 20, 12, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('38340fd3-d59a-4568-bcef-f3b54c715a13', 21, 12, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('6cbc1f21-f336-4910-94fe-7f499d602411', 22, 12, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('bddc97ef-7b5b-4a59-b943-0e6965379f2c', 23, 12, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('a2cfaff1-a126-4154-a9e9-4ace08807720', 24, 12, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('e5bfc00f-64ee-4ca0-93af-b6d63a29adc8', 25, 12, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('19094269-69c7-4636-8ac4-dcba0449dff3', 26, 12, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('5fc4b342-c2aa-40fb-804d-e83ec7dda811', 27, 12, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('199402f5-024a-449b-bbc9-c113638d08f9', 28, 12, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('55d7ee19-7ccb-43d4-b78b-508b7ca43727', 29, 12, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('5d9cca1b-b294-401c-ab06-851ab462b868', 30, 12, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('7650de60-8a85-4bf3-9e45-17d3275e6efe', 31, 12, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('9e620122-b683-4635-ad07-30ba0ba46fa2', 32, 12, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('6d60d6d5-aa40-4226-880d-11c4c54300c5', 33, 12, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('c0a4fe62-e244-464b-b463-62d3b403d831', 34, 12, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('8fd3606c-6dae-4fb3-a26b-7f9e80ba777a', 35, 12, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('f655175c-b05f-4cbc-9469-5aa5ccc0580a', 36, 12, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('836dc1ac-89fc-4df8-b43b-1f532827dec2', 37, 12, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('4b5d0f48-26cd-42b5-8516-03d7bdb4f5c7', 38, 12, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('6ce5996c-7814-4ea7-8a17-63c3f4756ab6', 39, 12, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('11e0683d-8344-460d-8c70-34bed8acad98', 40, 12, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('64a47eec-9d1d-4846-a532-82de6940adea', 41, 12, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('9eeb92ff-eb35-43ed-a27c-04f3db671e51', 42, 12, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('50b864df-5844-4186-a5ad-1cff181df965', 43, 12, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('46d07e95-7a61-4ac7-8db1-b46fd930576e', 44, 12, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('594a776c-87e8-4d16-a094-92efd71a5b2d', 45, 12, 3, 'Active', true, '2019-10-08 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('a2de7173-75eb-4463-b16d-0d312d319e22', 46, 10, 3, 'Active', true, '2019-10-09 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('0cae6a54-3535-4a00-8061-c809cfcc91df', 46, 9, 3, 'Active', true, '2019-10-09 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('c8a579ab-0a27-467b-b51f-54455be86f70', 46, 8, 3, 'Active', true, '2019-10-09 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('9acd5542-e7d9-410f-8a2d-f418def27597', 46, 11, 3, 'Active', true, '2019-10-09 00:00:00');
INSERT INTO public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") VALUES ('24f6fd94-650a-480b-9b9d-8579fef50c84', 46, 12, 3, 'Active', true, '2019-10-09 00:00:00');


--
-- TOC entry 3637 (class 0 OID 33398)
-- Dependencies: 249
-- Data for Name: TransSysAdmins; Type: TABLE DATA; Schema: public; Owner: employee
--

INSERT INTO public."TransSysAdmins" ("Transaction_Id", "Employee_Id", "Head_StaffNumber", "Head_Status", "Head_Status_Id", "Show_Status", "TransactionDate") VALUES ('faa77d9b-184c-4830-80ac-dcf81895b14e', 73, '6025', 'Active', 1, true, '2019-09-26 00:00:00');
INSERT INTO public."TransSysAdmins" ("Transaction_Id", "Employee_Id", "Head_StaffNumber", "Head_Status", "Head_Status_Id", "Show_Status", "TransactionDate") VALUES ('mmm77d9b-184c-4830-80ac-dcf81895b14e'',73,''6025'',''Active'',1,true,''2019-09-26 00:00:00', 187, '3571', 'Active', 1, true, '2019-09-26 00:00:00');


--
-- TOC entry 3632 (class 0 OID 25167)
-- Dependencies: 244
-- Data for Name: TransUnitHeads; Type: TABLE DATA; Schema: public; Owner: employee
--

INSERT INTO public."TransUnitHeads" ("Transaction_Id", "Unit_Id", "Head_StaffNumber", "Head_Status", "Show_Status", "TransactionDate", "Employee_Id") VALUES ('55c21c7e-651e-4523-913f-3e73059dc7a6', 5, '3571', 'Active', true, '1900-01-01 00:00:00', 187);


--
-- TOC entry 3584 (class 0 OID 24833)
-- Dependencies: 196
-- Data for Name: __EFMigrationsHistory; Type: TABLE DATA; Schema: public; Owner: employee
--

INSERT INTO public."__EFMigrationsHistory" ("MigrationId", "ProductVersion") VALUES ('20190719153005_InitialMigration', '2.2.4-servicing-10062');
INSERT INTO public."__EFMigrationsHistory" ("MigrationId", "ProductVersion") VALUES ('20190721214837_LookUpTables', '2.2.4-servicing-10062');
INSERT INTO public."__EFMigrationsHistory" ("MigrationId", "ProductVersion") VALUES ('20190726143752_LookUpTables2', '2.2.4-servicing-10062');
INSERT INTO public."__EFMigrationsHistory" ("MigrationId", "ProductVersion") VALUES ('20190901145117_TitleLookup', '2.2.4-servicing-10062');
INSERT INTO public."__EFMigrationsHistory" ("MigrationId", "ProductVersion") VALUES ('20190901161313_AUDAUnitsLookup', '2.2.4-servicing-10062');
INSERT INTO public."__EFMigrationsHistory" ("MigrationId", "ProductVersion") VALUES ('20190902095214_AUDAProgrammesLookup', '2.2.4-servicing-10062');
INSERT INTO public."__EFMigrationsHistory" ("MigrationId", "ProductVersion") VALUES ('20190902150647_AUDAProjectsLookup', '2.2.4-servicing-10062');
INSERT INTO public."__EFMigrationsHistory" ("MigrationId", "ProductVersion") VALUES ('20190902222322_AUDAProgrammaticOutcomeLookup', '2.2.4-servicing-10062');
INSERT INTO public."__EFMigrationsHistory" ("MigrationId", "ProductVersion") VALUES ('20190903094417_AUDAProgrammaticOutputLookup', '2.2.4-servicing-10062');
INSERT INTO public."__EFMigrationsHistory" ("MigrationId", "ProductVersion") VALUES ('20190903104808_AUDAProgrammaticOtherLookups', '2.2.4-servicing-10062');
INSERT INTO public."__EFMigrationsHistory" ("MigrationId", "ProductVersion") VALUES ('20190903160334_TransProgrammeUnitMapping', '2.2.4-servicing-10062');
INSERT INTO public."__EFMigrationsHistory" ("MigrationId", "ProductVersion") VALUES ('20190903171756_DataCheckings1', '2.2.4-servicing-10062');
INSERT INTO public."__EFMigrationsHistory" ("MigrationId", "ProductVersion") VALUES ('20190904163334_DataCheckings2', '2.2.4-servicing-10062');
INSERT INTO public."__EFMigrationsHistory" ("MigrationId", "ProductVersion") VALUES ('20190912091354_LookUpTables3', '2.2.4-servicing-10062');
INSERT INTO public."__EFMigrationsHistory" ("MigrationId", "ProductVersion") VALUES ('20190912134319_LookUpTables4', '2.2.4-servicing-10062');
INSERT INTO public."__EFMigrationsHistory" ("MigrationId", "ProductVersion") VALUES ('20190913124753_LookUpTablesUpdate', '2.2.4-servicing-10062');
INSERT INTO public."__EFMigrationsHistory" ("MigrationId", "ProductVersion") VALUES ('20190915210207_LookUpTablesUpdate2', '2.2.4-servicing-10062');
INSERT INTO public."__EFMigrationsHistory" ("MigrationId", "ProductVersion") VALUES ('20190921173335_LookUpTables5', '2.2.4-servicing-10062');
INSERT INTO public."__EFMigrationsHistory" ("MigrationId", "ProductVersion") VALUES ('20190922071230_LookUpTables6', '2.2.4-servicing-10062');
INSERT INTO public."__EFMigrationsHistory" ("MigrationId", "ProductVersion") VALUES ('20190922080125_LookUpTables7', '2.2.4-servicing-10062');
INSERT INTO public."__EFMigrationsHistory" ("MigrationId", "ProductVersion") VALUES ('20190923162012_LookUpTables8', '2.2.4-servicing-10062');
INSERT INTO public."__EFMigrationsHistory" ("MigrationId", "ProductVersion") VALUES ('20190923184103_LookUpTables9', '2.2.4-servicing-10062');
INSERT INTO public."__EFMigrationsHistory" ("MigrationId", "ProductVersion") VALUES ('20190923203952_LookUpTables10', '2.2.4-servicing-10062');
INSERT INTO public."__EFMigrationsHistory" ("MigrationId", "ProductVersion") VALUES ('20190926151441_LookUpTables11', '2.2.4-servicing-10062');
INSERT INTO public."__EFMigrationsHistory" ("MigrationId", "ProductVersion") VALUES ('20191002160815_LookUpTables12', '2.2.4-servicing-10062');
INSERT INTO public."__EFMigrationsHistory" ("MigrationId", "ProductVersion") VALUES ('20191003140107_LookUpTables13', '2.2.4-servicing-10062');
INSERT INTO public."__EFMigrationsHistory" ("MigrationId", "ProductVersion") VALUES ('20191003183557_LookUpTables14', '2.2.4-servicing-10062');
INSERT INTO public."__EFMigrationsHistory" ("MigrationId", "ProductVersion") VALUES ('20191004144706_LookUpTables15', '2.2.4-servicing-10062');
INSERT INTO public."__EFMigrationsHistory" ("MigrationId", "ProductVersion") VALUES ('20191004153224_LookUpTables16', '2.2.4-servicing-10062');
INSERT INTO public."__EFMigrationsHistory" ("MigrationId", "ProductVersion") VALUES ('20191008155014_LookUpTables17', '2.2.4-servicing-10062');
INSERT INTO public."__EFMigrationsHistory" ("MigrationId", "ProductVersion") VALUES ('20191009115925_LookUpTables18', '2.2.4-servicing-10062');
INSERT INTO public."__EFMigrationsHistory" ("MigrationId", "ProductVersion") VALUES ('20191010102710_LookUpTables19', '2.2.4-servicing-10062');
INSERT INTO public."__EFMigrationsHistory" ("MigrationId", "ProductVersion") VALUES ('20191010150254_LookUpTables20', '2.2.4-servicing-10062');
INSERT INTO public."__EFMigrationsHistory" ("MigrationId", "ProductVersion") VALUES ('20191013121751_LookUpTables21', '2.2.4-servicing-10062');
INSERT INTO public."__EFMigrationsHistory" ("MigrationId", "ProductVersion") VALUES ('20191013165126_LookUpTables22', '2.2.4-servicing-10062');
INSERT INTO public."__EFMigrationsHistory" ("MigrationId", "ProductVersion") VALUES ('20191013180128_LookUpTables23', '2.2.4-servicing-10062');
INSERT INTO public."__EFMigrationsHistory" ("MigrationId", "ProductVersion") VALUES ('20191013191506_LookUpTables24', '2.2.4-servicing-10062');
INSERT INTO public."__EFMigrationsHistory" ("MigrationId", "ProductVersion") VALUES ('20191015204727_LookUpTables25', '2.2.4-servicing-10062');
INSERT INTO public."__EFMigrationsHistory" ("MigrationId", "ProductVersion") VALUES ('20191017154101_LookUpTables26', '2.2.4-servicing-10062');
INSERT INTO public."__EFMigrationsHistory" ("MigrationId", "ProductVersion") VALUES ('20191019074952_LookUpTables27', '2.2.4-servicing-10062');
INSERT INTO public."__EFMigrationsHistory" ("MigrationId", "ProductVersion") VALUES ('20191019213614_LookUpTables28', '2.2.4-servicing-10062');
INSERT INTO public."__EFMigrationsHistory" ("MigrationId", "ProductVersion") VALUES ('20191020212448_LookUpTables29', '2.2.4-servicing-10062');
INSERT INTO public."__EFMigrationsHistory" ("MigrationId", "ProductVersion") VALUES ('20191022222136_LookUpTables30', '2.2.4-servicing-10062');


--
-- TOC entry 3685 (class 0 OID 0)
-- Dependencies: 228
-- Name: AUDAProgrammaticOutcomes_ProgrammaticOutcome_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: employee
--

SELECT pg_catalog.setval('public."AUDAProgrammaticOutcomes_ProgrammaticOutcome_Id_seq"', 1, false);


--
-- TOC entry 3686 (class 0 OID 0)
-- Dependencies: 230
-- Name: AUDAProgrammaticOutputs_ProgrammaticOutput_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: employee
--

SELECT pg_catalog.setval('public."AUDAProgrammaticOutputs_ProgrammaticOutput_Id_seq"', 1, false);


--
-- TOC entry 3687 (class 0 OID 0)
-- Dependencies: 224
-- Name: AUDAProgrammes_Programme_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: employee
--

SELECT pg_catalog.setval('public."AUDAProgrammes_Programme_Id_seq"', 1, false);


--
-- TOC entry 3688 (class 0 OID 0)
-- Dependencies: 226
-- Name: AUDAProjects_Project_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: employee
--

SELECT pg_catalog.setval('public."AUDAProjects_Project_Id_seq"', 1, false);


--
-- TOC entry 3689 (class 0 OID 0)
-- Dependencies: 222
-- Name: AUDAUnits_Unit_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: employee
--

SELECT pg_catalog.setval('public."AUDAUnits_Unit_Id_seq"', 1, false);


--
-- TOC entry 3690 (class 0 OID 0)
-- Dependencies: 232
-- Name: ActivityTypes_Activity_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: employee
--

SELECT pg_catalog.setval('public."ActivityTypes_Activity_Id_seq"', 1, false);


--
-- TOC entry 3691 (class 0 OID 0)
-- Dependencies: 205
-- Name: AspNetRoleClaims_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: employee
--

SELECT pg_catalog.setval('public."AspNetRoleClaims_Id_seq"', 1, false);


--
-- TOC entry 3692 (class 0 OID 0)
-- Dependencies: 207
-- Name: AspNetUserClaims_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: employee
--

SELECT pg_catalog.setval('public."AspNetUserClaims_Id_seq"', 1, false);


--
-- TOC entry 3693 (class 0 OID 0)
-- Dependencies: 238
-- Name: CostCatelogue_Cost_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: employee
--

SELECT pg_catalog.setval('public."CostCatelogue_Cost_Id_seq"', 1, false);


--
-- TOC entry 3694 (class 0 OID 0)
-- Dependencies: 234
-- Name: DSATypes_DSA_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: employee
--

SELECT pg_catalog.setval('public."DSATypes_DSA_Id_seq"', 1, false);


--
-- TOC entry 3695 (class 0 OID 0)
-- Dependencies: 199
-- Name: Departments_Dept_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: employee
--

SELECT pg_catalog.setval('public."Departments_Dept_Id_seq"', 1, false);


--
-- TOC entry 3696 (class 0 OID 0)
-- Dependencies: 218
-- Name: Directorates_Directorate_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: employee
--

SELECT pg_catalog.setval('public."Directorates_Directorate_Id_seq"', 1, false);


--
-- TOC entry 3697 (class 0 OID 0)
-- Dependencies: 212
-- Name: EmployeeCountries_EmpCountry_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: employee
--

SELECT pg_catalog.setval('public."EmployeeCountries_EmpCountry_Id_seq"', 1, false);


--
-- TOC entry 3698 (class 0 OID 0)
-- Dependencies: 201
-- Name: Employees_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: employee
--

SELECT pg_catalog.setval('public."Employees_Id_seq"', 1, false);


--
-- TOC entry 3699 (class 0 OID 0)
-- Dependencies: 245
-- Name: ExternalPersonsTypes_ExternalPersonsType_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: employee
--

SELECT pg_catalog.setval('public."ExternalPersonsTypes_ExternalPersonsType_Id_seq"', 1, false);


--
-- TOC entry 3700 (class 0 OID 0)
-- Dependencies: 214
-- Name: Genders_Gender_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: employee
--

SELECT pg_catalog.setval('public."Genders_Gender_Id_seq"', 1, false);


--
-- TOC entry 3701 (class 0 OID 0)
-- Dependencies: 247
-- Name: LeadershipStatus_LeadStatus_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: employee
--

SELECT pg_catalog.setval('public."LeadershipStatus_LeadStatus_Id_seq"', 1, false);


--
-- TOC entry 3702 (class 0 OID 0)
-- Dependencies: 236
-- Name: ParticipantTypes_ParticipantType_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: employee
--

SELECT pg_catalog.setval('public."ParticipantTypes_ParticipantType_Id_seq"', 1, false);


--
-- TOC entry 3703 (class 0 OID 0)
-- Dependencies: 253
-- Name: ProjectProgrammeMappingStatus_ProStatus_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: employee
--

SELECT pg_catalog.setval('public."ProjectProgrammeMappingStatus_ProStatus_Id_seq"', 1, false);


--
-- TOC entry 3704 (class 0 OID 0)
-- Dependencies: 216
-- Name: StaffRankSteps_StaffRankStep_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: employee
--

SELECT pg_catalog.setval('public."StaffRankSteps_StaffRankStep_Id_seq"', 1, false);


--
-- TOC entry 3705 (class 0 OID 0)
-- Dependencies: 203
-- Name: StaffRanks_StaffRank_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: employee
--

SELECT pg_catalog.setval('public."StaffRanks_StaffRank_Id_seq"', 1, false);


--
-- TOC entry 3706 (class 0 OID 0)
-- Dependencies: 220
-- Name: Titles_Title_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: employee
--

SELECT pg_catalog.setval('public."Titles_Title_Id_seq"', 1, false);


--
-- TOC entry 3394 (class 2606 OID 25057)
-- Name: AUDAProgrammaticOutcomes PK_AUDAProgrammaticOutcomes; Type: CONSTRAINT; Schema: public; Owner: employee
--

ALTER TABLE ONLY public."AUDAProgrammaticOutcomes"
    ADD CONSTRAINT "PK_AUDAProgrammaticOutcomes" PRIMARY KEY ("ProgrammaticOutcome_Id");


--
-- TOC entry 3396 (class 2606 OID 25068)
-- Name: AUDAProgrammaticOutputs PK_AUDAProgrammaticOutputs; Type: CONSTRAINT; Schema: public; Owner: employee
--

ALTER TABLE ONLY public."AUDAProgrammaticOutputs"
    ADD CONSTRAINT "PK_AUDAProgrammaticOutputs" PRIMARY KEY ("ProgrammaticOutput_Id");


--
-- TOC entry 3390 (class 2606 OID 25035)
-- Name: AUDAProgrammes PK_AUDAProgrammes; Type: CONSTRAINT; Schema: public; Owner: employee
--

ALTER TABLE ONLY public."AUDAProgrammes"
    ADD CONSTRAINT "PK_AUDAProgrammes" PRIMARY KEY ("Programme_Id");


--
-- TOC entry 3392 (class 2606 OID 25046)
-- Name: AUDAProjects PK_AUDAProjects; Type: CONSTRAINT; Schema: public; Owner: employee
--

ALTER TABLE ONLY public."AUDAProjects"
    ADD CONSTRAINT "PK_AUDAProjects" PRIMARY KEY ("Project_Id");


--
-- TOC entry 3388 (class 2606 OID 25024)
-- Name: AUDAUnits PK_AUDAUnits; Type: CONSTRAINT; Schema: public; Owner: employee
--

ALTER TABLE ONLY public."AUDAUnits"
    ADD CONSTRAINT "PK_AUDAUnits" PRIMARY KEY ("Unit_Id");


--
-- TOC entry 3398 (class 2606 OID 25076)
-- Name: ActivityTypes PK_ActivityTypes; Type: CONSTRAINT; Schema: public; Owner: employee
--

ALTER TABLE ONLY public."ActivityTypes"
    ADD CONSTRAINT "PK_ActivityTypes" PRIMARY KEY ("Activity_Id");


--
-- TOC entry 3365 (class 2606 OID 24894)
-- Name: AspNetRoleClaims PK_AspNetRoleClaims; Type: CONSTRAINT; Schema: public; Owner: employee
--

ALTER TABLE ONLY public."AspNetRoleClaims"
    ADD CONSTRAINT "PK_AspNetRoleClaims" PRIMARY KEY ("Id");


--
-- TOC entry 3351 (class 2606 OID 24845)
-- Name: AspNetRoles PK_AspNetRoles; Type: CONSTRAINT; Schema: public; Owner: employee
--

ALTER TABLE ONLY public."AspNetRoles"
    ADD CONSTRAINT "PK_AspNetRoles" PRIMARY KEY ("Id");


--
-- TOC entry 3368 (class 2606 OID 24910)
-- Name: AspNetUserClaims PK_AspNetUserClaims; Type: CONSTRAINT; Schema: public; Owner: employee
--

ALTER TABLE ONLY public."AspNetUserClaims"
    ADD CONSTRAINT "PK_AspNetUserClaims" PRIMARY KEY ("Id");


--
-- TOC entry 3371 (class 2606 OID 24923)
-- Name: AspNetUserLogins PK_AspNetUserLogins; Type: CONSTRAINT; Schema: public; Owner: employee
--

ALTER TABLE ONLY public."AspNetUserLogins"
    ADD CONSTRAINT "PK_AspNetUserLogins" PRIMARY KEY ("LoginProvider", "ProviderKey");


--
-- TOC entry 3374 (class 2606 OID 24936)
-- Name: AspNetUserRoles PK_AspNetUserRoles; Type: CONSTRAINT; Schema: public; Owner: employee
--

ALTER TABLE ONLY public."AspNetUserRoles"
    ADD CONSTRAINT "PK_AspNetUserRoles" PRIMARY KEY ("UserId", "RoleId");


--
-- TOC entry 3376 (class 2606 OID 24954)
-- Name: AspNetUserTokens PK_AspNetUserTokens; Type: CONSTRAINT; Schema: public; Owner: employee
--

ALTER TABLE ONLY public."AspNetUserTokens"
    ADD CONSTRAINT "PK_AspNetUserTokens" PRIMARY KEY ("UserId", "LoginProvider", "Name");


--
-- TOC entry 3355 (class 2606 OID 24853)
-- Name: AspNetUsers PK_AspNetUsers; Type: CONSTRAINT; Schema: public; Owner: employee
--

ALTER TABLE ONLY public."AspNetUsers"
    ADD CONSTRAINT "PK_AspNetUsers" PRIMARY KEY ("Id");


--
-- TOC entry 3404 (class 2606 OID 25195)
-- Name: CostCatelogues PK_CostCatelogues; Type: CONSTRAINT; Schema: public; Owner: employee
--

ALTER TABLE ONLY public."CostCatelogues"
    ADD CONSTRAINT "PK_CostCatelogues" PRIMARY KEY ("Cost_Id");


--
-- TOC entry 3400 (class 2606 OID 25084)
-- Name: DSATypes PK_DSATypes; Type: CONSTRAINT; Schema: public; Owner: employee
--

ALTER TABLE ONLY public."DSATypes"
    ADD CONSTRAINT "PK_DSATypes" PRIMARY KEY ("DSA_Id");


--
-- TOC entry 3358 (class 2606 OID 24864)
-- Name: Departments PK_Departments; Type: CONSTRAINT; Schema: public; Owner: employee
--

ALTER TABLE ONLY public."Departments"
    ADD CONSTRAINT "PK_Departments" PRIMARY KEY ("Dept_Id");


--
-- TOC entry 3384 (class 2606 OID 25005)
-- Name: Directorates PK_Directorates; Type: CONSTRAINT; Schema: public; Owner: employee
--

ALTER TABLE ONLY public."Directorates"
    ADD CONSTRAINT "PK_Directorates" PRIMARY KEY ("Directorate_Id");


--
-- TOC entry 3378 (class 2606 OID 24974)
-- Name: EmployeeCountries PK_EmployeeCountries; Type: CONSTRAINT; Schema: public; Owner: employee
--

ALTER TABLE ONLY public."EmployeeCountries"
    ADD CONSTRAINT "PK_EmployeeCountries" PRIMARY KEY ("EmpCountry_Id");


--
-- TOC entry 3360 (class 2606 OID 24875)
-- Name: Employees PK_Employees; Type: CONSTRAINT; Schema: public; Owner: employee
--

ALTER TABLE ONLY public."Employees"
    ADD CONSTRAINT "PK_Employees" PRIMARY KEY ("Id");


--
-- TOC entry 3416 (class 2606 OID 25193)
-- Name: ExternalPersonsTypes PK_ExternalPersonsTypes; Type: CONSTRAINT; Schema: public; Owner: employee
--

ALTER TABLE ONLY public."ExternalPersonsTypes"
    ADD CONSTRAINT "PK_ExternalPersonsTypes" PRIMARY KEY ("ExternalPersonsType_Id");


--
-- TOC entry 3430 (class 2606 OID 33527)
-- Name: FiscalYears PK_FiscalYears; Type: CONSTRAINT; Schema: public; Owner: employee
--

ALTER TABLE ONLY public."FiscalYears"
    ADD CONSTRAINT "PK_FiscalYears" PRIMARY KEY ("Year_Id");


--
-- TOC entry 3380 (class 2606 OID 24982)
-- Name: Genders PK_Genders; Type: CONSTRAINT; Schema: public; Owner: employee
--

ALTER TABLE ONLY public."Genders"
    ADD CONSTRAINT "PK_Genders" PRIMARY KEY ("Gender_Id");


--
-- TOC entry 3418 (class 2606 OID 33390)
-- Name: LeadershipStatus PK_LeadershipStatus; Type: CONSTRAINT; Schema: public; Owner: employee
--

ALTER TABLE ONLY public."LeadershipStatus"
    ADD CONSTRAINT "PK_LeadershipStatus" PRIMARY KEY ("LeadStatus_Id");


--
-- TOC entry 3402 (class 2606 OID 25092)
-- Name: ParticipantTypes PK_ParticipantTypes; Type: CONSTRAINT; Schema: public; Owner: employee
--

ALTER TABLE ONLY public."ParticipantTypes"
    ADD CONSTRAINT "PK_ParticipantTypes" PRIMARY KEY ("ParticipantType_Id");


--
-- TOC entry 3428 (class 2606 OID 33517)
-- Name: ProjectProgrammeMappingStatus PK_ProjectProgrammeMappingStatus; Type: CONSTRAINT; Schema: public; Owner: employee
--

ALTER TABLE ONLY public."ProjectProgrammeMappingStatus"
    ADD CONSTRAINT "PK_ProjectProgrammeMappingStatus" PRIMARY KEY ("ProStatus_Id");


--
-- TOC entry 3382 (class 2606 OID 24990)
-- Name: StaffRankSteps PK_StaffRankSteps; Type: CONSTRAINT; Schema: public; Owner: employee
--

ALTER TABLE ONLY public."StaffRankSteps"
    ADD CONSTRAINT "PK_StaffRankSteps" PRIMARY KEY ("StaffRankStep_Id");


--
-- TOC entry 3362 (class 2606 OID 24883)
-- Name: StaffRanks PK_StaffRanks; Type: CONSTRAINT; Schema: public; Owner: employee
--

ALTER TABLE ONLY public."StaffRanks"
    ADD CONSTRAINT "PK_StaffRanks" PRIMARY KEY ("StaffRank_Id");


--
-- TOC entry 3386 (class 2606 OID 25013)
-- Name: Titles PK_Titles; Type: CONSTRAINT; Schema: public; Owner: employee
--

ALTER TABLE ONLY public."Titles"
    ADD CONSTRAINT "PK_Titles" PRIMARY KEY ("Title_Id");


--
-- TOC entry 3446 (class 2606 OID 33595)
-- Name: TransAUDAProgrammaticOutcomeSessionals PK_TransAUDAProgrammaticOutcomeSessionals; Type: CONSTRAINT; Schema: public; Owner: employee
--

ALTER TABLE ONLY public."TransAUDAProgrammaticOutcomeSessionals"
    ADD CONSTRAINT "PK_TransAUDAProgrammaticOutcomeSessionals" PRIMARY KEY ("Transaction_Id");


--
-- TOC entry 3448 (class 2606 OID 33603)
-- Name: TransAUDAProgrammaticOutputMaps PK_TransAUDAProgrammaticOutputMaps; Type: CONSTRAINT; Schema: public; Owner: employee
--

ALTER TABLE ONLY public."TransAUDAProgrammaticOutputMaps"
    ADD CONSTRAINT "PK_TransAUDAProgrammaticOutputMaps" PRIMARY KEY ("Transaction_Id");


--
-- TOC entry 3454 (class 2606 OID 33632)
-- Name: TransAnnualWPAUDAOutcomeExplains PK_TransAnnualWPAUDAOutcomeExplains; Type: CONSTRAINT; Schema: public; Owner: employee
--

ALTER TABLE ONLY public."TransAnnualWPAUDAOutcomeExplains"
    ADD CONSTRAINT "PK_TransAnnualWPAUDAOutcomeExplains" PRIMARY KEY ("Transaction_Id");


--
-- TOC entry 3440 (class 2606 OID 33570)
-- Name: TransAnnualWPAUDAOutputExplains PK_TransAnnualWPAUDAOutputExplains; Type: CONSTRAINT; Schema: public; Owner: employee
--

ALTER TABLE ONLY public."TransAnnualWPAUDAOutputExplains"
    ADD CONSTRAINT "PK_TransAnnualWPAUDAOutputExplains" PRIMARY KEY ("Transaction_Id");


--
-- TOC entry 3436 (class 2606 OID 33554)
-- Name: TransAnnualWPActivitys PK_TransAnnualWPActivitys; Type: CONSTRAINT; Schema: public; Owner: employee
--

ALTER TABLE ONLY public."TransAnnualWPActivitys"
    ADD CONSTRAINT "PK_TransAnnualWPActivitys" PRIMARY KEY ("Transaction_Id");


--
-- TOC entry 3432 (class 2606 OID 33535)
-- Name: TransAnnualWPMasters PK_TransAnnualWPMasters; Type: CONSTRAINT; Schema: public; Owner: employee
--

ALTER TABLE ONLY public."TransAnnualWPMasters"
    ADD CONSTRAINT "PK_TransAnnualWPMasters" PRIMARY KEY ("Transaction_Id");


--
-- TOC entry 3456 (class 2606 OID 33640)
-- Name: TransAnnualWPOutcomes PK_TransAnnualWPOutcomes; Type: CONSTRAINT; Schema: public; Owner: employee
--

ALTER TABLE ONLY public."TransAnnualWPOutcomes"
    ADD CONSTRAINT "PK_TransAnnualWPOutcomes" PRIMARY KEY ("Transaction_Id");


--
-- TOC entry 3442 (class 2606 OID 33578)
-- Name: TransAnnualWPOutputs PK_TransAnnualWPOutputs; Type: CONSTRAINT; Schema: public; Owner: employee
--

ALTER TABLE ONLY public."TransAnnualWPOutputs"
    ADD CONSTRAINT "PK_TransAnnualWPOutputs" PRIMARY KEY ("Transaction_Id");


--
-- TOC entry 3450 (class 2606 OID 33616)
-- Name: TransAnnualWPProgrammaticOutcomes PK_TransAnnualWPProgrammaticOutcomes; Type: CONSTRAINT; Schema: public; Owner: employee
--

ALTER TABLE ONLY public."TransAnnualWPProgrammaticOutcomes"
    ADD CONSTRAINT "PK_TransAnnualWPProgrammaticOutcomes" PRIMARY KEY ("Transaction_Id");


--
-- TOC entry 3452 (class 2606 OID 33624)
-- Name: TransAnnualWPProgrammaticOutputs PK_TransAnnualWPProgrammaticOutputs; Type: CONSTRAINT; Schema: public; Owner: employee
--

ALTER TABLE ONLY public."TransAnnualWPProgrammaticOutputs"
    ADD CONSTRAINT "PK_TransAnnualWPProgrammaticOutputs" PRIMARY KEY ("Transaction_Id");


--
-- TOC entry 3434 (class 2606 OID 33543)
-- Name: TransAnnualWPProjects PK_TransAnnualWPProjects; Type: CONSTRAINT; Schema: public; Owner: employee
--

ALTER TABLE ONLY public."TransAnnualWPProjects"
    ADD CONSTRAINT "PK_TransAnnualWPProjects" PRIMARY KEY ("Transaction_Id");


--
-- TOC entry 3438 (class 2606 OID 33562)
-- Name: TransAnnualWPTransitions PK_TransAnnualWPTransitions; Type: CONSTRAINT; Schema: public; Owner: employee
--

ALTER TABLE ONLY public."TransAnnualWPTransitions"
    ADD CONSTRAINT "PK_TransAnnualWPTransitions" PRIMARY KEY ("Transaction_Id");


--
-- TOC entry 3444 (class 2606 OID 33586)
-- Name: TransAuditRecords PK_TransAuditRecords; Type: CONSTRAINT; Schema: public; Owner: employee
--

ALTER TABLE ONLY public."TransAuditRecords"
    ADD CONSTRAINT "PK_TransAuditRecords" PRIMARY KEY ("Transaction_Id");


--
-- TOC entry 3406 (class 2606 OID 25185)
-- Name: TransCEOs PK_TransCEOs; Type: CONSTRAINT; Schema: public; Owner: employee
--

ALTER TABLE ONLY public."TransCEOs"
    ADD CONSTRAINT "PK_TransCEOs" PRIMARY KEY ("Transaction_Id");


--
-- TOC entry 3408 (class 2606 OID 25183)
-- Name: TransDirectorateHeads PK_TransDirectorateHeads; Type: CONSTRAINT; Schema: public; Owner: employee
--

ALTER TABLE ONLY public."TransDirectorateHeads"
    ADD CONSTRAINT "PK_TransDirectorateHeads" PRIMARY KEY ("Transaction_Id");


--
-- TOC entry 3410 (class 2606 OID 25181)
-- Name: TransDivisionHeads PK_TransDivisionHeads; Type: CONSTRAINT; Schema: public; Owner: employee
--

ALTER TABLE ONLY public."TransDivisionHeads"
    ADD CONSTRAINT "PK_TransDivisionHeads" PRIMARY KEY ("Transaction_Id");


--
-- TOC entry 3424 (class 2606 OID 33501)
-- Name: TransProgrammeDivisionMappings PK_TransProgrammeDivisionMappings; Type: CONSTRAINT; Schema: public; Owner: employee
--

ALTER TABLE ONLY public."TransProgrammeDivisionMappings"
    ADD CONSTRAINT "PK_TransProgrammeDivisionMappings" PRIMARY KEY ("Transaction_Id");


--
-- TOC entry 3412 (class 2606 OID 25179)
-- Name: TransProgrammeHeads PK_TransProgrammeHeads; Type: CONSTRAINT; Schema: public; Owner: employee
--

ALTER TABLE ONLY public."TransProgrammeHeads"
    ADD CONSTRAINT "PK_TransProgrammeHeads" PRIMARY KEY ("Transaction_Id");


--
-- TOC entry 3422 (class 2606 OID 33493)
-- Name: TransProgrammeUnitStaffMappings PK_TransProgrammeUnitStaffMappings; Type: CONSTRAINT; Schema: public; Owner: employee
--

ALTER TABLE ONLY public."TransProgrammeUnitStaffMappings"
    ADD CONSTRAINT "PK_TransProgrammeUnitStaffMappings" PRIMARY KEY ("Transaction_Id");


--
-- TOC entry 3426 (class 2606 OID 33509)
-- Name: TransProjectDivisionMappings PK_TransProjectDivisionMappings; Type: CONSTRAINT; Schema: public; Owner: employee
--

ALTER TABLE ONLY public."TransProjectDivisionMappings"
    ADD CONSTRAINT "PK_TransProjectDivisionMappings" PRIMARY KEY ("Transaction_Id");


--
-- TOC entry 3420 (class 2606 OID 33405)
-- Name: TransSysAdmins PK_TransSysAdmins; Type: CONSTRAINT; Schema: public; Owner: employee
--

ALTER TABLE ONLY public."TransSysAdmins"
    ADD CONSTRAINT "PK_TransSysAdmins" PRIMARY KEY ("Transaction_Id");


--
-- TOC entry 3414 (class 2606 OID 25177)
-- Name: TransUnitHeads PK_TransUnitHeads; Type: CONSTRAINT; Schema: public; Owner: employee
--

ALTER TABLE ONLY public."TransUnitHeads"
    ADD CONSTRAINT "PK_TransUnitHeads" PRIMARY KEY ("Transaction_Id");


--
-- TOC entry 3349 (class 2606 OID 24837)
-- Name: __EFMigrationsHistory PK___EFMigrationsHistory; Type: CONSTRAINT; Schema: public; Owner: employee
--

ALTER TABLE ONLY public."__EFMigrationsHistory"
    ADD CONSTRAINT "PK___EFMigrationsHistory" PRIMARY KEY ("MigrationId");


--
-- TOC entry 3353 (class 1259 OID 24965)
-- Name: EmailIndex; Type: INDEX; Schema: public; Owner: employee
--

CREATE INDEX "EmailIndex" ON public."AspNetUsers" USING btree ("NormalizedEmail");


--
-- TOC entry 3363 (class 1259 OID 24960)
-- Name: IX_AspNetRoleClaims_RoleId; Type: INDEX; Schema: public; Owner: employee
--

CREATE INDEX "IX_AspNetRoleClaims_RoleId" ON public."AspNetRoleClaims" USING btree ("RoleId");


--
-- TOC entry 3366 (class 1259 OID 24962)
-- Name: IX_AspNetUserClaims_UserId; Type: INDEX; Schema: public; Owner: employee
--

CREATE INDEX "IX_AspNetUserClaims_UserId" ON public."AspNetUserClaims" USING btree ("UserId");


--
-- TOC entry 3369 (class 1259 OID 24963)
-- Name: IX_AspNetUserLogins_UserId; Type: INDEX; Schema: public; Owner: employee
--

CREATE INDEX "IX_AspNetUserLogins_UserId" ON public."AspNetUserLogins" USING btree ("UserId");


--
-- TOC entry 3372 (class 1259 OID 24964)
-- Name: IX_AspNetUserRoles_RoleId; Type: INDEX; Schema: public; Owner: employee
--

CREATE INDEX "IX_AspNetUserRoles_RoleId" ON public."AspNetUserRoles" USING btree ("RoleId");


--
-- TOC entry 3352 (class 1259 OID 24961)
-- Name: RoleNameIndex; Type: INDEX; Schema: public; Owner: employee
--

CREATE UNIQUE INDEX "RoleNameIndex" ON public."AspNetRoles" USING btree ("NormalizedName");


--
-- TOC entry 3356 (class 1259 OID 24966)
-- Name: UserNameIndex; Type: INDEX; Schema: public; Owner: employee
--

CREATE UNIQUE INDEX "UserNameIndex" ON public."AspNetUsers" USING btree ("NormalizedUserName");


--
-- TOC entry 3457 (class 2606 OID 24895)
-- Name: AspNetRoleClaims FK_AspNetRoleClaims_AspNetRoles_RoleId; Type: FK CONSTRAINT; Schema: public; Owner: employee
--

ALTER TABLE ONLY public."AspNetRoleClaims"
    ADD CONSTRAINT "FK_AspNetRoleClaims_AspNetRoles_RoleId" FOREIGN KEY ("RoleId") REFERENCES public."AspNetRoles"("Id") ON DELETE CASCADE;


--
-- TOC entry 3458 (class 2606 OID 24911)
-- Name: AspNetUserClaims FK_AspNetUserClaims_AspNetUsers_UserId; Type: FK CONSTRAINT; Schema: public; Owner: employee
--

ALTER TABLE ONLY public."AspNetUserClaims"
    ADD CONSTRAINT "FK_AspNetUserClaims_AspNetUsers_UserId" FOREIGN KEY ("UserId") REFERENCES public."AspNetUsers"("Id") ON DELETE CASCADE;


--
-- TOC entry 3459 (class 2606 OID 24924)
-- Name: AspNetUserLogins FK_AspNetUserLogins_AspNetUsers_UserId; Type: FK CONSTRAINT; Schema: public; Owner: employee
--

ALTER TABLE ONLY public."AspNetUserLogins"
    ADD CONSTRAINT "FK_AspNetUserLogins_AspNetUsers_UserId" FOREIGN KEY ("UserId") REFERENCES public."AspNetUsers"("Id") ON DELETE CASCADE;


--
-- TOC entry 3460 (class 2606 OID 24937)
-- Name: AspNetUserRoles FK_AspNetUserRoles_AspNetRoles_RoleId; Type: FK CONSTRAINT; Schema: public; Owner: employee
--

ALTER TABLE ONLY public."AspNetUserRoles"
    ADD CONSTRAINT "FK_AspNetUserRoles_AspNetRoles_RoleId" FOREIGN KEY ("RoleId") REFERENCES public."AspNetRoles"("Id") ON DELETE CASCADE;


--
-- TOC entry 3461 (class 2606 OID 24942)
-- Name: AspNetUserRoles FK_AspNetUserRoles_AspNetUsers_UserId; Type: FK CONSTRAINT; Schema: public; Owner: employee
--

ALTER TABLE ONLY public."AspNetUserRoles"
    ADD CONSTRAINT "FK_AspNetUserRoles_AspNetUsers_UserId" FOREIGN KEY ("UserId") REFERENCES public."AspNetUsers"("Id") ON DELETE CASCADE;


--
-- TOC entry 3462 (class 2606 OID 24955)
-- Name: AspNetUserTokens FK_AspNetUserTokens_AspNetUsers_UserId; Type: FK CONSTRAINT; Schema: public; Owner: employee
--

ALTER TABLE ONLY public."AspNetUserTokens"
    ADD CONSTRAINT "FK_AspNetUserTokens_AspNetUsers_UserId" FOREIGN KEY ("UserId") REFERENCES public."AspNetUsers"("Id") ON DELETE CASCADE;


-- Completed on 2019-12-29 00:17:50 SAST

--
-- PostgreSQL database dump complete
--

