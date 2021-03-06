PGDMP         0    
        
    w            audaintegratedsys    11.4    12.0    K           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            L           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            M           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            N           1262    24832    audaintegratedsys    DATABASE     o   CREATE DATABASE audaintegratedsys WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C' LC_CTYPE = 'C';
 !   DROP DATABASE audaintegratedsys;
                employee    false            �            1259    25049    AUDAProgrammaticOutcomes    TABLE     �   CREATE TABLE public."AUDAProgrammaticOutcomes" (
    "ProgrammaticOutcome_Id" integer NOT NULL,
    "ProgrammaticOutcome" text,
    "ProgrammaticOutcome_Status" boolean NOT NULL,
    "Record_TransactionDate" timestamp without time zone NOT NULL
);
 .   DROP TABLE public."AUDAProgrammaticOutcomes";
       public            employee    false            �            1259    25047 3   AUDAProgrammaticOutcomes_ProgrammaticOutcome_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."AUDAProgrammaticOutcomes_ProgrammaticOutcome_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 L   DROP SEQUENCE public."AUDAProgrammaticOutcomes_ProgrammaticOutcome_Id_seq";
       public          employee    false    229            O           0    0 3   AUDAProgrammaticOutcomes_ProgrammaticOutcome_Id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."AUDAProgrammaticOutcomes_ProgrammaticOutcome_Id_seq" OWNED BY public."AUDAProgrammaticOutcomes"."ProgrammaticOutcome_Id";
          public          employee    false    228            �            1259    25060    AUDAProgrammaticOutputs    TABLE       CREATE TABLE public."AUDAProgrammaticOutputs" (
    "ProgrammaticOutput_Id" integer NOT NULL,
    "ProgrammaticOutcome_Id" integer NOT NULL,
    "ProgrammaticOutput" text,
    "ProgrammaticOutput_Status" boolean NOT NULL,
    "TransactionDate" timestamp without time zone NOT NULL
);
 -   DROP TABLE public."AUDAProgrammaticOutputs";
       public            employee    false            �            1259    25058 1   AUDAProgrammaticOutputs_ProgrammaticOutput_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."AUDAProgrammaticOutputs_ProgrammaticOutput_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 J   DROP SEQUENCE public."AUDAProgrammaticOutputs_ProgrammaticOutput_Id_seq";
       public          employee    false    231            P           0    0 1   AUDAProgrammaticOutputs_ProgrammaticOutput_Id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."AUDAProgrammaticOutputs_ProgrammaticOutput_Id_seq" OWNED BY public."AUDAProgrammaticOutputs"."ProgrammaticOutput_Id";
          public          employee    false    230            �            1259    25027    AUDAProgrammes    TABLE     �  CREATE TABLE public."AUDAProgrammes" (
    "Programme_Id" integer NOT NULL,
    "Programme_Dept_Id" integer NOT NULL,
    "Programme_Directorate_Id" integer NOT NULL,
    "Programme_Name" character varying(255) NOT NULL,
    "Programme_Country" text,
    "Programme_Address" text,
    "Programme_Status" boolean DEFAULT false NOT NULL,
    "TransactionDate" timestamp without time zone DEFAULT '0001-01-01 00:00:00'::timestamp without time zone NOT NULL
);
 $   DROP TABLE public."AUDAProgrammes";
       public            employee    false            �            1259    25025    AUDAProgrammes_Programme_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."AUDAProgrammes_Programme_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public."AUDAProgrammes_Programme_Id_seq";
       public          employee    false    225            Q           0    0    AUDAProgrammes_Programme_Id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public."AUDAProgrammes_Programme_Id_seq" OWNED BY public."AUDAProgrammes"."Programme_Id";
          public          employee    false    224            �            1259    25038    AUDAProjects    TABLE     -  CREATE TABLE public."AUDAProjects" (
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
 "   DROP TABLE public."AUDAProjects";
       public            employee    false            �            1259    25036    AUDAProjects_Project_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."AUDAProjects_Project_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public."AUDAProjects_Project_Id_seq";
       public          employee    false    227            R           0    0    AUDAProjects_Project_Id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public."AUDAProjects_Project_Id_seq" OWNED BY public."AUDAProjects"."Project_Id";
          public          employee    false    226            �            1259    25016 	   AUDAUnits    TABLE     �  CREATE TABLE public."AUDAUnits" (
    "Unit_Id" integer NOT NULL,
    "Unit_Dept_Id" integer NOT NULL,
    "Unit_Directorate_Id" integer NOT NULL,
    "Unit_Name" character varying(255) NOT NULL,
    "Unit_Country" text,
    "Unit_Address" text,
    "TransactionDate" timestamp without time zone DEFAULT '0001-01-01 00:00:00'::timestamp without time zone NOT NULL,
    "Unit_Status" boolean DEFAULT false NOT NULL
);
    DROP TABLE public."AUDAUnits";
       public            employee    false            �            1259    25014    AUDAUnits_Unit_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."AUDAUnits_Unit_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."AUDAUnits_Unit_Id_seq";
       public          employee    false    223            S           0    0    AUDAUnits_Unit_Id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."AUDAUnits_Unit_Id_seq" OWNED BY public."AUDAUnits"."Unit_Id";
          public          employee    false    222            �            1259    25071    ActivityTypes    TABLE     �   CREATE TABLE public."ActivityTypes" (
    "Activity_Id" integer NOT NULL,
    "Activity_Name" character varying(255) NOT NULL,
    "ActivityType_Status" boolean NOT NULL,
    "TransactionDate" timestamp without time zone NOT NULL
);
 #   DROP TABLE public."ActivityTypes";
       public            employee    false            �            1259    25069    ActivityTypes_Activity_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."ActivityTypes_Activity_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public."ActivityTypes_Activity_Id_seq";
       public          employee    false    233            T           0    0    ActivityTypes_Activity_Id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public."ActivityTypes_Activity_Id_seq" OWNED BY public."ActivityTypes"."Activity_Id";
          public          employee    false    232            �            1259    24886    AspNetRoleClaims    TABLE     �   CREATE TABLE public."AspNetRoleClaims" (
    "Id" integer NOT NULL,
    "RoleId" text NOT NULL,
    "ClaimType" text,
    "ClaimValue" text
);
 &   DROP TABLE public."AspNetRoleClaims";
       public            employee    false            �            1259    24884    AspNetRoleClaims_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."AspNetRoleClaims_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."AspNetRoleClaims_Id_seq";
       public          employee    false    206            U           0    0    AspNetRoleClaims_Id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public."AspNetRoleClaims_Id_seq" OWNED BY public."AspNetRoleClaims"."Id";
          public          employee    false    205            �            1259    24838    AspNetRoles    TABLE     �   CREATE TABLE public."AspNetRoles" (
    "Id" text NOT NULL,
    "Name" character varying(256),
    "NormalizedName" character varying(256),
    "ConcurrencyStamp" text
);
 !   DROP TABLE public."AspNetRoles";
       public            employee    false            �            1259    24902    AspNetUserClaims    TABLE     �   CREATE TABLE public."AspNetUserClaims" (
    "Id" integer NOT NULL,
    "UserId" text NOT NULL,
    "ClaimType" text,
    "ClaimValue" text
);
 &   DROP TABLE public."AspNetUserClaims";
       public            employee    false            �            1259    24900    AspNetUserClaims_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."AspNetUserClaims_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."AspNetUserClaims_Id_seq";
       public          employee    false    208            V           0    0    AspNetUserClaims_Id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public."AspNetUserClaims_Id_seq" OWNED BY public."AspNetUserClaims"."Id";
          public          employee    false    207            �            1259    24916    AspNetUserLogins    TABLE     �   CREATE TABLE public."AspNetUserLogins" (
    "LoginProvider" text NOT NULL,
    "ProviderKey" text NOT NULL,
    "ProviderDisplayName" text,
    "UserId" text NOT NULL
);
 &   DROP TABLE public."AspNetUserLogins";
       public            employee    false            �            1259    24929    AspNetUserRoles    TABLE     b   CREATE TABLE public."AspNetUserRoles" (
    "UserId" text NOT NULL,
    "RoleId" text NOT NULL
);
 %   DROP TABLE public."AspNetUserRoles";
       public            employee    false            �            1259    24947    AspNetUserTokens    TABLE     �   CREATE TABLE public."AspNetUserTokens" (
    "UserId" text NOT NULL,
    "LoginProvider" text NOT NULL,
    "Name" text NOT NULL,
    "Value" text
);
 &   DROP TABLE public."AspNetUserTokens";
       public            employee    false            �            1259    24846    AspNetUsers    TABLE     =  CREATE TABLE public."AspNetUsers" (
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
 !   DROP TABLE public."AspNetUsers";
       public            employee    false            �            1259    25126    CostCatelogues    TABLE     1  CREATE TABLE public."CostCatelogues" (
    "Cost_Id" integer NOT NULL,
    "Cost_Code" text,
    "Cost_Category" text,
    "Cost_Description" text,
    "Unit_Of_Measure" text,
    "Unit_Cost" real NOT NULL,
    "Cost_Status" boolean NOT NULL,
    "TransactionDate" timestamp without time zone NOT NULL
);
 $   DROP TABLE public."CostCatelogues";
       public            employee    false            �            1259    25124    CostCatelogue_Cost_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."CostCatelogue_Cost_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public."CostCatelogue_Cost_Id_seq";
       public          employee    false    239            W           0    0    CostCatelogue_Cost_Id_seq    SEQUENCE OWNED BY     ^   ALTER SEQUENCE public."CostCatelogue_Cost_Id_seq" OWNED BY public."CostCatelogues"."Cost_Id";
          public          employee    false    238            �            1259    25079    DSATypes    TABLE     �   CREATE TABLE public."DSATypes" (
    "DSA_Id" integer NOT NULL,
    "DSA_Name" character varying(255) NOT NULL,
    "DSA_Value" real NOT NULL,
    "DSAType_Status" boolean NOT NULL,
    "TransactionDate" timestamp without time zone NOT NULL
);
    DROP TABLE public."DSATypes";
       public            employee    false            �            1259    25077    DSATypes_DSA_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."DSATypes_DSA_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."DSATypes_DSA_Id_seq";
       public          employee    false    235            X           0    0    DSATypes_DSA_Id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."DSATypes_DSA_Id_seq" OWNED BY public."DSATypes"."DSA_Id";
          public          employee    false    234            �            1259    24856    Departments    TABLE     �  CREATE TABLE public."Departments" (
    "Dept_Id" integer NOT NULL,
    "Dept_Name" character varying(255) NOT NULL,
    "Dept_Country" text,
    "Dept_Address" text,
    "Dept_Directorate_Id" integer DEFAULT 0 NOT NULL,
    "Dept_Status" boolean DEFAULT false NOT NULL,
    "TransactionDate" timestamp without time zone DEFAULT '0001-01-01 00:00:00'::timestamp without time zone NOT NULL
);
 !   DROP TABLE public."Departments";
       public            employee    false            �            1259    24854    Departments_Dept_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."Departments_Dept_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public."Departments_Dept_Id_seq";
       public          employee    false    200            Y           0    0    Departments_Dept_Id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public."Departments_Dept_Id_seq" OWNED BY public."Departments"."Dept_Id";
          public          employee    false    199            �            1259    24997    Directorates    TABLE     v  CREATE TABLE public."Directorates" (
    "Directorate_Id" integer NOT NULL,
    "Directorate_Name" character varying(255) NOT NULL,
    "Directorate_Country" text,
    "Directorate_Address" text,
    "Directorate_Status" boolean DEFAULT false NOT NULL,
    "TransactionDate" timestamp without time zone DEFAULT '0001-01-01 00:00:00'::timestamp without time zone NOT NULL
);
 "   DROP TABLE public."Directorates";
       public            employee    false            �            1259    24995    Directorates_Directorate_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."Directorates_Directorate_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public."Directorates_Directorate_Id_seq";
       public          employee    false    219            Z           0    0    Directorates_Directorate_Id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public."Directorates_Directorate_Id_seq" OWNED BY public."Directorates"."Directorate_Id";
          public          employee    false    218            �            1259    24969    EmployeeCountries    TABLE     5  CREATE TABLE public."EmployeeCountries" (
    "EmpCountry_Id" integer NOT NULL,
    "EmpCountry_Name" character varying(255) NOT NULL,
    "Country_Status" boolean DEFAULT false NOT NULL,
    "TransactionDate" timestamp without time zone DEFAULT '0001-01-01 00:00:00'::timestamp without time zone NOT NULL
);
 '   DROP TABLE public."EmployeeCountries";
       public            employee    false            �            1259    24967 #   EmployeeCountries_EmpCountry_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."EmployeeCountries_EmpCountry_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public."EmployeeCountries_EmpCountry_Id_seq";
       public          employee    false    213            [           0    0 #   EmployeeCountries_EmpCountry_Id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public."EmployeeCountries_EmpCountry_Id_seq" OWNED BY public."EmployeeCountries"."EmpCountry_Id";
          public          employee    false    212            �            1259    24867 	   Employees    TABLE       CREATE TABLE public."Employees" (
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
    DROP TABLE public."Employees";
       public            employee    false            �            1259    24865    Employees_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."Employees_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public."Employees_Id_seq";
       public          employee    false    202            \           0    0    Employees_Id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public."Employees_Id_seq" OWNED BY public."Employees"."Id";
          public          employee    false    201            �            1259    25188    ExternalPersonsTypes    TABLE       CREATE TABLE public."ExternalPersonsTypes" (
    "ExternalPersonsType_Id" integer NOT NULL,
    "ExternalPersonsType_Name" character varying(255) NOT NULL,
    "ExternalPersonsType_Status" boolean NOT NULL,
    "TransactionDate" timestamp without time zone NOT NULL
);
 *   DROP TABLE public."ExternalPersonsTypes";
       public            employee    false            �            1259    25186 /   ExternalPersonsTypes_ExternalPersonsType_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."ExternalPersonsTypes_ExternalPersonsType_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 H   DROP SEQUENCE public."ExternalPersonsTypes_ExternalPersonsType_Id_seq";
       public          employee    false    246            ]           0    0 /   ExternalPersonsTypes_ExternalPersonsType_Id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."ExternalPersonsTypes_ExternalPersonsType_Id_seq" OWNED BY public."ExternalPersonsTypes"."ExternalPersonsType_Id";
          public          employee    false    245            �            1259    33520    FiscalYears    TABLE       CREATE TABLE public."FiscalYears" (
    "Year_Id" text NOT NULL,
    "Year_Name" character varying(255) NOT NULL,
    "Year_Status" boolean NOT NULL,
    "TransactionDate" timestamp without time zone NOT NULL,
    "Year_Id_Iter" integer DEFAULT 0 NOT NULL
);
 !   DROP TABLE public."FiscalYears";
       public            employee    false            �            1259    24977    Genders    TABLE     "  CREATE TABLE public."Genders" (
    "Gender_Id" integer NOT NULL,
    "Gender_Name" character varying(255) NOT NULL,
    "Gender_Status" boolean DEFAULT false NOT NULL,
    "TransactionDate" timestamp without time zone DEFAULT '0001-01-01 00:00:00'::timestamp without time zone NOT NULL
);
    DROP TABLE public."Genders";
       public            employee    false            �            1259    24975    Genders_Gender_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."Genders_Gender_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public."Genders_Gender_Id_seq";
       public          employee    false    215            ^           0    0    Genders_Gender_Id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public."Genders_Gender_Id_seq" OWNED BY public."Genders"."Gender_Id";
          public          employee    false    214            �            1259    33385    LeadershipStatus    TABLE     �   CREATE TABLE public."LeadershipStatus" (
    "LeadStatus_Id" integer NOT NULL,
    "LeadStatus_Name" character varying(255) NOT NULL,
    "LeadStatus_Status" boolean NOT NULL,
    "TransactionDate" timestamp without time zone NOT NULL
);
 &   DROP TABLE public."LeadershipStatus";
       public            employee    false            �            1259    33383 "   LeadershipStatus_LeadStatus_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."LeadershipStatus_LeadStatus_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public."LeadershipStatus_LeadStatus_Id_seq";
       public          employee    false    248            _           0    0 "   LeadershipStatus_LeadStatus_Id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public."LeadershipStatus_LeadStatus_Id_seq" OWNED BY public."LeadershipStatus"."LeadStatus_Id";
          public          employee    false    247            �            1259    25087    ParticipantTypes    TABLE     �   CREATE TABLE public."ParticipantTypes" (
    "ParticipantType_Id" integer NOT NULL,
    "ParticipantType_Name" character varying(255) NOT NULL,
    "ParticipantType_Status" boolean NOT NULL,
    "TransactionDate" timestamp without time zone NOT NULL
);
 &   DROP TABLE public."ParticipantTypes";
       public            employee    false            �            1259    25085 '   ParticipantTypes_ParticipantType_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."ParticipantTypes_ParticipantType_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE public."ParticipantTypes_ParticipantType_Id_seq";
       public          employee    false    237            `           0    0 '   ParticipantTypes_ParticipantType_Id_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE public."ParticipantTypes_ParticipantType_Id_seq" OWNED BY public."ParticipantTypes"."ParticipantType_Id";
          public          employee    false    236            �            1259    33512    ProjectProgrammeMappingStatus    TABLE     �   CREATE TABLE public."ProjectProgrammeMappingStatus" (
    "ProStatus_Id" integer NOT NULL,
    "ProStatus_Name" character varying(255) NOT NULL,
    "ProStatus_Status" boolean NOT NULL,
    "TransactionDate" timestamp without time zone NOT NULL
);
 3   DROP TABLE public."ProjectProgrammeMappingStatus";
       public            employee    false            �            1259    33510 .   ProjectProgrammeMappingStatus_ProStatus_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."ProjectProgrammeMappingStatus_ProStatus_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 G   DROP SEQUENCE public."ProjectProgrammeMappingStatus_ProStatus_Id_seq";
       public          employee    false    254            a           0    0 .   ProjectProgrammeMappingStatus_ProStatus_Id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public."ProjectProgrammeMappingStatus_ProStatus_Id_seq" OWNED BY public."ProjectProgrammeMappingStatus"."ProStatus_Id";
          public          employee    false    253            �            1259    24985    StaffRankSteps    TABLE     >  CREATE TABLE public."StaffRankSteps" (
    "StaffRankStep_Id" integer NOT NULL,
    "StaffRankStep_Name" character varying(255) NOT NULL,
    "StaffRankStep_Status" boolean DEFAULT false NOT NULL,
    "TransactionDate" timestamp without time zone DEFAULT '0001-01-01 00:00:00'::timestamp without time zone NOT NULL
);
 $   DROP TABLE public."StaffRankSteps";
       public            employee    false            �            1259    24983 #   StaffRankSteps_StaffRankStep_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."StaffRankSteps_StaffRankStep_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public."StaffRankSteps_StaffRankStep_Id_seq";
       public          employee    false    217            b           0    0 #   StaffRankSteps_StaffRankStep_Id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public."StaffRankSteps_StaffRankStep_Id_seq" OWNED BY public."StaffRankSteps"."StaffRankStep_Id";
          public          employee    false    216            �            1259    24878 
   StaffRanks    TABLE     .  CREATE TABLE public."StaffRanks" (
    "StaffRank_Id" integer NOT NULL,
    "StaffRank_Name" character varying(255) NOT NULL,
    "StaffRank_Status" boolean DEFAULT false NOT NULL,
    "TransactionDate" timestamp without time zone DEFAULT '0001-01-01 00:00:00'::timestamp without time zone NOT NULL
);
     DROP TABLE public."StaffRanks";
       public            employee    false            �            1259    24876    StaffRanks_StaffRank_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."StaffRanks_StaffRank_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public."StaffRanks_StaffRank_Id_seq";
       public          employee    false    204            c           0    0    StaffRanks_StaffRank_Id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public."StaffRanks_StaffRank_Id_seq" OWNED BY public."StaffRanks"."StaffRank_Id";
          public          employee    false    203            �            1259    25008    Titles    TABLE       CREATE TABLE public."Titles" (
    "Title_Id" integer NOT NULL,
    "Title_Name" character varying(255) NOT NULL,
    "Title_Status" boolean DEFAULT false NOT NULL,
    "TransactionDate" timestamp without time zone DEFAULT '0001-01-01 00:00:00'::timestamp without time zone NOT NULL
);
    DROP TABLE public."Titles";
       public            employee    false            �            1259    25006    Titles_Title_Id_seq    SEQUENCE     �   CREATE SEQUENCE public."Titles_Title_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public."Titles_Title_Id_seq";
       public          employee    false    221            d           0    0    Titles_Title_Id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public."Titles_Title_Id_seq" OWNED BY public."Titles"."Title_Id";
          public          employee    false    220                       1259    33588 &   TransAUDAProgrammaticOutcomeSessionals    TABLE     �   CREATE TABLE public."TransAUDAProgrammaticOutcomeSessionals" (
    "Transaction_Id" text NOT NULL,
    "ProgrammaticOutcome_Id" integer NOT NULL,
    "ProgrammaticOutcome" text,
    "TransactionDate" timestamp without time zone NOT NULL
);
 <   DROP TABLE public."TransAUDAProgrammaticOutcomeSessionals";
       public            employee    false                       1259    33596    TransAUDAProgrammaticOutputMaps    TABLE        CREATE TABLE public."TransAUDAProgrammaticOutputMaps" (
    "Transaction_Id" text NOT NULL,
    "ProgrammaticOutput_Id" integer NOT NULL,
    "ProgrammaticOutput" text,
    "TransactionDate" timestamp without time zone NOT NULL,
    "ProgrammaticOutcome_Id" integer DEFAULT 0 NOT NULL
);
 5   DROP TABLE public."TransAUDAProgrammaticOutputMaps";
       public            employee    false                       1259    33625     TransAnnualWPAUDAOutcomeExplains    TABLE     �   CREATE TABLE public."TransAnnualWPAUDAOutcomeExplains" (
    "Transaction_Id" text NOT NULL,
    "TransAnnualWPMaster_Id" text,
    "TransAnnualWP_AUDAOutcomeExplain" text,
    "TransactionDate" timestamp without time zone NOT NULL
);
 6   DROP TABLE public."TransAnnualWPAUDAOutcomeExplains";
       public            employee    false                       1259    33563    TransAnnualWPAUDAOutputExplains    TABLE     �   CREATE TABLE public."TransAnnualWPAUDAOutputExplains" (
    "Transaction_Id" text NOT NULL,
    "TransAnnualWPMaster_Id" text,
    "TransAnnualWP_AUDAOutputExplain" text,
    "TransactionDate" timestamp without time zone NOT NULL
);
 5   DROP TABLE public."TransAnnualWPAUDAOutputExplains";
       public            employee    false                       1259    33547    TransAnnualWPActivitys    TABLE       CREATE TABLE public."TransAnnualWPActivitys" (
    "Transaction_Id" text NOT NULL,
    "TransAnnualWPMaster_Id" text,
    "TransAnnualWP_Activity" text,
    "PerformedBy" integer NOT NULL,
    "TransactionDate" timestamp without time zone NOT NULL,
    "PerformedByName" text
);
 ,   DROP TABLE public."TransAnnualWPActivitys";
       public            employee    false                        1259    33528    TransAnnualWPMasters    TABLE     �  CREATE TABLE public."TransAnnualWPMasters" (
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
 *   DROP TABLE public."TransAnnualWPMasters";
       public            employee    false                       1259    33633    TransAnnualWPOutcomes    TABLE     �   CREATE TABLE public."TransAnnualWPOutcomes" (
    "Transaction_Id" text NOT NULL,
    "TransAnnualWPMaster_Id" text,
    "TransAnnualWP_Outcome" text,
    "TransactionDate" timestamp without time zone NOT NULL,
    "Iter_Id" integer DEFAULT 0 NOT NULL
);
 +   DROP TABLE public."TransAnnualWPOutcomes";
       public            employee    false                       1259    33571    TransAnnualWPOutputs    TABLE     �   CREATE TABLE public."TransAnnualWPOutputs" (
    "Transaction_Id" text NOT NULL,
    "TransAnnualWPMaster_Id" text,
    "TransAnnualWP_Output" text,
    "TransactionDate" timestamp without time zone NOT NULL,
    "Iter_Id" integer DEFAULT 0 NOT NULL
);
 *   DROP TABLE public."TransAnnualWPOutputs";
       public            employee    false            	           1259    33609 !   TransAnnualWPProgrammaticOutcomes    TABLE       CREATE TABLE public."TransAnnualWPProgrammaticOutcomes" (
    "Transaction_Id" text NOT NULL,
    "TransAnnualWPMaster_Id" text,
    "ProgrammaticOutcome_Id" integer NOT NULL,
    "ProgrammaticOutcome" text,
    "TransactionDate" timestamp without time zone NOT NULL
);
 7   DROP TABLE public."TransAnnualWPProgrammaticOutcomes";
       public            employee    false            
           1259    33617     TransAnnualWPProgrammaticOutputs    TABLE       CREATE TABLE public."TransAnnualWPProgrammaticOutputs" (
    "Transaction_Id" text NOT NULL,
    "TransAnnualWPMaster_Id" text,
    "ProgrammaticOutput_Id" integer NOT NULL,
    "ProgrammaticOutput" text,
    "TransactionDate" timestamp without time zone NOT NULL
);
 6   DROP TABLE public."TransAnnualWPProgrammaticOutputs";
       public            employee    false                       1259    33536    TransAnnualWPProjects    TABLE     �   CREATE TABLE public."TransAnnualWPProjects" (
    "Transaction_Id" text NOT NULL,
    "TransAnnualWPMaster_Id" text,
    "Project_Id" integer NOT NULL,
    "Project_Name" text,
    "TransactionDate" timestamp without time zone NOT NULL
);
 +   DROP TABLE public."TransAnnualWPProjects";
       public            employee    false                       1259    33555    TransAnnualWPTransitions    TABLE       CREATE TABLE public."TransAnnualWPTransitions" (
    "Transaction_Id" text NOT NULL,
    "TransAnnualWPMaster_Id" text,
    "TransAnnualWP_State" text,
    "PerformedBy" integer NOT NULL,
    "TransactionDate" timestamp without time zone NOT NULL,
    "PerformedByName" text
);
 .   DROP TABLE public."TransAnnualWPTransitions";
       public            employee    false                       1259    33579    TransAuditRecords    TABLE     �   CREATE TABLE public."TransAuditRecords" (
    "Transaction_Id" text NOT NULL,
    "TransactionName" text,
    "PerformedBy" integer NOT NULL,
    "PerformedByName" text,
    "IPAddress" text,
    "TransactionDate" timestamp without time zone NOT NULL
);
 '   DROP TABLE public."TransAuditRecords";
       public            employee    false            �            1259    25135 	   TransCEOs    TABLE     <  CREATE TABLE public."TransCEOs" (
    "Transaction_Id" text NOT NULL,
    "Head_StaffNumber" text,
    "Head_Status" text,
    "Show_Status" boolean NOT NULL,
    "TransactionDate" timestamp without time zone NOT NULL,
    "Employee_Id" integer DEFAULT 0 NOT NULL,
    "Head_Status_Id" integer DEFAULT 0 NOT NULL
);
    DROP TABLE public."TransCEOs";
       public            employee    false            �            1259    25143    TransDirectorateHeads    TABLE     o  CREATE TABLE public."TransDirectorateHeads" (
    "Transaction_Id" text NOT NULL,
    "Directorate_Id" integer NOT NULL,
    "Head_StaffNumber" text,
    "Head_Status" text,
    "Show_Status" boolean NOT NULL,
    "TransactionDate" timestamp without time zone NOT NULL,
    "Employee_Id" integer DEFAULT 0 NOT NULL,
    "Head_Status_Id" integer DEFAULT 0 NOT NULL
);
 +   DROP TABLE public."TransDirectorateHeads";
       public            employee    false            �            1259    25151    TransDivisionHeads    TABLE     e  CREATE TABLE public."TransDivisionHeads" (
    "Transaction_Id" text NOT NULL,
    "Dept_Id" integer NOT NULL,
    "Head_StaffNumber" text,
    "Head_Status" text,
    "Show_Status" boolean NOT NULL,
    "TransactionDate" timestamp without time zone NOT NULL,
    "Employee_Id" integer DEFAULT 0 NOT NULL,
    "Head_Status_Id" integer DEFAULT 0 NOT NULL
);
 (   DROP TABLE public."TransDivisionHeads";
       public            employee    false            �            1259    33494    TransProgrammeDivisionMappings    TABLE     J  CREATE TABLE public."TransProgrammeDivisionMappings" (
    "Transaction_Id" text NOT NULL,
    "Programme_Id" integer NOT NULL,
    "Division_Id" integer NOT NULL,
    "Directorate_Id" integer NOT NULL,
    "Programme_Status" text,
    "Show_Status" boolean NOT NULL,
    "TransactionDate" timestamp without time zone NOT NULL
);
 4   DROP TABLE public."TransProgrammeDivisionMappings";
       public            employee    false            �            1259    25159    TransProgrammeHeads    TABLE     �  CREATE TABLE public."TransProgrammeHeads" (
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
 )   DROP TABLE public."TransProgrammeHeads";
       public            employee    false            �            1259    33486    TransProgrammeUnitStaffMappings    TABLE     �  CREATE TABLE public."TransProgrammeUnitStaffMappings" (
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
 5   DROP TABLE public."TransProgrammeUnitStaffMappings";
       public            employee    false            �            1259    33502    TransProjectDivisionMappings    TABLE     D  CREATE TABLE public."TransProjectDivisionMappings" (
    "Transaction_Id" text NOT NULL,
    "Project_Id" integer NOT NULL,
    "Division_Id" integer NOT NULL,
    "Directorate_Id" integer NOT NULL,
    "Project_Status" text,
    "Show_Status" boolean NOT NULL,
    "TransactionDate" timestamp without time zone NOT NULL
);
 2   DROP TABLE public."TransProjectDivisionMappings";
       public            employee    false            �            1259    33398    TransSysAdmins    TABLE     -  CREATE TABLE public."TransSysAdmins" (
    "Transaction_Id" text NOT NULL,
    "Employee_Id" integer NOT NULL,
    "Head_StaffNumber" text,
    "Head_Status" text,
    "Head_Status_Id" integer NOT NULL,
    "Show_Status" boolean NOT NULL,
    "TransactionDate" timestamp without time zone NOT NULL
);
 $   DROP TABLE public."TransSysAdmins";
       public            employee    false            �            1259    25167    TransUnitHeads    TABLE     0  CREATE TABLE public."TransUnitHeads" (
    "Transaction_Id" text NOT NULL,
    "Unit_Id" integer NOT NULL,
    "Head_StaffNumber" text,
    "Head_Status" text,
    "Show_Status" boolean NOT NULL,
    "TransactionDate" timestamp without time zone NOT NULL,
    "Employee_Id" integer DEFAULT 0 NOT NULL
);
 $   DROP TABLE public."TransUnitHeads";
       public            employee    false            �            1259    24833    __EFMigrationsHistory    TABLE     �   CREATE TABLE public."__EFMigrationsHistory" (
    "MigrationId" character varying(150) NOT NULL,
    "ProductVersion" character varying(32) NOT NULL
);
 +   DROP TABLE public."__EFMigrationsHistory";
       public            employee    false            �           2604    25052 /   AUDAProgrammaticOutcomes ProgrammaticOutcome_Id    DEFAULT     �   ALTER TABLE ONLY public."AUDAProgrammaticOutcomes" ALTER COLUMN "ProgrammaticOutcome_Id" SET DEFAULT nextval('public."AUDAProgrammaticOutcomes_ProgrammaticOutcome_Id_seq"'::regclass);
 b   ALTER TABLE public."AUDAProgrammaticOutcomes" ALTER COLUMN "ProgrammaticOutcome_Id" DROP DEFAULT;
       public          employee    false    229    228    229            �           2604    25063 -   AUDAProgrammaticOutputs ProgrammaticOutput_Id    DEFAULT     �   ALTER TABLE ONLY public."AUDAProgrammaticOutputs" ALTER COLUMN "ProgrammaticOutput_Id" SET DEFAULT nextval('public."AUDAProgrammaticOutputs_ProgrammaticOutput_Id_seq"'::regclass);
 `   ALTER TABLE public."AUDAProgrammaticOutputs" ALTER COLUMN "ProgrammaticOutput_Id" DROP DEFAULT;
       public          employee    false    231    230    231            �           2604    25030    AUDAProgrammes Programme_Id    DEFAULT     �   ALTER TABLE ONLY public."AUDAProgrammes" ALTER COLUMN "Programme_Id" SET DEFAULT nextval('public."AUDAProgrammes_Programme_Id_seq"'::regclass);
 N   ALTER TABLE public."AUDAProgrammes" ALTER COLUMN "Programme_Id" DROP DEFAULT;
       public          employee    false    225    224    225            �           2604    25041    AUDAProjects Project_Id    DEFAULT     �   ALTER TABLE ONLY public."AUDAProjects" ALTER COLUMN "Project_Id" SET DEFAULT nextval('public."AUDAProjects_Project_Id_seq"'::regclass);
 J   ALTER TABLE public."AUDAProjects" ALTER COLUMN "Project_Id" DROP DEFAULT;
       public          employee    false    226    227    227            �           2604    25019    AUDAUnits Unit_Id    DEFAULT     |   ALTER TABLE ONLY public."AUDAUnits" ALTER COLUMN "Unit_Id" SET DEFAULT nextval('public."AUDAUnits_Unit_Id_seq"'::regclass);
 D   ALTER TABLE public."AUDAUnits" ALTER COLUMN "Unit_Id" DROP DEFAULT;
       public          employee    false    223    222    223            �           2604    25074    ActivityTypes Activity_Id    DEFAULT     �   ALTER TABLE ONLY public."ActivityTypes" ALTER COLUMN "Activity_Id" SET DEFAULT nextval('public."ActivityTypes_Activity_Id_seq"'::regclass);
 L   ALTER TABLE public."ActivityTypes" ALTER COLUMN "Activity_Id" DROP DEFAULT;
       public          employee    false    232    233    233            �           2604    24889    AspNetRoleClaims Id    DEFAULT     �   ALTER TABLE ONLY public."AspNetRoleClaims" ALTER COLUMN "Id" SET DEFAULT nextval('public."AspNetRoleClaims_Id_seq"'::regclass);
 F   ALTER TABLE public."AspNetRoleClaims" ALTER COLUMN "Id" DROP DEFAULT;
       public          employee    false    206    205    206            �           2604    24905    AspNetUserClaims Id    DEFAULT     �   ALTER TABLE ONLY public."AspNetUserClaims" ALTER COLUMN "Id" SET DEFAULT nextval('public."AspNetUserClaims_Id_seq"'::regclass);
 F   ALTER TABLE public."AspNetUserClaims" ALTER COLUMN "Id" DROP DEFAULT;
       public          employee    false    208    207    208                       2604    25129    CostCatelogues Cost_Id    DEFAULT     �   ALTER TABLE ONLY public."CostCatelogues" ALTER COLUMN "Cost_Id" SET DEFAULT nextval('public."CostCatelogue_Cost_Id_seq"'::regclass);
 I   ALTER TABLE public."CostCatelogues" ALTER COLUMN "Cost_Id" DROP DEFAULT;
       public          employee    false    238    239    239            �           2604    25082    DSATypes DSA_Id    DEFAULT     x   ALTER TABLE ONLY public."DSATypes" ALTER COLUMN "DSA_Id" SET DEFAULT nextval('public."DSATypes_DSA_Id_seq"'::regclass);
 B   ALTER TABLE public."DSATypes" ALTER COLUMN "DSA_Id" DROP DEFAULT;
       public          employee    false    234    235    235            �           2604    24859    Departments Dept_Id    DEFAULT     �   ALTER TABLE ONLY public."Departments" ALTER COLUMN "Dept_Id" SET DEFAULT nextval('public."Departments_Dept_Id_seq"'::regclass);
 F   ALTER TABLE public."Departments" ALTER COLUMN "Dept_Id" DROP DEFAULT;
       public          employee    false    200    199    200            �           2604    25000    Directorates Directorate_Id    DEFAULT     �   ALTER TABLE ONLY public."Directorates" ALTER COLUMN "Directorate_Id" SET DEFAULT nextval('public."Directorates_Directorate_Id_seq"'::regclass);
 N   ALTER TABLE public."Directorates" ALTER COLUMN "Directorate_Id" DROP DEFAULT;
       public          employee    false    219    218    219            �           2604    24972    EmployeeCountries EmpCountry_Id    DEFAULT     �   ALTER TABLE ONLY public."EmployeeCountries" ALTER COLUMN "EmpCountry_Id" SET DEFAULT nextval('public."EmployeeCountries_EmpCountry_Id_seq"'::regclass);
 R   ALTER TABLE public."EmployeeCountries" ALTER COLUMN "EmpCountry_Id" DROP DEFAULT;
       public          employee    false    213    212    213            �           2604    24870    Employees Id    DEFAULT     r   ALTER TABLE ONLY public."Employees" ALTER COLUMN "Id" SET DEFAULT nextval('public."Employees_Id_seq"'::regclass);
 ?   ALTER TABLE public."Employees" ALTER COLUMN "Id" DROP DEFAULT;
       public          employee    false    201    202    202                       2604    25191 +   ExternalPersonsTypes ExternalPersonsType_Id    DEFAULT     �   ALTER TABLE ONLY public."ExternalPersonsTypes" ALTER COLUMN "ExternalPersonsType_Id" SET DEFAULT nextval('public."ExternalPersonsTypes_ExternalPersonsType_Id_seq"'::regclass);
 ^   ALTER TABLE public."ExternalPersonsTypes" ALTER COLUMN "ExternalPersonsType_Id" DROP DEFAULT;
       public          employee    false    245    246    246            �           2604    24980    Genders Gender_Id    DEFAULT     |   ALTER TABLE ONLY public."Genders" ALTER COLUMN "Gender_Id" SET DEFAULT nextval('public."Genders_Gender_Id_seq"'::regclass);
 D   ALTER TABLE public."Genders" ALTER COLUMN "Gender_Id" DROP DEFAULT;
       public          employee    false    215    214    215                       2604    33388    LeadershipStatus LeadStatus_Id    DEFAULT     �   ALTER TABLE ONLY public."LeadershipStatus" ALTER COLUMN "LeadStatus_Id" SET DEFAULT nextval('public."LeadershipStatus_LeadStatus_Id_seq"'::regclass);
 Q   ALTER TABLE public."LeadershipStatus" ALTER COLUMN "LeadStatus_Id" DROP DEFAULT;
       public          employee    false    247    248    248                        2604    25090 #   ParticipantTypes ParticipantType_Id    DEFAULT     �   ALTER TABLE ONLY public."ParticipantTypes" ALTER COLUMN "ParticipantType_Id" SET DEFAULT nextval('public."ParticipantTypes_ParticipantType_Id_seq"'::regclass);
 V   ALTER TABLE public."ParticipantTypes" ALTER COLUMN "ParticipantType_Id" DROP DEFAULT;
       public          employee    false    237    236    237                       2604    33515 *   ProjectProgrammeMappingStatus ProStatus_Id    DEFAULT     �   ALTER TABLE ONLY public."ProjectProgrammeMappingStatus" ALTER COLUMN "ProStatus_Id" SET DEFAULT nextval('public."ProjectProgrammeMappingStatus_ProStatus_Id_seq"'::regclass);
 ]   ALTER TABLE public."ProjectProgrammeMappingStatus" ALTER COLUMN "ProStatus_Id" DROP DEFAULT;
       public          employee    false    253    254    254            �           2604    24988    StaffRankSteps StaffRankStep_Id    DEFAULT     �   ALTER TABLE ONLY public."StaffRankSteps" ALTER COLUMN "StaffRankStep_Id" SET DEFAULT nextval('public."StaffRankSteps_StaffRankStep_Id_seq"'::regclass);
 R   ALTER TABLE public."StaffRankSteps" ALTER COLUMN "StaffRankStep_Id" DROP DEFAULT;
       public          employee    false    216    217    217            �           2604    24881    StaffRanks StaffRank_Id    DEFAULT     �   ALTER TABLE ONLY public."StaffRanks" ALTER COLUMN "StaffRank_Id" SET DEFAULT nextval('public."StaffRanks_StaffRank_Id_seq"'::regclass);
 J   ALTER TABLE public."StaffRanks" ALTER COLUMN "StaffRank_Id" DROP DEFAULT;
       public          employee    false    204    203    204            �           2604    25011    Titles Title_Id    DEFAULT     x   ALTER TABLE ONLY public."Titles" ALTER COLUMN "Title_Id" SET DEFAULT nextval('public."Titles_Title_Id_seq"'::regclass);
 B   ALTER TABLE public."Titles" ALTER COLUMN "Title_Id" DROP DEFAULT;
       public          employee    false    221    220    221            !          0    25049    AUDAProgrammaticOutcomes 
   TABLE DATA           �   COPY public."AUDAProgrammaticOutcomes" ("ProgrammaticOutcome_Id", "ProgrammaticOutcome", "ProgrammaticOutcome_Status", "Record_TransactionDate") FROM stdin;
    public          employee    false    229   n      #          0    25060    AUDAProgrammaticOutputs 
   TABLE DATA           �   COPY public."AUDAProgrammaticOutputs" ("ProgrammaticOutput_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutput", "ProgrammaticOutput_Status", "TransactionDate") FROM stdin;
    public          employee    false    231   	o                0    25027    AUDAProgrammes 
   TABLE DATA           �   COPY public."AUDAProgrammes" ("Programme_Id", "Programme_Dept_Id", "Programme_Directorate_Id", "Programme_Name", "Programme_Country", "Programme_Address", "Programme_Status", "TransactionDate") FROM stdin;
    public          employee    false    225   ��                0    25038    AUDAProjects 
   TABLE DATA           �   COPY public."AUDAProjects" ("Project_Id", "SAP_Id", "Project_Dept_Id", "Project_Unit_Id", "Project_Programme_Id", "Project_Directorate_Id", "Project_Name", "Project_Country", "Project_Address", "Project_Status", "TransactionDate") FROM stdin;
    public          employee    false    227   :�                0    25016 	   AUDAUnits 
   TABLE DATA           �   COPY public."AUDAUnits" ("Unit_Id", "Unit_Dept_Id", "Unit_Directorate_Id", "Unit_Name", "Unit_Country", "Unit_Address", "TransactionDate", "Unit_Status") FROM stdin;
    public          employee    false    223   v�      %          0    25071    ActivityTypes 
   TABLE DATA           s   COPY public."ActivityTypes" ("Activity_Id", "Activity_Name", "ActivityType_Status", "TransactionDate") FROM stdin;
    public          employee    false    233   '�      
          0    24886    AspNetRoleClaims 
   TABLE DATA           W   COPY public."AspNetRoleClaims" ("Id", "RoleId", "ClaimType", "ClaimValue") FROM stdin;
    public          employee    false    206   r�                0    24838    AspNetRoles 
   TABLE DATA           [   COPY public."AspNetRoles" ("Id", "Name", "NormalizedName", "ConcurrencyStamp") FROM stdin;
    public          employee    false    197   ��                0    24902    AspNetUserClaims 
   TABLE DATA           W   COPY public."AspNetUserClaims" ("Id", "UserId", "ClaimType", "ClaimValue") FROM stdin;
    public          employee    false    208   l�                0    24916    AspNetUserLogins 
   TABLE DATA           m   COPY public."AspNetUserLogins" ("LoginProvider", "ProviderKey", "ProviderDisplayName", "UserId") FROM stdin;
    public          employee    false    209   ��                0    24929    AspNetUserRoles 
   TABLE DATA           ?   COPY public."AspNetUserRoles" ("UserId", "RoleId") FROM stdin;
    public          employee    false    210   ��                0    24947    AspNetUserTokens 
   TABLE DATA           X   COPY public."AspNetUserTokens" ("UserId", "LoginProvider", "Name", "Value") FROM stdin;
    public          employee    false    211   ��                0    24846    AspNetUsers 
   TABLE DATA           g  COPY public."AspNetUsers" ("Id", "UserName", "NormalizedUserName", "Email", "NormalizedEmail", "EmailConfirmed", "PasswordHash", "SecurityStamp", "ConcurrencyStamp", "PhoneNumber", "PhoneNumberConfirmed", "TwoFactorEnabled", "LockoutEnd", "LockoutEnabled", "AccessFailedCount", "Staff_Number", "Admin_Generated", "Employee_Id", "TransactionDate") FROM stdin;
    public          employee    false    198   ��      +          0    25126    CostCatelogues 
   TABLE DATA           �   COPY public."CostCatelogues" ("Cost_Id", "Cost_Code", "Cost_Category", "Cost_Description", "Unit_Of_Measure", "Unit_Cost", "Cost_Status", "TransactionDate") FROM stdin;
    public          employee    false    239   �      '          0    25079    DSATypes 
   TABLE DATA           l   COPY public."DSATypes" ("DSA_Id", "DSA_Name", "DSA_Value", "DSAType_Status", "TransactionDate") FROM stdin;
    public          employee    false    235   P�                0    24856    Departments 
   TABLE DATA           �   COPY public."Departments" ("Dept_Id", "Dept_Name", "Dept_Country", "Dept_Address", "Dept_Directorate_Id", "Dept_Status", "TransactionDate") FROM stdin;
    public          employee    false    200   ��                0    24997    Directorates 
   TABLE DATA           �   COPY public."Directorates" ("Directorate_Id", "Directorate_Name", "Directorate_Country", "Directorate_Address", "Directorate_Status", "TransactionDate") FROM stdin;
    public          employee    false    219   ϴ                0    24969    EmployeeCountries 
   TABLE DATA           v   COPY public."EmployeeCountries" ("EmpCountry_Id", "EmpCountry_Name", "Country_Status", "TransactionDate") FROM stdin;
    public          employee    false    213   �                0    24867 	   Employees 
   TABLE DATA           >  COPY public."Employees" ("Id", "IdentityUserId", "Staff_Number", "Rank", "RankStep", "PhotoPath", "First_Name", "Last_Name", "Email", "DOB", "Gender", "Address_Street", "Address_City", "Address_State", "Address_PostCode", "Country", "Department_Id", "Directorate_Id", "Employee_Status", "TransactionDate") FROM stdin;
    public          employee    false    202   ̽      2          0    25188    ExternalPersonsTypes 
   TABLE DATA           �   COPY public."ExternalPersonsTypes" ("ExternalPersonsType_Id", "ExternalPersonsType_Name", "ExternalPersonsType_Status", "TransactionDate") FROM stdin;
    public          employee    false    246   ��      ;          0    33520    FiscalYears 
   TABLE DATA           q   COPY public."FiscalYears" ("Year_Id", "Year_Name", "Year_Status", "TransactionDate", "Year_Id_Iter") FROM stdin;
    public          employee    false    255   ��                0    24977    Genders 
   TABLE DATA           c   COPY public."Genders" ("Gender_Id", "Gender_Name", "Gender_Status", "TransactionDate") FROM stdin;
    public          employee    false    215   �      4          0    33385    LeadershipStatus 
   TABLE DATA           x   COPY public."LeadershipStatus" ("LeadStatus_Id", "LeadStatus_Name", "LeadStatus_Status", "TransactionDate") FROM stdin;
    public          employee    false    248   C�      )          0    25087    ParticipantTypes 
   TABLE DATA           �   COPY public."ParticipantTypes" ("ParticipantType_Id", "ParticipantType_Name", "ParticipantType_Status", "TransactionDate") FROM stdin;
    public          employee    false    237   ��      :          0    33512    ProjectProgrammeMappingStatus 
   TABLE DATA           �   COPY public."ProjectProgrammeMappingStatus" ("ProStatus_Id", "ProStatus_Name", "ProStatus_Status", "TransactionDate") FROM stdin;
    public          employee    false    254   ��                0    24985    StaffRankSteps 
   TABLE DATA              COPY public."StaffRankSteps" ("StaffRankStep_Id", "StaffRankStep_Name", "StaffRankStep_Status", "TransactionDate") FROM stdin;
    public          employee    false    217   G�                0    24878 
   StaffRanks 
   TABLE DATA           o   COPY public."StaffRanks" ("StaffRank_Id", "StaffRank_Name", "StaffRank_Status", "TransactionDate") FROM stdin;
    public          employee    false    204   ��                0    25008    Titles 
   TABLE DATA           _   COPY public."Titles" ("Title_Id", "Title_Name", "Title_Status", "TransactionDate") FROM stdin;
    public          employee    false    221   ��      C          0    33588 &   TransAUDAProgrammaticOutcomeSessionals 
   TABLE DATA           �   COPY public."TransAUDAProgrammaticOutcomeSessionals" ("Transaction_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutcome", "TransactionDate") FROM stdin;
    public          employee    false    263   N�      D          0    33596    TransAUDAProgrammaticOutputMaps 
   TABLE DATA           �   COPY public."TransAUDAProgrammaticOutputMaps" ("Transaction_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate", "ProgrammaticOutcome_Id") FROM stdin;
    public          employee    false    264   ��      G          0    33625     TransAnnualWPAUDAOutcomeExplains 
   TABLE DATA           �   COPY public."TransAnnualWPAUDAOutcomeExplains" ("Transaction_Id", "TransAnnualWPMaster_Id", "TransAnnualWP_AUDAOutcomeExplain", "TransactionDate") FROM stdin;
    public          employee    false    267   �4      @          0    33563    TransAnnualWPAUDAOutputExplains 
   TABLE DATA           �   COPY public."TransAnnualWPAUDAOutputExplains" ("Transaction_Id", "TransAnnualWPMaster_Id", "TransAnnualWP_AUDAOutputExplain", "TransactionDate") FROM stdin;
    public          employee    false    260   �4      >          0    33547    TransAnnualWPActivitys 
   TABLE DATA           �   COPY public."TransAnnualWPActivitys" ("Transaction_Id", "TransAnnualWPMaster_Id", "TransAnnualWP_Activity", "PerformedBy", "TransactionDate", "PerformedByName") FROM stdin;
    public          employee    false    258   85      <          0    33528    TransAnnualWPMasters 
   TABLE DATA           �   COPY public."TransAnnualWPMasters" ("Transaction_Id", "Employee_Id", "IdentityUserId", "FiscalYear", "Submitted", "Queries", "Approved", "Status", "TransactionDate", "Year_Id_Iter") FROM stdin;
    public          employee    false    256   U5      H          0    33633    TransAnnualWPOutcomes 
   TABLE DATA           �   COPY public."TransAnnualWPOutcomes" ("Transaction_Id", "TransAnnualWPMaster_Id", "TransAnnualWP_Outcome", "TransactionDate", "Iter_Id") FROM stdin;
    public          employee    false    268   �5      A          0    33571    TransAnnualWPOutputs 
   TABLE DATA           �   COPY public."TransAnnualWPOutputs" ("Transaction_Id", "TransAnnualWPMaster_Id", "TransAnnualWP_Output", "TransactionDate", "Iter_Id") FROM stdin;
    public          employee    false    261   �6      E          0    33609 !   TransAnnualWPProgrammaticOutcomes 
   TABLE DATA           �   COPY public."TransAnnualWPProgrammaticOutcomes" ("Transaction_Id", "TransAnnualWPMaster_Id", "ProgrammaticOutcome_Id", "ProgrammaticOutcome", "TransactionDate") FROM stdin;
    public          employee    false    265   t7      F          0    33617     TransAnnualWPProgrammaticOutputs 
   TABLE DATA           �   COPY public."TransAnnualWPProgrammaticOutputs" ("Transaction_Id", "TransAnnualWPMaster_Id", "ProgrammaticOutput_Id", "ProgrammaticOutput", "TransactionDate") FROM stdin;
    public          employee    false    266   �7      =          0    33536    TransAnnualWPProjects 
   TABLE DATA           �   COPY public."TransAnnualWPProjects" ("Transaction_Id", "TransAnnualWPMaster_Id", "Project_Id", "Project_Name", "TransactionDate") FROM stdin;
    public          employee    false    257   G8      ?          0    33555    TransAnnualWPTransitions 
   TABLE DATA           �   COPY public."TransAnnualWPTransitions" ("Transaction_Id", "TransAnnualWPMaster_Id", "TransAnnualWP_State", "PerformedBy", "TransactionDate", "PerformedByName") FROM stdin;
    public          employee    false    259   9      B          0    33579    TransAuditRecords 
   TABLE DATA           �   COPY public."TransAuditRecords" ("Transaction_Id", "TransactionName", "PerformedBy", "PerformedByName", "IPAddress", "TransactionDate") FROM stdin;
    public          employee    false    262   �9      ,          0    25135 	   TransCEOs 
   TABLE DATA           �   COPY public."TransCEOs" ("Transaction_Id", "Head_StaffNumber", "Head_Status", "Show_Status", "TransactionDate", "Employee_Id", "Head_Status_Id") FROM stdin;
    public          employee    false    240   aG      -          0    25143    TransDirectorateHeads 
   TABLE DATA           �   COPY public."TransDirectorateHeads" ("Transaction_Id", "Directorate_Id", "Head_StaffNumber", "Head_Status", "Show_Status", "TransactionDate", "Employee_Id", "Head_Status_Id") FROM stdin;
    public          employee    false    241   �G      .          0    25151    TransDivisionHeads 
   TABLE DATA           �   COPY public."TransDivisionHeads" ("Transaction_Id", "Dept_Id", "Head_StaffNumber", "Head_Status", "Show_Status", "TransactionDate", "Employee_Id", "Head_Status_Id") FROM stdin;
    public          employee    false    242   �H      7          0    33494    TransProgrammeDivisionMappings 
   TABLE DATA           �   COPY public."TransProgrammeDivisionMappings" ("Transaction_Id", "Programme_Id", "Division_Id", "Directorate_Id", "Programme_Status", "Show_Status", "TransactionDate") FROM stdin;
    public          employee    false    251   SK      /          0    25159    TransProgrammeHeads 
   TABLE DATA           �   COPY public."TransProgrammeHeads" ("Transaction_Id", "Programme_Id", "Head_StaffNumber", "Head_Status", "Show_Status", "TransactionDate", "Employee_Id", "Head_Status_Id", "ProgDivMapTrans_Id") FROM stdin;
    public          employee    false    243   M      6          0    33486    TransProgrammeUnitStaffMappings 
   TABLE DATA           �   COPY public."TransProgrammeUnitStaffMappings" ("Transaction_Id", "Staff_Number", "Employee_Id", "UnitOrProgramme_Id", "Category", "PrimaryUnitOrProgramme", "Show_Status", "TransactionDate", "ProgDivMapTrans_Id", "Division_Id") FROM stdin;
    public          employee    false    250   N      8          0    33502    TransProjectDivisionMappings 
   TABLE DATA           �   COPY public."TransProjectDivisionMappings" ("Transaction_Id", "Project_Id", "Division_Id", "Directorate_Id", "Project_Status", "Show_Status", "TransactionDate") FROM stdin;
    public          employee    false    252   �O      5          0    33398    TransSysAdmins 
   TABLE DATA           �   COPY public."TransSysAdmins" ("Transaction_Id", "Employee_Id", "Head_StaffNumber", "Head_Status", "Head_Status_Id", "Show_Status", "TransactionDate") FROM stdin;
    public          employee    false    249   �f      0          0    25167    TransUnitHeads 
   TABLE DATA           �   COPY public."TransUnitHeads" ("Transaction_Id", "Unit_Id", "Head_StaffNumber", "Head_Status", "Show_Status", "TransactionDate", "Employee_Id") FROM stdin;
    public          employee    false    244   Gg                 0    24833    __EFMigrationsHistory 
   TABLE DATA           R   COPY public."__EFMigrationsHistory" ("MigrationId", "ProductVersion") FROM stdin;
    public          employee    false    196   �g      e           0    0 3   AUDAProgrammaticOutcomes_ProgrammaticOutcome_Id_seq    SEQUENCE SET     d   SELECT pg_catalog.setval('public."AUDAProgrammaticOutcomes_ProgrammaticOutcome_Id_seq"', 1, false);
          public          employee    false    228            f           0    0 1   AUDAProgrammaticOutputs_ProgrammaticOutput_Id_seq    SEQUENCE SET     b   SELECT pg_catalog.setval('public."AUDAProgrammaticOutputs_ProgrammaticOutput_Id_seq"', 1, false);
          public          employee    false    230            g           0    0    AUDAProgrammes_Programme_Id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public."AUDAProgrammes_Programme_Id_seq"', 1, false);
          public          employee    false    224            h           0    0    AUDAProjects_Project_Id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public."AUDAProjects_Project_Id_seq"', 1, false);
          public          employee    false    226            i           0    0    AUDAUnits_Unit_Id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."AUDAUnits_Unit_Id_seq"', 1, false);
          public          employee    false    222            j           0    0    ActivityTypes_Activity_Id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public."ActivityTypes_Activity_Id_seq"', 1, false);
          public          employee    false    232            k           0    0    AspNetRoleClaims_Id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."AspNetRoleClaims_Id_seq"', 1, false);
          public          employee    false    205            l           0    0    AspNetUserClaims_Id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."AspNetUserClaims_Id_seq"', 1, false);
          public          employee    false    207            m           0    0    CostCatelogue_Cost_Id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."CostCatelogue_Cost_Id_seq"', 1, false);
          public          employee    false    238            n           0    0    DSATypes_DSA_Id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."DSATypes_DSA_Id_seq"', 1, false);
          public          employee    false    234            o           0    0    Departments_Dept_Id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public."Departments_Dept_Id_seq"', 1, false);
          public          employee    false    199            p           0    0    Directorates_Directorate_Id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public."Directorates_Directorate_Id_seq"', 1, false);
          public          employee    false    218            q           0    0 #   EmployeeCountries_EmpCountry_Id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public."EmployeeCountries_EmpCountry_Id_seq"', 1, false);
          public          employee    false    212            r           0    0    Employees_Id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public."Employees_Id_seq"', 1, false);
          public          employee    false    201            s           0    0 /   ExternalPersonsTypes_ExternalPersonsType_Id_seq    SEQUENCE SET     `   SELECT pg_catalog.setval('public."ExternalPersonsTypes_ExternalPersonsType_Id_seq"', 1, false);
          public          employee    false    245            t           0    0    Genders_Gender_Id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public."Genders_Gender_Id_seq"', 1, false);
          public          employee    false    214            u           0    0 "   LeadershipStatus_LeadStatus_Id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public."LeadershipStatus_LeadStatus_Id_seq"', 1, false);
          public          employee    false    247            v           0    0 '   ParticipantTypes_ParticipantType_Id_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('public."ParticipantTypes_ParticipantType_Id_seq"', 1, false);
          public          employee    false    236            w           0    0 .   ProjectProgrammeMappingStatus_ProStatus_Id_seq    SEQUENCE SET     _   SELECT pg_catalog.setval('public."ProjectProgrammeMappingStatus_ProStatus_Id_seq"', 1, false);
          public          employee    false    253            x           0    0 #   StaffRankSteps_StaffRankStep_Id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public."StaffRankSteps_StaffRankStep_Id_seq"', 1, false);
          public          employee    false    216            y           0    0    StaffRanks_StaffRank_Id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public."StaffRanks_StaffRank_Id_seq"', 1, false);
          public          employee    false    203            z           0    0    Titles_Title_Id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public."Titles_Title_Id_seq"', 1, false);
          public          employee    false    220            B           2606    25057 4   AUDAProgrammaticOutcomes PK_AUDAProgrammaticOutcomes 
   CONSTRAINT     �   ALTER TABLE ONLY public."AUDAProgrammaticOutcomes"
    ADD CONSTRAINT "PK_AUDAProgrammaticOutcomes" PRIMARY KEY ("ProgrammaticOutcome_Id");
 b   ALTER TABLE ONLY public."AUDAProgrammaticOutcomes" DROP CONSTRAINT "PK_AUDAProgrammaticOutcomes";
       public            employee    false    229            D           2606    25068 2   AUDAProgrammaticOutputs PK_AUDAProgrammaticOutputs 
   CONSTRAINT     �   ALTER TABLE ONLY public."AUDAProgrammaticOutputs"
    ADD CONSTRAINT "PK_AUDAProgrammaticOutputs" PRIMARY KEY ("ProgrammaticOutput_Id");
 `   ALTER TABLE ONLY public."AUDAProgrammaticOutputs" DROP CONSTRAINT "PK_AUDAProgrammaticOutputs";
       public            employee    false    231            >           2606    25035     AUDAProgrammes PK_AUDAProgrammes 
   CONSTRAINT     n   ALTER TABLE ONLY public."AUDAProgrammes"
    ADD CONSTRAINT "PK_AUDAProgrammes" PRIMARY KEY ("Programme_Id");
 N   ALTER TABLE ONLY public."AUDAProgrammes" DROP CONSTRAINT "PK_AUDAProgrammes";
       public            employee    false    225            @           2606    25046    AUDAProjects PK_AUDAProjects 
   CONSTRAINT     h   ALTER TABLE ONLY public."AUDAProjects"
    ADD CONSTRAINT "PK_AUDAProjects" PRIMARY KEY ("Project_Id");
 J   ALTER TABLE ONLY public."AUDAProjects" DROP CONSTRAINT "PK_AUDAProjects";
       public            employee    false    227            <           2606    25024    AUDAUnits PK_AUDAUnits 
   CONSTRAINT     _   ALTER TABLE ONLY public."AUDAUnits"
    ADD CONSTRAINT "PK_AUDAUnits" PRIMARY KEY ("Unit_Id");
 D   ALTER TABLE ONLY public."AUDAUnits" DROP CONSTRAINT "PK_AUDAUnits";
       public            employee    false    223            F           2606    25076    ActivityTypes PK_ActivityTypes 
   CONSTRAINT     k   ALTER TABLE ONLY public."ActivityTypes"
    ADD CONSTRAINT "PK_ActivityTypes" PRIMARY KEY ("Activity_Id");
 L   ALTER TABLE ONLY public."ActivityTypes" DROP CONSTRAINT "PK_ActivityTypes";
       public            employee    false    233            %           2606    24894 $   AspNetRoleClaims PK_AspNetRoleClaims 
   CONSTRAINT     h   ALTER TABLE ONLY public."AspNetRoleClaims"
    ADD CONSTRAINT "PK_AspNetRoleClaims" PRIMARY KEY ("Id");
 R   ALTER TABLE ONLY public."AspNetRoleClaims" DROP CONSTRAINT "PK_AspNetRoleClaims";
       public            employee    false    206                       2606    24845    AspNetRoles PK_AspNetRoles 
   CONSTRAINT     ^   ALTER TABLE ONLY public."AspNetRoles"
    ADD CONSTRAINT "PK_AspNetRoles" PRIMARY KEY ("Id");
 H   ALTER TABLE ONLY public."AspNetRoles" DROP CONSTRAINT "PK_AspNetRoles";
       public            employee    false    197            (           2606    24910 $   AspNetUserClaims PK_AspNetUserClaims 
   CONSTRAINT     h   ALTER TABLE ONLY public."AspNetUserClaims"
    ADD CONSTRAINT "PK_AspNetUserClaims" PRIMARY KEY ("Id");
 R   ALTER TABLE ONLY public."AspNetUserClaims" DROP CONSTRAINT "PK_AspNetUserClaims";
       public            employee    false    208            +           2606    24923 $   AspNetUserLogins PK_AspNetUserLogins 
   CONSTRAINT     �   ALTER TABLE ONLY public."AspNetUserLogins"
    ADD CONSTRAINT "PK_AspNetUserLogins" PRIMARY KEY ("LoginProvider", "ProviderKey");
 R   ALTER TABLE ONLY public."AspNetUserLogins" DROP CONSTRAINT "PK_AspNetUserLogins";
       public            employee    false    209    209            .           2606    24936 "   AspNetUserRoles PK_AspNetUserRoles 
   CONSTRAINT     t   ALTER TABLE ONLY public."AspNetUserRoles"
    ADD CONSTRAINT "PK_AspNetUserRoles" PRIMARY KEY ("UserId", "RoleId");
 P   ALTER TABLE ONLY public."AspNetUserRoles" DROP CONSTRAINT "PK_AspNetUserRoles";
       public            employee    false    210    210            0           2606    24954 $   AspNetUserTokens PK_AspNetUserTokens 
   CONSTRAINT     �   ALTER TABLE ONLY public."AspNetUserTokens"
    ADD CONSTRAINT "PK_AspNetUserTokens" PRIMARY KEY ("UserId", "LoginProvider", "Name");
 R   ALTER TABLE ONLY public."AspNetUserTokens" DROP CONSTRAINT "PK_AspNetUserTokens";
       public            employee    false    211    211    211                       2606    24853    AspNetUsers PK_AspNetUsers 
   CONSTRAINT     ^   ALTER TABLE ONLY public."AspNetUsers"
    ADD CONSTRAINT "PK_AspNetUsers" PRIMARY KEY ("Id");
 H   ALTER TABLE ONLY public."AspNetUsers" DROP CONSTRAINT "PK_AspNetUsers";
       public            employee    false    198            L           2606    25195     CostCatelogues PK_CostCatelogues 
   CONSTRAINT     i   ALTER TABLE ONLY public."CostCatelogues"
    ADD CONSTRAINT "PK_CostCatelogues" PRIMARY KEY ("Cost_Id");
 N   ALTER TABLE ONLY public."CostCatelogues" DROP CONSTRAINT "PK_CostCatelogues";
       public            employee    false    239            H           2606    25084    DSATypes PK_DSATypes 
   CONSTRAINT     \   ALTER TABLE ONLY public."DSATypes"
    ADD CONSTRAINT "PK_DSATypes" PRIMARY KEY ("DSA_Id");
 B   ALTER TABLE ONLY public."DSATypes" DROP CONSTRAINT "PK_DSATypes";
       public            employee    false    235                       2606    24864    Departments PK_Departments 
   CONSTRAINT     c   ALTER TABLE ONLY public."Departments"
    ADD CONSTRAINT "PK_Departments" PRIMARY KEY ("Dept_Id");
 H   ALTER TABLE ONLY public."Departments" DROP CONSTRAINT "PK_Departments";
       public            employee    false    200            8           2606    25005    Directorates PK_Directorates 
   CONSTRAINT     l   ALTER TABLE ONLY public."Directorates"
    ADD CONSTRAINT "PK_Directorates" PRIMARY KEY ("Directorate_Id");
 J   ALTER TABLE ONLY public."Directorates" DROP CONSTRAINT "PK_Directorates";
       public            employee    false    219            2           2606    24974 &   EmployeeCountries PK_EmployeeCountries 
   CONSTRAINT     u   ALTER TABLE ONLY public."EmployeeCountries"
    ADD CONSTRAINT "PK_EmployeeCountries" PRIMARY KEY ("EmpCountry_Id");
 T   ALTER TABLE ONLY public."EmployeeCountries" DROP CONSTRAINT "PK_EmployeeCountries";
       public            employee    false    213                        2606    24875    Employees PK_Employees 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Employees"
    ADD CONSTRAINT "PK_Employees" PRIMARY KEY ("Id");
 D   ALTER TABLE ONLY public."Employees" DROP CONSTRAINT "PK_Employees";
       public            employee    false    202            X           2606    25193 ,   ExternalPersonsTypes PK_ExternalPersonsTypes 
   CONSTRAINT     �   ALTER TABLE ONLY public."ExternalPersonsTypes"
    ADD CONSTRAINT "PK_ExternalPersonsTypes" PRIMARY KEY ("ExternalPersonsType_Id");
 Z   ALTER TABLE ONLY public."ExternalPersonsTypes" DROP CONSTRAINT "PK_ExternalPersonsTypes";
       public            employee    false    246            f           2606    33527    FiscalYears PK_FiscalYears 
   CONSTRAINT     c   ALTER TABLE ONLY public."FiscalYears"
    ADD CONSTRAINT "PK_FiscalYears" PRIMARY KEY ("Year_Id");
 H   ALTER TABLE ONLY public."FiscalYears" DROP CONSTRAINT "PK_FiscalYears";
       public            employee    false    255            4           2606    24982    Genders PK_Genders 
   CONSTRAINT     ]   ALTER TABLE ONLY public."Genders"
    ADD CONSTRAINT "PK_Genders" PRIMARY KEY ("Gender_Id");
 @   ALTER TABLE ONLY public."Genders" DROP CONSTRAINT "PK_Genders";
       public            employee    false    215            Z           2606    33390 $   LeadershipStatus PK_LeadershipStatus 
   CONSTRAINT     s   ALTER TABLE ONLY public."LeadershipStatus"
    ADD CONSTRAINT "PK_LeadershipStatus" PRIMARY KEY ("LeadStatus_Id");
 R   ALTER TABLE ONLY public."LeadershipStatus" DROP CONSTRAINT "PK_LeadershipStatus";
       public            employee    false    248            J           2606    25092 $   ParticipantTypes PK_ParticipantTypes 
   CONSTRAINT     x   ALTER TABLE ONLY public."ParticipantTypes"
    ADD CONSTRAINT "PK_ParticipantTypes" PRIMARY KEY ("ParticipantType_Id");
 R   ALTER TABLE ONLY public."ParticipantTypes" DROP CONSTRAINT "PK_ParticipantTypes";
       public            employee    false    237            d           2606    33517 >   ProjectProgrammeMappingStatus PK_ProjectProgrammeMappingStatus 
   CONSTRAINT     �   ALTER TABLE ONLY public."ProjectProgrammeMappingStatus"
    ADD CONSTRAINT "PK_ProjectProgrammeMappingStatus" PRIMARY KEY ("ProStatus_Id");
 l   ALTER TABLE ONLY public."ProjectProgrammeMappingStatus" DROP CONSTRAINT "PK_ProjectProgrammeMappingStatus";
       public            employee    false    254            6           2606    24990     StaffRankSteps PK_StaffRankSteps 
   CONSTRAINT     r   ALTER TABLE ONLY public."StaffRankSteps"
    ADD CONSTRAINT "PK_StaffRankSteps" PRIMARY KEY ("StaffRankStep_Id");
 N   ALTER TABLE ONLY public."StaffRankSteps" DROP CONSTRAINT "PK_StaffRankSteps";
       public            employee    false    217            "           2606    24883    StaffRanks PK_StaffRanks 
   CONSTRAINT     f   ALTER TABLE ONLY public."StaffRanks"
    ADD CONSTRAINT "PK_StaffRanks" PRIMARY KEY ("StaffRank_Id");
 F   ALTER TABLE ONLY public."StaffRanks" DROP CONSTRAINT "PK_StaffRanks";
       public            employee    false    204            :           2606    25013    Titles PK_Titles 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Titles"
    ADD CONSTRAINT "PK_Titles" PRIMARY KEY ("Title_Id");
 >   ALTER TABLE ONLY public."Titles" DROP CONSTRAINT "PK_Titles";
       public            employee    false    221            v           2606    33595 P   TransAUDAProgrammaticOutcomeSessionals PK_TransAUDAProgrammaticOutcomeSessionals 
   CONSTRAINT     �   ALTER TABLE ONLY public."TransAUDAProgrammaticOutcomeSessionals"
    ADD CONSTRAINT "PK_TransAUDAProgrammaticOutcomeSessionals" PRIMARY KEY ("Transaction_Id");
 ~   ALTER TABLE ONLY public."TransAUDAProgrammaticOutcomeSessionals" DROP CONSTRAINT "PK_TransAUDAProgrammaticOutcomeSessionals";
       public            employee    false    263            x           2606    33603 B   TransAUDAProgrammaticOutputMaps PK_TransAUDAProgrammaticOutputMaps 
   CONSTRAINT     �   ALTER TABLE ONLY public."TransAUDAProgrammaticOutputMaps"
    ADD CONSTRAINT "PK_TransAUDAProgrammaticOutputMaps" PRIMARY KEY ("Transaction_Id");
 p   ALTER TABLE ONLY public."TransAUDAProgrammaticOutputMaps" DROP CONSTRAINT "PK_TransAUDAProgrammaticOutputMaps";
       public            employee    false    264            ~           2606    33632 D   TransAnnualWPAUDAOutcomeExplains PK_TransAnnualWPAUDAOutcomeExplains 
   CONSTRAINT     �   ALTER TABLE ONLY public."TransAnnualWPAUDAOutcomeExplains"
    ADD CONSTRAINT "PK_TransAnnualWPAUDAOutcomeExplains" PRIMARY KEY ("Transaction_Id");
 r   ALTER TABLE ONLY public."TransAnnualWPAUDAOutcomeExplains" DROP CONSTRAINT "PK_TransAnnualWPAUDAOutcomeExplains";
       public            employee    false    267            p           2606    33570 B   TransAnnualWPAUDAOutputExplains PK_TransAnnualWPAUDAOutputExplains 
   CONSTRAINT     �   ALTER TABLE ONLY public."TransAnnualWPAUDAOutputExplains"
    ADD CONSTRAINT "PK_TransAnnualWPAUDAOutputExplains" PRIMARY KEY ("Transaction_Id");
 p   ALTER TABLE ONLY public."TransAnnualWPAUDAOutputExplains" DROP CONSTRAINT "PK_TransAnnualWPAUDAOutputExplains";
       public            employee    false    260            l           2606    33554 0   TransAnnualWPActivitys PK_TransAnnualWPActivitys 
   CONSTRAINT     �   ALTER TABLE ONLY public."TransAnnualWPActivitys"
    ADD CONSTRAINT "PK_TransAnnualWPActivitys" PRIMARY KEY ("Transaction_Id");
 ^   ALTER TABLE ONLY public."TransAnnualWPActivitys" DROP CONSTRAINT "PK_TransAnnualWPActivitys";
       public            employee    false    258            h           2606    33535 ,   TransAnnualWPMasters PK_TransAnnualWPMasters 
   CONSTRAINT     |   ALTER TABLE ONLY public."TransAnnualWPMasters"
    ADD CONSTRAINT "PK_TransAnnualWPMasters" PRIMARY KEY ("Transaction_Id");
 Z   ALTER TABLE ONLY public."TransAnnualWPMasters" DROP CONSTRAINT "PK_TransAnnualWPMasters";
       public            employee    false    256            �           2606    33640 .   TransAnnualWPOutcomes PK_TransAnnualWPOutcomes 
   CONSTRAINT     ~   ALTER TABLE ONLY public."TransAnnualWPOutcomes"
    ADD CONSTRAINT "PK_TransAnnualWPOutcomes" PRIMARY KEY ("Transaction_Id");
 \   ALTER TABLE ONLY public."TransAnnualWPOutcomes" DROP CONSTRAINT "PK_TransAnnualWPOutcomes";
       public            employee    false    268            r           2606    33578 ,   TransAnnualWPOutputs PK_TransAnnualWPOutputs 
   CONSTRAINT     |   ALTER TABLE ONLY public."TransAnnualWPOutputs"
    ADD CONSTRAINT "PK_TransAnnualWPOutputs" PRIMARY KEY ("Transaction_Id");
 Z   ALTER TABLE ONLY public."TransAnnualWPOutputs" DROP CONSTRAINT "PK_TransAnnualWPOutputs";
       public            employee    false    261            z           2606    33616 F   TransAnnualWPProgrammaticOutcomes PK_TransAnnualWPProgrammaticOutcomes 
   CONSTRAINT     �   ALTER TABLE ONLY public."TransAnnualWPProgrammaticOutcomes"
    ADD CONSTRAINT "PK_TransAnnualWPProgrammaticOutcomes" PRIMARY KEY ("Transaction_Id");
 t   ALTER TABLE ONLY public."TransAnnualWPProgrammaticOutcomes" DROP CONSTRAINT "PK_TransAnnualWPProgrammaticOutcomes";
       public            employee    false    265            |           2606    33624 D   TransAnnualWPProgrammaticOutputs PK_TransAnnualWPProgrammaticOutputs 
   CONSTRAINT     �   ALTER TABLE ONLY public."TransAnnualWPProgrammaticOutputs"
    ADD CONSTRAINT "PK_TransAnnualWPProgrammaticOutputs" PRIMARY KEY ("Transaction_Id");
 r   ALTER TABLE ONLY public."TransAnnualWPProgrammaticOutputs" DROP CONSTRAINT "PK_TransAnnualWPProgrammaticOutputs";
       public            employee    false    266            j           2606    33543 .   TransAnnualWPProjects PK_TransAnnualWPProjects 
   CONSTRAINT     ~   ALTER TABLE ONLY public."TransAnnualWPProjects"
    ADD CONSTRAINT "PK_TransAnnualWPProjects" PRIMARY KEY ("Transaction_Id");
 \   ALTER TABLE ONLY public."TransAnnualWPProjects" DROP CONSTRAINT "PK_TransAnnualWPProjects";
       public            employee    false    257            n           2606    33562 4   TransAnnualWPTransitions PK_TransAnnualWPTransitions 
   CONSTRAINT     �   ALTER TABLE ONLY public."TransAnnualWPTransitions"
    ADD CONSTRAINT "PK_TransAnnualWPTransitions" PRIMARY KEY ("Transaction_Id");
 b   ALTER TABLE ONLY public."TransAnnualWPTransitions" DROP CONSTRAINT "PK_TransAnnualWPTransitions";
       public            employee    false    259            t           2606    33586 &   TransAuditRecords PK_TransAuditRecords 
   CONSTRAINT     v   ALTER TABLE ONLY public."TransAuditRecords"
    ADD CONSTRAINT "PK_TransAuditRecords" PRIMARY KEY ("Transaction_Id");
 T   ALTER TABLE ONLY public."TransAuditRecords" DROP CONSTRAINT "PK_TransAuditRecords";
       public            employee    false    262            N           2606    25185    TransCEOs PK_TransCEOs 
   CONSTRAINT     f   ALTER TABLE ONLY public."TransCEOs"
    ADD CONSTRAINT "PK_TransCEOs" PRIMARY KEY ("Transaction_Id");
 D   ALTER TABLE ONLY public."TransCEOs" DROP CONSTRAINT "PK_TransCEOs";
       public            employee    false    240            P           2606    25183 .   TransDirectorateHeads PK_TransDirectorateHeads 
   CONSTRAINT     ~   ALTER TABLE ONLY public."TransDirectorateHeads"
    ADD CONSTRAINT "PK_TransDirectorateHeads" PRIMARY KEY ("Transaction_Id");
 \   ALTER TABLE ONLY public."TransDirectorateHeads" DROP CONSTRAINT "PK_TransDirectorateHeads";
       public            employee    false    241            R           2606    25181 (   TransDivisionHeads PK_TransDivisionHeads 
   CONSTRAINT     x   ALTER TABLE ONLY public."TransDivisionHeads"
    ADD CONSTRAINT "PK_TransDivisionHeads" PRIMARY KEY ("Transaction_Id");
 V   ALTER TABLE ONLY public."TransDivisionHeads" DROP CONSTRAINT "PK_TransDivisionHeads";
       public            employee    false    242            `           2606    33501 @   TransProgrammeDivisionMappings PK_TransProgrammeDivisionMappings 
   CONSTRAINT     �   ALTER TABLE ONLY public."TransProgrammeDivisionMappings"
    ADD CONSTRAINT "PK_TransProgrammeDivisionMappings" PRIMARY KEY ("Transaction_Id");
 n   ALTER TABLE ONLY public."TransProgrammeDivisionMappings" DROP CONSTRAINT "PK_TransProgrammeDivisionMappings";
       public            employee    false    251            T           2606    25179 *   TransProgrammeHeads PK_TransProgrammeHeads 
   CONSTRAINT     z   ALTER TABLE ONLY public."TransProgrammeHeads"
    ADD CONSTRAINT "PK_TransProgrammeHeads" PRIMARY KEY ("Transaction_Id");
 X   ALTER TABLE ONLY public."TransProgrammeHeads" DROP CONSTRAINT "PK_TransProgrammeHeads";
       public            employee    false    243            ^           2606    33493 B   TransProgrammeUnitStaffMappings PK_TransProgrammeUnitStaffMappings 
   CONSTRAINT     �   ALTER TABLE ONLY public."TransProgrammeUnitStaffMappings"
    ADD CONSTRAINT "PK_TransProgrammeUnitStaffMappings" PRIMARY KEY ("Transaction_Id");
 p   ALTER TABLE ONLY public."TransProgrammeUnitStaffMappings" DROP CONSTRAINT "PK_TransProgrammeUnitStaffMappings";
       public            employee    false    250            b           2606    33509 <   TransProjectDivisionMappings PK_TransProjectDivisionMappings 
   CONSTRAINT     �   ALTER TABLE ONLY public."TransProjectDivisionMappings"
    ADD CONSTRAINT "PK_TransProjectDivisionMappings" PRIMARY KEY ("Transaction_Id");
 j   ALTER TABLE ONLY public."TransProjectDivisionMappings" DROP CONSTRAINT "PK_TransProjectDivisionMappings";
       public            employee    false    252            \           2606    33405     TransSysAdmins PK_TransSysAdmins 
   CONSTRAINT     p   ALTER TABLE ONLY public."TransSysAdmins"
    ADD CONSTRAINT "PK_TransSysAdmins" PRIMARY KEY ("Transaction_Id");
 N   ALTER TABLE ONLY public."TransSysAdmins" DROP CONSTRAINT "PK_TransSysAdmins";
       public            employee    false    249            V           2606    25177     TransUnitHeads PK_TransUnitHeads 
   CONSTRAINT     p   ALTER TABLE ONLY public."TransUnitHeads"
    ADD CONSTRAINT "PK_TransUnitHeads" PRIMARY KEY ("Transaction_Id");
 N   ALTER TABLE ONLY public."TransUnitHeads" DROP CONSTRAINT "PK_TransUnitHeads";
       public            employee    false    244                       2606    24837 .   __EFMigrationsHistory PK___EFMigrationsHistory 
   CONSTRAINT     {   ALTER TABLE ONLY public."__EFMigrationsHistory"
    ADD CONSTRAINT "PK___EFMigrationsHistory" PRIMARY KEY ("MigrationId");
 \   ALTER TABLE ONLY public."__EFMigrationsHistory" DROP CONSTRAINT "PK___EFMigrationsHistory";
       public            employee    false    196                       1259    24965 
   EmailIndex    INDEX     S   CREATE INDEX "EmailIndex" ON public."AspNetUsers" USING btree ("NormalizedEmail");
     DROP INDEX public."EmailIndex";
       public            employee    false    198            #           1259    24960    IX_AspNetRoleClaims_RoleId    INDEX     _   CREATE INDEX "IX_AspNetRoleClaims_RoleId" ON public."AspNetRoleClaims" USING btree ("RoleId");
 0   DROP INDEX public."IX_AspNetRoleClaims_RoleId";
       public            employee    false    206            &           1259    24962    IX_AspNetUserClaims_UserId    INDEX     _   CREATE INDEX "IX_AspNetUserClaims_UserId" ON public."AspNetUserClaims" USING btree ("UserId");
 0   DROP INDEX public."IX_AspNetUserClaims_UserId";
       public            employee    false    208            )           1259    24963    IX_AspNetUserLogins_UserId    INDEX     _   CREATE INDEX "IX_AspNetUserLogins_UserId" ON public."AspNetUserLogins" USING btree ("UserId");
 0   DROP INDEX public."IX_AspNetUserLogins_UserId";
       public            employee    false    209            ,           1259    24964    IX_AspNetUserRoles_RoleId    INDEX     ]   CREATE INDEX "IX_AspNetUserRoles_RoleId" ON public."AspNetUserRoles" USING btree ("RoleId");
 /   DROP INDEX public."IX_AspNetUserRoles_RoleId";
       public            employee    false    210                       1259    24961    RoleNameIndex    INDEX     \   CREATE UNIQUE INDEX "RoleNameIndex" ON public."AspNetRoles" USING btree ("NormalizedName");
 #   DROP INDEX public."RoleNameIndex";
       public            employee    false    197                       1259    24966    UserNameIndex    INDEX     `   CREATE UNIQUE INDEX "UserNameIndex" ON public."AspNetUsers" USING btree ("NormalizedUserName");
 #   DROP INDEX public."UserNameIndex";
       public            employee    false    198            �           2606    24895 7   AspNetRoleClaims FK_AspNetRoleClaims_AspNetRoles_RoleId    FK CONSTRAINT     �   ALTER TABLE ONLY public."AspNetRoleClaims"
    ADD CONSTRAINT "FK_AspNetRoleClaims_AspNetRoles_RoleId" FOREIGN KEY ("RoleId") REFERENCES public."AspNetRoles"("Id") ON DELETE CASCADE;
 e   ALTER TABLE ONLY public."AspNetRoleClaims" DROP CONSTRAINT "FK_AspNetRoleClaims_AspNetRoles_RoleId";
       public          employee    false    197    3351    206            �           2606    24911 7   AspNetUserClaims FK_AspNetUserClaims_AspNetUsers_UserId    FK CONSTRAINT     �   ALTER TABLE ONLY public."AspNetUserClaims"
    ADD CONSTRAINT "FK_AspNetUserClaims_AspNetUsers_UserId" FOREIGN KEY ("UserId") REFERENCES public."AspNetUsers"("Id") ON DELETE CASCADE;
 e   ALTER TABLE ONLY public."AspNetUserClaims" DROP CONSTRAINT "FK_AspNetUserClaims_AspNetUsers_UserId";
       public          employee    false    198    208    3355            �           2606    24924 7   AspNetUserLogins FK_AspNetUserLogins_AspNetUsers_UserId    FK CONSTRAINT     �   ALTER TABLE ONLY public."AspNetUserLogins"
    ADD CONSTRAINT "FK_AspNetUserLogins_AspNetUsers_UserId" FOREIGN KEY ("UserId") REFERENCES public."AspNetUsers"("Id") ON DELETE CASCADE;
 e   ALTER TABLE ONLY public."AspNetUserLogins" DROP CONSTRAINT "FK_AspNetUserLogins_AspNetUsers_UserId";
       public          employee    false    198    3355    209            �           2606    24937 5   AspNetUserRoles FK_AspNetUserRoles_AspNetRoles_RoleId    FK CONSTRAINT     �   ALTER TABLE ONLY public."AspNetUserRoles"
    ADD CONSTRAINT "FK_AspNetUserRoles_AspNetRoles_RoleId" FOREIGN KEY ("RoleId") REFERENCES public."AspNetRoles"("Id") ON DELETE CASCADE;
 c   ALTER TABLE ONLY public."AspNetUserRoles" DROP CONSTRAINT "FK_AspNetUserRoles_AspNetRoles_RoleId";
       public          employee    false    3351    210    197            �           2606    24942 5   AspNetUserRoles FK_AspNetUserRoles_AspNetUsers_UserId    FK CONSTRAINT     �   ALTER TABLE ONLY public."AspNetUserRoles"
    ADD CONSTRAINT "FK_AspNetUserRoles_AspNetUsers_UserId" FOREIGN KEY ("UserId") REFERENCES public."AspNetUsers"("Id") ON DELETE CASCADE;
 c   ALTER TABLE ONLY public."AspNetUserRoles" DROP CONSTRAINT "FK_AspNetUserRoles_AspNetUsers_UserId";
       public          employee    false    3355    198    210            �           2606    24955 7   AspNetUserTokens FK_AspNetUserTokens_AspNetUsers_UserId    FK CONSTRAINT     �   ALTER TABLE ONLY public."AspNetUserTokens"
    ADD CONSTRAINT "FK_AspNetUserTokens_AspNetUsers_UserId" FOREIGN KEY ("UserId") REFERENCES public."AspNetUsers"("Id") ON DELETE CASCADE;
 e   ALTER TABLE ONLY public."AspNetUserTokens" DROP CONSTRAINT "FK_AspNetUserTokens_AspNetUsers_UserId";
       public          employee    false    211    3355    198            !   �   x�u�1n�0Eg�<@S�N�t+�� ]�02k��@�R����d*`��	��٘�J��C���QY�%�|�!'����CQ�Ƹ�FM[7�]}�5-���ZUk�E����:�W'B���X���ى�F��.N���7��_�̞�>̬xJF{�/�+�K��q!��=8��J,=^rRּ�m�_��q!�t��x��z�Q��f��窪� 8"r�      #      x��\�r9�]���9��"����EQ�ڦ��rT�l�L�D)�`�C2����|�|��I��sd")´�6�Qі�L��>�}������$2���b]����Ʌ�o���r�zq����G�������ޝ�]�'5�LV��X�T=�̬Uʫ�'Y�\��(�.�����6�.UQFV>v+W�V����Wh�$o�:�ͣd�u��DV&��	�+�MY�� z�Jɲ.��_�_��u�3��.�=qԵ�m�:5�J�N����y�T�P�wZ'��=ɍ�4IdlV�B-U^�G޻G��23�����K��=�LV��K�Y��!s��y8�`�}!W���*Y�D�gU˸��kS��Ҵ9�H���yUlZ�D�}e����e�%�j�Y�Z�x��it_Пs�1�0��z�]ⳕd����3D�8�鉌kq�Zˤ�Qf���y�Ĵ�s�.vH8մ�J�_Yr�+^���cID�j#蜩*��.L��!�B�J��KH�eE� ���1o���Z�
k�UY�Kt@��"��$V%J�gkY�z�-M�\_���o
�ӥP�R�q� /F�-�Z���y}y]�B�t�����ѥ�Oޤݥkgz��Ԋ4.�'#I�o��MA��5��>/W$,ӹ�œB٣�֠���bC�T<��A��΀����YV��7��d�YW=1�S���WKMB�=�V�If[�"1y�l/����zM'��3ۀ\]���q���׃�,h�k��޽my�h�	�
ǴVA<�<%�zR�2�dP��\@%͖���S��sS���x3'_����B���MՅ���Ѓ0,6w�@�51~��rg��z|���S�?L��w:(ŏ�֫å�$��h{I"�S�J�<Ȫ��P��i�^8 XnUi� �,~N���bB|Vk8��(�zM�z�+�'i�Ym�A�� b6��"�s����B\�e�j�
 X&@S �5��5-,I:3���Q�=�0'����x��dI�l�M4�t����_��l˂'�xPK���}�Lx�OJ=z�L�bA����������:t�4I叺09�N�+���+Fb�à���x���mN���=�e����
~���n�bz��Շ�6�F�z��I�=�NV��ڱw�4O	G߱���3g���Y���x�����)H�G����:.�ޭ@�A�H�n\і�J�l�c;�]��Lui(F�h�Q���hȱgh����d�����-A�.���?��O��/g��)ڱ<�]N�}�y�X�l~A����)��؂�����;�XV.�w�f/Ň�*\|
���C�MΛ�,%�
^o/|wߦH�Ϊ6����U3������FX�� R�R�. 1�g���������R�����d�﯎a��1��6\'�#v�.|��b�O�q�{<�ڠ��^��Y��ي#�V�,qH���
��_p�CJ#fk@���eUE�@;�Z;���:�ؐ�u���a�of��o02�ğ��>���_���3�ê�� ���A�N��̌,��
�C3� Ź���Fo��#C���Gg�\B�_%�3���=��9��ouI?�ʉC��Iƙ<��er������)�񈃷�n��W������?L	�w�)w����7�}.ſ���¿$/�s�M����>�NL����
�SWs|$~]fl��
�L�/��A���!2W�"rI$�5}8��\�2�E٘��T�d�(�(� �G]G���s�6}�8�ΐvnZ([G�'�=9�M&9����۴�!�#6��Ea�������8mI�q�]��t=ˈ��� ��:���t\��fL(EtY�}�N\xn��#a�1������@���-�2ݲ�v4H���c�ZS�T�� ��u i�����U8"���w6�W	/�O��kI>�t(�F�^;:�����R,%7W*��+�V�-Kh�q0�P�0�*L�I����n��Ϥ�����~�qX���lk1�����a���Y&4�j�馫\1C?��5W�2��hC,��ݿ��.�i28�y��^Q�l����Y���hz��I�lK��,�BP�)�έ���b�b����w(-aa�>�!�tX��9�s2S.?��i4#�]��D�FP8�3�SV��*�S	�@&H|�g�ʇ}���'f����W�,��Ӝ�4(��A%F{X>��"���\�&�[�b�)l���1 �'X�M�ͯT�
F��C���p�LK&�6Y�rIi��J��\�D���:�>��v�9H=XJ�1��8�/pX�J%�/���H*pߴ������A
V�QsD�����ׂB����'����+�5f0��X�����s�Ɖ�5�  k����3�&7�K1��V��o���(05���F��ES����I�+<kʊ�s��fPu�2����'D�����d6B�f{sJ6?���ښ9dȄ���h��ݘi-sf2��8?��1RN��	Ă�y%+v��}5}j�$1�
&�&��zm��r�9�ө����=��I���OSM�,���R����^�-]ћ�bQt���u^�U�5�h=a��-��I����;6�ap�)�Ǚ�#�E����o��__�������Gf��Mōk�(���b�F*L����o��5�'�����{��F�n ���Т�uW&A�Zd�C8�J)��'C��Q�3����-���X@~�2��c�3&��ӗ�iB��"uk���l]i+Cz�6��+�z���pD A)͛Ely��ĕ�l�S�F��E��������fܐ[*]�������MC�DlK���:=Q�{^��Z�i��=�J��W�5���^�ء����CX���$>#��]�m7�uႾ�x��쬨�Ҟ�"AA�)km 6�� Y�|AO;zJ����b:�����ƏK=y=O�����g�C��(�ʊ6Q
��p؇8R,���%y�m��+��gAIN�?%��\�"}!N��� ��*�M���o���:����p|�@���=DJ�Fx��f�b��2�@��p��k�'�@v�8�����<SI�)��N�gc�
H%)�����/��pg�������sm�Bh��1B���gs!�'�[��,���ǳ�Ԍ�=�k(�YGS�V֚b�5Ǯ1Ė��iQ�+r����C�D
2	<�Æ�%�$3��q�eWe���R���`�dI���9]�sA�]R<�AӯT!�eS8�!>����U#�3�i�uh��ɢ�)��O�t��������W�\�]R6m5���_&w،Kұ�9�d�_�6�jRP���I_�(��tU;1Bu�sި��*`q��@�ٰ-��3���VA���瞸��EIq%K��	�|�5�L>�x/Wz�|���E��`
I��Q c�[s�;����(�(���^��֯����I�������~���]{��?%�[d*�.��9Ѽb��D�w�?= �5
�����'��;��R�Y��L˒v��,Q}F`�p��n��~3�"e��Y6G2��WY�C/.���ڴ�����7�Q��p����2�>�d�˚����K�b�!$5c��0v������hh,R[!�n������s�1kR��R|�xу�=�[�����j��b��6$�``�܇n��ޱs�{��dhp�A�\�,d�;W�x�B����3�ՋZg�pu�W�l��̯�
#�'B�f�����0S�E��k��$�h��L��9�5�m~̈�d�n���N;|�(I(`s�e����z�i�s����}��Ա
ӋX8~�I�,ڐ6�G/u��7z�MB�Q�H�V�}�k1�p!�.m��3�����'\M	�Qn�щ�w���u1^�L�E1[)�ź*��*s-ԃ����C��7�������:Ⱦ��<��c
��ÙƼيp;"��A��II�sS���� ���|q����X�M�1��9!;�y���`�����,6��VL ��P�6���;�thC%�0זf��*�E��n�*?o&�ɭ�,)�Kĕ"Vq�oehG�6X����c��@ǣ��� v	  ����a��9_��m
�]�wN�,ԡ���u����5I3MԢ|,-9?�&�S���j&7�����j�ށt��td�P�U�ʝ�����b�uW�4%�e�s6;�@�ˤ��!�9`��
9���59�k�|��j`��A��dw�=Q[�`������4H$���µ��8�r��f����J�I��w����Le���� u��\��ܟ��]8���{���|��la�;�щ�~�U��:��<dH�~tu3�2� ��6�����*�Ə��D� ���oY��;s�~;��S���cq\�'��݄A�u�i:$�X�2�Qx�[�n�f'�佯�8��ngK�&䣔0�]_����.���T�pM��)�b;��;	�?i�/��2I �����;�^�^�:@Hډ�3��F�W�Р�Z�]{ws����9ʽ �鏓^0@���y�
b;t���1�_��H����f:Y�8?��i���9)Է}Sb���1��Gw�F����>ۊ�~��?#�Uާ��iS�2�5�5��ё��}�b����/���D���р�~�v�	�����:j��xI�1�c�$l��}1�`�'z^˵�nnJ]�,|Oxgi���YM���g���#ł�K�(å��q_�!�{�~)v�/J�������}PؖYm����������!��F�֠��Ð�:�����uâW����/�#����x�K<�̈0
�2�nA�M�����d@Ϟ��Nm�g|�[F9T�3�}́eF|	��o=�֌*�
�Py��p�8
�xp�s�=1�}���i���Fi6�z�Q��hˁ��֌|d;k���<cOFM�?~iq�,��������0X	������8� ���R�h/$��)�o�s�9�!
c��vІ�C���1�� ���ڥl��7<8�mD�RmƷ�F�n0�۳1����.*xC�9O�*ΞK'^h��'A5w�P����4�f�mΟo�N��V��D|g����L8v�8��� �M� �:i��\G�p	W�������L�|E��|�g{>����vp���}������2��5������W 눱��a��-�9��A�Pa<�Ō��'��$3ȋ��p�I�� �~���48�*M&�m��Z��Y;r����M����)JN5>t�)�O��ptFkN�M����K%7~�S[ ��_;�ᶋ�zN�^������>���m5-WO��uo/�殘kG>��r�W3�س;��7��^�������Y��&�G$Z�}5�7�u;i��=g#+<#%% �~�X���9���B��G_�Q?��	`��v�'J���V�����j��Ԗ�wG;8&Z��F�O蹣�m{�m����>Ar�
QX�)n�w�A�ۓ ��[�5L�馰�\j�o���gI��/g�an��8�@��N<�d�&\3g�c�F�=8L��v��Q�z%�dI��3�3���#�������1���"`ZE�Υ���5���u?P��ho�ُS�ؤЧ�ѣ���Hr7!�;nCt'k����`_n{L��]%��<��k�i>���'�*�x�w'�x��綳�҆���~t�W�W�A��x��]��I3��S�˶��([: @��g_K_�m��x/�n��\��吹Lʊ�׺
S/�������1ѥI���z;�]�y�.z��.��T�+؊�v��+�-Lȓ������#�VR��v��^_�s�~#�1�ڙ3�Ю��o9�*����)��;���@�h"�~����p�Ŋ���= �*��s���I�qy��r�U���o��N����f��j��88FWlk�h����[��}F������S���J'��O��w��>��k��s�;��`ô�z�lìC��~��*�h��n�ܪ�k�R w5>��ik5?���_��ޡE>@��;�鏓h�rz���|p�YI"�oc�%��-��oF�AW+#��W��~;O���r�(���=8��}�6��}r<�1���]�'Ms��@��}��@��B!�Z�tWy,z����~?.�!'Tl>T�6���l`ۘ�.�6�F�Z���c�q¢:bK|x�(�.쨩�.Ύ��5�L��60bkaE�8Jh�T�_��@ak��/�~=r
t��k�P�FK�����s7lx��r�R�����!�n<��������z7�b��a9..��}�U&\�hs�.��7)�Z��u�v��S��Js��`4��y)�k�r�}��6���Q��)B'��)�X����M��Vm�h�	��H��|���sݴ�Ց��5�\.��N���=!�d����~��ҡ�         �  x����N�0�g�)� �s)��&�����uN�#9v����Ζ�Y����K~��`KE�p[�Ij��vƻ#�,I��������7j���������m���s,�x}���y	Yv�,���F۞�3�,<����;���,O�Q��u�QB�_���ȿo�+�-�G �cC�h���]��{F��q�R��~��R��1|����u�e�ɘ}��^��G�s��A��oRj:�E����'�MX��P��([��X8�b:%����^���T�4%�ȝG�2K��A�&�7�>��:78�$��<,�W$ac�t���nE���㖖I�
�T��A\�H������2)x9��UI�M7SR�j��%'�I���2!Y�ʤx����f�Q��         ,  x����n�0���S��:8M�u����[2#V�Eq�X�,���{��NW�;��Q�I$59�^>��e���������vM>^N���Dѧ�9�b�y�x���j��m�j*��n[_BR��]'�&�7ez��I�ַ���5:�5R�_��֋���Gg��5��m�V��P0���[�r�4;Ȥ�]S��	�gz��x�@p����E	޾:�����^�eaS"ĥ�=$?�h�:"��uA�k��9K~U�������vR�������Ύ���$h�#i@����Ө����̽����#V_���l��>�z���d���l�b)�Z� ��#�)^G�[�S،x�����������SH�Zc�zO$?'8�ñ[X*Hu(GL8[s�Ȧ��U�q��M��dמ�2U�V9����m��%�M�Bv'�fa3N�X��»Ͱ�{���K�M�EW��6��K���eXp:�zF튣&nVIx� #���$R�(Pk�)�Q�~���V��%��2����pԲt.��׫�E2��t���!����4��ԏNci�i�g5>L�>���F��	�׮�����Va����X�yY����-9��Oj�E?'R�����Ɯ�\��!�Ω]���D�?_ ��U�)����&t��jՔ}#�I�\o�VU7D�o�u�*,��t��ܔ���\�_��$i����1�I��s�2NVa�f���8y�?`*���[g_�f�Vv�����u���V"��G���}?D_ʩk�)z��'�F�XXc�pI�8,+��5h������7D��         �  x����n�0��|�t�;Mvk���A��.��:,ѐ�y�1rlnn|1l��OQ����yj��ָ�k�16-~����h%�E���}3�7�x�w�餜��};�\q�B���]�����f��?��ޢI}q:U0䦬�a�}#g��	�ؓ���̡*�d�8���f��*���ȑ�$=h�z���U�B�#,���=ird9�ԩs�{!+Q�Y��@��JsqJ-s��H���j�A��>��z���������9ԫJB�l=9��9�٦3V��Lg�}n�:K��xЩ6�D}r��Uq�>n嬲v�,Gu��.�(z���z&j�p��9VYC.�Qc�wg؜�qI|��z�/�x�L٬��Ó�o�*՛����⭉���ȯ/���O���      %   ;  x���KN�0����@!N�aWE�TM(6������#��'- UHn$K^��h�-a�"�2I,�Q���q|w^Qr>��=���ĖlL cݠA�0@�'b}�*���@ӑB�3XuU�+G�EN��{��a���;�Pd쵢V䈎�G���	�Z��ǀI͵�e�#ݏ�}z�� ��X�r�����,���zt�g�k��vh����qk��ܣvC�Ma��B�3��ȍx`��]���W6�A��Z��O:�wjɞ_F��P(>��P��iDi*���	%��&U�bYwd��c���U�[%�WW4l�㷛(����|      
      x������ � �         �  x�%��n[1E����?���HQ��i$v�$��P�TxHR�A��L3p�<�%ckIm`ej�Acl���+�p�e�_/o�v�p8.,!�̄��2�f� =��J%̕����b�n��S j@�Hu,��[���C�\����n�����]F�bi0�)s��%S0F��V)�f���	�wh\�lR�Κly����������������}x�o����Rs��@��0��2A*�PQ���z$:DN(� Z���:�Pr������r<<uG��ds�$h=pB`�s�UB��B��M������ko�\v���?�����'aw�qx:����OJG����d �>W�l)�+��i�g��_�M�����8�:��������t^���"���F�J��a3a,���c��!)�;����%U���q��f�_!`��a�x�R�ڛ?���ic���u]�����            x������ � �            x������ � �         �  x����� ��I/��^�������[An��a�,*�����6��I\w����k��r$���G�vEV�����B��M�'\��5L�ʳh��d,�T�����p߷�x��dqt;%�^ٷ=�q�-+ֳ����>df�Q��Xv���qt�48fڞ� 0�@Q��oJ�<�4AV�evD{�C,2T'�GOI�4z�8+@���`�A�1���D���;,���c��'��v`a+!����`�ُ�M����U�8��^l���It�;㹱�=Y���Qq��*Aʫ]յ�}Y���ϸ�OS0q���8�7
���?�����w��/x돖�D}�k���]N���n�M`���K�i�����0�ڈ�6��:�R|:�����1`�}q���{P�l�u{w�O�d$c��.��ߔ��Z�p�nbiF�[U�8�82}S�I8��Ή���0��fs�������?�             x������ � �         Y
  x���Y��ȶ��ݿ�#�Gj���`3<1鼄#�	IH��ן������Tݺ)K�Ŷ����km0�h��5�����v%�5q1 �Ų�V�[�F+Q�{��B}�ެ�8�Fa���N|g��]W[^ꙿ��:�_����E�ǁ�N���2�n��Ϗl���=ظ�����;�Y�����"�*�l���n�4��0��i�G�n����|ށ���{CKsI��]i��ة�������� U������;Y�b 8��AЂ��6�6��������;��؆�5w�ʵ]RU6���U�4�Ԫ�i�}B���8y����������-�8�Lw-P��OZ�IK��gaX.��V:Sz�8���+���*��䁋f�bY����N��I��.�����2Ť2���l�)0���+�q��p!��9��%-5u e����?vE���f�q�b������p���g���+����%������
��M��==�����z�ꃷ�=��y=����I~^}9���{����I7���]�L���7��0u����QXו�D��v�JeK%���1�?s �N�}ILe�H[VL����H�6��(�F�j��M����v^��ȟ��oֽ�7���w.���>)��?����mpx?�i"�C8�u<�Kӎ�"�_����$�r���Ao��ˢ?���p6Ž\FS�v�A:��غ�Fo��6�ِ+�(���5=��?���3��Fp�F�KQmӴ���� �N�7�L
��@~]�YX.5Z���Ў����c��׀���d�����x�?�mx�d��,��Íh���Y�f�A/(<Q���e�eQ�3�N��t��O��#�1hPbas���b��;u��e�'���@��@�%dĮ6�@�#�����p#nnTlm�V~=���K:����W&�.n����X�sq�d�޾i9�ܮ5*Ɵ���/���oAg�Ko��}����u�P٤���h����d9`e��a6�-��t�2�����%��jPۘS�2jT�"��U��?"�?���MZ�\�Z�6M�����c[A�*�j�Qb�պ�js|��$պ���N�f�9�u�]����P��}�9��x>��e[���)�����d[��Cٱ
���s�6�C�5UO7�W������S�D�؟'��"u��G�t�����"d�J	�5�k�w����k�\;�1F�3"/)s��	#G �l�\e�s�����J(ױN���(�ۓ~�^1.�܋�"|�?�}A��z����uw���E8���Oޙ�$`"�|��i���p'Qpj>����br��z���D�v�q6Yв��d�����<?��� �@��i#V��X�ML`���0��X9z�ѕ��1�H�;�&�9�`Ѩ6*VZ2K(��D���<�u�d]��I��:����?���I{�R�f|}6��谬�t}�M��{F��Sst�Y:�u��晙��r>N|��C��Y؏{s�#�Vvl�kn������Z@;0�P�Dx��[ ����u�f 
���8���%����C�YG�p��Yo��y�Y��X]?N�/�$��@���i���Sw��Z�����,�g�(���%�������$��`Н�d'	���l<���8A�\��%��a��nmF�Y ��F�ß��u֓�C�	�6�FlX23]�l�h�q	4���A��&Lnu�D&�3ό5ϴb�� ��+^Y3>��^�M<�
յܧ�Y){I��z������%�����6/��Zo��\e��y�κ�~?. F���gyT���$Gcl �L\��5P���j�2Pq�%!�����@
_#Ƃ�TʦX@]m�Xd@�̭�#Z���y������W��H{�K)�M�(7�u�d�Հ�{�����8f&����V��.�\�QN�Ayk=<#�l���"���E�Q���?�,�Lˤ"6N�L낇
ͪat���Ћ�+���0C� �M*�1�c�f��H��]�]IĬ�V4�g)��7��%��Ă�w|�8m��ڴ<|J��� ��}��l+�������ҁ�ˎL�ABd��o���o�Y��A8��lFG�������'�d<�G�# �fI���&�"�6���*�6���?��Ys�@J!�
�![��LQ�k�:���Vz�}e�8���(�;5�2��Fǝ�C�� ��-Y��`�gA'?U����4d�m����Y8l�o�y�y�יz�lX���"6L��K�-":M��gU��RSaB�2�c҉]A�m8�J�J��l@b�ؓI�?�Մ ,͂��2�i`�cfWC�j*-#����V���y�0RJ�oq����J�Ϫ_�'�y"rk��9�/MM�c����s�>�M�ة����>��u��z� �� ��!�Ѥ�v:�pV��h2�3���oHq��U��T��G3�@f*I�k�J��M������l�}C3� wm@�!	�1�
��cr��L>б��Z��?9@'A�ǳ?M��_���wӽ��i�����~鞧��&��V���t��ݒ�����t��#�������	��C2�b.f�(���/�r�q�v�X�����ˍ*!3!�q��˵4�OZ���z�����~�/.�      +      x��\�r�X�}v�~81Q5�T�h޸�L`W��D��ac4#	��O��4o~=�������T
H�$���tW���+�m��v��(���ub��'�k�n$�z><Z��)>�8��(�N,�]M���Y�j��g��يj+�.T�Oɟ�tb��LCǏ<'���ΐDb"�{�j��25b�b�A�c��+�h�:Cc����U�⟣e�>^�v�G/v�����"^��DΠ#8�c���\Չ�~��½]������� tBw�Rޝ�J��jV@Ob�A(>�ߧ�/U0{�u�+i��h�*��	�p��n��ი�����������c׿ݸ�R�X�0�Ʈ��]4�ư�E���-'rg{�R��9��r�9����皚� ������������<��x�vA<�G#E �}���d|֖~is�3Gim"חQ�з�V���,ބ����:��l������;��]=f9��(m��i�L ��)Ӆ�(O*%?�5�*�"ΣiZ�hi�Z 		��Ÿل�o]T�-�r���`iI� Ҷ7N*)�	�@��E4ذ����u�(>y����Iv x�S*TeG�N�gh �uyr	�_D=+>{�'�Q/�$�ѳ�3	6����b6v�G�g�'KyJc�H�*����ST��<zVyv��=j��#�ѳ��݄���#�Nb�g�&%;��Ɍ���&̹Nm�:[.�T�Ȫ̖�S���/FV_��{Z�t�X�,FVY��ˤ�D�'3��o"��A�b0�����R�5����xђΤy�^B������w��[�$8�����$�מ��z�,X|4���j�����a��Б�M3�����W�j�F�����=� E2�^4�pI�X��p��e殓����	��9���b
+rL�d!�r�/�|7nQ��q�M y�ۿ(ۿ4���s�FJ�)6h�]�0�pbh��O�"�N��ŏJڊ_,�&���A,޵���z�O/k$\��A�zU�;3��O�sXу����+F2X{R�*>X��/_8�'\�~�wl���!T��j���|�K[\$|U]�B	���_��k��U����p�p�(�v�u��\��8I$BU���� �d�՗1:��Y��G�X��s���B�F*�P�ё��$H��_�w�_��"%E��T;���P�Wz�s.���U]�o�����?��e��_���	�ҍ�^�K�������;0L�?�+�g�v�݌��T�$��R��.��L�B�Y!DtyW
��m>��G�
q��ǎ���w���Y!�v���_�g^(�b�A�[��4�X���8���
�ix5��:�&@�M�sY8��Kɬ���1*�?,2)6�bSֿ#�F%>�u�kb���U!Xe}|�<��_>4Xˬ
�,�nѤ�tW�ɒE1̪ò��L�*��?�5��)LY�T֫�r��R�mQ
AV��uiWOt��	�(�X{���z����������^=t��
�
t$�͖Nx+�h7}�^9h1ӂ��ϢhbY垵� �F���X���v�V�������Ǌ�E�n5��e�ē�4����(n~��"�����Нe����r�s׿=��ߏ��"�eJ'F�
»h�12H�g��p�G���i��{��GY8He
���pP�t\���K7X�N�/��;8HL����[_�t��uHA
-Nqo���Нߢ��0�J���4�=��c1��IN�Yn�J�ӹ�Bn��IN�6��m��?$x 's��5��N�P��_�����jy�쮤��:'8�����Uz��6�M]'����f���1����ϊe�%��NM$��!����5dÒ+%�M��/�F���:ixݬ�.պb��[bҹF��e[�b$�5ն��h�L9Z�10��i�#5h�G�4��V����g�#��x�j3�څ��u�IZ�HICvӮ�e��SI�G�Y�k�񲑫Ab֨(f��u��Jx�=��X����p���,�̜j6H��5kVL�h�����6)�]�TP��vۆUk{M�js�lq	36��]"V?���i�Ş��1�&��+)Uڪ�5�4��9�Uװ�d�P�2�\��˕V6j-N,l�*�D���֌��Z��f	�n����Qv%��jV����H���Uگ4�}I��2�B�	�6�Oj��1�~������$V��bՆ�U6�5���&����s���{��k�Dˮ$Z��vݨ	����&��p
���G����7��T��+M�r�zS|��E~:�N�'̺��h��W��;`�'̿4�h��{�BSkD\�j�N����xR��&���} �J,a��1��	��Z�P�T��2�r��:�.�sω���Fw���u��o���(�.I�#�&ښjI��\�&�Ɖc>B��
>h%p+��q�F�@��366�gO�s'B��5J��Y�s��,'��V""�$(1]���!��2Bo�c��#����j��j�?�>b��=��7�l�D�!�d���w���/�}!� 8Ηt���>>t��:Bz��H�Y�I+�Z���t}� ��e,�ܤ7 {|���c�ߪ��D �H�R�*�Nfx#�7+%��!��KYp���
`��B:�������G��˓=�l���$U<xE�7
�.� d���h��dJ�^���5��W���ѕ��{_@�d�{'0�s���MR�_���� Ǜ>h`��Q�:�0��� ��ܸx6��q���+ ��^,W�x��m���S�Tn߿�mx�H v]Q�d�^{8�>��q� q��8ϒ�3�2�:x}AaLT���m���$g��/���4S/�q5xH8;��X�̋�$������Y��Kaj�eK|��~͢j~�SM�0�P��$vgwB7��ͱ��R�.� pM��n ����3�KzǱ�-BZ	P�@+p�9����O�7	&@!7,SC�過��6�<�oq+�W�@�	P�B׿��w�Q������+~������j�T�s�%��@�� ��	���#'(����<����:�N%H3��.�a���	(z���E�V}�ǆ:[)������.��~B�e@S����GS����ȦK6y�'6�-û/X�ӥ\9 0b%�ȹ��{��=i��fB�1e24ƨ��htQ!k�&b��<��|Vp�B�W͢�pV�m(�YR���MՏf_!�.����I�t����c��'ZBܮh�7�$F�сV�%I @����0�OkT`b�,����\e%L�^E�[.U-���x��t d�ځ���U��B����es2��槉��Z����Î%O���=�n` ��t'�Sδ�WhtU!ky*aT��`6t�N�|��`6��R�/1y��4��tD�;�N��u�f~L�ٖa	�D��t�� �4�DɎ�:����$LV�ϗ��������WZ��n�GzϏ�[�u��@RsU��E���V̖�PF0�QZ���>�%��}q5�V�Y��x�,�́ESp���ؘAy�Y�yPI�������#�*���а������c5�l_�,p��h(���Co*�d�ݩ�
|z�O'D�9ʝm�l4ҭ�Ho;��(߼4���`���F鄳�g67H�$k�����ҽq)�����e�M�����	��9��?'��9��� �X��k��Θ���	�+��`x=���ge{��K��ط�h�N���m�*���T�j�[��=�.Uj���b���\{~-��OM�e��$K��:��#J�F�烲���䃨���]�UW�ۉR�r�5���'��w�q����gJgF�51��Y�w@�ʛ�uv�R�2®m�[��h-���V~��w~FE����'+\f�r��2�7C��l����5��X,��5
[|�аص;v��Nh�e(���z���R�0�.��p:??]w/z�~��i:�6�6���>��ޤ�^4��h���˧���TN�R�v���c;`��60�X˺i��JJF8d��jn�%��O<EMS�A   L)����L>?�62�������&�i�w��[����@|�0*�K׿Ý^�T�h5��&�))�a�z#��L3f���*c�n�Ib�s�šC�]m�G�r>�l�F��{>_��GM'_��vs������q�d��8L���|{�r���3����^7���Kw,&W�Q�[N���%�i�N�4��tyA��a�;M趇�oxj�����\K�_�����pЁAw�e8��������jg�әlJ�F�{l�=&�Z���D�7(�aO_�G/	��$�ct��E؋o�d�{� ;^g�|z~�Wn%<�ǹ�Ο�P/�Oz̿��Ս��8�)V��V��	�
�F	�{����%���7NnY(�ht�"�1�]VJ�E�x�,V�f�Z!�Y��:%�3s��ף������>1��ۆ��K嫉���2�z{N>r|'���L��J��nu�,����`�(�a���#�H�m�(�W�Ao
���$���$�������'�ۭ(�+B ��^��(aO�-�.u�v�W��u��=�U1WK:%�"��¨-��51�����OR�-�^w��h7NNn`Ux�y�F���d^�L�)�xrVm�]��%��g�%>��ˍ[�_v��S,B~5�ެ��f��tJE��Y&�hZXl�)�a�v_�Sb���:<u�yE(����fp�:��"�rt�l�}���6��1����z��!3��ŹK��҉j:����ung�Dɭ�B��� �E_�>?�G�ܐ�R�������O?���́I      '   @   x�3�440P�%�F�������
V`�e�i
�7�%m�i�6�%m�id�
�8�c���� ۭ�           x���ͮ�0���)� �J �;T��tٍ�3K�M������J	qe)�� R4ߙ3�cbv@�B�M�)�Φ�W�������1�S�~ʦ�Ee$���l��׊�)�����¢(�ߵ���3���)�
]1���_6���I��?����s�C���|)a_!�_5W5e;U��Y�ͅ��$��j��6��"�8��NX�7n�w�d9�'(A��rW�M�έ�a9Nò���ks@4�sj���M�2twåZI(�:V�t�::�X+2�x��
��Uie�=p�����T�V�T~8_Ze�����B��>q�5@4�������&�w�̜ͤ�V�q�K��5�c(ss�
����5o���y��Z�jLO���t8_��А��� �q���E�p&������#�m���5���ӑ�n�}t�u�>$0�Rd9��.ME�A�������ֺ����G���¿*��|/-�Vi`��x���?7R%��Ǐ�x��4p���m�B�r�2�{i`|��?�L~��           x����N�0���S��@�Pڮ�-$nh�*KH\
cl�N*���:�P�J>ؾ|���춶(j0)�A�S�G����TK�p)�\���������-�ba2�v3�r���nh�����>^�����M¶�s���WcSڢt�
w�@eMfEY"h"��� U!�4e>>�����+,������X��l�DS��=��U�P
�H.~�a#�z4�E�)"�/b*�#f�sS8K�P椥(No���3�92�I��$��u_����         �  x���Ks�:��ȯ�n6�.�z��v�G,y4��[��MKD$D$���u�_?Rrk6ݮr���A��?@���-���f���\�q������O���W�'�A�1���u��5�QR�X�@]���!ظ���hk^1�"�M���*�!��+��k�1з�D��4FpGk(�����j���FP���+�?���uC[j���-����̓�4����T�nˊ�*�K��X�Dݘ�|dE�V����)
Z�c��}#�A�W7�(m�j�ίOO]��$�݃�'�q�B`�؅�@�{:ٚ�^o���Y������ᴏ��� F�zCB�`u���Yw�9V�K��L?�Ƕ��2P�Ԭ\%�e�$�;�.[oIK�����M�f|��Woѱ��n��ec���[d�����%��=� }�n�T���m�N��K�|�����ծY	y.��y~�a�CJ��}1͕�9��R���*s߳�'�>�wn���0ߡze/�+0��U�x|wֳ��q�(��`�������� ���z{�kV8P_Lې߱����î\�.����V�f����xR5�.dK��`kt��눬�+��n����jZ�S��ŧ���g������>���}C_M����i�PǇC5[���d���;�Q�����`�m8�p����9���Ԯ�HiL�@�1B	�uW[��7�{Z��t��x�&bo1@u��D3�gECuo
?�� �U���V�򉺷+��@l��su��m�@\�q�4R��YlS���_�O"��p0	�/l�Ʒ�a]�Wq'�ǿ�خ���`o<
�Or�@��]�\[EO�6�I�ɞ�/N�S�E��~��FZ��@=�B�1�q'��H=z������Ovx�aq�:���IUu.@�!�d؞Q�zT�~鼧��!����>${i��x!u>T_���g��R�n+�����ɴGa��d�]����P=>g���x�z�t%겠+�S< �yEO=��x?�7#� |3
�h��̀����{3ӹ�e�yԛٕt��z�� қY�F��]0{�f6l�t$�}���"D�&��Ӛ�b�����@���H���|-� �9��2 _R�4��|�T���샆Ho��/��nKu�Q+��|�t�?#��KFG�`����T��u/�}t!o���/���7�k�ٟ�;S]�%a�E箮ܻ0y��Z^
��'�z }Є�xO|v �́ek�epܝRC&� �+0�>cQ�=|6{�+
��� ��I ����s�����l�-��O�_~3$VP��3���t:Ȋ
�6���@��@�L�B������D�9_*A��j�S��Z�N<������W��t�C�[��%��.R���.�w ����v�ǫx��~`i��~���b��@�\:h�w��$�����Z���^\#&J��K�: |9�E�J�m�Lm�np�E�dC��Ǘ����/�0�ki�U�la������j�`���o苿��҅��( 0�W�Xb�]���j,�eK�\漀zmyj�@Ȓbe�kOR�I��5R$K�Ň`��q�5b�I��u�f��a�,�i��3�,k�ŝ4��Y#^��+�t�><E�@��C����K~9g�up}/�s 1Ko��;�)�=J��,�� {�F2�C:̗2H�<�����N�*��`�Q�Q �%كp��\�+ו����$e�Ĺܒ���s�6��,@�K�V�Kj�%�U睻t+��7TK�i!���e�;�a�gR��A٤�YwI�� k �#%]�w���X�C_7R�/@���t��_�A_[Lu�]ٴ�hI��R F韐6*'��~+� ?r�^}���t�zZ����Fm� x6Qo��'� �6@�5���
��ߗmb"+����e��b��]P�OӅ�����"��E����������� �~#�r� �~�͊V6��{��ӧ�Q�GU            x��\[��8�~��
��,�
t����'�v��b�J�-�%Ґ������+´q?)���ꫪ�
3���=�#����7\�d��T[�Z9�C��{����q<�����?���$$=	<?w=�D��[�#C���$Ku�1�$1y?4ѓ�(�d��J2n��VZ�kA�-ߪVԊ�X��-?�$$�-�V���p�J����Ҋ,Tt|[Y-&7��LI;rF����lbdD3�"jس�n��L8Z�K&z�2Z(�6V&"&J�	NFk��eE�%�1x�yE!���;�����q�V�����m" �p�F��y��\�ݞ��+޿�v&3
.��J�k8��q�MG7YLi�@+��,�
g�F� �YBՔ\�uO�(,�$$;}d���ZI+�� � ���Y4t'�s-{Q��j��� Xl�����Fr��@(��� 6w�<��` ���؅���+���xKnhm,9kZWtL�Kf2�%kT��VT�,���	�Z����o[.Z+����d��d�i��IG��ǁ�v�F1�z�rK!��g �MǏx�<���Q�u�Ж@h6J��F���[�����'m
��i���Y�� �<�n8���) �3����V�Vis�g��NW�r�,i��Bng� ���[.�Dk�l�����o�;*�NGm�n�(�0[O��[�T�%��P� �o�(9�;J��eYs���B�zz��-={���3U.M勘%O(>ϔ車�9� �qT�E���[cK7�V�H�*u&b5Ĉ�+H�75���*ݧ�K]ڪz(vu����L�Ahp�KQ�������P�8wP(�چ#D��"l8ڶ�ȣ`O���Sr��鱠�=��^ԀtdMw3%���ye��F�y�8���.[Q��6�6э��֢�aS��s�l�鍋A��ƪ�II2f�"z�d��)��r���b���;�.dG�YU��ϔ\��t<�����g�t�џ���ý�gs<�C�p�ܙ��OJF�C���!�Қ�iۋR쩴*��]"�]�cKH��YH�0����&
`�W�5$��[��.K�b8�b��l�K�P��s�ѣ����Y�h���zڑ;�$�� v{����i�����j�:�$���Օ�xv1O,&��4d,t?(܈·<K
7����&͠XJ=/��]_�}': *�^���Y[�����$�S�V��W`�YF3ύ�M�F���,�#�+�t���%����c::;�?�pz�|���!��{#���[~|͎��0�"H�j9�3)w��`Ԣ��������t#z`�f�A�X�x�M]s�+C"[���8JQn��
y�7Z*�_�@�^�)��B	����f��!�8^�V���JC���*�&������H.���S륈E�ЗgQ<rA��� �=��~�x>E$�(��B�tUSݚ�b����U����怟;��|�xS�e]6����� L�RH�b���	y�"�F3��ikS�O���wEK�ɵҭ�Vk�����
Nέ��SV6�kN�Srw��.�<����=��oV6�A����4��c��ml��P����4��t"9
��\J��-Y���p;���c�;G����ɣ0=�{�YK�U_aba(8��%d<U�T��(8?ـ2����6C�)K(<K@�gk`�(8߫n���B�'�������qx� 5ދ]Y>9Jڷ���ü�)�A����o9т��<ǙNa�-߈�`�5����g�� �%8YWz�Թ�����	��=	����U�N/2�|}!����H��y�ٻ`Ա}�eO��v��	=�w���Okס�p6�C�s�i�q���5w@�(9��i*̒A}������:���>��;�Wf��E#���I�7G��(b������ɦB���NA-��;��:P�\R�~�@gs2�B ��`��s��CAA��'5�ҁ��*���&�X� �T�M�65���i�Z�z=g�*ai�(m�\t6᠏�	K�ni�{�Rժ�,u�W�hK��ÝkmD0�����"��>a0�@,M�b^��c��'s���3�"�/y[r�;H��
���T��9�+�	�U;�⨔�OVn�6y�����M�nnF��Q��ny͙��p�����r7��jA�T�����\k��&�Kx��TL�9Y0~��L�<��; ���N�0��~���/UG��|�����ۗJ˞�(��v1tbf��N&a�]��˒�T^��¯���e&�I�&@^���ќ�h}��P�`���`��h6���[gG�ݩd�U�SP�(A%����Q�zn�š[��^����M���~��|j�9f�)��?�?^3G��e$
x�{I�f����S��C�&<M���e
��f�a<eЈ��b��gJ�7޺K	-3����ID7�2��؇'�6,�>��2���&�#�i��NS�R���H�!�v��rv��T��0�c���7�R%7���T>я�[pE���O?O�&��H��*)���JX�.�2�K���C��h+!Ѥ�VUM��Fb�,���f����T+Q*��T6�˄"_�Z����s�bk��H
E�)_�Z����P;�����תV��W��+.j(�:�B��ϔ=�+.A�_3�%.�{#��"}���W���N׺�;E�=8�pi`GD�u����"*eW�M��e��	#V$j5�%|�ju�k֫��r|������MG����W�����W�I��a�@�E�� N|G��Z�b.����PY�!��PP�RX�F�6�~;�=�hS����j�1�D�b������<e�q�8{�`	P��{�8�Tꙮ�`����h�v�����n,?+-%wP�շò���?\./W��М�:`���?�^\�vM�Ƣ	4Q�$(pT�����2�N�WX����Z|��X�� �x-���C����M��B	��ͥ�+�&(F���#YIfGriBS;��A3s�b���j�O���(o���5w$�Y����F3~C7�*mwf|)(B����(��\�3E�"����`�J5QKb�ߚ>S��F�8H�gZ�54xÔՒ�O@5����w侀
��-� T�pvp��2�c�N������)e�����;�kXy�����"�RLX5��0 k��R�yUJC��L�ܭU�̞�]�Ϥ���nm��h(��]�	G�*5`h�:Y���4��g�M,T{4�����K�4/���},W{ �2� �j�Y�֭=r8#�۵�w7uy��#8�Q��ˌw��QX��g�����V�=��D�!�~���yA响��+J>D}4d��|k�Ι0/���9�B#��=m��X�����t�*�\�u�%K)m^	�T��lo��$�#@!?�C^�o�O<�W'S��$dc/����Jկ�M�����>ς������r{ �x��+/�N��0�����:��ݓG�����M^�l �-?��U%�S����z�`~����i���%y�FA��EdnG�,h�<�oy�d@|��qW������x(��ˌZ/�I9s��;9E"N�O�����OM`�G�,*�N��_>��B�K>:�W2A3�%��eК���D�&KI$�<�7�e'�	�,	7.��MȽ�>�K�/������Jn+_Z@�؟��&_�i��r���:׼h�yI��]��	�v��	����f^�]N�EY��)c.cqy�'����}��ߒ��+Y���F} �]>�׋�|�Ѽ�΃����R�N�.�R@�*��ڔ{�O ��|�^#��"Ω��,��n�o"X�_�a��M����� =�q��Wa���x�&�èL<� v�ͣ(u~��&)M����3�X+��Y0��W<ۄ%�	����1s#s�QB#795z���>/����]���#o�t�{�ѯ�O�ʐ�a��ԇ@�h�FE[��'� *6e���6!{�;aO�y4��ѽ�|dY	�<"�h ��YCh0 �   �2
�0�,���g���<@���Pkj�=���=_�(N����˓�s#�AP�p�<�"/.���D��>�pő3r�,
ȝPi��'�.��������G	lc�K	 zQ0 v��8�"�� �7/½�'1�ߒ�}����Ҹ�(��t��c�Q��I�^�1�*K+�ʉFI�ܵت�����!C`�e�A�E���CZ܀������~��YQY�j���������~�/�#�      2   �   x����J�0��ӧ�Q+IwW�������bYD�2�YhIg|{�
��Bn����Ol50��T]-L����^Q��}�Z��Q ��H���1��m<S
�_
�՟�S���v�f�װO�<n�rLv��j�7 ����C��c"���~=��C�^��������O���o<�|�Yl�7��TMc	\���;y�*+���=&Qwu����rNF�?w��WEQ|�t�y      ;   1  x�u��m�0Cѳ\EH`9�ljI���Y��z0Twݣ�����y?����z>α�\E�=�B{΅)<������\,�5����k�9��cϹxS�Ǟ v?�@UDEU�*�NX���U�*�N`��DV�*�Nh���V�*�Np��DW�*���v�-t���?���u�-t���n�kt�t]��[�]'�B��:��F�I��5�N�B����+t�N�B����$���v���n']���v���n']���v���n']���v�5�ݕt��Bw%]���]I��.tW|q}�~]��F��         -   x�3��M�I�,�420��5��54R00�#.#N��\��1z\\\ ќS      4   Q   x�3�tL.�,K�,�420��5��52V00�#.#�t^:icN�<��D��M8=��Y`��_��X\������CQ� ��&      )   D   x�3���+I-�K��uuq��sptQ.ILK�,�420��5��54R00�#.#N�
�*b���� s      :   ?   x�3�tL.�,K�,�420��54�50V00�#.#NϼD|
�9C���R��RSp������ %�         I   x�3�.I-P0�L�4000�#+0�2�H�6�H�6�H���6�H��6�H��6�H�㐎���� �&,i         J   x�3�t1�L�4000�#+0�2�t1�!e�`�Cʘ3���g�1)S� R��\h��˅1z\\\ �'-         D   x�3�t)�,�420��5��54T00�#.#N���b�Ɯ���� �pi3���%e�P���C2F��� ��!�      C   B  x�u��n� D��+��R��UQ���J��xI�la�*��'�*�8��73�e��N�z �HJ���N�A-�u@m}��=��v�Cʣ-1M�sZG�>��\r�C���ة�j�C^w�Rf��iL��z��bR"5SD@+��J��g^�����=�%�rY?ށ����G�ګ?F8C��c����2�3��x�e�����4���K�$�B����-D)(�q�;�9@��?T����p��e��v�{��+���P�s�e�>{�@qTw@�е���-1,t�S<X�!�6C�px��	����g2ޏ6�{'�_�M�����5      D      x��Y�\Ǖ-��1
�R�k�*�o�}� (�IQ�Z���<�����sx_o5��I�����=�#'$2:��H ��k���9����\Bm^�^��M�}k�f�ϭ��z����zY�;�c}v�l��~�~��2���?�~��ϗgyu���O�,�����|��JBI��R����PG���6"�W�*Eζ��cw�i�\����������>�����7��r�:=]�/V��괭j�X|����ѳ��kaM��Q�[9�N6x�j�}��������l}���~=��ϫ���偯�~����W�C����ZŬL*��]<]��?��'Kl����˳�K��w���۾��X��:����J�?���y4m�ˬ�j/m�׌��Vd�h>����ą[��t��qoo:��]֋i�_����x�Mz�>yw����������C��|�|�+��wF����8���m��=9�<���c���D��Ŋ8��Ln*4���cH�(�"3��I�a}�ݴ���k�n�n��������^��>lt^��������:�6�o^��6v�&!�%H㳋��E�d?Y>�;�N�w=_��?���Es�q���z����|�����i���[��s��$O-���y`���4t�����1�c�m�3Y�����X�勓w�^,����2���ʽ@�j�wj�mPN	�s��֮JZ��wBdN.OW{;�������du�O�����$<5e�E�Q�wIZ��B����>;����2^eu�~�m�|�f~6�֊Rz��{>�o��=d������,W"0I����u~W���KئU�����z�� �M��'��AɄ�����V�¾<�oλ|�/]��*��_>���s�V��~�6��/Ƙ�Z��/:���5\���ԅҋ��˧oޜ�7��}�]?�����g�ؗ/{œV�ޚֱ[�u��:yw�Op�.k4���N�D̐H�.CU��e�m�`�N`���>�U��(���
��xuڧ�׳>o�gV48��7�qAξ�W퐉�CՁ=3Yc�ƀ��=o��0^)H�]��]�v��"_\NZ�|�����'�ח-��_�]A`�������w�����t:����5/����;����˰�&�*z�IXi3l�H"F����M/�[�~ϗ^�C����Ǝm����o����.So��
_@?��o�;�Cg�t	!7�V�uhل%kؽ��\(��3���w�Ø��	_��)�o�^��?�ʛR�+�D/��U�zN��xv�>?e}��g�pI�P�P0Rg7���l��gk|�
gR�[y��p��xu�����w����� ���>g��oC\��x��ۛ�lz_����l���:��|���7[��2_�i����!n�m��a�(77��Ɔ�b|�dAV"�N/a��C�R�V$W��� ��J�o����Fʲ �LfZ�9��#*�<;�z�E�՛�o�|}�~�ٞa�:_�|�/~�oO����I�^��@ؓX)1����A�&d���۳e<�ߏW����Q�!b'��Y��ó3��x=�ڍ�_��}@m�H�Xv,B�6�E�iYǰ�.�ZLG6�`�Bӊ�����'��Cw���j�R@#�UHXJ��(q� �B��u��+=}����n�^��]�>ƕ�[,�(���`3�jSťC�"ZΥ�6�����%�'.�gop{��w=��`��iY(�i�p"&~0�t�R0�v���g\#/ �F?�~u�>�4����h'L7�RG�����`�ɟZ	^��	����J{l�t@�P���6w��|�+p1c���~����)����k�g벅�i�����6��v-�B{����������?���a#Z�8�M���;���N(�o_��TL����(�>VdT5E��a�	�7ʌ�
�g��58�j~��K \|�g�*��&Lw�kև(R�c���!�q/��/��y'��u����ˍk�/�����+��1�Z���2$'�&��ᙔX$��B�ŷW����������WT��7@���y%g�;�*p߼����:\��N��{���?�^��
��VD�1�`;�W����0I��F.����y����:�-ș���`���z��2���0N	�xh�Q��J�p5z35.���_��՛�Op�ٷx����w�l�-R�ti�o�*�״N�:y�GI-��F/^��6����>�tb���Vk��`�O[��
�c����.^�� ���;�v�~��x� �����\����s����%�����ׯ�x��mrY��[��I'��x��C�k�y���tv~��j��`�WF
$O����Ѕ
��V�p���)c�!T�0n�|�M[׋�y�^8�i!�k^)��ɇaa�xƥ��Ț�ɫ��x����0���=���	��ńan���j��q�`>�p��[7���'�L��BoPf�kUG���5X�~G��M^����W�ξ�lh>��5.ȫ��ߡ�C�	��JXZ� NKnC�^\q�����^��WK��=��/7����P�׍���~J��Q�ۀ�[}���4pj��4�	���Q�^kSB��J����,
_��|C�oPп|��wW�����_��Q\�!�YC��{ƹ����_�S�����s�7d)��ϐ��,^�OJ>ϟ�������������?/q��?������������@�N����/�i)���U�
]�s��H��0�npG������Ʈ�n �}C�jYL�pͿ��p]������I#a����ٴ��p����5���|�4��/s�o�y�gO�Y���'����ߞ�t�V��g6��h�5A+���+�+md�ya���.�g������{����m�ê$S����dID�F�$YV� vyM���X�]4aR��[[��l���ۏ�+�Ц�]W<7�9��R9'�F����5�kA�+�t�FM���c��ۏ��\��Z�Ҏ
�Xhm��½/.�H���L�ua�Ny=����.��lB,��t�����s/�|�Kg��0��	ܫ~Fw���>$���ؠ���n�{�"@*�Q:k _����U��/�Z�ޭ�����g����);����C�,ـ ���ꭍYC帰~�z���=.�5{������+��U���O�qt ��״[;m�˟/�f���~:g>f7�"�e�����ʜN/����b���O.��l��ɔϲ�|�I/���q�ޭ��&B*�nZ��6��'��Oq!v��3�W��_�_�\,_�������"^��?��&���~�a1��Com2�O�-kh�<:�|���/V�����ԏ��J Q[�aW�8d�"H�L/�I�;�x�'���:��7g4�O_~�;��J 6��8�U'��au�v��8�+#�/t8�d �5���ʆ�+BU���ƪ�|6�y�m���� :����'��Ͼ������O�|6��4C��4��|��s���<�̕��	����f�k`�� 'w�M� �@����'_mC6X_�on���t�����}�|��'\��z�uB��o�֗@Q���"��K�j5���%O���Nzc����ak�=O�9ǫ<-y;�kp�'����� k��C�Ud�͈���۬�: ���/���S׷c{9��r8���^e g���_��M����\Qb�
����7Oϟ�+�����b�k��Ek/���$�CUy�4��O��΀SϠ���z�5[	}�Ou���I.ME�H��Ȉndʰ�6���.�G�pf�II=�SR���l�{%G�l�8x���˗��V��FZ^md��˗�֏�+��˳���U�a5:?�>� �ĵ��������w	���J��b�e��2roD.�՞J���.�2��^O��~��ʜ�/�!���9La���[8�g����o�M�s^gWn
����o�oL�6.{(,�G���i��uLxu�i@�^kk88t<>`z�,�����m��團�h�uh�`�p����R4S4o�7�x?�q�    �
5\��pA2�Q`��b�.����[8�P�^Yƭ����l��~�&����w�Um�����%SN/N����;9\��ï��<�eE+��2��]bYa����z��e$�!�ķ_̞��ū>�����k���"tP6z�"�:�49~�ⴌ:�/������O�������٪�||�N�&;���{c���!�P�����`
b#'Sڕ��9�n,�d�W�I������G�K���?+���ﮬ�׿[V|����.֕i)J�z�=7�����S�ͬd/C���|ۭU:P���-X?-�ۼ1ֻͽ���Kl$9|���V��(��O9z���kx�z��oȲG������[o�H��4
�
W�,�Z`5[�e{���c	���v�W��S�0TTۋ~�2h�UJ��*���I)��^�V|�*�z�|�ʘ~w�*�7�;�^@���aqL�7o��i��M&e��9(�9����l��g�	@A)��'Ϙ�C��� �b����SGY!�^jj���,��=���c�tVRSiе���<[����*��3�<����\�.�6~��z+��Y�.�獘��|�I�� ��<�~��ެ�|�B��xg��ppD
��]U�1p#rP������T�t��b��]��gt8��ڔ�J�
{��f�oZ�Q�m�Xq��v�}�_7>��}={��~?Wkloە�=�"\5#Hєc��Y�	
L��؅��;�$�`Í]Mqx�.�b߸�'���U}�lx�B������p	,S�*`�b!����d�6���.,65ӆ�]	X�y�/aE���u�\�Wr��Xy�uve?�:	���ml�AI/���)�Z� F��Ue3�:�����j�G7�׊^������ "n�i^>[�~O�m�Z���,�z����������?�.�;y0�a�0,3p���|n�}�6��ҡ���9`0y�����3�����D~
'��L�v4y4N��5�8��X�h�0^�4A�J��.�p�X�u���}Ȝ�VZ�ݨ~�G!�Ț���/!��"�ubxa���)���
Y�W�_������x���ο[�_;8|��N�� ΁��Z��ҋ.�\)��$�+�?�O|��db�u�ͥO��<̀��Y�s�'��g!�sr�"����}�?�kܞ\{�Պ��������OqU#��׼����p�%�{�UA�7���S{�P���l��_�2���%�~�oϿ�z�����BߤU��p�E��^;�����ֈ��]�{�����.�R��c�U�4��h����{j�SxP�>qƓ���buq�)^���m5���-�"g�q��դ��w��������B�_�����K,��|�~��-��������������dU����7����,�Oɟ�w�QO�߮�����<�_����C�zR��^Mxvt#��6��_��*����?��Eƶ"e���S��{�m����-����,옔����ǽA��J	�=�U� :15���k!_�"��o�ܡ�VQ*n
�c�����:���Ϯ�6�`^������y�Lf������c�o������k?��3��ʐ71��s� ҟ���_={z�4�&���v �Y8x5��`z�l�4!.�m�N���sv�_n�\g'S|n���%�7�^N�|�.hV�?��_�_�͙�������i�;O�^�M�����}b� �맅�X�K����-Q���+S�tvm!-�f����u�a{]fk5;b�b���Ě��?�]�	�ެ��\���'���Q���U���|�C��$y��a��N8g�k}n"Iz���l���(_\���z�M�bJ.���<�WWI��WYM�g���z���25���|��_WL��M��_�)?0g�nn�k��6�W�ō8�����=� b��D�0� P.�d,�^��Z�7m?�`_�x���|�9}0��|���ɓ}���h����h��9o���jMN��sL������b��:��͍��I��(w��=��E�Xk�uDK�6BG5��y��zޜQ�:�g�jw�@����s�(���Zl�"�f�`�/�]\foV�����Pc���ECW�a�(�VN�d��Z.�[�(������..?�֦�ˋ�ն�`S;�ً�����	t]; �X%q�R��RW�����w�W��'�k�W�lß��+��H�p��؂�$�=���1�Q �1,~c�Ƙ6��6�ӫ�L���{�gEw�"憛|��<�rP�x�/�5=ī��Jr,j�:;� �E�s��(=S3��b�߫:�Cny��j�1;�Q��V�hR��9'!��f�N���D|����E{�K�`����>��Pz�^˦	:V䔻����os�������� _������~��7�H�w�Yir��2�L�/��8����d])�u�d�o��!����;��f���wP�_m�� ?����Ϟ>���/s 2�#�v��hHBt�����ã���E���T���m6���u��A��=Qz���r���3������{g���%'\
 T��ti"��F��V�C��"�����3������xյ���W)�=1��.���En���D�LС@ɰ.hm{ ��ti����_�nݻ�Wcu�=�n��OZa���ޑ��u�7�7��>��ۘ'߱4�i�l�&:W�1��{�b�z���*v�I���NH�l~���n�&޶B��atm
�_ur���Ad�|��`N+��ޯ��,���&F�j��p��bN�n�q�s�3P��l�����M�D1�,N[�z_p4��Z4�o�J�Y��\3�~���!�q*�F�U7�>)�J
_��!��"��nj7ق]��CF+w�#�d`F�P]Qlb�E�4�s�Ĥ������%��~�ygʦ�CI�ډO�(�2�ۖd��L��$�BI���ϥ,��~w̸�o6i���fke>��˹WL����b9����g���J�@��`�1F���A�𽻋X�:е�;�'��M�|7ݝk+>�?�*���}���'�ҥ�=5t�t����I�n=�׊��a��w��d��$ �қ�m������\���6軹I7����
"�Scz���J�X1\��d�E�����WO���B�x�shc�~\y���͋~3��R�nrD�IÔ�RN������JU���n�����6�8C��e��&��?^�9�
�5K��Ĭ!~�i
>9�U�=�R61t����g������u��T�u]n�S6���X��3n-�*��������)��}�b�o���ɪ������Zm)B$�2��߫�p�u��T��/���Q��N�(�),5�J�ژ�m=���˻<��3ǹ���%^6�l�m�~����?ߚ\��m�б@c���}y�&w��Sט��q��/t(������]���{��K��MK[ۃ-��6�qc��z�iuE���d��W��1=M�FTH�V�����7^-��^����^��˝�}um�w�B&V�O@p^��1�nd��"���?6@d�QZt�!M���Wr���n�W�����_���&3v�}�ϯ�_�(���O�c����}�h���F.?S����d϶�����9��9U<+�B�T��Li�����Z0�+��S7�׺����֜+�t����ˋ�j�b�/���KO7_C�,���P]�1%���"��'9����b���l:�����sY
x�[H�������kp��{��r���3��0�!Ledp�E�=�:b�( �,nd(�aY�5�8l|�Zj7���}9��O����/�\�#��~�4>��|��R0H�1��}69���S��$�3v�ѓ5U N��@���'/���q}�����������?\y�}>��;{-�r���8��Uc9S��$�4
*,����`��[��$y}�8�gS�/4��|>���5`��s�u�������:�ݶ��hM �tm;�\��2��5�����9�?��݈�9������VX���i.7���    � �=��\��͉ �����	BU8�I7����C��f�9��OڕmByl���6�/&�2;����M�V5l���y����N�w������Up��<��=�lc5q���>���	F��R p�pȦ�eJA8\g�"eDӲB38�,1�\ɮ1����t<f��ӽꢹV�zȝ���x=�o��H�Y1�2[�)\�]D�_���;p��Q#����
�t���^z�"0;�Xb;��vO����AY���0ⵘռ-�
�z-x9T�ld/����y�Y��9�C���ץ�fWٟ�|��]�
MX���N�1����A��q>����0
���L���q%r�r;߿���m�Hc\��./U0pw 4��S�s���M/�p��gWj���oTZ�����®���_��Ǫ��� �d�#�/�&�Hʄ\K��n���w���^�vJA'���L��:�p�*e�ޟ�j�=	U��,��g�����M4��̖��ԣ0��]��!�Q[�w�7�jОQ	�P�6D�[W�X��6o�<�F����:]�7g�v�xE�,��L	϶,fJl�5$[Rs0x,��<B�)��9�����۞�լ���\�Yѡ�s�Q���0Kj�Kg�]�����Y�(��\���Rt��6i�_6��c`����E#f{��ـ�S(a��s���0��m�|7��t���۳.�8���f� $	�~|8M�S `[k`�|](�'����{t��{�ۉ]��\5u��*t/�y1�ӫL��8�q�6넟������7f�n.�>�,���2��7NDHTI�aRFq�\�u�h&���hn;��,+���1�jx�,�7���F�$�$:c�'��6'�?�p'X�������ٝ�D��=7���z[k� ^5��N�@F�>�d��+���{1�MN�+`U�T"x-j�����2�8�I��*�*���y^�Nښ�u��?z���􉲾d�d~�ʑ�Nt��у)�<-l=i�m�Ķ��E��b.��ж-��d	�ځ����u�`J���)?�	���Ŭw,�S~̮K��%}S4����/'61�ymn��`��8��%ۻ_�g��4���y�mcs��8T��K�`$ A�sL).+���fI����Zǯ7�m.þ��H �)3R���+݈�e��_ʩ�<<'��?���Yb�,&���\���԰����P�SC�Gf7U�U�pk=�Z�B��Z��j�H�����͝�{h?p�?5�P����\����qiЖ�u�4��{� z&\�b}���Ԁz��n*ָ�ξjLeQ�~�l�5����7����ԟF�|��m�F�|lB��� FE��rJ��ȞƀM5q�E١��f{�ߝ_@�lz�61�'�F���(`b����հ���'V![�h�[I�����Wj��pƏaơGzc|2pՔcm翸P�.�(U�j&.�W�������W�C	�C��&����Kg�U�Ѯj�l�K����`�׻$��d�m��,5��|nf��a+�v�mq���%g~l��E��W碇�i�b�	�"��WF������~���߼�|��f^A�k.�*?���n��~����������r ~,/��<�48��%ku6�cF�K��5���P
��@XI`�$r�&/�)A��~�{�x�W/�l�8:ው�r����ء� �НV���⩺�%23[w��'���}�Vj��aA���giD4�3~;`��%#�x�?��]j�9�=�����0�@l�a�<E���l�]T��x)�-���J�{zƛ�yJ����dU�'8-'�x���7����l�����Q�I�D-��àk"�Ҥ)-�jx���嵚�㹜�ګof�,�����R���;1"�T��h�N�o`r�4:�����Q��9��hܩ�ESD�B�.2�����7Xn'�=p�}�w�mCU#��1�� ��-մn���9�������,�����y~pj�M}�=�Ζc�3��4�Qy��VBG(�w��`����������lo�ԃ:ޜ�f��~9}�5��A�n���<8�@�e�8� &�%QsvQ����ԙ��+��~y�����I�\�rV�X�"�A�d[�̞������?������`,-���srӔE��'mx�þz�.�^�.N% ۬�W��^L�p�]gF�bku�R�0d�()	z�25!'t=�E�?�K_{)��jǢ�I�l������u��tvUV����	"�,kX-��vV��#<//�j��K�������`���A�Y��4ZH��Cjy��u�7�ṉ�wi��!C�{�C{Qq�X��٢W"�R�y���*]������i����^�U�!5lj� L�x�/9�j�9���ܭ�Ǽ�鬧�o�� �ߞ1��l�4N��;�[#�*�鋎�����D%�)�y�/?�b�c&�YY3u�<c��l:�>���>_����|ܗ���� 3�l��.��ٙf-����^?]�wɧ[v���W��*P/m\�C�>��	�����a��x����x��iԯ��)d���]��S :�s����ylc�)��h��߁����vjN[��_�8����W�>_�K�GgHHl}�x������R����e�r��b+k�U�?Sk:9��44�t�`�%�k����TIGe`�}&�{`�����ͦ���3���݈��]EW7�qm.O��~wmR֓)�}��]����o���h���d[�r�D�+�h�51Ք�Ґ�Ճ-?�$Ey�f7l���VӤt�xt�&yU��+�<���Q�����%+W\3띝owC>��ZʩE���XN�Vp�}�U8�C>8;�>�b@~���=غ���(�q��Q�#e��G��i�p�p�a�>2�7*��p��������!C+��ϙ�9�z8�;��ó�����uo�SW��,$��j&]7��>v}���(�-�2�%���8F<0"W�xZ�Q����V�t����EBlT�'�n���a]L��+�4J���8������u�������5JD��aUOÄ���E�dL���n��Y&ª�.i����y0�>��2k��!!9�.Ƞ��Jr���i�G#j-���E6t�4Gt{(��tW�@w��k✂�峙v`Z4�pN��b �M�?��s��g߁M]����Ɖ�V69{,���́�$S��#;;Xea�1�26Ň�i��u�~�E�΄C�}��J��oҚ�*R��O�>R�bZ��7Ǫ���^C��T��x[<-x}S�ُ!/�-���E>/#����
�GƩx
���ik��6���i���^rH�0)3�.%0so���W�>xZh�[b�Rp$3��p]�"�s�MB��O�>�5Ƒ�ß�a��o2*`c���7Ѩ��i�vpl#�k��B�}צ�Q�iڸ_�}T%���RM#�_C��y>@�
�B��E�tA:�����s�y����u�k����ӂ�͕�� �����d�������vyZ��Y��&#�3l�%�r {�Z��xZ��Ih �)LK{�Cd{�Sx[��G��<-���˒Q8��,P�����ކힿ��/҆�}\�����>VU��D<F�lQn-�3�^�tg-��U��9֎B"���i�u��[u�a�������&���xZ`I�n='+��`��d���#�6r�xZhcj.^y@R�	<�`j�
z�@�ӂ5�`�S!G�5n��If�k�J�Q��k�i���G�9(a����Ђ�-@���娟O�>*��zaJo�qJ[�F�]�p��"O����ܔ��Kզa�~͋0zq=����@����v��0����֔	҇��]�`����H��N���X1o4CƎ;�`<-pAI�"��;�lE	^a��O�v#c�s�,#w�iT���ߡ;��1�RƯ���q{�eP�3�����U���;Z<-���LEn�<U�Z�v)�_����0�ႂ�H��4kY�4��2��\{�<-�����s�+bF]+2�&-��    �=���_O�>r��T�=s.w�F��.8�5e[}V���r1wD*C.#Dj*y��� ���i�G�x�!?h�a�� 鬒���>a�}_�l�Q�©�N)Q��Bk���9$�OV��1%�����J�^l�h<���ia N�UT;8�i�R>d��(��Ӣ�|�$��
,8k�,2��W�ti�Us�<-����ʳ-���!4 j��|l�yZpd^�*�Y�����t�4YU����xZ�:S�8B��r�چ�0�¤�-���O�����~�}!�٨�P�5%�R!{�EiUtf��*�����$�se(7���O��Y��_O�έ�$�h�ft�������	*Loxu�L��@�&�W����:���;�p���}e]0��ү�z��}�Эj�VD�f����h����d��0�Ӣ�����D3����\]�R�C����Q�`�Q�Ɗ��dE ъĒ�O!Z�G6�O���V��B��5��t� \S������<-�l�.+�R�>5,����2�4\��Ӣ���_���,a2���4*;TLpF��#O�ҫ䜆r�l�t��O`�����m�S�i!���U�15�^C����dk������yZ-�β[�$�.����݁�aH ����6xZ��*S��J�*���ee��������E��-V�pF�V�UUΠ�>�����<-����l�X����(��,���FC��U�0'�L�4fepPEV��fV:D��'On��&�0�`Ó�p̣�Y��̍T���<-����
4Y/^�v�RI�����[��p<-,�׭J�?����u-
����[d1�yZ�2�\]r ���-1X�j]08����ia�=\�Z4�O�n�(�M�b�����ta~�va,��tK��u�αV������iaE�c��`OZ`䌡Y�D�V�������!5�t����ۛ�S�eʲ��J��*��4�n]u*���i��ÙĨ���=d�f��j�jt�`~.O�v���-W$M��-��ޅv0�9U����2�}dBdQβT"� bJ^4ܖ�M�ΟO�k%�-ϔ%ea�-Z�����
O�>j^�ja�N(IW%��v�Tw�ӂ#��Ux�A1�xR�����E!z�<-l�=��"�5���7�5��2��:�O��i�+8v�<{pU�+�d-
�,���]񴰻��O�RaWx��A`{����[�i�G�y�/߲j&@�
�Dl�j@��f��e�<�Τ�as�m�Y�(R�*�آw�axZ����J+�怌�rGh#��8�JY���i�"P����$�LaX�.��L�!�G���>�s-7�;i���G�aW�)�;&[<V��b��)8ֲ��h_D���4�~<����nZ2���~��Ka�Q!�L�_�F�3!�;ु]5�e[:Ic��}��EJ���d["4����Xx�j��������[\�3�j��-�-����'�O�>
p��4�� �L��I�g����Cx0�J�uQѣsSQ?ӹ!61��׭�a}<-,q-:�	W9���s,��� b��G���9|�j NWN�s0�1h��0� f����i���a�ǚ�t��Nt��ؼ�Ug��<-���L+Bgnn#G���!�:�c�i��6��h�L����v��F����/�iaϨ4z�3����A�ۆ0���"s����i�G2�?�qJ����r���p�N�n>�(�C�+���E�4�z���͜O|�<-��A�j�w}�pArh�02\�VW�Z���Em�܇��T��-���%
M���i�J`��(�uFVFv��-v��7` N�-O�\I��/���Q��x�j9iQ���B�6M�U��jr㞲W6J�w�p㽽K�8�g[t}P:{"���f�C�ͭ���E�z�C��	K���@�-�fU
8+�2O�������|�ȹ/�8J��*�W;��gQ��� e�ԣl98 �v;<-�XR��S����,�+�j5d:�^���ia���XR%�`7�E��]`�`��[�i���O[9�*:�Si�-lDOw0��&n���i�kzd��ӌaϤ'j}���h�{fL�T�Z���H�X�rmƙ�C� c
{���c|�(\#�0Q�`Ll�� �Ȍ)��Y��d��((��'4N]� %a��dL9����wVӵ��<\g_��8���kaL��T]�nAI7�൳v�P-�Ey(��US�Ԛ�s� ���iNm�&�C1� ���	�Y�ҙ��
�p[�(t_,'4�7c
tdwMj��� _���T��~��0����{���q�� %;Ծ�#AX}6�C�G�����n �M���6����ß�5){��)�Ȕ@��;���B�1�Jc����tG�)LuԪ$d߱�j�c�9�m�[=�K< c
�m���W�L ۰�K���I���͘Etw��Q��p+@�P1��pA�����ѳ�[���yǁ6��+�rɜ�yk�)������z��e2dA���mq)i��-3�p�W���.\euo�@�*{�l��M��ʘ�2���N�l#iR����>S�I���9���Q�y�Ιr��S���ʡ����a ��j:e���:��x��)���k�	��s�a��u�Z�=L\0����1e�.ie�J�;a
I9���S�o�1�9��cd��@�J<ʍ�G��`2�|:�)غ���ǘ��B�g��eg�׶G�{�ٌ)��,��1��I����8��Ǳ���1׺8_���p`�D�<t�ڤg�� �)x��u!Kud
\Db"�ˡz��Q�=Ɣi@
`��9s�r@qs�L���0��tE C���.�(s�D2��~>c
���Q�:n��(bò+�a���Ę��z�V J�X�Io���ycb�U�(|��^��ƉH9�|�#�t�[��W�}D�%Iz��e-ij��]�!�(��c
v�k�&�k֜�
ỳ
��tT-�p��)�U�wi8��&-$'b|��bW�2�P�1���z�c��#���2妝ѷ˘��.�{ ����w] Yf���,Ӿj�)��V�A�f�Th�bP�zKEacu��dL1GFVx���XS�ސy��_���9��1�y�8JxqD�9�\(�|4�5YJu7�)戾��L��D��D/BQ���5�!tΘ�ef� N��y�E�f�!��j�&�h���1��f�J,�Ll�D�h�> ����b�`�}Ь%�F�U�(���&}ɣTk�#`L1G
n�!�� UP�cŵ���tG��cL1G�\p&�����:3��"C̡�ЁPi�?�A} ��	2e?�H�̰6����)���q���<
�sԠ2���'��.�m�p&�\��I���i10b��9թ�#�����l�9ʠ�12�r� �@~ҔDR�T���TC?O�9����'��_�qA��d�y0�s��St]ml��8���i� G��yZ�Q�J�j����N)A�����ՠ�v7<-P7
�ܚIq`��G��
M+�]�5�?��~Ί
��3�7�	�)��%[U��<6����&�ISf��Z�B��h����8��Ev?Yr�Y=�'�0\_? .���Ay�O/Fx�@v�C�$WdYh5&����5�s���-
�8�)�	ͽ����f䀃�22�ցZ�2� .&	m��G���9���i�e�^p��uZ�bO����^\���i�"�&[&'S��L������9���
qw<-���$�0��
�_�k�� hI�0��O�9�r��;	��F��������j��p���ءl*)5~b���}�L�^�f46����*��q�^���xxZ �[��|��Sl����k!m-�֤�2O�:�5���z�xJP�)+��R=��F�xZ �B�?9�S2� P��h�p{{�<-���jϒY�4 �԰�I���~9O�a�l����ǭ2�)    �0�Y]<�������^������
y	)�8��?�����k�z�Y�&L3�pTx���b�d�̤������ŋHhx�p��Ya�_%O�&&�A�8:��>zL�<,O�&�1Dd:�SF|J�+ϱ���������M*%3vW�>�98�x ١2�u��O���D-��%��Y��N�}����-���6w��J�c�a�R�;$�b���}�HtN�;h��k<��a��"$q�]� f{R'�'�,�W�2�Q{�-�\j{8��PR�THA	SoF��V>@e[�M3��yZp�rl�I�j�IO2�����H o;T����8�Hӣ����*�wo��r�x�Oqu%r��d*�k�4R������B�Kt1���K�H��pz�v,�����d�^Z�`�E_`�C�5�ʳ��W�ӂ�ȐXb??�i����N؏t�����qЄ�c�������^%����U�s�/��S�N-S���[8?��\�m^�O�����<��3��O����\*�{m�>�X�Z��
 $66X���9S�K6O|P���@���͘i�r4 -[S��yZ���ĜcL<�z<Kr�/e����yZp� �esn������f�=\@���Aw��yҜ��;�X�	L��&��1z#e���ia<Y��9U�<�n��{Q-th&Ίx��W�)��\E�lu�ױ�Ê^d�N ������Y4�G�͒N⊱�ߗ�j��v��2�H{U�RQ��9�Q��K[�w����4e�QwQgSȘ��\#Q��S�L,BX�������z;zZ�UW��e �=�J!4�B�!�Y���h����}�L���
HEyN��Y��٭q��C�@�E(�������[eY�H҇w%�ؙ`�`�LC�.�?{l�H$� E�@*~|"�2p�%��1�11=�&�!+�}���]�K(�5½�Q�}iFN���A���7ϞT���A(c�Lq#e7p7�$
r�+i�܁�����<JBf�}1�Ɯ��q�&Lξ�TR��S'����)�	ƭb_!�7��Ukҧ4~>�X�ޖ��Z�b\v �N��T��@����A���v*�d^�I6�����
)��F(�]�~�(XO� ŖM�&���oZ�_1��9r��U�]s6L����"̏t��_)��*�����6Xa})"[�9��7k��'��XN�&Y!3J�nf�4�g*6�J�'��/��*�nt'5�KS��D�P75T����#���YG��D��r�τ�������|��	e�\�FE�b��a����u=$�t�B�DJ�Ѵ �}��M��@��V�����0A���INL^ġ�P=A�%v0şE(���խrj��~V��;�k��25��|�{!���J���R�:Q�&:�]Hk+�R�*uG�2�EtWO���f�$<��q���lǿBsԤ*�s��e�Md��c�G(Y���LB|;@��e�C���8"̛ @F���BBs�жu+"�0+XpF���*^!��)�@����JQ�F2q0����3������#���\'�䬴0*�w���L(3�9�9���%�$��t#� ^�k� ��vOq��0�!�$�b߾bj<mx��C(���E&���.�0CWU'g�����P��)��ɬC�]aO��q#tgs��	e�)t��:��D����E{�lT�Ym�ڃʘ�\Z�i��g.~HN��k��>��� �283��j�_�K�@f��-��S�.	ep��!�pV�ѵp���[� s'꥖����i�����9š-I�D���r.�(xZ�rZr��*	��(��fc(������
��A6!6!)�D���CKF���"
�KD��f��DF#��29�K�Q����j�`4+�C��2{E8�|�
n��G��BaL&���}������
�\����=.ʹa�p]N���jSH�A^mz<-�H�j�d�;:v�Qe#	f.�����O�9*XS*E��p([��
YhY��Jv]�����Z5j�X��BX�L
�����`X���p��t$��F�A�Į�	_ÐD��G��b8&�D��'(��2�3��y�
��N��KyZ���2�_EM���0���$d�Z�Nzο�xZ�栂&gб@4��{w�48����i!�OE멕��\:�6��l� ��e�+O�h��6�ª$%Z�����Ʉ���� ���##�7�9c>v�D_�7�>xZ�c%(�)wUr�+p�W"�d�m�tU�a�t�pT6r�6����5S�/�ia���9�E�,|L�+�z���kV{�K���Sr�v�� �� פ���P=�|?<-l��ά��d���	dV���(���ӂ�j�G<�p�K��%��YƔ;Y�������59��&�X�@�8�s���c������&Ke8:s0b�fC��3m~�<-�Bl ��5���H��,��f�������|@�r�SJ�������p��w<-�H��mε�z�9-�c���dSMww�<-=�՚lMS�B��XZ��%u�v��'�ӂ�ͰƲ4��K!G�c��xi9���{��yZ�u�GM���O�c��kT;����?yZh�!���)G������fqM����p�����Ң���*S�,�����F��i1Gu ���r�18�,�8u�8{pQ����xZ �|59�&L����2���f|�����yZ̑N��S������/�@]K�T�O���9�*y�mʜ�H���V%w��#O�n�%��R�Tq1P'�l�vc�&O� ��=p� u>n&{���*�d
i�J���b"T#��[�5�����ѓ����b�B�!}�Ԥ�r@�l��qz"��}�ٲG��2'ifj�T[#��#|�1����a-B-j��'B���eMr��`����l�Nu��v1`�M�I�l�-���j�0���L�g9�В�Ik�]���I&���&��r���� ɭ��1nC�W�x2��p��$?�aCjb�s���eC��c�1G9��[��Γq
w\�e��J;{�1��4j@��^*�q�c��A��@j���k�9"G�	�k*qV��Z AG�2�%�N
��`��0Ր�b0��φ!r�xk��I2e�k43��Dk�x�f���M����"���Sa�� :]]c��x:pAc�;�z-�g�&kgr_���g�Y�
���M�@���Xc8&<��-(��kS�b2�&��R�c�\��o&����8X��5��{au����Xcp��r���TRT����v�p�KXc�[M�F�Sc�k��d_�fyM��L��e���p�/H05�e����$�����{�5�
�alN���!+P$�whD�t�?���a��?�I����aiM�fd��A��1���ٝ#/m3��͝4�F��3`z�w�c�zPf���������f�\mj
`���5���N���5F��Z��9@^w�Z��J�qg�1t��Wa��TNR2LҶ�m��!ޗ���b�4��&��?d?IE�d[�M'+�'����샲N�訣\�@'����ѵ�٬1�(]���u�4���*u����ݰ�X�9 6܎12��L�A{ܘ:�eQ�	k��[���5�p���o�N��F5p��5�i��:i�: ����m&'[X��HYc���Z�E
a�<8�6�hlP����5���i'�Q�zvc�:�b�4�y�1�#�))�����FM��ڭ�k��)��4Y��y
�/t��4��2k�=����ِ��rC�E;���pP�1��X8��;(� �p��5��1�=�m�\�,����eG���kǃx'��(Q|ot#���9�Ӱ���""3��N���+㿈�������lF��8�U�|�Q]�6�ǩ1xp��y�Ɖ�ΩHΨ��݀��1��52ʝ���N'� �p��2|���˨1��H$��T΍�?�e��$�n�D����cl� �  �zJ�Iǖ�BW�j��h��jj����.��yؑiW�w&4���Ǳ�9j�BX֜7��b���q�@ z��q�:�5FP0��3DR9w2R�YW�vH���@��/�gG���XN��]N/���/����(��$�4���
Y'�Xur�E^F�AMAn��|ITK�6.�;a}��(����Rc���1|�cg�#����Vk?&��=����Iic��Lc{��.P9�mÍ3u�#�������UW��6u\����
��Qc(N��eX7���35�rߓ�6���}N�]�'���ܶ��9+`� �1v�~z#��� ܉����G62J���i��-�����6N�G���8���ZN�>2�_#m�9N����.�1��8-x��h.��4�GSI�D%��[Ͻ�8-�X���yھ9x�<�1�	+�j%��W9-H���N�z��A8��HS����]���`rW;��|�]UE�޻9n�����D�곣n�r�/rZx�ȝ��f5�8-bev�'sBx2Ui�̸S�$l2�=�����F2�ܓoSy�W���=��K9-H�f<?���R:`A2<b�S�q��8-��1�/H�����y-ҁ�!�������\|��	5��/�s���^�45�/� 8C�-E���h�DW�3 ӊ�^�����нh�� i�P0 O��rf>����FͷQ����g�L/fO5�a3u_�:N�<����g��ܓ�ғ�(����o��#
Ǒ����٫(��9�B/���o�iA��^j���o����I�)�+*]�Y�<�j��n��d��d���|�rZ�%)��s��+��k�!	�͎�ؾ1�E��LNܴN���@K�����1dn�m8-���[2rxtM��� b��o/�d���iA�ᖭKv���������Q�*�RN$*���q7�ôB,Qgw�ի_v���}��(u�>H�%�ВϠ+�D��uN���.~:�l�y%� ��2v�o�i���x�x�D8KR	�`���>J���iN�v�ް�"�N�%�5���w�ݜ� �2Ro��#�c���ь����aN*�9��Z�v���)i������iA�Uz�9��t��B�/�({x���?A�Bޟ��9�
�Ň��E+���}�;�'�Q�,yUI�_Tm!3��r�Go�g���?a�M��D�w����o�ÎA�@�,��>r���ķ�ٱ��bj���3s�^����U�XE���WQ��d�ʰ��sE��I�	ʫ>-���eI���i����_�,_�?�v�/�G����x�e܅ʹ��� g}+�	rl����IPg'���ۣ�i"ڱ~~�D���!\�x
H �1�Յ�+��r����Wd�2��d^PM/9����դ��
�	�$�n��P����<�is�4m[ηğ���r�<�ᙈkOS
�g=���+��8���ouw�r��X������mƜٮ�_ǟP6E뇉�iqh0�ɗ��EX�H/�� *���Үl�>9�v*����k��?чu�L�hv#����WY�L����7Ɵ B���{�9�}��i
�rY��������*=�X�B{Hz�u<�3\v\2 ��?�A͑�Q����]���,8���'��#��':��}:r#��|ag�����?��̣�n����a�/e�^+�^F.�Ɵ@6?��R����쑦ӝNmD��?�z�	�ui��uuF z���"wҝ~�����>���&���gk9$jx�i�)����%�	�%���ΒXy��Q:�ʵإ��!�	�%�M;��h"��$oC��~�r�q��N�?(�^���'Jö�'�'x&��E���/�`��(��-C�_ş`�����;=J�5/U���m�/�OPC@�AO��j���2�E�n�����D9�je_M����mq�m�!��_�?�Ǆ�ۭH����5܌1H���!%Ω_�?�HI��1f���X�YӜx��g���'�-�F�Q�!�\�$˓���3�}h����`z�ZpS7�j�VEW�w�OP=���S �m�U{��Y��/ğ�M��Sȱ��c�~"4Y)��d�ݿ�ZF����}M&Ǧ9sk�aҐ���O��|��E��Ó����s���d��-�ğ�:����g	�~�g��o��*-�?���5{ʯ�w��q��_�v��c�3��_����������g-�'���-��N'���	������.��n.1�-���x97�SY�l0b���s���pZ��D��5�t��7�Z>�q���'9-��gu��H1H��޹�LKiA���rZP���y$��c&���'q�K�=�[pZ�Cg/��EO!��4������i߀ӂ�Ͳ���a�������Aۋ/� ��jH�-����A�#�Q�����8-PIӮ����F;5���}ł�I3����{��p*�z��=_P�vH^�Fo�s9-|�gթ�N�DC�C�q��pl�Y��Ӣ�R����Ӡ�Uɯ������v�&��Tx�Op�k�>KD~�Q�i���ӂ'w�^=!�#56v�p�m�j7�����Z���b8	�]a�y�"C]閅��38-�8�)���"�ic)$䙛�L��rZ �P������5�ujj�����bN�3�=u�����g�=/�j����pP·�n�AR�c%� I�����^N��:�v���|��H�|=��},���UN�>����:Fܓ2�ݒ꘨�������,��ُ��hJ@28}����d ����:�f���M��ѧ��cn�z��RN��u�Ʋd�0�ur?����s�ʌ�IN>��1z�qoN�ix(���]��#N̽�ӂ��J��6�S�<�"F�dn:.���iч����F"7R�]\���Q�1o�/�(��9�J
���z�������;O���B�pW�#�����M�0���PH?���9-���@�ϦcCdF?QϨ~�'pZp�G�P���:;���k�D@��csZp&���R���Ĥ7m����ON��97�]w�����R}A��Mpcג߆ӂ�|73*�K�:A���-��tg$�� �k����c�$��.��'�P=��8-�<�1T��aw��@G����+g=�?�iaǣ+Ʀ���Bџ٩S-bޥ��pZ��"�k�`݄�&��������z�5�9-����ۋʳO���z�ʼ/�<=�p�k�����1�ke�6�����8-��ei�Sn�n����ųW-�k8-�ɪ�g"�/n����F��M�eG�ǟLF��?��H�;�֧�j�a�`�����W�Q�1���J���6x��6�v�<)z�53����YQ�NO���b6��d
$r�KIz��nI�i[2b�#�%���d@)���N���Th�+����z�'�(4X��eM�O�s��i���Թ�S��d���ь<[�5��@�/+����_HF�G�R�
�F̲�G����^���*y���B?Ǎ�7�aqNy��˥��K�(�&���(Cz�<����y��wj{3U�2
-�9&�r=g�k:�,	no�q������eێ @c6ԹP���ңI�&����B���y�}��D��w|����;/����(H�(Go%
a&��E����"ۈ�N�*}�J6/�E�N��<��v��S��
�����Ϳ��"�\��}5$����e2�H����xv\�*��`o��9��r�Ed��H�uijB���q�¦�q^D׸��d��A���o���u6n�&-���C�"BX��(Ȋ�Q!��@m�aE�4܊gM��]��|�uBG�Ą���-�;��Py�o%��%<�>��7�Uf�Ļ��O����6p��y^C�L%���7JSۉ̜s�גQ883�������V��y�ڪ?����������iy�=      G      x������ � �      @   �   x�5�1�0@ѹ9��+;qӄ�����%ib�jQ)ǧ ����baÚ<J��"��.��x�*�tX8$���zߓf
Vln����6V���=�i��tY����4C*e���^+\΍%�Ȅ����cn�1���+      >      x������ � �      <   g   x����0߸�4@�wʸ���N׿bE;�Ѭ�Lmwś��6�fN9(De��Lc2�hd�\;��Y�t_O�\�� ߝ���%�!�mD�p��N�      H   �   x���;NCA����*�G���Y@6 %�祤�+�d�D��"ҩ��D��TA��д#�J�٥�M�\�� ���Zq54n��r��m��@lė�m�x�֞Z�#�� �f��r�������/�S���񾣁:��2-����s���r��~�������4J�ǔ�7�N9      A   �   x��лNA��z�)����ǦF�@A�)h<����>�"ѤX���'�I�c��f��4��є��.3���ԁ�*h&���P3�<�Ƽ���Ӈ�_֗��%#Ɋx��%�>�v��Sh���*�X��ħOo��7��p�n�
���Ć-z�1��M;�s���!@�G8�fŸ
�B��@P,�#�2s�m���t(�ޥ�� ��gR      E      x������ � �      F   �   x��An�0@�5��p�4�����v6q *���fn_�җ���/�8cr$8��0��1�<RS���P�S���"�0���1��J���:��ݛ�.m���%��V�.VgVh�z��<롰U`�0�p{��7[^���J��ƭ�w�܄�����}����;�      =   �   x����
�@E��W��bdvܧ��`c�6��Nv&M��m�s�s[J� �4�Z�2E��f����C}�@:�sc C�H��n�U�:�FЮF\}��SX��78KMlR2�?_�az���_�>ӽ}t��4L��t��)�N�q�� �u�UU� �D?/      ?   q   x��1�0 �9y�?`䤮�0#�~��nb�J��3],"��Y����1Z�gsgӑ$fp+���ܛ��b(�(��r���,�I4U*a �����&lv��x@~�r�?"��      B   �  x��ZKo]�q^������Uկ�2qb$q��l��~I�H^��E����Rr�3�1#h4������{t�����d��$��tqL1��C�1�������M*7��;?����~�����~����P]�.�N�$t
u�*�2���xE��(�|=�u04�|=E���jͳ�B�;	a���p*un<�ͻ��Oz�������>�?>���4�2ǁ%�Ǐ�kRj���PX�Pj�5P�6�����r$v8Ÿ鈔U��͕8�e2)H�t�Rl�C����We$����k<ٍ�SW���J��.)e+5R8�AK�h�1U�.�YW�����q�̓K�%�&+�T?]W+`�޵���~1Ŋ臃���ll^Gh�Njk�׼:%n��>u
Q����|��c���������&��b���@�"&�ui��|����ز_O���6��Gs�W@�2Z���&g�*nGz*�ANt��£���l��h����i6^=.C�E+60�G��Pl��J^��E�C�9�O���V5�@�n m��'8�"q$͒��K�|����;'	a��=�-�ȽҪU�x��Ĵ���GC�81�M�*+���zl I}�����mQ��kr#���]��چ[�XB�������	?�oRB���

�J�q�@T�*9ʡa�F7TN$[Re��.�QZ�&<��-�r0k>�x��E�|Z�>�A u�)�.�h�6J>Z�Id� �Q�` -��W$VB�������ڒ�D��$�7�%��yF����t��5��n���t�V� 5w����ǫ��n+�f:F���$���8U�	�H
��0��W��|���5X�ے�6�a��"_������MF�^�l^��'���s6qi*��uub�=�m�U�z�]V�kh��z�)�Dήp����e`t�.&#!_lpck$�k2��!qj�NK+ЗB��s��S��~�y�\K����D�5G\��Z��u�eIFw��,bP���j+)���:�y���14Z���V��������b�* s[h���%%����i�.vhCE	�W*�uIIOUAl�eBCWtYM��k���W?���G�ǲ��[�1�S
��h5���X��h�����P��Y'�����T[/i�^O�C�LY��0Ьe�!���b�
o L����CL�b/n���K��c��j1��L���dR�	g�2kHGX�[hSRs[�q�4�{qe
9?QO���wK�kl�Ra�a��=A�S���zue�p8������^�	@�5tv�i���\ȣ��m���l��CUCas+,��ڣB����á��bٴU
�{��VX�V�j �\��Ԙ�GB�+��#��V\ W�B�� �6�c9�%~H�e�5�8�g�����pDL�����;T��E��#��� &vk�a�CF�a'q�j]�f����F-
�ѵ4P��g-��ߞ����^/�}��O�~����7�=����쟞n/_v}�?N��|���t������?ϱ��|����>=��<����;������?@�������� �C� �&w�trAS��k��P �j������aI2����C}+�K!��������d��NfF@r�2�~o�NM7B��V6���Z�)V�����d�"`P W�T�h5������`��<�L�j $��a�l�J����E����d�J��
1��(� ��][���X�~���t=y�:5ŋ�X� �%(����u ���# &��Yz�7>��z�(��Cl�B %�])���L�T F:��Z��G��fΞ�f��eE|P��k! t���O����aZ�^c�6��\Su����!
��'�*����9�����X��nnF�/*	�p�W=�դ���š�����q�����Z3j��
s�mM�>����'=�n�A�Y�pǽ��H��f0:��:>���8��K1�5�T�R�ƛwww�g��O�o�����u$�d���c��`�0yӖBQ���\�̷��.y��G+p�؉�C�3��M v\�f�p�P8��nD�4�bfcG���;�r��c��f��ˎ���HD`H6�Q�4�Q>l�@�Vga�C?���l��H$�-{}���!����Q�1.����e��z�pJo����F�SY�
��2���[�ƾ�Q>��y(Z'��-27�=ء�t��J� ��V�흡k�y��	v=��*X��� d�M��]>�s:Bt4J��8a�92�J	��)&�y��D�Se�����&s�1¾e�7��(�K�P1=�̔�t�1��T�*�e�%qr��v� 	/ .��rХ/�C6�ϡ�̈�'�7�]�%A��9���>r	S�`[���ﰔ&ӛ��X�4V�J�衇�vy[JÍ� R���.����L ����_;}xʟ����l��^���~��wgk	s��Y���|~ޟ���~����~�8�쟞�,�B\��/��w'�[�˛_Y@��&�U�p $�Pz֩��_�ɻ��k1ƏO�����^H��O�a�\%�5n�5ko��1 �	�o��1������\��/ϗy������gXz��2�<i�h�q�0�O�ۻ�?�u#��8�-;�ۇq��r~z�˃������d2'B�2Z��}�6j)�\�������vA�ﱫ�o������a�����������m���a^����~�i�ǿ�������^�>�˟���6����W�i9��=�/�f�͘ЫK�#������=��	�
jh��Q��3�V��jS��=�\��F%[>�AT�]��&P�� ��{�!��Z'�?�LE+-���c�V"i���>��29�kt�ǽ�����o��>?{�8%��0�ϯ�|�����7>�����?|�>�)�O�G8)�<�%����vг����9�^�6I�ӄ���-�t���9/�"3w<��}���)م�"	"�.M.��YC�����!�8�W�v	��#�%�ʭpG5���<d]k�ׂ�҈v��]aj��Q��K�P����l­ۭ��e_# �\�c:��)�$Ñ���Д�!7�v����ietH킕�	����l|9upM�^����j�U��:iK3�)��8�I�&\}����:��v��������_C�H�e�{���՞����@v����L=�5_�:���P*�QF.��L8К�α�����B{n{����$gϊj*+E����������i�l���`�ͷ�/�@]$�в�dW��lK`na�\���!��+���<�D��!�}�.	[���Գ��d�������G��yå���j�A��Fn\�U�(H?-��)-��ˡ��U���|i_�}�W�X��]�����վ�9�61�Ӿ)�)*�-��/S��.�"!�b��;tp>\���"��۶�����      ,   P   x��1�0 �^�0@)7���JM��o����fN2��US�%mնt�hP�:�|��%���,��D�?FrH      -   �   x���=ND1�:�\���_�����8���� <�)�O3���	S��D3pm��G�^מ�����|~}gy��do��ߔڵԫVNOX�$q�O	X�2b+m�B�!�ߜ����h�jN?��`e�>��T{i|S��Ė�pY�A�t��e��E�?�':��:���0d3�9[i�gFa��r]�!��H:�p���aB�"[��Q�p�7����~]��k�      .   �  x���=��0�k�\@�d�آ�.�	hl�fh��ΏBC�w&]2��>��#WmpHĭA�8pƚKȃ�ê���o?~��}��^*�:T�����S���8*�� �W�<��e)�5MW�I�a�4�Y'�e+e)�Z�5͊c.�R�A��yR]��y�"�"�iʡ�
��,�
����m���Mjy��o��?�3���I}���E���IF��},��JC|�sJ�j����UI�vK�{6��	��L��;~�3O5����K�3Y��U�uPU�ݤ��=���хW�0]��C �ѻ�9X��
>���	ehx�T�<��b:Mi��_w߿��]�,���:DHO����m�����h�����&�؅�+��r��-ˇG$��������4:j��8��+隐	��d��N�ՙ�8���0w�+ݡٶ�c�zq'�V�1ʗ��l�m2��8(��k����s��׍�3!C�U/�z��͈�Ϩ&�LS�����Lp��8Ө�{���=��Tp��7�^��`�s̜{��5���ȓNφ?�#��W��x��1�6�9�my�b�<��g׮cg G��2>��C��B�Ij��N��H����2��;ϛ��Ʉ|g��j���{2�����/�����      7   �  x���1�\1Ek�*�"�`�t�Gc���+��7�Fr���Ǡk�0�0���h�deΦm5l����پ#- �����kyW0t�*�%mX�-Y�6�9�c��P�l��	}���\k��̡{���=�$�֚+P��-�h��͞9Ah��}@(	�;��w�C!��m9�s��}��S6���Z>mg�2z�H��t����p�pߓu6~�\�"~N�����2���Ǒ֟9g镤Sig�\g�<`-��8BM�9�r5bǬ��23��{�>�[#|��%&����d�qMOT��7�H�rz����N���:7&]F���R�A�V#;�=�i/�f�o���j2�����}���f��H	��M9{��F������ĢX��Œ~@����z�f��      /   �   x����me1Dc�*� �DQ�܇Q��ֿ�+x #s�g�M8,ʢ�J
�R�� �������w�Oc�	������w�h6jˌʽ��͠��&��"����<�{[�+@ql�c
s�WZ�J5�9o�FUۂ�]�2;H������3�h��*�-60`���YGX�%� �����8�ݴpU���Jl#�?d���;茫�C��Z0d��4�w��<�B�fwb�1��V���[���1�����<��m�      6   �  x���1��0Ek�� �")2��҈��j`��#tv��b`n$>��e�ͫ���] 2<9�G�I��Bă�z�����s||\��z)�P�!���Ì��B�� j��iege��8Ѱ�0E�Ʋ��o�S����\g�&!Y�!�!�wÍ��x'�r%uH�e�\M�Z'�q�8��/�y�Vb�-A:Ki�km׹zo5�=���eV�kQ�/�>����t��^�_�DpB������Qy/iB����>/�=e�Z�����\�Aj��٬(o�s��ѦA5C -+���Q`�1v��p�q�d�{Z������y�B�C�����D�ހdO���57���������1��&*ڄīAk"���e�Y��S����<��{g      8      x���I�9p������y����&9�>��(yы�������R"c Y�j�z7�.w_���]�u�����b��������������_�a��������=��UW)5��n��eK��~����皵ğ���N�����ܢ�!'7S�.�ac�X���^'�he���m�峺3�볏�R^cfj���F;7�Uww���FHݥrk\�j����Do��[\[��>y�9�w)��?A�_y�3V9���n�lSa�}\�vh,�L����9�yz
��Ƽj�@@��Hm������:>�6}o��.��]�{����y�(~�ü�I�l�w��7c߳�K��^\�*�u��fE�[=l�շ�7Nwά!%3+��{�6�l-/`��q��p��P�#�_����ZXkN��d��bf}Wӌ��7����ҕ������ԍ�m�kq��o3�_��i�t�M�y���h��Mi�!\0�@�N_)GMm�i�7jKn?P�⸿��i��E���E�Y���Y�r���6S�~�6ю��X���)�w;��ף�Y�
U:��m4m�ӯ�-�/| ����̃������,t蛕ˀ��/|@��%��t~��2�t��n�g�}�=���]j���=�N�����4�N�O?�/~ d�����R�a�����<q�^�<���>7?+P���2�2�����α� ��3��Ի��] �n�ݶ���_� Ȟ{�p2d����,������ H��휃���l?����˫O��'�> r�=�~rt���,k[9�ζ�� Y�P��Q>��L.�iԙ�@a? r�n�>p~�!m �b^�	�E%�������n@��+��*�ص�G��T��¶"�z�]�"j�\]�Gh���~��cIq�R]8�X��Y�P��!�t�e�~����ɗ�/>ZjZF����t~��ۈ�o[.��bH�ͦ��7��K��Q���q^�S�F����3���^��d���I�����!�I�/�4�/}@v�w�db٫>�&� �����֡�d�kqM~xH)\$v	
_s�bu��d7������I��q����k>��_���S�u7W����tz��!qH���-��zGV�
15Ë������FP�_�-��n�u�ف������1^��W��6bmk	�۬<S����l�f׮-�ȃ�>��SK�B��)�w5FfDҵ��i��KCg؄���`6j7Y�ß���C�
#]'��u���.�&ƃ�X�b״j��e��u<;�]���Cd�u(B�8����Ivj�P�Q�XD��ǥo+�\"�k�`e�2x�+Pφ���a���� ��3Z]�̭3�0
$t�1��� �uF4=��j��x>��+��o�j4�u��i����������b����N�A�.��Fh����F��ZE��T:�%w~�k��h@��#��"jxt��A�Z�c�Uz�%(��:��b� �#������s̲֮�(�����3jӪW#1���Oy#P�h��F��X����"����5�)���ZŠw�����Ԓ@���[w0%��n!t���[VB﮷i��#14�"��an͸VߺP����v\�lE��`�ࣿ�)��]�"<>&�d?��G��Z��@l��=�*��#���:��"�;�yȈ�!�:-:K�h~�.�9vz-tGۭ���E75FD`cz��=BS�yo�eVO%�F�cLt�nÄ̅Х}�
}@6�� C��|ju��R���C^�&e�w�k�d_�h���h)�(��J�SY�FH��h�N����j�v �rP���l@�1�Ӆ���p��׀�� {��,�Z�q��k\Gn�,s���c��7�te�wi��q�+�K��b?�,O����T�R�y��q��ʬM!�G�ӻp�-e+���d{�y0�l:ݑ���i.�{����N��N+2�m������m��g��M�m���r����]�,�Jl����2���X�8 6�d���5�H��l�Ϙ���*�x��:ae�s�e޻/#�@@5��`Ҵ���1��9h�'˼��ص��ZD�4l$+���e޽ȭ�}����bǉ�W�a�����,�������fI*��d|LVB+ᶚ����1�y�f��
 �c�XЀ�A���,�>"�fg���Ϲ��7��w��̇����$<��N�a����_���^Y惭!�����b��X S.S`3�d�Q�eC�H��OG�:�Mʝ-�y�e�)g6#�0 �����ջ�Kc�,�F�������klt�+�-.QY�)���s̰!^{L��E�A�s�"a8>�>�P)>��Ĳ]�Di�F�bN��J��{�[	56w����2��Y
!6@̺Q�0�WS�!�+��Yf��m�ʇBv��BG@��~��� �sfκSy/��>F���*���J����1O�D�^�Yx�cn����ϲ3FkGڶ� ���xŌ�w�Ji;R���D7�5N.���4_ֈN�61ֲ�U�O�NF��~�kSe�+�浴����+
i�����Xy�DFx�#�D\�CWHV;Z�ӆ/�>���|�X�eZB ���������k>,�:�9�k��(��ޚ_�C�l>��#:��@n7]g��b��s�$%���o�A���'y��Y��k��h�a���X�䷬��X�ڮ�@y(ۼWj�拡tWy=ύM�ܑ�!��vl
7��X��ż��`�m��X��k-��/]�C�%!�X��Q4�w��I�7fה� ��N6K��o���|�a�R����|јB����H�f/G����|Ίn�8u�9�0�j�z� %l%��J�D� U�b����R�Wh	T���N�%�\�uj������8�����d��G�6@��;�O���B�<]�e#q/�qs�xz�|ZX0z�����-��(7gY��+1|��y�b�{�]c&�f�W�R`<����u���d�90^sXĭc�0��D@|��q1:��·��y2}ϊ��,fVŘ� N��/4�8/������Ow�(� |y��:�t���z�$��V@7�m9g����X�H8���E	�C����µ'�|PΎ6d�n��Ix�\9i���}�v> ��5ɕO9�龼��Q������_���c�u�:싕�Bᚄ��z3}�8��S����3;��#��V[f�+)�WZ�v��H8'�r���⪑������u��Ř0�yAU�]�N�j%W����}�;Մ��m�w&�:�E�`�P `e��Js�V�\�E_t���2�+m�\���
=ƴzN����C�NX��F�x>�ͦ��^�o�Q4R�DV�CH����QGŞ(�'m�&���@SG!�e݋�Z�+�|�O�Sh��-<�<��Fx���z�M�&q�E���%��L����ě
>����$Z��Jd�ϺkKn��W���J}���N#�Q�Θ�4rE3S�}�B~w3?�C*�}��Ef�܋���V�yQ�s���J�.Q��%�J�mD=6
>�k��A����Ԕ �ǌx���r>�SF���A�^�=�j����H[������#�v�6e����c���
�
>��@0�?Y�=e݈d����Nh�>��D�ly�r�	����|��ҟ;�/�.�a3nF�,Y���c�ڱ����tW�ܽ��?���sd�l�h@��l�|^+�!M7�j���j���e��)Sc��O�Х#�@�Fg�'�p�qN}�t�+��u\ӽ�^��QSwa�u˰�w_ <n "�����ݘ{N�J�h�'���x��?,�g}�m�ӻO(	�R�~��k%���Ł��KҩSG��8W}����ǃ*�V����b��(�k,���<-���30r�|W�<ٻ��� �x��.%<��r�Wb����Z9A�^'D;V��}���:�Us��n:n�a䠑�v�8M�J���."(����p���Fj��2J}��k�M`Z�Q��ȩ���:��)0�%>�;*5���P�� :P�?   �\"F:O�y�x�k�^]��;��B����7�$�'����=���o���x6�*A�B�|�9s�S����!ǋO��E�ICO��|޹ /pumy�ץC��˩���z���	>���%�fy�o�&#�f-o߳'5�'��W�ab�1KE/���+/�h�#?��U���t�O��4=|��j�ݒ�a���fa�<�IC�B^~.�\(�y���xԮ������ܣ�����R�'A(>U���w��M+�v�|��Tȇ9m%稇�DMK�՝�L�X��ɩ`�7�ˣ���ƣ�	����1���!���fK����Nv�t}azpD��_0��}ޓ��zF�owc�
jc�V���=��}���B�0��.!pL������'���)�7x*G�=����S��LH�X��`ѽ-5�x�⹀J��,5$�ꔽ�����QH���=V��=;�)���1��w�<�z��p�b ԧ2u��c��|�5x�Rp��Dh��/(j�cΚ.���W:�b�g�t�;�^��=9r=1,Ƹ��k�HP��n2�J)ny�ڙ���{�~�
,MYz����5�>}��4�E�P1+0c���&�X��s��|^A#+c'\�ˣ��N�=L�/8�_���B��|���nU��IG���9�.�b
>���^A�u��u+�	GϏ�-i�?��
���-}�1��Y`�Z�{u����>��!�9��Q��#�y'��s���k����<��n����C讓�S/��}:��*���o�H��5��:\��ԛ��d��FBs�,:����Mwǩ�����d��N#�eE��y	�������.;���|�g7.6�Ig;cvt��E���S�����җkz� �Ԋ_k�5��������n��+<B��[���0���Z�M�᛫�a�r��GH�'�sɕU�@�L7��[)
c_��w�EN�֢o���^�M��RԻ��ɻá@ųUt�	>��S���߲8�x׭��g�B�	� S��q��
��sS��t�/���Ƞ��i��	�t������m��9���SG-���|�׉�L�B&��̳�)H�u0s�5)~���H��H�9�0���+W_��v �'�|�;?Ђ��r���KHÊa�DN��'��c�.]�D��������Wd8��I�n|>�ida;v�9�U�q�
!x���|��Tv�
����bL=�+^�d,c|�|�+�A�ⷡ�6p�M���`���'��;�Z<�P������k�L� {���'��Vp���ܬ�o�	!��&E�i�^�O�y�:bcڜ�� D�	���q�9y��	>���6�3�%SfŲ���N��=���yg_x���m��E76�iw4����	>�� �ZY:��ä�p䋑�
�z��E F륤^:�-D����A_F`T�Y�	>�j>��m�U��Q_m��(=�Ǣ�[V��/����n|�
MH�U[�6�|��.���ޔ�g� @_M_Wϳa�f�����#o����L$g�\W��m�������N'���[fu9�Wڳ�@�{��{{z4?_Ziv�kL��{�6����U�����ػ�yR�Ͼ�H��z���>�����\;��  $��F<:�������+�BK�)�d���fs�`:\T����Vs��^d٩�6��סX��su?�]k�T���_����Vڰ�<;���S�xX���h��ۼ
��3���v)YW>������o�W��\Hs�gn��V	�-�6��M7�n�=����S���o���_������F~      5   w   x���=�0@��9���i6�����ĐΏ��қ��ך�VVV���a��xk����j�,�\ۼ�:(L𢅥�_N"�on�qh!�@�ѐ��!)�ǳ�AA-CHY�淳s�:y/�      0   O   x��1�0 �^�0P��n��� &���x9�(�TM�+JM�"MW�v��\`�q?	�1�wb���q����             x����n�0��˻4�OQ�u,�ˀ�!�0��h�&��8{��6�^G'���O��
e�@���n��s�zjƮ?~�5���ܞ~v���z��+�R�T!�O}��6ͷ}{��	9�!�C
�\o�q�N�eXB}�}��j=�[ ���+���k��C{�HI��G��1���ɨ=߽\�]���@E��#��x�	 ������=�>����D!H�95����M}n�A?_�3rL�c36o��]�8�g)L)�[�_�(F��� H@1��H K�� ��{3�>�ꩁ��/�u0�р�G48�A�R�f�>�Zhd�ZB*���)��:�LB�N�e<�4b���m ���(@�;��ܕ�B�3�sN#�j2%�x\����N<	4��#a�xhT�Xf��� 4�9��	σ+�g�͞J�����2)�m���@�ix*��(S�W�2��CH2[w��@woԑ����`z�e>s�{ ]T!��a�֡c�Y�|�'u�d���<��^�V� �&�-     