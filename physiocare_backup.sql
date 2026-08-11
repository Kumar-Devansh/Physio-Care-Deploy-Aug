--
-- PostgreSQL database dump
--

\restrict Lc6DOhvhJCcpfam3HYbPFsW5rqMjLMEWV5C9mN1uTuoRCcJKyjtKHhifv3suU9F

-- Dumped from database version 16.14
-- Dumped by pg_dump version 16.14

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

ALTER TABLE IF EXISTS ONLY public.django_admin_log DROP CONSTRAINT IF EXISTS django_admin_log_user_id_c564eba6_fk_auth_user_id;
ALTER TABLE IF EXISTS ONLY public.django_admin_log DROP CONSTRAINT IF EXISTS django_admin_log_content_type_id_c4bce8eb_fk_django_co;
ALTER TABLE IF EXISTS ONLY public.core_treatmentplan DROP CONSTRAINT IF EXISTS core_treatmentplan_patient_id_e727b9e7_fk_core_pati;
ALTER TABLE IF EXISTS ONLY public.core_treatmentplan DROP CONSTRAINT IF EXISTS core_treatmentplan_doctor_id_6580770c_fk_core_doctorprofile_id;
ALTER TABLE IF EXISTS ONLY public.core_progressentry DROP CONSTRAINT IF EXISTS core_progressentry_patient_id_032d97ad_fk_core_pati;
ALTER TABLE IF EXISTS ONLY public.core_prescription DROP CONSTRAINT IF EXISTS core_prescription_patient_id_56c70a0a_fk_core_patientprofile_id;
ALTER TABLE IF EXISTS ONLY public.core_prescription DROP CONSTRAINT IF EXISTS core_prescription_doctor_id_bb81dd1b_fk_core_doctorprofile_id;
ALTER TABLE IF EXISTS ONLY public.core_payment DROP CONSTRAINT IF EXISTS core_payment_patient_id_379302b3_fk_core_patientprofile_id;
ALTER TABLE IF EXISTS ONLY public.core_payment DROP CONSTRAINT IF EXISTS core_payment_collected_by_id_63eb09d2_fk_auth_user_id;
ALTER TABLE IF EXISTS ONLY public.core_payment DROP CONSTRAINT IF EXISTS core_payment_appointment_id_4b8c4994_fk_core_appointment_id;
ALTER TABLE IF EXISTS ONLY public.core_patientprofile DROP CONSTRAINT IF EXISTS core_patientprofile_user_id_776323f1_fk_auth_user_id;
ALTER TABLE IF EXISTS ONLY public.core_patientprofile DROP CONSTRAINT IF EXISTS core_patientprofile_registered_by_id_979c6af6_fk_auth_user_id;
ALTER TABLE IF EXISTS ONLY public.core_notification DROP CONSTRAINT IF EXISTS core_notification_user_id_6e341aac_fk_auth_user_id;
ALTER TABLE IF EXISTS ONLY public.core_medicalrecord DROP CONSTRAINT IF EXISTS core_medicalrecord_patient_id_86c0486f_fk_core_pati;
ALTER TABLE IF EXISTS ONLY public.core_feedback DROP CONSTRAINT IF EXISTS core_feedback_patient_id_9eb76e58_fk_core_patientprofile_id;
ALTER TABLE IF EXISTS ONLY public.core_feedback DROP CONSTRAINT IF EXISTS core_feedback_doctor_id_e5039c9a_fk_core_doctorprofile_id;
ALTER TABLE IF EXISTS ONLY public.core_exerciseassignment DROP CONSTRAINT IF EXISTS core_exerciseassignm_patient_id_805dd424_fk_core_pati;
ALTER TABLE IF EXISTS ONLY public.core_exerciseassignment DROP CONSTRAINT IF EXISTS core_exerciseassignm_exercise_id_c9a01b97_fk_core_exer;
ALTER TABLE IF EXISTS ONLY public.core_exerciseassignment DROP CONSTRAINT IF EXISTS core_exerciseassignm_assigned_by_id_a26ef66e_fk_core_doct;
ALTER TABLE IF EXISTS ONLY public.core_employeeprofile DROP CONSTRAINT IF EXISTS core_employeeprofile_user_id_64abf4fb_fk_auth_user_id;
ALTER TABLE IF EXISTS ONLY public.core_emailotp DROP CONSTRAINT IF EXISTS core_emailotp_user_id_fc31491f_fk_auth_user_id;
ALTER TABLE IF EXISTS ONLY public.core_doctorprofile DROP CONSTRAINT IF EXISTS core_doctorprofile_user_id_7f2b80b7_fk_auth_user_id;
ALTER TABLE IF EXISTS ONLY public.core_contactmessage DROP CONSTRAINT IF EXISTS core_contactmessage_handled_by_id_52d9874b_fk_auth_user_id;
ALTER TABLE IF EXISTS ONLY public.core_cmscontent DROP CONSTRAINT IF EXISTS core_cmscontent_created_by_id_d4e006f9_fk_auth_user_id;
ALTER TABLE IF EXISTS ONLY public.core_chatmessage DROP CONSTRAINT IF EXISTS core_chatmessage_sender_id_c9992722_fk_auth_user_id;
ALTER TABLE IF EXISTS ONLY public.core_chatmessage DROP CONSTRAINT IF EXISTS core_chatmessage_recipient_id_99e45b75_fk_auth_user_id;
ALTER TABLE IF EXISTS ONLY public.core_appointment DROP CONSTRAINT IF EXISTS core_appointment_patient_id_960b1d60_fk_core_patientprofile_id;
ALTER TABLE IF EXISTS ONLY public.core_appointment DROP CONSTRAINT IF EXISTS core_appointment_doctor_id_c3a00eba_fk_core_doctorprofile_id;
ALTER TABLE IF EXISTS ONLY public.auth_user_user_permissions DROP CONSTRAINT IF EXISTS auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
ALTER TABLE IF EXISTS ONLY public.auth_user_user_permissions DROP CONSTRAINT IF EXISTS auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
ALTER TABLE IF EXISTS ONLY public.auth_user_groups DROP CONSTRAINT IF EXISTS auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
ALTER TABLE IF EXISTS ONLY public.auth_user_groups DROP CONSTRAINT IF EXISTS auth_user_groups_group_id_97559544_fk_auth_group_id;
ALTER TABLE IF EXISTS ONLY public.auth_permission DROP CONSTRAINT IF EXISTS auth_permission_content_type_id_2f476e4b_fk_django_co;
ALTER TABLE IF EXISTS ONLY public.auth_group_permissions DROP CONSTRAINT IF EXISTS auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
ALTER TABLE IF EXISTS ONLY public.auth_group_permissions DROP CONSTRAINT IF EXISTS auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
DROP INDEX IF EXISTS public.django_session_session_key_c0390e0f_like;
DROP INDEX IF EXISTS public.django_session_expire_date_a5c62663;
DROP INDEX IF EXISTS public.django_admin_log_user_id_c564eba6;
DROP INDEX IF EXISTS public.django_admin_log_content_type_id_c4bce8eb;
DROP INDEX IF EXISTS public.core_treatmentplan_patient_id_e727b9e7;
DROP INDEX IF EXISTS public.core_treatmentplan_doctor_id_6580770c;
DROP INDEX IF EXISTS public.core_progressentry_patient_id_032d97ad;
DROP INDEX IF EXISTS public.core_prescription_patient_id_56c70a0a;
DROP INDEX IF EXISTS public.core_prescription_doctor_id_bb81dd1b;
DROP INDEX IF EXISTS public.core_payment_patient_id_379302b3;
DROP INDEX IF EXISTS public.core_payment_invoice_number_898502c7_like;
DROP INDEX IF EXISTS public.core_payment_collected_by_id_63eb09d2;
DROP INDEX IF EXISTS public.core_payment_appointment_id_4b8c4994;
DROP INDEX IF EXISTS public.core_patientprofile_registered_by_id_979c6af6;
DROP INDEX IF EXISTS public.core_patientprofile_patient_id_e654f996_like;
DROP INDEX IF EXISTS public.core_notification_user_id_6e341aac;
DROP INDEX IF EXISTS public.core_medicalrecord_patient_id_86c0486f;
DROP INDEX IF EXISTS public.core_feedback_patient_id_9eb76e58;
DROP INDEX IF EXISTS public.core_feedback_doctor_id_e5039c9a;
DROP INDEX IF EXISTS public.core_exerciseassignment_patient_id_805dd424;
DROP INDEX IF EXISTS public.core_exerciseassignment_exercise_id_c9a01b97;
DROP INDEX IF EXISTS public.core_exerciseassignment_assigned_by_id_a26ef66e;
DROP INDEX IF EXISTS public.core_employeeprofile_employee_id_a1110616_like;
DROP INDEX IF EXISTS public.core_emailotp_user_id_fc31491f;
DROP INDEX IF EXISTS public.core_emailo_user_id_0f3a68_idx;
DROP INDEX IF EXISTS public.core_emaildelivery_event_key_62670e13_like;
DROP INDEX IF EXISTS public.core_emaild_status_e2c969_idx;
DROP INDEX IF EXISTS public.core_contactmessage_handled_by_id_52d9874b;
DROP INDEX IF EXISTS public.core_cmscontent_created_by_id_d4e006f9;
DROP INDEX IF EXISTS public.core_chatmessage_sender_id_c9992722;
DROP INDEX IF EXISTS public.core_chatmessage_recipient_id_99e45b75;
DROP INDEX IF EXISTS public.core_appointment_patient_id_960b1d60;
DROP INDEX IF EXISTS public.core_appointment_doctor_id_c3a00eba;
DROP INDEX IF EXISTS public.auth_user_username_6821ab7c_like;
DROP INDEX IF EXISTS public.auth_user_user_permissions_user_id_a95ead1b;
DROP INDEX IF EXISTS public.auth_user_user_permissions_permission_id_1fbb5f2c;
DROP INDEX IF EXISTS public.auth_user_groups_user_id_6a12ed8b;
DROP INDEX IF EXISTS public.auth_user_groups_group_id_97559544;
DROP INDEX IF EXISTS public.auth_permission_content_type_id_2f476e4b;
DROP INDEX IF EXISTS public.auth_group_permissions_permission_id_84c5c92e;
DROP INDEX IF EXISTS public.auth_group_permissions_group_id_b120cbf9;
DROP INDEX IF EXISTS public.auth_group_name_a6ea08ec_like;
ALTER TABLE IF EXISTS ONLY public.django_session DROP CONSTRAINT IF EXISTS django_session_pkey;
ALTER TABLE IF EXISTS ONLY public.django_migrations DROP CONSTRAINT IF EXISTS django_migrations_pkey;
ALTER TABLE IF EXISTS ONLY public.django_content_type DROP CONSTRAINT IF EXISTS django_content_type_pkey;
ALTER TABLE IF EXISTS ONLY public.django_content_type DROP CONSTRAINT IF EXISTS django_content_type_app_label_model_76bd3d3b_uniq;
ALTER TABLE IF EXISTS ONLY public.django_admin_log DROP CONSTRAINT IF EXISTS django_admin_log_pkey;
ALTER TABLE IF EXISTS ONLY public.core_treatmentplan DROP CONSTRAINT IF EXISTS core_treatmentplan_pkey;
ALTER TABLE IF EXISTS ONLY public.core_progressentry DROP CONSTRAINT IF EXISTS core_progressentry_pkey;
ALTER TABLE IF EXISTS ONLY public.core_prescription DROP CONSTRAINT IF EXISTS core_prescription_pkey;
ALTER TABLE IF EXISTS ONLY public.core_payment DROP CONSTRAINT IF EXISTS core_payment_pkey;
ALTER TABLE IF EXISTS ONLY public.core_payment DROP CONSTRAINT IF EXISTS core_payment_invoice_number_key;
ALTER TABLE IF EXISTS ONLY public.core_patientprofile DROP CONSTRAINT IF EXISTS core_patientprofile_user_id_key;
ALTER TABLE IF EXISTS ONLY public.core_patientprofile DROP CONSTRAINT IF EXISTS core_patientprofile_pkey;
ALTER TABLE IF EXISTS ONLY public.core_patientprofile DROP CONSTRAINT IF EXISTS core_patientprofile_patient_id_key;
ALTER TABLE IF EXISTS ONLY public.core_notification DROP CONSTRAINT IF EXISTS core_notification_pkey;
ALTER TABLE IF EXISTS ONLY public.core_medicalrecord DROP CONSTRAINT IF EXISTS core_medicalrecord_pkey;
ALTER TABLE IF EXISTS ONLY public.core_feedback DROP CONSTRAINT IF EXISTS core_feedback_pkey;
ALTER TABLE IF EXISTS ONLY public.core_exerciseassignment DROP CONSTRAINT IF EXISTS core_exerciseassignment_pkey;
ALTER TABLE IF EXISTS ONLY public.core_exercise DROP CONSTRAINT IF EXISTS core_exercise_pkey;
ALTER TABLE IF EXISTS ONLY public.core_employeeprofile DROP CONSTRAINT IF EXISTS core_employeeprofile_user_id_key;
ALTER TABLE IF EXISTS ONLY public.core_employeeprofile DROP CONSTRAINT IF EXISTS core_employeeprofile_pkey;
ALTER TABLE IF EXISTS ONLY public.core_employeeprofile DROP CONSTRAINT IF EXISTS core_employeeprofile_employee_id_key;
ALTER TABLE IF EXISTS ONLY public.core_emailotp DROP CONSTRAINT IF EXISTS core_emailotp_pkey;
ALTER TABLE IF EXISTS ONLY public.core_emaildelivery DROP CONSTRAINT IF EXISTS core_emaildelivery_pkey;
ALTER TABLE IF EXISTS ONLY public.core_emaildelivery DROP CONSTRAINT IF EXISTS core_emaildelivery_event_key_key;
ALTER TABLE IF EXISTS ONLY public.core_doctorprofile DROP CONSTRAINT IF EXISTS core_doctorprofile_user_id_key;
ALTER TABLE IF EXISTS ONLY public.core_doctorprofile DROP CONSTRAINT IF EXISTS core_doctorprofile_pkey;
ALTER TABLE IF EXISTS ONLY public.core_contactmessage DROP CONSTRAINT IF EXISTS core_contactmessage_pkey;
ALTER TABLE IF EXISTS ONLY public.core_cmscontent DROP CONSTRAINT IF EXISTS core_cmscontent_pkey;
ALTER TABLE IF EXISTS ONLY public.core_chatmessage DROP CONSTRAINT IF EXISTS core_chatmessage_pkey;
ALTER TABLE IF EXISTS ONLY public.core_appointment DROP CONSTRAINT IF EXISTS core_appointment_pkey;
ALTER TABLE IF EXISTS ONLY public.auth_user DROP CONSTRAINT IF EXISTS auth_user_username_key;
ALTER TABLE IF EXISTS ONLY public.auth_user_user_permissions DROP CONSTRAINT IF EXISTS auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
ALTER TABLE IF EXISTS ONLY public.auth_user_user_permissions DROP CONSTRAINT IF EXISTS auth_user_user_permissions_pkey;
ALTER TABLE IF EXISTS ONLY public.auth_user DROP CONSTRAINT IF EXISTS auth_user_pkey;
ALTER TABLE IF EXISTS ONLY public.auth_user_groups DROP CONSTRAINT IF EXISTS auth_user_groups_user_id_group_id_94350c0c_uniq;
ALTER TABLE IF EXISTS ONLY public.auth_user_groups DROP CONSTRAINT IF EXISTS auth_user_groups_pkey;
ALTER TABLE IF EXISTS ONLY public.auth_permission DROP CONSTRAINT IF EXISTS auth_permission_pkey;
ALTER TABLE IF EXISTS ONLY public.auth_permission DROP CONSTRAINT IF EXISTS auth_permission_content_type_id_codename_01ab375a_uniq;
ALTER TABLE IF EXISTS ONLY public.auth_group DROP CONSTRAINT IF EXISTS auth_group_pkey;
ALTER TABLE IF EXISTS ONLY public.auth_group_permissions DROP CONSTRAINT IF EXISTS auth_group_permissions_pkey;
ALTER TABLE IF EXISTS ONLY public.auth_group_permissions DROP CONSTRAINT IF EXISTS auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
ALTER TABLE IF EXISTS ONLY public.auth_group DROP CONSTRAINT IF EXISTS auth_group_name_key;
DROP TABLE IF EXISTS public.django_session;
DROP TABLE IF EXISTS public.django_migrations;
DROP TABLE IF EXISTS public.django_content_type;
DROP TABLE IF EXISTS public.django_admin_log;
DROP TABLE IF EXISTS public.core_treatmentplan;
DROP TABLE IF EXISTS public.core_progressentry;
DROP TABLE IF EXISTS public.core_prescription;
DROP TABLE IF EXISTS public.core_payment;
DROP TABLE IF EXISTS public.core_patientprofile;
DROP TABLE IF EXISTS public.core_notification;
DROP TABLE IF EXISTS public.core_medicalrecord;
DROP TABLE IF EXISTS public.core_feedback;
DROP TABLE IF EXISTS public.core_exerciseassignment;
DROP TABLE IF EXISTS public.core_exercise;
DROP TABLE IF EXISTS public.core_employeeprofile;
DROP TABLE IF EXISTS public.core_emailotp;
DROP TABLE IF EXISTS public.core_emaildelivery;
DROP TABLE IF EXISTS public.core_doctorprofile;
DROP TABLE IF EXISTS public.core_contactmessage;
DROP TABLE IF EXISTS public.core_cmscontent;
DROP TABLE IF EXISTS public.core_chatmessage;
DROP TABLE IF EXISTS public.core_appointment;
DROP TABLE IF EXISTS public.auth_user_user_permissions;
DROP TABLE IF EXISTS public.auth_user_groups;
DROP TABLE IF EXISTS public.auth_user;
DROP TABLE IF EXISTS public.auth_permission;
DROP TABLE IF EXISTS public.auth_group_permissions;
DROP TABLE IF EXISTS public.auth_group;
SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: physiocare
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO physiocare;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: physiocare
--

ALTER TABLE public.auth_group ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: physiocare
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO physiocare;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: physiocare
--

ALTER TABLE public.auth_group_permissions ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: physiocare
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO physiocare;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: physiocare
--

ALTER TABLE public.auth_permission ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: physiocare
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO physiocare;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: physiocare
--

CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO physiocare;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: physiocare
--

ALTER TABLE public.auth_user_groups ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: physiocare
--

ALTER TABLE public.auth_user ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: physiocare
--

CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO physiocare;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: physiocare
--

ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: core_appointment; Type: TABLE; Schema: public; Owner: physiocare
--

CREATE TABLE public.core_appointment (
    id bigint NOT NULL,
    scheduled_at timestamp with time zone NOT NULL,
    duration_minutes integer NOT NULL,
    concern character varying(240) NOT NULL,
    notes text NOT NULL,
    mode character varying(20) NOT NULL,
    status character varying(20) NOT NULL,
    reminder_channel character varying(30) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    doctor_id bigint NOT NULL,
    patient_id bigint NOT NULL,
    checked_in_at timestamp with time zone,
    updated_at timestamp with time zone NOT NULL,
    CONSTRAINT core_appointment_duration_minutes_check CHECK ((duration_minutes >= 0))
);


ALTER TABLE public.core_appointment OWNER TO physiocare;

--
-- Name: core_appointment_id_seq; Type: SEQUENCE; Schema: public; Owner: physiocare
--

ALTER TABLE public.core_appointment ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.core_appointment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: core_chatmessage; Type: TABLE; Schema: public; Owner: physiocare
--

CREATE TABLE public.core_chatmessage (
    id bigint NOT NULL,
    body text NOT NULL,
    attachment character varying(100) NOT NULL,
    message_type character varying(20) NOT NULL,
    is_read boolean NOT NULL,
    created_at timestamp with time zone NOT NULL,
    recipient_id integer NOT NULL,
    sender_id integer NOT NULL
);


ALTER TABLE public.core_chatmessage OWNER TO physiocare;

--
-- Name: core_chatmessage_id_seq; Type: SEQUENCE; Schema: public; Owner: physiocare
--

ALTER TABLE public.core_chatmessage ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.core_chatmessage_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: core_cmscontent; Type: TABLE; Schema: public; Owner: physiocare
--

CREATE TABLE public.core_cmscontent (
    id bigint NOT NULL,
    content_type character varying(30) NOT NULL,
    title character varying(220) NOT NULL,
    summary character varying(320) NOT NULL,
    body text NOT NULL,
    published boolean NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    created_by_id integer
);


ALTER TABLE public.core_cmscontent OWNER TO physiocare;

--
-- Name: core_cmscontent_id_seq; Type: SEQUENCE; Schema: public; Owner: physiocare
--

ALTER TABLE public.core_cmscontent ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.core_cmscontent_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: core_contactmessage; Type: TABLE; Schema: public; Owner: physiocare
--

CREATE TABLE public.core_contactmessage (
    id bigint NOT NULL,
    name character varying(120) NOT NULL,
    email character varying(254) NOT NULL,
    phone character varying(24) NOT NULL,
    subject character varying(180) NOT NULL,
    message text NOT NULL,
    status character varying(20) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    handled_by_id integer,
    updated_at timestamp with time zone NOT NULL
);


ALTER TABLE public.core_contactmessage OWNER TO physiocare;

--
-- Name: core_contactmessage_id_seq; Type: SEQUENCE; Schema: public; Owner: physiocare
--

ALTER TABLE public.core_contactmessage ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.core_contactmessage_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: core_doctorprofile; Type: TABLE; Schema: public; Owner: physiocare
--

CREATE TABLE public.core_doctorprofile (
    id bigint NOT NULL,
    specialization character varying(120) NOT NULL,
    qualifications character varying(180) NOT NULL,
    experience_years integer NOT NULL,
    bio text NOT NULL,
    consultation_fee numeric(8,2) NOT NULL,
    rating numeric(2,1) NOT NULL,
    available boolean NOT NULL,
    user_id integer NOT NULL,
    CONSTRAINT core_doctorprofile_experience_years_check CHECK ((experience_years >= 0))
);


ALTER TABLE public.core_doctorprofile OWNER TO physiocare;

--
-- Name: core_doctorprofile_id_seq; Type: SEQUENCE; Schema: public; Owner: physiocare
--

ALTER TABLE public.core_doctorprofile ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.core_doctorprofile_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: core_emaildelivery; Type: TABLE; Schema: public; Owner: physiocare
--

CREATE TABLE public.core_emaildelivery (
    id bigint NOT NULL,
    event_key character varying(220) NOT NULL,
    recipient character varying(254) NOT NULL,
    subject character varying(255) NOT NULL,
    template_name character varying(120) NOT NULL,
    status character varying(20) NOT NULL,
    attempts integer NOT NULL,
    last_error text NOT NULL,
    sent_at timestamp with time zone,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    CONSTRAINT core_emaildelivery_attempts_check CHECK ((attempts >= 0))
);


ALTER TABLE public.core_emaildelivery OWNER TO physiocare;

--
-- Name: core_emaildelivery_id_seq; Type: SEQUENCE; Schema: public; Owner: physiocare
--

ALTER TABLE public.core_emaildelivery ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.core_emaildelivery_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: core_emailotp; Type: TABLE; Schema: public; Owner: physiocare
--

CREATE TABLE public.core_emailotp (
    id bigint NOT NULL,
    purpose character varying(30) NOT NULL,
    code_hash character varying(255) NOT NULL,
    expires_at timestamp with time zone NOT NULL,
    attempts smallint NOT NULL,
    consumed_at timestamp with time zone,
    created_at timestamp with time zone NOT NULL,
    user_id integer NOT NULL,
    CONSTRAINT core_emailotp_attempts_check CHECK ((attempts >= 0))
);


ALTER TABLE public.core_emailotp OWNER TO physiocare;

--
-- Name: core_emailotp_id_seq; Type: SEQUENCE; Schema: public; Owner: physiocare
--

ALTER TABLE public.core_emailotp ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.core_emailotp_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: core_employeeprofile; Type: TABLE; Schema: public; Owner: physiocare
--

CREATE TABLE public.core_employeeprofile (
    id bigint NOT NULL,
    employee_id character varying(20) NOT NULL,
    phone character varying(20) NOT NULL,
    job_title character varying(120) NOT NULL,
    department character varying(30) NOT NULL,
    employment_type character varying(30) NOT NULL,
    shift character varying(30) NOT NULL,
    joined_on date NOT NULL,
    monthly_salary numeric(10,2),
    emergency_contact character varying(120) NOT NULL,
    address text NOT NULL,
    notes text NOT NULL,
    portal_access boolean NOT NULL,
    active boolean NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.core_employeeprofile OWNER TO physiocare;

--
-- Name: core_employeeprofile_id_seq; Type: SEQUENCE; Schema: public; Owner: physiocare
--

ALTER TABLE public.core_employeeprofile ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.core_employeeprofile_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: core_exercise; Type: TABLE; Schema: public; Owner: physiocare
--

CREATE TABLE public.core_exercise (
    id bigint NOT NULL,
    title character varying(180) NOT NULL,
    category character varying(100) NOT NULL,
    description text NOT NULL,
    video_url character varying(200) NOT NULL,
    duration_minutes integer NOT NULL,
    difficulty character varying(20) NOT NULL,
    CONSTRAINT core_exercise_duration_minutes_check CHECK ((duration_minutes >= 0))
);


ALTER TABLE public.core_exercise OWNER TO physiocare;

--
-- Name: core_exercise_id_seq; Type: SEQUENCE; Schema: public; Owner: physiocare
--

ALTER TABLE public.core_exercise ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.core_exercise_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: core_exerciseassignment; Type: TABLE; Schema: public; Owner: physiocare
--

CREATE TABLE public.core_exerciseassignment (
    id bigint NOT NULL,
    repetitions character varying(80) NOT NULL,
    frequency character varying(80) NOT NULL,
    completed_today boolean NOT NULL,
    assigned_on date NOT NULL,
    assigned_by_id bigint NOT NULL,
    exercise_id bigint NOT NULL,
    patient_id bigint NOT NULL
);


ALTER TABLE public.core_exerciseassignment OWNER TO physiocare;

--
-- Name: core_exerciseassignment_id_seq; Type: SEQUENCE; Schema: public; Owner: physiocare
--

ALTER TABLE public.core_exerciseassignment ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.core_exerciseassignment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: core_feedback; Type: TABLE; Schema: public; Owner: physiocare
--

CREATE TABLE public.core_feedback (
    id bigint NOT NULL,
    rating integer NOT NULL,
    review text NOT NULL,
    created_at timestamp with time zone NOT NULL,
    doctor_id bigint NOT NULL,
    patient_id bigint NOT NULL,
    CONSTRAINT core_feedback_rating_check CHECK ((rating >= 0))
);


ALTER TABLE public.core_feedback OWNER TO physiocare;

--
-- Name: core_feedback_id_seq; Type: SEQUENCE; Schema: public; Owner: physiocare
--

ALTER TABLE public.core_feedback ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.core_feedback_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: core_medicalrecord; Type: TABLE; Schema: public; Owner: physiocare
--

CREATE TABLE public.core_medicalrecord (
    id bigint NOT NULL,
    title character varying(180) NOT NULL,
    record_type character varying(30) NOT NULL,
    record_date date NOT NULL,
    doctor_name character varying(120) NOT NULL,
    notes text NOT NULL,
    file character varying(100) NOT NULL,
    uploaded_at timestamp with time zone NOT NULL,
    patient_id bigint NOT NULL
);


ALTER TABLE public.core_medicalrecord OWNER TO physiocare;

--
-- Name: core_medicalrecord_id_seq; Type: SEQUENCE; Schema: public; Owner: physiocare
--

ALTER TABLE public.core_medicalrecord ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.core_medicalrecord_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: core_notification; Type: TABLE; Schema: public; Owner: physiocare
--

CREATE TABLE public.core_notification (
    id bigint NOT NULL,
    title character varying(180) NOT NULL,
    message text NOT NULL,
    notification_type character varying(30) NOT NULL,
    action_url character varying(240) NOT NULL,
    is_read boolean NOT NULL,
    created_at timestamp with time zone NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.core_notification OWNER TO physiocare;

--
-- Name: core_notification_id_seq; Type: SEQUENCE; Schema: public; Owner: physiocare
--

ALTER TABLE public.core_notification ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.core_notification_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: core_patientprofile; Type: TABLE; Schema: public; Owner: physiocare
--

CREATE TABLE public.core_patientprofile (
    id bigint NOT NULL,
    patient_id character varying(20) NOT NULL,
    phone character varying(20) NOT NULL,
    date_of_birth date,
    gender character varying(30) NOT NULL,
    blood_group character varying(8) NOT NULL,
    address text NOT NULL,
    emergency_contact character varying(100) NOT NULL,
    conditions text NOT NULL,
    allergies text NOT NULL,
    surgeries text NOT NULL,
    profile_picture character varying(100) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    user_id integer NOT NULL,
    email_verified_at timestamp with time zone,
    registered_by_id integer
);


ALTER TABLE public.core_patientprofile OWNER TO physiocare;

--
-- Name: core_patientprofile_id_seq; Type: SEQUENCE; Schema: public; Owner: physiocare
--

ALTER TABLE public.core_patientprofile ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.core_patientprofile_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: core_payment; Type: TABLE; Schema: public; Owner: physiocare
--

CREATE TABLE public.core_payment (
    id bigint NOT NULL,
    invoice_number character varying(40) NOT NULL,
    amount numeric(10,2) NOT NULL,
    method character varying(30) NOT NULL,
    status character varying(20) NOT NULL,
    transaction_id character varying(80) NOT NULL,
    issued_on date NOT NULL,
    due_on date,
    appointment_id bigint,
    patient_id bigint NOT NULL,
    collected_by_id integer,
    paid_at timestamp with time zone
);


ALTER TABLE public.core_payment OWNER TO physiocare;

--
-- Name: core_payment_id_seq; Type: SEQUENCE; Schema: public; Owner: physiocare
--

ALTER TABLE public.core_payment ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.core_payment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: core_prescription; Type: TABLE; Schema: public; Owner: physiocare
--

CREATE TABLE public.core_prescription (
    id bigint NOT NULL,
    diagnosis character varying(220) NOT NULL,
    medicines text NOT NULL,
    instructions text NOT NULL,
    issued_on date NOT NULL,
    doctor_id bigint NOT NULL,
    patient_id bigint NOT NULL,
    medicine_entries jsonb NOT NULL
);


ALTER TABLE public.core_prescription OWNER TO physiocare;

--
-- Name: core_prescription_id_seq; Type: SEQUENCE; Schema: public; Owner: physiocare
--

ALTER TABLE public.core_prescription ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.core_prescription_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: core_progressentry; Type: TABLE; Schema: public; Owner: physiocare
--

CREATE TABLE public.core_progressentry (
    id bigint NOT NULL,
    recorded_on date NOT NULL,
    pain_score integer NOT NULL,
    mobility_score integer NOT NULL,
    exercise_adherence integer NOT NULL,
    note text NOT NULL,
    patient_id bigint NOT NULL,
    CONSTRAINT core_progressentry_exercise_adherence_check CHECK ((exercise_adherence >= 0)),
    CONSTRAINT core_progressentry_mobility_score_check CHECK ((mobility_score >= 0)),
    CONSTRAINT core_progressentry_pain_score_check CHECK ((pain_score >= 0))
);


ALTER TABLE public.core_progressentry OWNER TO physiocare;

--
-- Name: core_progressentry_id_seq; Type: SEQUENCE; Schema: public; Owner: physiocare
--

ALTER TABLE public.core_progressentry ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.core_progressentry_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: core_treatmentplan; Type: TABLE; Schema: public; Owner: physiocare
--

CREATE TABLE public.core_treatmentplan (
    id bigint NOT NULL,
    title character varying(180) NOT NULL,
    diagnosis character varying(220) NOT NULL,
    goal text NOT NULL,
    instructions text NOT NULL,
    progress integer NOT NULL,
    started_on date NOT NULL,
    next_review date,
    active boolean NOT NULL,
    doctor_id bigint NOT NULL,
    patient_id bigint NOT NULL,
    CONSTRAINT core_treatmentplan_progress_check CHECK ((progress >= 0))
);


ALTER TABLE public.core_treatmentplan OWNER TO physiocare;

--
-- Name: core_treatmentplan_id_seq; Type: SEQUENCE; Schema: public; Owner: physiocare
--

ALTER TABLE public.core_treatmentplan ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.core_treatmentplan_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: physiocare
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO physiocare;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: physiocare
--

ALTER TABLE public.django_admin_log ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: physiocare
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO physiocare;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: physiocare
--

ALTER TABLE public.django_content_type ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: physiocare
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO physiocare;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: physiocare
--

ALTER TABLE public.django_migrations ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: physiocare
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO physiocare;

--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: physiocare
--

COPY public.auth_group (id, name) FROM stdin;
1	Reception
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: physiocare
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: physiocare
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add exercise	7	add_exercise
26	Can change exercise	7	change_exercise
27	Can delete exercise	7	delete_exercise
28	Can view exercise	7	view_exercise
29	Can add chat message	8	add_chatmessage
30	Can change chat message	8	change_chatmessage
31	Can delete chat message	8	delete_chatmessage
32	Can view chat message	8	view_chatmessage
33	Can add doctor profile	9	add_doctorprofile
34	Can change doctor profile	9	change_doctorprofile
35	Can delete doctor profile	9	delete_doctorprofile
36	Can view doctor profile	9	view_doctorprofile
37	Can add notification	10	add_notification
38	Can change notification	10	change_notification
39	Can delete notification	10	delete_notification
40	Can view notification	10	view_notification
41	Can add patient profile	11	add_patientprofile
42	Can change patient profile	11	change_patientprofile
43	Can delete patient profile	11	delete_patientprofile
44	Can view patient profile	11	view_patientprofile
45	Can add medical record	12	add_medicalrecord
46	Can change medical record	12	change_medicalrecord
47	Can delete medical record	12	delete_medicalrecord
48	Can view medical record	12	view_medicalrecord
49	Can add feedback	13	add_feedback
50	Can change feedback	13	change_feedback
51	Can delete feedback	13	delete_feedback
52	Can view feedback	13	view_feedback
53	Can add exercise assignment	14	add_exerciseassignment
54	Can change exercise assignment	14	change_exerciseassignment
55	Can delete exercise assignment	14	delete_exerciseassignment
56	Can view exercise assignment	14	view_exerciseassignment
57	Can add appointment	15	add_appointment
58	Can change appointment	15	change_appointment
59	Can delete appointment	15	delete_appointment
60	Can view appointment	15	view_appointment
61	Can add payment	16	add_payment
62	Can change payment	16	change_payment
63	Can delete payment	16	delete_payment
64	Can view payment	16	view_payment
65	Can add prescription	17	add_prescription
66	Can change prescription	17	change_prescription
67	Can delete prescription	17	delete_prescription
68	Can view prescription	17	view_prescription
69	Can add progress entry	18	add_progressentry
70	Can change progress entry	18	change_progressentry
71	Can delete progress entry	18	delete_progressentry
72	Can view progress entry	18	view_progressentry
73	Can add treatment plan	19	add_treatmentplan
74	Can change treatment plan	19	change_treatmentplan
75	Can delete treatment plan	19	delete_treatmentplan
76	Can view treatment plan	19	view_treatmentplan
77	Can add cms content	20	add_cmscontent
78	Can change cms content	20	change_cmscontent
79	Can delete cms content	20	delete_cmscontent
80	Can view cms content	20	view_cmscontent
81	Can add contact message	21	add_contactmessage
82	Can change contact message	21	change_contactmessage
83	Can delete contact message	21	delete_contactmessage
84	Can view contact message	21	view_contactmessage
85	Can add email delivery	22	add_emaildelivery
86	Can change email delivery	22	change_emaildelivery
87	Can delete email delivery	22	delete_emaildelivery
88	Can view email delivery	22	view_emaildelivery
89	Can add email otp	23	add_emailotp
90	Can change email otp	23	change_emailotp
91	Can delete email otp	23	delete_emailotp
92	Can view email otp	23	view_emailotp
93	Can add Clinic employee	24	add_employeeprofile
94	Can change Clinic employee	24	change_employeeprofile
95	Can delete Clinic employee	24	delete_employeeprofile
96	Can view Clinic employee	24	view_employeeprofile
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: physiocare
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
7	pbkdf2_sha256$1000000$wE6M1DVGhj13hqmmt7Afsb$XDHgJ9uz77+3Sx1osE9X/YLSZMJXJE09FTMJIdAeDo0=	\N	f	reception	Priya	Front Desk	reception@physiocare.in	t	t	2026-07-24 04:38:11.571456+00
3	pbkdf2_sha256$1000000$CA9jk1KeUIJYehimFa0yMa$fQzJekCpFiRMA5AchWAN0DwxmfagH8UOgbyRpCaYJOQ=	2026-07-26 11:04:32.26289+00	f	drarjun	Arjun	Rao	drarjun@physiocare.in	f	t	2026-07-24 04:38:10+00
6	pbkdf2_sha256$1000000$M2MNscpAS79AI6XcjiBo4E$gL1zyPYyhBFgKGYAIqX4zUFaANc0M8LcHQuMqAgeZig=	2026-08-11 09:38:50.678579+00	t	admin	Clinic	Admin	admin@physiocare.in	t	t	2026-07-24 04:38:11.27138+00
11	pbkdf2_sha256$1000000$oYH5A5SL2PbR0AUXDwrwKy$2YMQIUOXokrlVSCBfiHmqOrhT+a6X4hxDXTYmH6YChA=	2026-07-26 10:52:01.309666+00	f	debu	Kumar	Devansh	cu23250426@coeruniversity.ac.in	f	f	2026-07-26 10:50:51.964752+00
2	pbkdf2_sha256$1000000$eIFcfbiD5b0PiipFrPMMta$QH9a+BgrgxjqO7xjrwmqtRe6N79nt4SU3Zryi25FuOY=	2026-07-25 17:57:51.278262+00	f	drmeera	Meera	Kapoor	drmeera@physiocare.in	f	t	2026-07-24 04:38:10.527681+00
1	pbkdf2_sha256$1000000$NpxIEhqPdT2yuKgSBA52rt$hMBRRtAJgldq2zD+22QLGmTPKlKYggcfrKg30XUrsR8=	2026-07-25 17:58:36.380319+00	f	patient	Anita	Sharma	anita@example.com	f	f	2026-07-24 04:38:10.102096+00
9	pbkdf2_sha256$1000000$TBaL4sdVdVcficRxqnQOBz$didgRQo3Y45Yii4Vr4t96+3aYvP552C4TZwUiVcE6Lk=	2026-07-24 06:00:48.111747+00	f	Dev	Kumar	Devansh	levisupermacy892@gmail.com	f	f	2026-07-24 05:09:25.396201+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: physiocare
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
1	7	1
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: physiocare
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: core_appointment; Type: TABLE DATA; Schema: public; Owner: physiocare
--

COPY public.core_appointment (id, scheduled_at, duration_minutes, concern, notes, mode, status, reminder_channel, created_at, doctor_id, patient_id, checked_in_at, updated_at) FROM stdin;
1	2026-07-24 06:00:00+00	45	Progress review and manual therapy		clinic	confirmed	Email & WhatsApp	2026-07-24 04:38:12.136902+00	1	1	\N	2026-07-24 04:38:12.136907+00
2	2026-07-29 11:00:00+00	45	Home programme review		video	confirmed	Email & WhatsApp	2026-07-24 04:38:12.140871+00	1	1	\N	2026-07-24 04:38:12.140877+00
3	2026-07-17 05:30:00+00	45	Mobility reassessment		clinic	completed	Email & WhatsApp	2026-07-24 04:38:12.145469+00	1	1	\N	2026-07-24 04:38:12.145486+00
4	2025-09-17 05:00:00+00	45	Shoulder rehabilitation review		clinic	completed	Email & WhatsApp	2026-07-24 04:38:12.151974+00	2	1	\N	2026-07-24 04:38:12.151981+00
6	2026-07-25 07:10:00+00	45	Lower Back Pain		clinic	cancelled	Email & WhatsApp	2026-07-24 05:11:05.304943+00	1	4	\N	2026-07-24 05:12:52.980304+00
7	2026-07-25 07:18:00+00	45	Lower Back Pain	yaa its good\r\ntake a good rest	clinic	confirmed	Email & WhatsApp	2026-07-24 05:18:27.84512+00	1	4	\N	2026-07-24 06:03:50.063766+00
10	2026-08-02 11:23:00+00	45	Follow-up review		clinic	confirmed	Email & WhatsApp	2026-07-26 11:23:53.538656+00	2	6	\N	2026-07-26 11:23:53.538662+00
9	2026-07-27 05:30:00+00	45	Shoulder Pain	it happens while playing badminton. Now it going worse as time passed.	clinic	confirmed	Email & WhatsApp	2026-07-26 10:59:52.294635+00	2	6	\N	2026-07-26 11:55:02.732685+00
\.


--
-- Data for Name: core_chatmessage; Type: TABLE DATA; Schema: public; Owner: physiocare
--

COPY public.core_chatmessage (id, body, attachment, message_type, is_read, created_at, recipient_id, sender_id) FROM stdin;
1	Hello Anita, I reviewed your latest progress update. Your mobility is improving well. Continue the current routine and let me know if the bridge exercise causes discomfort.		text	f	2026-07-24 04:38:12.267377+00	1	2
3	A short hip-flexor stretch after those meetings would be helpful. Keep it gentle, 30 seconds each side. I’ve added it to your programme.		text	f	2026-07-24 04:38:12.275796+00	1	2
2	Thank you, doctor. The bridge feels comfortable now. I still notice some stiffness after long meetings—should I add another stretch?		text	t	2026-07-24 04:38:12.271829+00	2	1
\.


--
-- Data for Name: core_cmscontent; Type: TABLE DATA; Schema: public; Owner: physiocare
--

COPY public.core_cmscontent (id, content_type, title, summary, body, published, created_at, updated_at, created_by_id) FROM stdin;
1	blog	Five gentle habits for lower-back stiffness	Simple movement and posture habits that reduce strain during long working days.	Change position regularly rather than searching for one perfect posture. Take a two-minute movement break every 45 minutes, keep both feet supported, and use a small cushion if your lower back feels tired. Gentle walking and your assigned mobility routine are usually more helpful than prolonged rest.	t	2026-07-24 04:38:12.300652+00	2026-07-24 04:38:12.300671+00	6
2	faq	Can I reschedule an appointment online?	Appointment rescheduling guidance.	Yes. Open Appointments, choose your upcoming session, and select Reschedule. Your therapist and reminder schedule update automatically.	t	2026-07-24 04:38:12.306011+00	2026-07-24 04:38:12.306025+00	6
3	announcement	Clinic hours extended on Saturdays	Saturday appointments are now available until 6:00 PM.	You can book Saturday in-clinic consultations until 6:00 PM through the appointment portal.	t	2026-07-24 04:38:12.311478+00	2026-07-24 04:38:12.311493+00	6
\.


--
-- Data for Name: core_contactmessage; Type: TABLE DATA; Schema: public; Owner: physiocare
--

COPY public.core_contactmessage (id, name, email, phone, subject, message, status, created_at, handled_by_id, updated_at) FROM stdin;
\.


--
-- Data for Name: core_doctorprofile; Type: TABLE DATA; Schema: public; Owner: physiocare
--

COPY public.core_doctorprofile (id, specialization, qualifications, experience_years, bio, consultation_fee, rating, available, user_id) FROM stdin;
1	Musculoskeletal Physiotherapist	MPT, Orthopaedics	12	Patient-focused physiotherapist committed to clear guidance and evidence-based recovery.	900.00	4.9	t	2
2	Sports Rehabilitation Specialist	MPT, Sports Medicine	9	Patient-focused physiotherapist committed to clear guidance and evidence-based recovery.	900.00	4.8	t	3
\.


--
-- Data for Name: core_emaildelivery; Type: TABLE DATA; Schema: public; Owner: physiocare
--

COPY public.core_emaildelivery (id, event_key, recipient, subject, template_name, status, attempts, last_error, sent_at, created_at, updated_at) FROM stdin;
1	appointment:1:reminder:1784872800:2-hour	anita@example.com	Reminder: appointment with Dr. Meera Kapoor — PhysioCare	appointment_reminder	sent	1		2026-07-24 05:04:33.040252+00	2026-07-24 05:04:28.312552+00	2026-07-24 05:04:28.312566+00
59	appointment:10:doctor_scheduled:202608021653:patient	cu23250426@coeruniversity.ac.in	Follow-up scheduled — PhysioCare	appointment_update	sent	1		2026-07-26 11:23:58.328454+00	2026-07-26 11:23:53.54851+00	2026-07-26 11:23:53.54852+00
2	appointment:5:reminder:1784874600:2-hour	rahul@example.com	Reminder: appointment with Dr. Meera Kapoor — PhysioCare	appointment_reminder	sent	1		2026-07-24 05:04:37.78559+00	2026-07-24 05:04:33.045692+00	2026-07-24 05:04:33.045711+00
60	appointment:10:doctor_scheduled:202608021653:doctor	drarjun@physiocare.in	Follow-up scheduled: Kumar Devansh — PhysioCare	doctor_notification	sent	1		2026-07-26 11:24:02.840014+00	2026-07-26 11:23:58.336527+00	2026-07-26 11:23:58.336541+00
34	email-verification:2	levisupermacy892@gmail.com	Your PhysioCare verification code	verification_otp	sent	1		2026-07-24 05:09:31.000067+00	2026-07-24 05:09:25.839347+00	2026-07-24 05:09:25.839357+00
35	appointment:6:booked:202607251240:patient	levisupermacy892@gmail.com	Appointment booked — PhysioCare	appointment_update	sent	1		2026-07-24 05:11:10.267452+00	2026-07-24 05:11:05.323201+00	2026-07-24 05:11:05.323209+00
61	patient-care-update:2:6:2999f5e8-5c2b-490c-bfd4-c81b3fb9bff4	cu23250426@coeruniversity.ac.in	New care updates are available — PhysioCare	notification	sent	1		2026-07-26 12:03:28.500121+00	2026-07-26 12:03:23.365914+00	2026-07-26 12:03:23.365924+00
36	appointment:6:booked:202607251240:doctor	drmeera@physiocare.in	Appointment booked: Kumar Devansh — PhysioCare	doctor_notification	sent	1		2026-07-24 05:11:14.676957+00	2026-07-24 05:11:10.277305+00	2026-07-24 05:11:10.277314+00
37	appointment:6:cancelled:cancelled:patient	levisupermacy892@gmail.com	Appointment cancelled — PhysioCare	appointment_update	sent	1		2026-07-24 05:12:57.507122+00	2026-07-24 05:12:52.98901+00	2026-07-24 05:12:52.989046+00
38	appointment:6:cancelled:cancelled:doctor	drmeera@physiocare.in	Appointment cancelled: Kumar Devansh — PhysioCare	doctor_notification	sent	1		2026-07-24 05:13:02.093322+00	2026-07-24 05:12:57.515255+00	2026-07-24 05:12:57.515265+00
39	appointment:7:booked:202607251248:patient	levisupermacy892@gmail.com	Appointment booked — PhysioCare	appointment_update	sent	1		2026-07-24 05:18:32.74669+00	2026-07-24 05:18:27.856832+00	2026-07-24 05:18:27.856842+00
40	appointment:7:booked:202607251248:doctor	drmeera@physiocare.in	Appointment booked: Kumar Devansh — PhysioCare	doctor_notification	sent	1		2026-07-24 05:18:37.302087+00	2026-07-24 05:18:32.75284+00	2026-07-24 05:18:32.752856+00
41	appointment:7:status_updated:confirmed:patient	levisupermacy892@gmail.com	Appointment status updated — PhysioCare	appointment_update	sent	1		2026-07-24 05:19:49.786474+00	2026-07-24 05:19:44.953744+00	2026-07-24 05:19:44.953755+00
42	appointment:7:status_updated:confirmed:doctor	drmeera@physiocare.in	Appointment status updated: Kumar Devansh — PhysioCare	doctor_notification	sent	1		2026-07-24 05:19:54.052616+00	2026-07-24 05:19:49.79508+00	2026-07-24 05:19:49.795093+00
43	doctor-action:exercise:5:patient	levisupermacy892@gmail.com	New exercise assigned — PhysioCare	notification	sent	1		2026-07-24 05:39:14.752228+00	2026-07-24 05:39:09.970625+00	2026-07-24 05:39:09.970639+00
44	doctor-action:treatment:3:patient	levisupermacy892@gmail.com	Treatment plan updated — PhysioCare	notification	sent	1		2026-07-24 06:01:57.385415+00	2026-07-24 06:01:52.187694+00	2026-07-24 06:01:52.187704+00
45	doctor-action:treatment:4:patient	levisupermacy892@gmail.com	Treatment plan updated — PhysioCare	notification	sent	1		2026-07-24 06:05:13.092168+00	2026-07-24 06:05:08.511755+00	2026-07-24 06:05:08.511766+00
46	email-verification:3	dev.coding.world.aim.01@gmail.com	Your PhysioCare verification code	verification_otp	sent	1		2026-07-24 06:26:40.552348+00	2026-07-24 06:26:35.800925+00	2026-07-24 06:26:35.800934+00
47	appointment:8:booked:202607241300:patient	dev.coding.world.aim.01@gmail.com	Appointment booked — PhysioCare	appointment_update	sent	1		2026-07-24 06:28:35.703784+00	2026-07-24 06:28:30.663389+00	2026-07-24 06:28:30.663409+00
48	appointment:8:booked:202607241300:doctor	drmeera@physiocare.in	Appointment booked: Deep Devansh — PhysioCare	doctor_notification	sent	1		2026-07-24 06:28:40.238461+00	2026-07-24 06:28:35.711585+00	2026-07-24 06:28:35.711595+00
49	appointment:8:reminder:1784878200:2-hour	dev.coding.world.aim.01@gmail.com	Reminder: appointment with Dr. Meera Kapoor — PhysioCare	appointment_reminder	sent	1		2026-07-24 06:28:41.633012+00	2026-07-24 06:28:36.954118+00	2026-07-24 06:28:36.954144+00
50	doctor-action:prescription:3:patient	dev.coding.world.aim.01@gmail.com	New prescription available — PhysioCare	notification	sent	1		2026-07-24 06:30:52.08918+00	2026-07-24 06:30:47.306209+00	2026-07-24 06:30:47.30622+00
51	doctor-action:exercise:7:patient	dev.coding.world.aim.01@gmail.com	New exercise programme — PhysioCare	notification	sent	1		2026-07-24 06:31:21.477545+00	2026-07-24 06:31:16.743532+00	2026-07-24 06:31:16.743542+00
52	doctor-action:treatment:5:patient	dev.coding.world.aim.01@gmail.com	Treatment plan updated — PhysioCare	notification	sent	1		2026-07-24 06:32:33.149052+00	2026-07-24 06:32:28.437757+00	2026-07-24 06:32:28.437768+00
53	doctor-action:prescription:4:patient	dev.coding.world.aim.01@gmail.com	New prescription available — PhysioCare	notification	sent	1		2026-07-24 06:37:14.624249+00	2026-07-24 06:37:10.140808+00	2026-07-24 06:37:10.140819+00
54	email-verification:4	cu23250426@coeruniversity.ac.in	Your PhysioCare verification code	verification_otp	sent	1		2026-07-26 10:50:57.065863+00	2026-07-26 10:50:52.395908+00	2026-07-26 10:50:52.395917+00
55	appointment:9:booked:202607271100:patient	cu23250426@coeruniversity.ac.in	Appointment booked — PhysioCare	appointment_update	sent	1		2026-07-26 11:00:01.335347+00	2026-07-26 10:59:52.31925+00	2026-07-26 10:59:52.319259+00
56	appointment:9:booked:202607271100:doctor	drarjun@physiocare.in	Appointment booked: Kumar Devansh — PhysioCare	doctor_notification	sent	1		2026-07-26 11:00:06.182485+00	2026-07-26 11:00:01.340186+00	2026-07-26 11:00:01.340195+00
57	appointment:9:reminder:1785130200:24-hour	cu23250426@coeruniversity.ac.in	Reminder: appointment with Dr. Arjun Rao — PhysioCare	appointment_reminder	sent	1		2026-07-26 11:00:38.369579+00	2026-07-26 11:00:34.138945+00	2026-07-26 11:00:34.138953+00
58	patient-care-update:2:6:f9e54cd3-31a4-4a86-b4c1-2ee67b4f0a6b	cu23250426@coeruniversity.ac.in	New care updates are available — PhysioCare	notification	sent	1		2026-07-26 11:22:37.614286+00	2026-07-26 11:22:33.064361+00	2026-07-26 11:22:33.064372+00
\.


--
-- Data for Name: core_emailotp; Type: TABLE DATA; Schema: public; Owner: physiocare
--

COPY public.core_emailotp (id, purpose, code_hash, expires_at, attempts, consumed_at, created_at, user_id) FROM stdin;
2	verify_email	pbkdf2_sha256$1000000$YErg8vTBVF9YbM7LktlOOR$TgicitLgehPbJuET75r+HSSYNN+jiUjJzYglt/gGX4Q=	2026-07-24 05:19:25.647904+00	1	2026-07-24 05:10:10.905092+00	2026-07-24 05:09:25.833211+00	9
4	verify_email	pbkdf2_sha256$1000000$ZfMVq2dzLSuKKGPU6JrkXR$2QYKkVNsuQiubpUMw8XusihQNg68XAy5JHIdSGBm0Bs=	2026-07-26 11:00:52.204839+00	1	2026-07-26 10:52:01.109443+00	2026-07-26 10:50:52.385885+00	11
\.


--
-- Data for Name: core_employeeprofile; Type: TABLE DATA; Schema: public; Owner: physiocare
--

COPY public.core_employeeprofile (id, employee_id, phone, job_title, department, employment_type, shift, joined_on, monthly_salary, emergency_contact, address, notes, portal_access, active, created_at, updated_at, user_id) FROM stdin;
1	EMP-00001	+91 80012 34567	Senior Reception Executive	front_desk	full_time	morning	2025-11-26	\N	+91 90000 45678			t	t	2026-07-24 04:38:11.845156+00	2026-07-24 04:38:11.845171+00	7
\.


--
-- Data for Name: core_exercise; Type: TABLE DATA; Schema: public; Owner: physiocare
--

COPY public.core_exercise (id, title, category, description, video_url, duration_minutes, difficulty) FROM stdin;
1	Cat–cow mobility	Back mobility	Move slowly between comfortable spinal flexion and extension while breathing steadily.		8	easy
2	Supported bridge	Core strength	Lift your hips gently while keeping your ribs relaxed and both feet grounded.		10	moderate
3	Hip flexor stretch	Hip mobility	Use a supported half-kneeling position and keep the movement small and controlled.		6	easy
4	Bird dog control	Spinal stability	Reach the opposite arm and leg without allowing your trunk to rotate.		9	moderate
5	Neck rotation reset	Neck mobility	Turn only within a comfortable range and keep both shoulders relaxed.		5	easy
6	Shoulder Pendulum	Shoulder mobility	Lean forward with your unaffected arm supported and let the affected arm swing gently.		5	easy
7	Heel Slides	Knee mobility	Lie on your back and slowly slide your heel toward you, staying in a comfortable range.		6	easy
8	Quadriceps Sets	Knee strength	Tighten the muscles at the front of your thigh while keeping the knee straight.		5	easy
9	Straight Leg Raise	Hip and knee strength	Tighten the thigh, keep the knee straight, and lift the leg slowly.		7	moderate
10	Ankle Pumps	Ankle circulation	Gently point and flex your feet to encourage ankle movement and circulation.		4	easy
11	Neck Stretch	Neck mobility	Ease your ear toward your shoulder without lifting the shoulder or forcing the stretch.		4	easy
12	Hamstring Stretch	Leg flexibility	Keep your back tall and extend one leg until a gentle stretch is felt behind the thigh.		6	easy
13	Wall Slides	Shoulder mobility	Slide your arms up a wall slowly while keeping the movement comfortable and controlled.		6	moderate
14	Bridge Exercise	Core strength	Press through both feet and lift your hips while keeping your ribs relaxed.		8	moderate
15	Cat-Cow Stretch	Spinal mobility	Move slowly between a rounded and gently arched back while breathing steadily.		6	easy
\.


--
-- Data for Name: core_exerciseassignment; Type: TABLE DATA; Schema: public; Owner: physiocare
--

COPY public.core_exerciseassignment (id, repetitions, frequency, completed_today, assigned_on, assigned_by_id, exercise_id, patient_id) FROM stdin;
1	10 reps × 2 sets	Once daily	t	2026-07-24	1	1	1
2	8 reps × 2 sets	Once daily	t	2026-07-24	1	2	1
3	30 sec × 3 each side	Once daily	f	2026-07-24	1	3	1
4	6 reps × 2 each side	Once daily	f	2026-07-24	1	4	1
5	10 reps × 2 sets	Once daily	t	2026-07-24	1	1	4
6	10 reps × 2 sets	Once daily	t	2026-07-24	1	1	4
9	10 reps × 2 sets	Once daily	t	2026-07-26	2	6	6
12	10 reps × 2 sets	Once daily	f	2026-07-26	2	8	6
13	10 reps × 2 sets	Once daily	f	2026-07-26	2	9	6
10	10 reps × 2 sets	Once daily	t	2026-07-26	2	12	6
11	10 reps × 2 sets	Once daily	t	2026-07-26	2	4	6
\.


--
-- Data for Name: core_feedback; Type: TABLE DATA; Schema: public; Owner: physiocare
--

COPY public.core_feedback (id, rating, review, created_at, doctor_id, patient_id) FROM stdin;
1	5	The clear explanations and gentle reminders made recovery feel manageable. I always knew what to do next.	2026-07-24 04:38:12.288657+00	1	1
\.


--
-- Data for Name: core_medicalrecord; Type: TABLE DATA; Schema: public; Owner: physiocare
--

COPY public.core_medicalrecord (id, title, record_type, record_date, doctor_name, notes, file, uploaded_at, patient_id) FROM stdin;
1	Lumbar spine X-ray	scan	2026-06-14	City Diagnostics	No acute bony abnormality.		2026-07-24 04:38:12.212967+00	1
2	Initial physiotherapy assessment	visit	2026-06-19	Dr. Meera Kapoor	Mobility and strength baseline recorded.		2026-07-24 04:38:12.2182+00	1
3	Fitness-to-work certificate	certificate	2026-07-04	Dr. Meera Kapoor			2026-07-24 04:38:12.222282+00	1
4	Visit note #7	visit	2026-07-24	Dr. Meera Kapoor	yaa its good\r\ntake a good rest		2026-07-24 06:00:13.897323+00	4
5	Visit note #9	visit	2026-07-26	Dr. Arjun Rao	it happens while playing badminton. Now it going worse as time passed.		2026-07-26 11:04:57.031074+00	6
\.


--
-- Data for Name: core_notification; Type: TABLE DATA; Schema: public; Owner: physiocare
--

COPY public.core_notification (id, title, message, notification_type, action_url, is_read, created_at, user_id) FROM stdin;
1	Appointment tomorrow	Your session with Dr. Meera Kapoor is confirmed. Please arrive 10 minutes early.	appointment	/appointments/	f	2026-07-24 04:38:12.227033+00	1
2	Time for your mobility routine	Your gentle back-mobility exercises are ready for today.	exercise	/exercises/	f	2026-07-24 04:38:12.231838+00	1
3	Medicine reminder	Take medicine only as prescribed and after food.	medicine	/reports/	f	2026-07-24 04:38:12.23607+00	1
4	Progress check-in	Tell us how your pain and movement feel today.	followup	/progress/	f	2026-07-24 04:38:12.240116+00	1
5	Invoice due soon	Invoice PC-INV-1024 is due this week.	payment	/payments/	f	2026-07-24 04:38:12.244319+00	1
6	Appointment confirmed	Your session with Dr. Meera Kapoor is booked for 25 Jul at 12:40 PM.	appointment	/appointments/	f	2026-07-24 05:11:05.313316+00	9
7	Appointment confirmed	Your session with Dr. Meera Kapoor is booked for 25 Jul at 12:48 PM.	appointment	/appointments/	f	2026-07-24 05:18:27.8509+00	9
8	Appointment status updated	Your appointment with Dr. Meera Kapoor is now confirmed.	appointment	/appointments/	f	2026-07-24 05:19:44.946903+00	9
9	New exercise assigned	Dr. Meera Kapoor added Cat–cow mobility to your programme.	exercise	/exercises/	f	2026-07-24 05:39:09.962718+00	9
10	Visit notes updated	Dr. Meera Kapoor updated the notes for your lower back pain session.	followup	/reports/	f	2026-07-24 06:00:13.904436+00	9
11	Treatment plan updated	Dr. Meera Kapoor updated your rgrrg plan.	followup	/treatment/	f	2026-07-24 06:01:52.179277+00	9
12	Visit notes updated	Dr. Meera Kapoor updated the notes for your lower back pain session.	followup	/reports/	f	2026-07-24 06:03:50.077295+00	9
13	Treatment plan updated	Dr. Meera Kapoor updated your Knee pain plan.	followup	/treatment/	f	2026-07-24 06:05:08.505289+00	9
19	Appointment confirmed	Your session with Dr. Arjun Rao is booked for 27 Jul at 11:00 AM.	appointment	/appointments/	f	2026-07-26 10:59:52.307388+00	11
20	Visit notes updated	Dr. Arjun Rao updated the notes for your shoulder pain session.	followup	/reports/	f	2026-07-26 11:04:57.037063+00	11
21	Visit notes updated	Dr. Arjun Rao updated the notes for your shoulder pain session.	followup	/reports/	f	2026-07-26 11:20:21.643368+00	11
22	New care updates are available	Dr. Arjun Rao has added updates to your care plan. Open your patient portal to review them.	general	/dashboard/	f	2026-07-26 11:22:33.054913+00	11
23	Follow-up scheduled	Your follow-up with Dr. Arjun Rao is booked for 02 Aug at 04:53 PM.	appointment	/appointments/	f	2026-07-26 11:23:53.542981+00	11
24	Visit notes updated	Dr. Arjun Rao updated the notes for your shoulder pain session.	followup	/reports/	f	2026-07-26 11:55:02.747152+00	11
25	New care updates are available	Dr. Arjun Rao has added updates to your care plan. Open your patient portal to review them.	general	/dashboard/	f	2026-07-26 12:03:23.356833+00	11
\.


--
-- Data for Name: core_patientprofile; Type: TABLE DATA; Schema: public; Owner: physiocare
--

COPY public.core_patientprofile (id, patient_id, phone, date_of_birth, gender, blood_group, address, emergency_contact, conditions, allergies, surgeries, profile_picture, created_at, user_id, email_verified_at, registered_by_id) FROM stdin;
1	PC-00001	+91 98765 43210	1987-04-18	Female	B+	Indiranagar, Bengaluru	Raj Sharma · +91 98765 40000	Mechanical lower-back pain; occasional stiffness after prolonged sitting	No known drug allergies	Appendectomy (2013)		2026-07-24 04:38:10.516974+00	1	\N	\N
4	PC-00004	7905496892	\N									2026-07-24 05:09:25.634075+00	9	2026-07-24 05:10:10.905092+00	\N
6	PC-00006	7905496892	\N									2026-07-26 10:50:52.195811+00	11	2026-07-26 10:52:01.109443+00	\N
7	PC-00007		\N									2026-07-26 11:00:49.304149+00	6	\N	\N
\.


--
-- Data for Name: core_payment; Type: TABLE DATA; Schema: public; Owner: physiocare
--

COPY public.core_payment (id, invoice_number, amount, method, status, transaction_id, issued_on, due_on, appointment_id, patient_id, collected_by_id, paid_at) FROM stdin;
1	PC-INV-1024	900.00	upi	pending		2026-07-24	2026-07-27	1	1	\N	\N
2	PC-INV-1012	900.00	card	paid	TXN-7F3A92C1DE	2026-07-17	\N	3	1	\N	\N
3	PC-INV-0874	800.00	upi	paid	TXN-19BD72A4EF	2025-09-27	\N	\N	1	\N	\N
\.


--
-- Data for Name: core_prescription; Type: TABLE DATA; Schema: public; Owner: physiocare
--

COPY public.core_prescription (id, diagnosis, medicines, instructions, issued_on, doctor_id, patient_id, medicine_entries) FROM stdin;
1	Mechanical lower-back pain	Paracetamol 500 mg — only if needed, after food\nTopical pain-relief gel — thin layer, up to twice daily	Continue prescribed exercises. Avoid prolonged bed rest. Contact the clinic if symptoms change suddenly.	2026-07-17	1	1	[]
2	Right shoulder strain	Topical pain-relief gel — as advised	Gradual return to overhead activity.	2025-09-27	2	1	[]
5	Shoulder	Take dolo 2 times	take a good rest	2026-07-26	2	6	[]
6	Shoulder and Bone	DOLO  — 250 mg, Thrice daily for 5 days, After Food\nMeftal spas  — 250 mg , Thrice daily for 5 days, After Food	take a good rest	2026-07-26	2	6	[{"name": "DOLO ", "dosage": "250 mg", "timing": "After Food", "duration": "5", "frequency": "Thrice daily"}, {"name": "Meftal spas ", "dosage": "250 mg ", "timing": "After Food", "duration": "5", "frequency": "Thrice daily"}]
\.


--
-- Data for Name: core_progressentry; Type: TABLE DATA; Schema: public; Owner: physiocare
--

COPY public.core_progressentry (id, recorded_on, pain_score, mobility_score, exercise_adherence, note, patient_id) FROM stdin;
1	2026-06-12	7	48	55	Completed the planned routine and noted gradual improvement.	1
2	2026-06-19	6	56	62	Completed the planned routine and noted gradual improvement.	1
3	2026-06-26	5	63	70	Completed the planned routine and noted gradual improvement.	1
4	2026-07-03	5	68	76	Completed the planned routine and noted gradual improvement.	1
5	2026-07-10	4	74	82	Completed the planned routine and noted gradual improvement.	1
6	2026-07-17	3	81	90	Movement felt easier and I was able to sit more comfortably during work.	1
7	2026-07-24	3	84	92	Movement felt easier and I was able to sit more comfortably during work.	1
8	2026-07-24	1	34	1	feeling good	4
11	2026-07-26	6	70	2	feels good today	6
12	2026-07-26	5	75	2	noice	6
13	2026-07-26	5	80	4	gooood	6
\.


--
-- Data for Name: core_treatmentplan; Type: TABLE DATA; Schema: public; Owner: physiocare
--

COPY public.core_treatmentplan (id, title, diagnosis, goal, instructions, progress, started_on, next_review, active, doctor_id, patient_id) FROM stdin;
1	Lower-back mobility & strength	Mechanical lower-back pain with reduced hip mobility	Move comfortably through the workday and return to 30-minute morning walks without pain.	Complete your mobility routine once each morning.\nTake a two-minute movement break every 45 minutes while working.\nUse heat for 10 minutes if stiffness increases, unless your therapist advises otherwise.	68	2026-06-19	2026-07-31	t	1	1
2	Right shoulder recovery	Mild rotator cuff strain	Restore pain-free overhead movement.	Completed with full range of motion.	100	2025-08-18	2025-10-17	f	2	1
3	rgrrg	efef	efefe	efff	1	2026-07-24	\N	t	1	4
4	Knee pain	ultrasound	to feel your knee better	do exercise and take this medicines	0	2026-07-24	\N	t	1	4
6	Shoulder Treatment	Shoulder	Take a good look of shoulder bone	drink hot water	1	2026-07-26	\N	t	2	6
7	Shoulder Bones	Shoulder and Bone	To improve mobility	Keep drink water	1	2026-07-26	\N	t	2	6
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: physiocare
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2026-07-26 11:02:54.24707+00	3	drarjun	2	[{"changed": {"fields": ["password"]}}]	4	6
2	2026-07-26 11:02:59.479672+00	3	drarjun	2	[]	4	6
3	2026-07-26 11:03:59.887374+00	4	Admin-Dev	3		4	6
4	2026-07-26 11:03:59.887429+00	10	Deep	3		4	6
5	2026-07-26 11:03:59.887445+00	5	drnisha	3		4	6
6	2026-07-26 11:03:59.887456+00	8	rahul	3		4	6
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: physiocare
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	core	exercise
8	core	chatmessage
9	core	doctorprofile
10	core	notification
11	core	patientprofile
12	core	medicalrecord
13	core	feedback
14	core	exerciseassignment
15	core	appointment
16	core	payment
17	core	prescription
18	core	progressentry
19	core	treatmentplan
20	core	cmscontent
21	core	contactmessage
22	core	emaildelivery
23	core	emailotp
24	core	employeeprofile
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: physiocare
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2026-07-24 04:31:02.962409+00
2	auth	0001_initial	2026-07-24 04:31:03.370422+00
3	admin	0001_initial	2026-07-24 04:31:03.471565+00
4	admin	0002_logentry_remove_auto_add	2026-07-24 04:31:03.487834+00
5	admin	0003_logentry_add_action_flag_choices	2026-07-24 04:31:03.508411+00
6	contenttypes	0002_remove_content_type_name	2026-07-24 04:31:03.537366+00
7	auth	0002_alter_permission_name_max_length	2026-07-24 04:31:03.559849+00
8	auth	0003_alter_user_email_max_length	2026-07-24 04:31:03.580167+00
9	auth	0004_alter_user_username_opts	2026-07-24 04:31:03.599338+00
10	auth	0005_alter_user_last_login_null	2026-07-24 04:31:03.622143+00
11	auth	0006_require_contenttypes_0002	2026-07-24 04:31:03.635451+00
12	auth	0007_alter_validators_add_error_messages	2026-07-24 04:31:03.652058+00
13	auth	0008_alter_user_username_max_length	2026-07-24 04:31:03.692464+00
14	auth	0009_alter_user_last_name_max_length	2026-07-24 04:31:03.71415+00
15	auth	0010_alter_group_name_max_length	2026-07-24 04:31:03.73107+00
16	auth	0011_update_proxy_permissions	2026-07-24 04:31:03.749387+00
17	auth	0012_alter_user_first_name_max_length	2026-07-24 04:31:03.763663+00
18	core	0001_initial	2026-07-24 04:31:04.624961+00
19	core	0002_cmscontent	2026-07-24 04:31:04.724799+00
20	core	0003_contactmessage_patientprofile_email_verified_at_and_more	2026-07-24 04:31:04.928889+00
21	core	0004_appointment_checked_in_at_appointment_updated_at_and_more	2026-07-24 04:31:05.153939+00
22	core	0005_employeeprofile	2026-07-24 04:31:05.265439+00
23	core	0006_alter_employeeprofile_options	2026-07-24 04:31:05.280428+00
24	core	0007_alter_chatmessage_attachment_and_more	2026-07-24 04:31:05.308856+00
25	core	0008_alter_appointment_mode	2026-07-24 04:31:05.322298+00
26	core	0009_update_video_announcement	2026-07-24 04:31:05.468925+00
27	sessions	0001_initial	2026-07-24 04:31:05.581185+00
28	core	0010_seed_exercise_catalog	2026-07-26 11:20:13.869547+00
29	core	0011_prescription_medicine_entries	2026-07-26 11:54:32.2342+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: physiocare
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
lbwtkwp085eb95mva9xv10i6vis9f3kf	.eJxVjEEOwiAQAP_C2RBKgQWP3vuGZmEXqRqalPZk_Lsh6UGvM5N5ixmPvcxH421eSFyFFpdfFjE9uXZBD6z3Vaa17tsSZU_kaZucVuLX7Wz_BgVb6VuXMHvK5AOOFiga4CHrIVsIfkwcFGh2Jjhj2eQUQFtrYkYGp4C8Ep8v8CI3zg:1wn9PP:oGG-AcPJQlUO_5XCSb4JF2qiny4CF1uehheeD3glKN8	2026-08-07 06:29:23.050602+00
il1h8mfqcaveyg0rgoqxk93rj76f9qex	.eJxVjEEOwiAQRe_C2hCgBQaX7j0DmWFQqgaS0q6Md7dNutDtf-_9t4i4LiWuPc9xYnEWWpx-N8L0zHUH_MB6bzK1uswTyV2RB-3y2ji_Lof7d1Cwl63OVlnKGhloZM_GgEMAhUNQ4aZ80ImcBaRkNgWVA_BjBstOa0cJBvH5AuS3N6k:1wngdw:YuEThsTDqAAcbJIDqV7fXP3vjWJKKZJjz_klfbtQDzo	2026-08-08 17:58:36.384207+00
99p5z134eqi907npfw8j6fx3m65bmlx4	.eJxVjEEOwiAQRe_C2pAyTGnr0r1nIDMwSNVAUtqV8e7apAvd_vfefylP25r91mTxc1Rn5dTpd2MKDyk7iHcqt6pDLesys94VfdCmrzXK83K4fweZWv7WliSYjsfEQoAkbCcYJqCeoGcLgmIjJ2BGTAxGqHMJnYlGRgyDA_X-AA8vOKU:1wtiwc:BGtIRxHFhEe8zNNt0xRvIxPD2NBTC-4Iwl1fa0qUxBY	2026-08-25 09:38:50.718735+00
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: physiocare
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, true);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: physiocare
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: physiocare
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 96, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: physiocare
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, true);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: physiocare
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 11, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: physiocare
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: core_appointment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: physiocare
--

SELECT pg_catalog.setval('public.core_appointment_id_seq', 10, true);


--
-- Name: core_chatmessage_id_seq; Type: SEQUENCE SET; Schema: public; Owner: physiocare
--

SELECT pg_catalog.setval('public.core_chatmessage_id_seq', 4, true);


--
-- Name: core_cmscontent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: physiocare
--

SELECT pg_catalog.setval('public.core_cmscontent_id_seq', 3, true);


--
-- Name: core_contactmessage_id_seq; Type: SEQUENCE SET; Schema: public; Owner: physiocare
--

SELECT pg_catalog.setval('public.core_contactmessage_id_seq', 1, false);


--
-- Name: core_doctorprofile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: physiocare
--

SELECT pg_catalog.setval('public.core_doctorprofile_id_seq', 3, true);


--
-- Name: core_emaildelivery_id_seq; Type: SEQUENCE SET; Schema: public; Owner: physiocare
--

SELECT pg_catalog.setval('public.core_emaildelivery_id_seq', 61, true);


--
-- Name: core_emailotp_id_seq; Type: SEQUENCE SET; Schema: public; Owner: physiocare
--

SELECT pg_catalog.setval('public.core_emailotp_id_seq', 4, true);


--
-- Name: core_employeeprofile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: physiocare
--

SELECT pg_catalog.setval('public.core_employeeprofile_id_seq', 1, true);


--
-- Name: core_exercise_id_seq; Type: SEQUENCE SET; Schema: public; Owner: physiocare
--

SELECT pg_catalog.setval('public.core_exercise_id_seq', 15, true);


--
-- Name: core_exerciseassignment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: physiocare
--

SELECT pg_catalog.setval('public.core_exerciseassignment_id_seq', 13, true);


--
-- Name: core_feedback_id_seq; Type: SEQUENCE SET; Schema: public; Owner: physiocare
--

SELECT pg_catalog.setval('public.core_feedback_id_seq', 2, true);


--
-- Name: core_medicalrecord_id_seq; Type: SEQUENCE SET; Schema: public; Owner: physiocare
--

SELECT pg_catalog.setval('public.core_medicalrecord_id_seq', 5, true);


--
-- Name: core_notification_id_seq; Type: SEQUENCE SET; Schema: public; Owner: physiocare
--

SELECT pg_catalog.setval('public.core_notification_id_seq', 25, true);


--
-- Name: core_patientprofile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: physiocare
--

SELECT pg_catalog.setval('public.core_patientprofile_id_seq', 7, true);


--
-- Name: core_payment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: physiocare
--

SELECT pg_catalog.setval('public.core_payment_id_seq', 3, true);


--
-- Name: core_prescription_id_seq; Type: SEQUENCE SET; Schema: public; Owner: physiocare
--

SELECT pg_catalog.setval('public.core_prescription_id_seq', 6, true);


--
-- Name: core_progressentry_id_seq; Type: SEQUENCE SET; Schema: public; Owner: physiocare
--

SELECT pg_catalog.setval('public.core_progressentry_id_seq', 13, true);


--
-- Name: core_treatmentplan_id_seq; Type: SEQUENCE SET; Schema: public; Owner: physiocare
--

SELECT pg_catalog.setval('public.core_treatmentplan_id_seq', 7, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: physiocare
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 6, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: physiocare
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 24, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: physiocare
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 29, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: physiocare
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: physiocare
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: physiocare
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: physiocare
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: physiocare
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: physiocare
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: physiocare
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: physiocare
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: physiocare
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: physiocare
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: physiocare
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: physiocare
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: core_appointment core_appointment_pkey; Type: CONSTRAINT; Schema: public; Owner: physiocare
--

ALTER TABLE ONLY public.core_appointment
    ADD CONSTRAINT core_appointment_pkey PRIMARY KEY (id);


--
-- Name: core_chatmessage core_chatmessage_pkey; Type: CONSTRAINT; Schema: public; Owner: physiocare
--

ALTER TABLE ONLY public.core_chatmessage
    ADD CONSTRAINT core_chatmessage_pkey PRIMARY KEY (id);


--
-- Name: core_cmscontent core_cmscontent_pkey; Type: CONSTRAINT; Schema: public; Owner: physiocare
--

ALTER TABLE ONLY public.core_cmscontent
    ADD CONSTRAINT core_cmscontent_pkey PRIMARY KEY (id);


--
-- Name: core_contactmessage core_contactmessage_pkey; Type: CONSTRAINT; Schema: public; Owner: physiocare
--

ALTER TABLE ONLY public.core_contactmessage
    ADD CONSTRAINT core_contactmessage_pkey PRIMARY KEY (id);


--
-- Name: core_doctorprofile core_doctorprofile_pkey; Type: CONSTRAINT; Schema: public; Owner: physiocare
--

ALTER TABLE ONLY public.core_doctorprofile
    ADD CONSTRAINT core_doctorprofile_pkey PRIMARY KEY (id);


--
-- Name: core_doctorprofile core_doctorprofile_user_id_key; Type: CONSTRAINT; Schema: public; Owner: physiocare
--

ALTER TABLE ONLY public.core_doctorprofile
    ADD CONSTRAINT core_doctorprofile_user_id_key UNIQUE (user_id);


--
-- Name: core_emaildelivery core_emaildelivery_event_key_key; Type: CONSTRAINT; Schema: public; Owner: physiocare
--

ALTER TABLE ONLY public.core_emaildelivery
    ADD CONSTRAINT core_emaildelivery_event_key_key UNIQUE (event_key);


--
-- Name: core_emaildelivery core_emaildelivery_pkey; Type: CONSTRAINT; Schema: public; Owner: physiocare
--

ALTER TABLE ONLY public.core_emaildelivery
    ADD CONSTRAINT core_emaildelivery_pkey PRIMARY KEY (id);


--
-- Name: core_emailotp core_emailotp_pkey; Type: CONSTRAINT; Schema: public; Owner: physiocare
--

ALTER TABLE ONLY public.core_emailotp
    ADD CONSTRAINT core_emailotp_pkey PRIMARY KEY (id);


--
-- Name: core_employeeprofile core_employeeprofile_employee_id_key; Type: CONSTRAINT; Schema: public; Owner: physiocare
--

ALTER TABLE ONLY public.core_employeeprofile
    ADD CONSTRAINT core_employeeprofile_employee_id_key UNIQUE (employee_id);


--
-- Name: core_employeeprofile core_employeeprofile_pkey; Type: CONSTRAINT; Schema: public; Owner: physiocare
--

ALTER TABLE ONLY public.core_employeeprofile
    ADD CONSTRAINT core_employeeprofile_pkey PRIMARY KEY (id);


--
-- Name: core_employeeprofile core_employeeprofile_user_id_key; Type: CONSTRAINT; Schema: public; Owner: physiocare
--

ALTER TABLE ONLY public.core_employeeprofile
    ADD CONSTRAINT core_employeeprofile_user_id_key UNIQUE (user_id);


--
-- Name: core_exercise core_exercise_pkey; Type: CONSTRAINT; Schema: public; Owner: physiocare
--

ALTER TABLE ONLY public.core_exercise
    ADD CONSTRAINT core_exercise_pkey PRIMARY KEY (id);


--
-- Name: core_exerciseassignment core_exerciseassignment_pkey; Type: CONSTRAINT; Schema: public; Owner: physiocare
--

ALTER TABLE ONLY public.core_exerciseassignment
    ADD CONSTRAINT core_exerciseassignment_pkey PRIMARY KEY (id);


--
-- Name: core_feedback core_feedback_pkey; Type: CONSTRAINT; Schema: public; Owner: physiocare
--

ALTER TABLE ONLY public.core_feedback
    ADD CONSTRAINT core_feedback_pkey PRIMARY KEY (id);


--
-- Name: core_medicalrecord core_medicalrecord_pkey; Type: CONSTRAINT; Schema: public; Owner: physiocare
--

ALTER TABLE ONLY public.core_medicalrecord
    ADD CONSTRAINT core_medicalrecord_pkey PRIMARY KEY (id);


--
-- Name: core_notification core_notification_pkey; Type: CONSTRAINT; Schema: public; Owner: physiocare
--

ALTER TABLE ONLY public.core_notification
    ADD CONSTRAINT core_notification_pkey PRIMARY KEY (id);


--
-- Name: core_patientprofile core_patientprofile_patient_id_key; Type: CONSTRAINT; Schema: public; Owner: physiocare
--

ALTER TABLE ONLY public.core_patientprofile
    ADD CONSTRAINT core_patientprofile_patient_id_key UNIQUE (patient_id);


--
-- Name: core_patientprofile core_patientprofile_pkey; Type: CONSTRAINT; Schema: public; Owner: physiocare
--

ALTER TABLE ONLY public.core_patientprofile
    ADD CONSTRAINT core_patientprofile_pkey PRIMARY KEY (id);


--
-- Name: core_patientprofile core_patientprofile_user_id_key; Type: CONSTRAINT; Schema: public; Owner: physiocare
--

ALTER TABLE ONLY public.core_patientprofile
    ADD CONSTRAINT core_patientprofile_user_id_key UNIQUE (user_id);


--
-- Name: core_payment core_payment_invoice_number_key; Type: CONSTRAINT; Schema: public; Owner: physiocare
--

ALTER TABLE ONLY public.core_payment
    ADD CONSTRAINT core_payment_invoice_number_key UNIQUE (invoice_number);


--
-- Name: core_payment core_payment_pkey; Type: CONSTRAINT; Schema: public; Owner: physiocare
--

ALTER TABLE ONLY public.core_payment
    ADD CONSTRAINT core_payment_pkey PRIMARY KEY (id);


--
-- Name: core_prescription core_prescription_pkey; Type: CONSTRAINT; Schema: public; Owner: physiocare
--

ALTER TABLE ONLY public.core_prescription
    ADD CONSTRAINT core_prescription_pkey PRIMARY KEY (id);


--
-- Name: core_progressentry core_progressentry_pkey; Type: CONSTRAINT; Schema: public; Owner: physiocare
--

ALTER TABLE ONLY public.core_progressentry
    ADD CONSTRAINT core_progressentry_pkey PRIMARY KEY (id);


--
-- Name: core_treatmentplan core_treatmentplan_pkey; Type: CONSTRAINT; Schema: public; Owner: physiocare
--

ALTER TABLE ONLY public.core_treatmentplan
    ADD CONSTRAINT core_treatmentplan_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: physiocare
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: physiocare
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: physiocare
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: physiocare
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: physiocare
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: physiocare
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: physiocare
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: physiocare
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: physiocare
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: physiocare
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: physiocare
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: physiocare
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: physiocare
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: physiocare
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: core_appointment_doctor_id_c3a00eba; Type: INDEX; Schema: public; Owner: physiocare
--

CREATE INDEX core_appointment_doctor_id_c3a00eba ON public.core_appointment USING btree (doctor_id);


--
-- Name: core_appointment_patient_id_960b1d60; Type: INDEX; Schema: public; Owner: physiocare
--

CREATE INDEX core_appointment_patient_id_960b1d60 ON public.core_appointment USING btree (patient_id);


--
-- Name: core_chatmessage_recipient_id_99e45b75; Type: INDEX; Schema: public; Owner: physiocare
--

CREATE INDEX core_chatmessage_recipient_id_99e45b75 ON public.core_chatmessage USING btree (recipient_id);


--
-- Name: core_chatmessage_sender_id_c9992722; Type: INDEX; Schema: public; Owner: physiocare
--

CREATE INDEX core_chatmessage_sender_id_c9992722 ON public.core_chatmessage USING btree (sender_id);


--
-- Name: core_cmscontent_created_by_id_d4e006f9; Type: INDEX; Schema: public; Owner: physiocare
--

CREATE INDEX core_cmscontent_created_by_id_d4e006f9 ON public.core_cmscontent USING btree (created_by_id);


--
-- Name: core_contactmessage_handled_by_id_52d9874b; Type: INDEX; Schema: public; Owner: physiocare
--

CREATE INDEX core_contactmessage_handled_by_id_52d9874b ON public.core_contactmessage USING btree (handled_by_id);


--
-- Name: core_emaild_status_e2c969_idx; Type: INDEX; Schema: public; Owner: physiocare
--

CREATE INDEX core_emaild_status_e2c969_idx ON public.core_emaildelivery USING btree (status, created_at);


--
-- Name: core_emaildelivery_event_key_62670e13_like; Type: INDEX; Schema: public; Owner: physiocare
--

CREATE INDEX core_emaildelivery_event_key_62670e13_like ON public.core_emaildelivery USING btree (event_key varchar_pattern_ops);


--
-- Name: core_emailo_user_id_0f3a68_idx; Type: INDEX; Schema: public; Owner: physiocare
--

CREATE INDEX core_emailo_user_id_0f3a68_idx ON public.core_emailotp USING btree (user_id, purpose, consumed_at);


--
-- Name: core_emailotp_user_id_fc31491f; Type: INDEX; Schema: public; Owner: physiocare
--

CREATE INDEX core_emailotp_user_id_fc31491f ON public.core_emailotp USING btree (user_id);


--
-- Name: core_employeeprofile_employee_id_a1110616_like; Type: INDEX; Schema: public; Owner: physiocare
--

CREATE INDEX core_employeeprofile_employee_id_a1110616_like ON public.core_employeeprofile USING btree (employee_id varchar_pattern_ops);


--
-- Name: core_exerciseassignment_assigned_by_id_a26ef66e; Type: INDEX; Schema: public; Owner: physiocare
--

CREATE INDEX core_exerciseassignment_assigned_by_id_a26ef66e ON public.core_exerciseassignment USING btree (assigned_by_id);


--
-- Name: core_exerciseassignment_exercise_id_c9a01b97; Type: INDEX; Schema: public; Owner: physiocare
--

CREATE INDEX core_exerciseassignment_exercise_id_c9a01b97 ON public.core_exerciseassignment USING btree (exercise_id);


--
-- Name: core_exerciseassignment_patient_id_805dd424; Type: INDEX; Schema: public; Owner: physiocare
--

CREATE INDEX core_exerciseassignment_patient_id_805dd424 ON public.core_exerciseassignment USING btree (patient_id);


--
-- Name: core_feedback_doctor_id_e5039c9a; Type: INDEX; Schema: public; Owner: physiocare
--

CREATE INDEX core_feedback_doctor_id_e5039c9a ON public.core_feedback USING btree (doctor_id);


--
-- Name: core_feedback_patient_id_9eb76e58; Type: INDEX; Schema: public; Owner: physiocare
--

CREATE INDEX core_feedback_patient_id_9eb76e58 ON public.core_feedback USING btree (patient_id);


--
-- Name: core_medicalrecord_patient_id_86c0486f; Type: INDEX; Schema: public; Owner: physiocare
--

CREATE INDEX core_medicalrecord_patient_id_86c0486f ON public.core_medicalrecord USING btree (patient_id);


--
-- Name: core_notification_user_id_6e341aac; Type: INDEX; Schema: public; Owner: physiocare
--

CREATE INDEX core_notification_user_id_6e341aac ON public.core_notification USING btree (user_id);


--
-- Name: core_patientprofile_patient_id_e654f996_like; Type: INDEX; Schema: public; Owner: physiocare
--

CREATE INDEX core_patientprofile_patient_id_e654f996_like ON public.core_patientprofile USING btree (patient_id varchar_pattern_ops);


--
-- Name: core_patientprofile_registered_by_id_979c6af6; Type: INDEX; Schema: public; Owner: physiocare
--

CREATE INDEX core_patientprofile_registered_by_id_979c6af6 ON public.core_patientprofile USING btree (registered_by_id);


--
-- Name: core_payment_appointment_id_4b8c4994; Type: INDEX; Schema: public; Owner: physiocare
--

CREATE INDEX core_payment_appointment_id_4b8c4994 ON public.core_payment USING btree (appointment_id);


--
-- Name: core_payment_collected_by_id_63eb09d2; Type: INDEX; Schema: public; Owner: physiocare
--

CREATE INDEX core_payment_collected_by_id_63eb09d2 ON public.core_payment USING btree (collected_by_id);


--
-- Name: core_payment_invoice_number_898502c7_like; Type: INDEX; Schema: public; Owner: physiocare
--

CREATE INDEX core_payment_invoice_number_898502c7_like ON public.core_payment USING btree (invoice_number varchar_pattern_ops);


--
-- Name: core_payment_patient_id_379302b3; Type: INDEX; Schema: public; Owner: physiocare
--

CREATE INDEX core_payment_patient_id_379302b3 ON public.core_payment USING btree (patient_id);


--
-- Name: core_prescription_doctor_id_bb81dd1b; Type: INDEX; Schema: public; Owner: physiocare
--

CREATE INDEX core_prescription_doctor_id_bb81dd1b ON public.core_prescription USING btree (doctor_id);


--
-- Name: core_prescription_patient_id_56c70a0a; Type: INDEX; Schema: public; Owner: physiocare
--

CREATE INDEX core_prescription_patient_id_56c70a0a ON public.core_prescription USING btree (patient_id);


--
-- Name: core_progressentry_patient_id_032d97ad; Type: INDEX; Schema: public; Owner: physiocare
--

CREATE INDEX core_progressentry_patient_id_032d97ad ON public.core_progressentry USING btree (patient_id);


--
-- Name: core_treatmentplan_doctor_id_6580770c; Type: INDEX; Schema: public; Owner: physiocare
--

CREATE INDEX core_treatmentplan_doctor_id_6580770c ON public.core_treatmentplan USING btree (doctor_id);


--
-- Name: core_treatmentplan_patient_id_e727b9e7; Type: INDEX; Schema: public; Owner: physiocare
--

CREATE INDEX core_treatmentplan_patient_id_e727b9e7 ON public.core_treatmentplan USING btree (patient_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: physiocare
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: physiocare
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: physiocare
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: physiocare
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: physiocare
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: physiocare
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: physiocare
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: physiocare
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: physiocare
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: physiocare
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: physiocare
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: core_appointment core_appointment_doctor_id_c3a00eba_fk_core_doctorprofile_id; Type: FK CONSTRAINT; Schema: public; Owner: physiocare
--

ALTER TABLE ONLY public.core_appointment
    ADD CONSTRAINT core_appointment_doctor_id_c3a00eba_fk_core_doctorprofile_id FOREIGN KEY (doctor_id) REFERENCES public.core_doctorprofile(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: core_appointment core_appointment_patient_id_960b1d60_fk_core_patientprofile_id; Type: FK CONSTRAINT; Schema: public; Owner: physiocare
--

ALTER TABLE ONLY public.core_appointment
    ADD CONSTRAINT core_appointment_patient_id_960b1d60_fk_core_patientprofile_id FOREIGN KEY (patient_id) REFERENCES public.core_patientprofile(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: core_chatmessage core_chatmessage_recipient_id_99e45b75_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: physiocare
--

ALTER TABLE ONLY public.core_chatmessage
    ADD CONSTRAINT core_chatmessage_recipient_id_99e45b75_fk_auth_user_id FOREIGN KEY (recipient_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: core_chatmessage core_chatmessage_sender_id_c9992722_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: physiocare
--

ALTER TABLE ONLY public.core_chatmessage
    ADD CONSTRAINT core_chatmessage_sender_id_c9992722_fk_auth_user_id FOREIGN KEY (sender_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: core_cmscontent core_cmscontent_created_by_id_d4e006f9_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: physiocare
--

ALTER TABLE ONLY public.core_cmscontent
    ADD CONSTRAINT core_cmscontent_created_by_id_d4e006f9_fk_auth_user_id FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: core_contactmessage core_contactmessage_handled_by_id_52d9874b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: physiocare
--

ALTER TABLE ONLY public.core_contactmessage
    ADD CONSTRAINT core_contactmessage_handled_by_id_52d9874b_fk_auth_user_id FOREIGN KEY (handled_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: core_doctorprofile core_doctorprofile_user_id_7f2b80b7_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: physiocare
--

ALTER TABLE ONLY public.core_doctorprofile
    ADD CONSTRAINT core_doctorprofile_user_id_7f2b80b7_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: core_emailotp core_emailotp_user_id_fc31491f_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: physiocare
--

ALTER TABLE ONLY public.core_emailotp
    ADD CONSTRAINT core_emailotp_user_id_fc31491f_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: core_employeeprofile core_employeeprofile_user_id_64abf4fb_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: physiocare
--

ALTER TABLE ONLY public.core_employeeprofile
    ADD CONSTRAINT core_employeeprofile_user_id_64abf4fb_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: core_exerciseassignment core_exerciseassignm_assigned_by_id_a26ef66e_fk_core_doct; Type: FK CONSTRAINT; Schema: public; Owner: physiocare
--

ALTER TABLE ONLY public.core_exerciseassignment
    ADD CONSTRAINT core_exerciseassignm_assigned_by_id_a26ef66e_fk_core_doct FOREIGN KEY (assigned_by_id) REFERENCES public.core_doctorprofile(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: core_exerciseassignment core_exerciseassignm_exercise_id_c9a01b97_fk_core_exer; Type: FK CONSTRAINT; Schema: public; Owner: physiocare
--

ALTER TABLE ONLY public.core_exerciseassignment
    ADD CONSTRAINT core_exerciseassignm_exercise_id_c9a01b97_fk_core_exer FOREIGN KEY (exercise_id) REFERENCES public.core_exercise(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: core_exerciseassignment core_exerciseassignm_patient_id_805dd424_fk_core_pati; Type: FK CONSTRAINT; Schema: public; Owner: physiocare
--

ALTER TABLE ONLY public.core_exerciseassignment
    ADD CONSTRAINT core_exerciseassignm_patient_id_805dd424_fk_core_pati FOREIGN KEY (patient_id) REFERENCES public.core_patientprofile(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: core_feedback core_feedback_doctor_id_e5039c9a_fk_core_doctorprofile_id; Type: FK CONSTRAINT; Schema: public; Owner: physiocare
--

ALTER TABLE ONLY public.core_feedback
    ADD CONSTRAINT core_feedback_doctor_id_e5039c9a_fk_core_doctorprofile_id FOREIGN KEY (doctor_id) REFERENCES public.core_doctorprofile(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: core_feedback core_feedback_patient_id_9eb76e58_fk_core_patientprofile_id; Type: FK CONSTRAINT; Schema: public; Owner: physiocare
--

ALTER TABLE ONLY public.core_feedback
    ADD CONSTRAINT core_feedback_patient_id_9eb76e58_fk_core_patientprofile_id FOREIGN KEY (patient_id) REFERENCES public.core_patientprofile(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: core_medicalrecord core_medicalrecord_patient_id_86c0486f_fk_core_pati; Type: FK CONSTRAINT; Schema: public; Owner: physiocare
--

ALTER TABLE ONLY public.core_medicalrecord
    ADD CONSTRAINT core_medicalrecord_patient_id_86c0486f_fk_core_pati FOREIGN KEY (patient_id) REFERENCES public.core_patientprofile(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: core_notification core_notification_user_id_6e341aac_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: physiocare
--

ALTER TABLE ONLY public.core_notification
    ADD CONSTRAINT core_notification_user_id_6e341aac_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: core_patientprofile core_patientprofile_registered_by_id_979c6af6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: physiocare
--

ALTER TABLE ONLY public.core_patientprofile
    ADD CONSTRAINT core_patientprofile_registered_by_id_979c6af6_fk_auth_user_id FOREIGN KEY (registered_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: core_patientprofile core_patientprofile_user_id_776323f1_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: physiocare
--

ALTER TABLE ONLY public.core_patientprofile
    ADD CONSTRAINT core_patientprofile_user_id_776323f1_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: core_payment core_payment_appointment_id_4b8c4994_fk_core_appointment_id; Type: FK CONSTRAINT; Schema: public; Owner: physiocare
--

ALTER TABLE ONLY public.core_payment
    ADD CONSTRAINT core_payment_appointment_id_4b8c4994_fk_core_appointment_id FOREIGN KEY (appointment_id) REFERENCES public.core_appointment(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: core_payment core_payment_collected_by_id_63eb09d2_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: physiocare
--

ALTER TABLE ONLY public.core_payment
    ADD CONSTRAINT core_payment_collected_by_id_63eb09d2_fk_auth_user_id FOREIGN KEY (collected_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: core_payment core_payment_patient_id_379302b3_fk_core_patientprofile_id; Type: FK CONSTRAINT; Schema: public; Owner: physiocare
--

ALTER TABLE ONLY public.core_payment
    ADD CONSTRAINT core_payment_patient_id_379302b3_fk_core_patientprofile_id FOREIGN KEY (patient_id) REFERENCES public.core_patientprofile(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: core_prescription core_prescription_doctor_id_bb81dd1b_fk_core_doctorprofile_id; Type: FK CONSTRAINT; Schema: public; Owner: physiocare
--

ALTER TABLE ONLY public.core_prescription
    ADD CONSTRAINT core_prescription_doctor_id_bb81dd1b_fk_core_doctorprofile_id FOREIGN KEY (doctor_id) REFERENCES public.core_doctorprofile(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: core_prescription core_prescription_patient_id_56c70a0a_fk_core_patientprofile_id; Type: FK CONSTRAINT; Schema: public; Owner: physiocare
--

ALTER TABLE ONLY public.core_prescription
    ADD CONSTRAINT core_prescription_patient_id_56c70a0a_fk_core_patientprofile_id FOREIGN KEY (patient_id) REFERENCES public.core_patientprofile(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: core_progressentry core_progressentry_patient_id_032d97ad_fk_core_pati; Type: FK CONSTRAINT; Schema: public; Owner: physiocare
--

ALTER TABLE ONLY public.core_progressentry
    ADD CONSTRAINT core_progressentry_patient_id_032d97ad_fk_core_pati FOREIGN KEY (patient_id) REFERENCES public.core_patientprofile(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: core_treatmentplan core_treatmentplan_doctor_id_6580770c_fk_core_doctorprofile_id; Type: FK CONSTRAINT; Schema: public; Owner: physiocare
--

ALTER TABLE ONLY public.core_treatmentplan
    ADD CONSTRAINT core_treatmentplan_doctor_id_6580770c_fk_core_doctorprofile_id FOREIGN KEY (doctor_id) REFERENCES public.core_doctorprofile(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: core_treatmentplan core_treatmentplan_patient_id_e727b9e7_fk_core_pati; Type: FK CONSTRAINT; Schema: public; Owner: physiocare
--

ALTER TABLE ONLY public.core_treatmentplan
    ADD CONSTRAINT core_treatmentplan_patient_id_e727b9e7_fk_core_pati FOREIGN KEY (patient_id) REFERENCES public.core_patientprofile(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: physiocare
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: physiocare
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

\unrestrict Lc6DOhvhJCcpfam3HYbPFsW5rqMjLMEWV5C9mN1uTuoRCcJKyjtKHhifv3suU9F

