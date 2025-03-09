--
-- PostgreSQL database dump
--

-- Dumped from database version 13.9 (Ubuntu 13.9-1.pgdg20.04+1)
-- Dumped by pg_dump version 13.9 (Ubuntu 13.9-1.pgdg20.04+1)

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
-- Name: btree_gin; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS btree_gin WITH SCHEMA public;


--
-- Name: EXTENSION btree_gin; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION btree_gin IS 'support for indexing common datatypes in GIN';


--
-- Name: btree_gist; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS btree_gist WITH SCHEMA public;


--
-- Name: EXTENSION btree_gist; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION btree_gist IS 'support for indexing common datatypes in GiST';


--
-- Name: citext; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS citext WITH SCHEMA public;


--
-- Name: EXTENSION citext; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION citext IS 'data type for case-insensitive character strings';


--
-- Name: cube; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS cube WITH SCHEMA public;


--
-- Name: EXTENSION cube; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION cube IS 'data type for multidimensional cubes';


--
-- Name: dblink; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS dblink WITH SCHEMA public;


--
-- Name: EXTENSION dblink; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION dblink IS 'connect to other PostgreSQL databases from within a database';


--
-- Name: dict_int; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS dict_int WITH SCHEMA public;


--
-- Name: EXTENSION dict_int; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION dict_int IS 'text search dictionary template for integers';


--
-- Name: dict_xsyn; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS dict_xsyn WITH SCHEMA public;


--
-- Name: EXTENSION dict_xsyn; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION dict_xsyn IS 'text search dictionary template for extended synonym processing';


--
-- Name: earthdistance; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS earthdistance WITH SCHEMA public;


--
-- Name: EXTENSION earthdistance; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION earthdistance IS 'calculate great-circle distances on the surface of the Earth';


--
-- Name: fuzzystrmatch; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS fuzzystrmatch WITH SCHEMA public;


--
-- Name: EXTENSION fuzzystrmatch; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION fuzzystrmatch IS 'determine similarities and distance between strings';


--
-- Name: hstore; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS hstore WITH SCHEMA public;


--
-- Name: EXTENSION hstore; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION hstore IS 'data type for storing sets of (key, value) pairs';


--
-- Name: intarray; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS intarray WITH SCHEMA public;


--
-- Name: EXTENSION intarray; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION intarray IS 'functions, operators, and index support for 1-D arrays of integers';


--
-- Name: ltree; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS ltree WITH SCHEMA public;


--
-- Name: EXTENSION ltree; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION ltree IS 'data type for hierarchical tree-like structures';


--
-- Name: pg_stat_statements; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pg_stat_statements WITH SCHEMA public;


--
-- Name: EXTENSION pg_stat_statements; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pg_stat_statements IS 'track planning and execution statistics of all SQL statements executed';


--
-- Name: pg_trgm; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pg_trgm WITH SCHEMA public;


--
-- Name: EXTENSION pg_trgm; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pg_trgm IS 'text similarity measurement and index searching based on trigrams';


--
-- Name: pgcrypto; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pgcrypto WITH SCHEMA public;


--
-- Name: EXTENSION pgcrypto; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgcrypto IS 'cryptographic functions';


--
-- Name: pgrowlocks; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pgrowlocks WITH SCHEMA public;


--
-- Name: EXTENSION pgrowlocks; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgrowlocks IS 'show row-level locking information';


--
-- Name: pgstattuple; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pgstattuple WITH SCHEMA public;


--
-- Name: EXTENSION pgstattuple; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION pgstattuple IS 'show tuple-level statistics';


--
-- Name: tablefunc; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS tablefunc WITH SCHEMA public;


--
-- Name: EXTENSION tablefunc; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION tablefunc IS 'functions that manipulate whole tables, including crosstab';


--
-- Name: unaccent; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS unaccent WITH SCHEMA public;


--
-- Name: EXTENSION unaccent; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION unaccent IS 'text search dictionary that removes accents';


--
-- Name: uuid-ossp; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA public;


--
-- Name: EXTENSION "uuid-ossp"; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION "uuid-ossp" IS 'generate universally unique identifiers (UUIDs)';


--
-- Name: xml2; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS xml2 WITH SCHEMA public;


--
-- Name: EXTENSION xml2; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION xml2 IS 'XPath querying and XSLT';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: account_emailaddress; Type: TABLE; Schema: public; Owner: hjecwirx
--

CREATE TABLE public.account_emailaddress (
    id bigint NOT NULL,
    email character varying(254) NOT NULL,
    verified boolean NOT NULL,
    "primary" boolean NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.account_emailaddress OWNER TO hjecwirx;

--
-- Name: account_emailaddress_id_seq; Type: SEQUENCE; Schema: public; Owner: hjecwirx
--

CREATE SEQUENCE public.account_emailaddress_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_emailaddress_id_seq OWNER TO hjecwirx;

--
-- Name: account_emailaddress_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hjecwirx
--

ALTER SEQUENCE public.account_emailaddress_id_seq OWNED BY public.account_emailaddress.id;


--
-- Name: account_emailconfirmation; Type: TABLE; Schema: public; Owner: hjecwirx
--

CREATE TABLE public.account_emailconfirmation (
    id bigint NOT NULL,
    created timestamp with time zone NOT NULL,
    sent timestamp with time zone,
    key character varying(64) NOT NULL,
    email_address_id bigint NOT NULL
);


ALTER TABLE public.account_emailconfirmation OWNER TO hjecwirx;

--
-- Name: account_emailconfirmation_id_seq; Type: SEQUENCE; Schema: public; Owner: hjecwirx
--

CREATE SEQUENCE public.account_emailconfirmation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_emailconfirmation_id_seq OWNER TO hjecwirx;

--
-- Name: account_emailconfirmation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hjecwirx
--

ALTER SEQUENCE public.account_emailconfirmation_id_seq OWNED BY public.account_emailconfirmation.id;


--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: hjecwirx
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO hjecwirx;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: hjecwirx
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO hjecwirx;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hjecwirx
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: hjecwirx
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO hjecwirx;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: hjecwirx
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO hjecwirx;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hjecwirx
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: hjecwirx
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO hjecwirx;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: hjecwirx
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO hjecwirx;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hjecwirx
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: hjecwirx
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


ALTER TABLE public.auth_user OWNER TO hjecwirx;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: hjecwirx
--

CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO hjecwirx;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: hjecwirx
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO hjecwirx;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hjecwirx
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: hjecwirx
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO hjecwirx;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hjecwirx
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: hjecwirx
--

CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO hjecwirx;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: hjecwirx
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO hjecwirx;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hjecwirx
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: authtoken_token; Type: TABLE; Schema: public; Owner: hjecwirx
--

CREATE TABLE public.authtoken_token (
    key character varying(40) NOT NULL,
    created timestamp with time zone NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.authtoken_token OWNER TO hjecwirx;

--
-- Name: categories_category; Type: TABLE; Schema: public; Owner: hjecwirx
--

CREATE TABLE public.categories_category (
    id bigint NOT NULL,
    title character varying(50) NOT NULL,
    description character varying(150) NOT NULL
);


ALTER TABLE public.categories_category OWNER TO hjecwirx;

--
-- Name: categories_category_id_seq; Type: SEQUENCE; Schema: public; Owner: hjecwirx
--

CREATE SEQUENCE public.categories_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categories_category_id_seq OWNER TO hjecwirx;

--
-- Name: categories_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hjecwirx
--

ALTER SEQUENCE public.categories_category_id_seq OWNED BY public.categories_category.id;


--
-- Name: categories_category_related_tasks; Type: TABLE; Schema: public; Owner: hjecwirx
--

CREATE TABLE public.categories_category_related_tasks (
    id bigint NOT NULL,
    category_id bigint NOT NULL,
    task_id bigint NOT NULL
);


ALTER TABLE public.categories_category_related_tasks OWNER TO hjecwirx;

--
-- Name: categories_category_related_tasks_id_seq; Type: SEQUENCE; Schema: public; Owner: hjecwirx
--

CREATE SEQUENCE public.categories_category_related_tasks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categories_category_related_tasks_id_seq OWNER TO hjecwirx;

--
-- Name: categories_category_related_tasks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hjecwirx
--

ALTER SEQUENCE public.categories_category_related_tasks_id_seq OWNED BY public.categories_category_related_tasks.id;


--
-- Name: comments_comment; Type: TABLE; Schema: public; Owner: hjecwirx
--

CREATE TABLE public.comments_comment (
    id bigint NOT NULL,
    created_date timestamp with time zone NOT NULL,
    updated_date timestamp with time zone NOT NULL,
    content text NOT NULL,
    owner_id integer NOT NULL,
    task_id bigint NOT NULL
);


ALTER TABLE public.comments_comment OWNER TO hjecwirx;

--
-- Name: comments_comment_id_seq; Type: SEQUENCE; Schema: public; Owner: hjecwirx
--

CREATE SEQUENCE public.comments_comment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comments_comment_id_seq OWNER TO hjecwirx;

--
-- Name: comments_comment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hjecwirx
--

ALTER SEQUENCE public.comments_comment_id_seq OWNED BY public.comments_comment.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: hjecwirx
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


ALTER TABLE public.django_admin_log OWNER TO hjecwirx;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: hjecwirx
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO hjecwirx;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hjecwirx
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: hjecwirx
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO hjecwirx;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: hjecwirx
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO hjecwirx;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hjecwirx
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: hjecwirx
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO hjecwirx;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: hjecwirx
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO hjecwirx;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hjecwirx
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: hjecwirx
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO hjecwirx;

--
-- Name: django_site; Type: TABLE; Schema: public; Owner: hjecwirx
--

CREATE TABLE public.django_site (
    id integer NOT NULL,
    domain character varying(100) NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.django_site OWNER TO hjecwirx;

--
-- Name: django_site_id_seq; Type: SEQUENCE; Schema: public; Owner: hjecwirx
--

CREATE SEQUENCE public.django_site_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_site_id_seq OWNER TO hjecwirx;

--
-- Name: django_site_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hjecwirx
--

ALTER SEQUENCE public.django_site_id_seq OWNED BY public.django_site.id;


--
-- Name: profiles_profile; Type: TABLE; Schema: public; Owner: hjecwirx
--

CREATE TABLE public.profiles_profile (
    id bigint NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    name character varying(255) NOT NULL,
    content text NOT NULL,
    image character varying(100) NOT NULL,
    owner_id integer NOT NULL
);


ALTER TABLE public.profiles_profile OWNER TO hjecwirx;

--
-- Name: profiles_profile_id_seq; Type: SEQUENCE; Schema: public; Owner: hjecwirx
--

CREATE SEQUENCE public.profiles_profile_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.profiles_profile_id_seq OWNER TO hjecwirx;

--
-- Name: profiles_profile_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hjecwirx
--

ALTER SEQUENCE public.profiles_profile_id_seq OWNED BY public.profiles_profile.id;


--
-- Name: socialaccount_socialaccount; Type: TABLE; Schema: public; Owner: hjecwirx
--

CREATE TABLE public.socialaccount_socialaccount (
    id bigint NOT NULL,
    provider character varying(30) NOT NULL,
    uid character varying(191) NOT NULL,
    last_login timestamp with time zone NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    extra_data text NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.socialaccount_socialaccount OWNER TO hjecwirx;

--
-- Name: socialaccount_socialaccount_id_seq; Type: SEQUENCE; Schema: public; Owner: hjecwirx
--

CREATE SEQUENCE public.socialaccount_socialaccount_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socialaccount_socialaccount_id_seq OWNER TO hjecwirx;

--
-- Name: socialaccount_socialaccount_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hjecwirx
--

ALTER SEQUENCE public.socialaccount_socialaccount_id_seq OWNED BY public.socialaccount_socialaccount.id;


--
-- Name: socialaccount_socialapp; Type: TABLE; Schema: public; Owner: hjecwirx
--

CREATE TABLE public.socialaccount_socialapp (
    id bigint NOT NULL,
    provider character varying(30) NOT NULL,
    name character varying(40) NOT NULL,
    client_id character varying(191) NOT NULL,
    secret character varying(191) NOT NULL,
    key character varying(191) NOT NULL
);


ALTER TABLE public.socialaccount_socialapp OWNER TO hjecwirx;

--
-- Name: socialaccount_socialapp_id_seq; Type: SEQUENCE; Schema: public; Owner: hjecwirx
--

CREATE SEQUENCE public.socialaccount_socialapp_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socialaccount_socialapp_id_seq OWNER TO hjecwirx;

--
-- Name: socialaccount_socialapp_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hjecwirx
--

ALTER SEQUENCE public.socialaccount_socialapp_id_seq OWNED BY public.socialaccount_socialapp.id;


--
-- Name: socialaccount_socialapp_sites; Type: TABLE; Schema: public; Owner: hjecwirx
--

CREATE TABLE public.socialaccount_socialapp_sites (
    id bigint NOT NULL,
    socialapp_id bigint NOT NULL,
    site_id integer NOT NULL
);


ALTER TABLE public.socialaccount_socialapp_sites OWNER TO hjecwirx;

--
-- Name: socialaccount_socialapp_sites_id_seq; Type: SEQUENCE; Schema: public; Owner: hjecwirx
--

CREATE SEQUENCE public.socialaccount_socialapp_sites_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socialaccount_socialapp_sites_id_seq OWNER TO hjecwirx;

--
-- Name: socialaccount_socialapp_sites_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hjecwirx
--

ALTER SEQUENCE public.socialaccount_socialapp_sites_id_seq OWNED BY public.socialaccount_socialapp_sites.id;


--
-- Name: socialaccount_socialtoken; Type: TABLE; Schema: public; Owner: hjecwirx
--

CREATE TABLE public.socialaccount_socialtoken (
    id bigint NOT NULL,
    token text NOT NULL,
    token_secret text NOT NULL,
    expires_at timestamp with time zone,
    account_id bigint NOT NULL,
    app_id bigint NOT NULL
);


ALTER TABLE public.socialaccount_socialtoken OWNER TO hjecwirx;

--
-- Name: socialaccount_socialtoken_id_seq; Type: SEQUENCE; Schema: public; Owner: hjecwirx
--

CREATE SEQUENCE public.socialaccount_socialtoken_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socialaccount_socialtoken_id_seq OWNER TO hjecwirx;

--
-- Name: socialaccount_socialtoken_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hjecwirx
--

ALTER SEQUENCE public.socialaccount_socialtoken_id_seq OWNED BY public.socialaccount_socialtoken.id;


--
-- Name: tasks_task; Type: TABLE; Schema: public; Owner: hjecwirx
--

CREATE TABLE public.tasks_task (
    id bigint NOT NULL,
    created_date timestamp with time zone NOT NULL,
    due_date date,
    updated_date timestamp with time zone,
    completed_date character varying(50),
    title character varying(255) NOT NULL,
    description text NOT NULL,
    image character varying(100),
    priority character varying(25) NOT NULL,
    task_status character varying(25) NOT NULL,
    category_id bigint,
    owner_id integer NOT NULL,
    assigned_to_id integer
);


ALTER TABLE public.tasks_task OWNER TO hjecwirx;

--
-- Name: tasks_task_id_seq; Type: SEQUENCE; Schema: public; Owner: hjecwirx
--

CREATE SEQUENCE public.tasks_task_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tasks_task_id_seq OWNER TO hjecwirx;

--
-- Name: tasks_task_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: hjecwirx
--

ALTER SEQUENCE public.tasks_task_id_seq OWNED BY public.tasks_task.id;


--
-- Name: account_emailaddress id; Type: DEFAULT; Schema: public; Owner: hjecwirx
--

ALTER TABLE ONLY public.account_emailaddress ALTER COLUMN id SET DEFAULT nextval('public.account_emailaddress_id_seq'::regclass);


--
-- Name: account_emailconfirmation id; Type: DEFAULT; Schema: public; Owner: hjecwirx
--

ALTER TABLE ONLY public.account_emailconfirmation ALTER COLUMN id SET DEFAULT nextval('public.account_emailconfirmation_id_seq'::regclass);


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: hjecwirx
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: hjecwirx
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: hjecwirx
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: hjecwirx
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: hjecwirx
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: hjecwirx
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: categories_category id; Type: DEFAULT; Schema: public; Owner: hjecwirx
--

ALTER TABLE ONLY public.categories_category ALTER COLUMN id SET DEFAULT nextval('public.categories_category_id_seq'::regclass);


--
-- Name: categories_category_related_tasks id; Type: DEFAULT; Schema: public; Owner: hjecwirx
--

ALTER TABLE ONLY public.categories_category_related_tasks ALTER COLUMN id SET DEFAULT nextval('public.categories_category_related_tasks_id_seq'::regclass);


--
-- Name: comments_comment id; Type: DEFAULT; Schema: public; Owner: hjecwirx
--

ALTER TABLE ONLY public.comments_comment ALTER COLUMN id SET DEFAULT nextval('public.comments_comment_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: hjecwirx
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: hjecwirx
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: hjecwirx
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: django_site id; Type: DEFAULT; Schema: public; Owner: hjecwirx
--

ALTER TABLE ONLY public.django_site ALTER COLUMN id SET DEFAULT nextval('public.django_site_id_seq'::regclass);


--
-- Name: profiles_profile id; Type: DEFAULT; Schema: public; Owner: hjecwirx
--

ALTER TABLE ONLY public.profiles_profile ALTER COLUMN id SET DEFAULT nextval('public.profiles_profile_id_seq'::regclass);


--
-- Name: socialaccount_socialaccount id; Type: DEFAULT; Schema: public; Owner: hjecwirx
--

ALTER TABLE ONLY public.socialaccount_socialaccount ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialaccount_id_seq'::regclass);


--
-- Name: socialaccount_socialapp id; Type: DEFAULT; Schema: public; Owner: hjecwirx
--

ALTER TABLE ONLY public.socialaccount_socialapp ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialapp_id_seq'::regclass);


--
-- Name: socialaccount_socialapp_sites id; Type: DEFAULT; Schema: public; Owner: hjecwirx
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialapp_sites_id_seq'::regclass);


--
-- Name: socialaccount_socialtoken id; Type: DEFAULT; Schema: public; Owner: hjecwirx
--

ALTER TABLE ONLY public.socialaccount_socialtoken ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialtoken_id_seq'::regclass);


--
-- Name: tasks_task id; Type: DEFAULT; Schema: public; Owner: hjecwirx
--

ALTER TABLE ONLY public.tasks_task ALTER COLUMN id SET DEFAULT nextval('public.tasks_task_id_seq'::regclass);


--
-- Data for Name: account_emailaddress; Type: TABLE DATA; Schema: public; Owner: hjecwirx
--

COPY public.account_emailaddress (id, email, verified, "primary", user_id) FROM stdin;
\.


--
-- Data for Name: account_emailconfirmation; Type: TABLE DATA; Schema: public; Owner: hjecwirx
--

COPY public.account_emailconfirmation (id, created, sent, key, email_address_id) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: hjecwirx
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: hjecwirx
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: hjecwirx
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
25	Can add Token	7	add_token
26	Can change Token	7	change_token
27	Can delete Token	7	delete_token
28	Can view Token	7	view_token
29	Can add token	8	add_tokenproxy
30	Can change token	8	change_tokenproxy
31	Can delete token	8	delete_tokenproxy
32	Can view token	8	view_tokenproxy
33	Can add site	9	add_site
34	Can change site	9	change_site
35	Can delete site	9	delete_site
36	Can view site	9	view_site
37	Can add email address	10	add_emailaddress
38	Can change email address	10	change_emailaddress
39	Can delete email address	10	delete_emailaddress
40	Can view email address	10	view_emailaddress
41	Can add email confirmation	11	add_emailconfirmation
42	Can change email confirmation	11	change_emailconfirmation
43	Can delete email confirmation	11	delete_emailconfirmation
44	Can view email confirmation	11	view_emailconfirmation
45	Can add social account	12	add_socialaccount
46	Can change social account	12	change_socialaccount
47	Can delete social account	12	delete_socialaccount
48	Can view social account	12	view_socialaccount
49	Can add social application	13	add_socialapp
50	Can change social application	13	change_socialapp
51	Can delete social application	13	delete_socialapp
52	Can view social application	13	view_socialapp
53	Can add social application token	14	add_socialtoken
54	Can change social application token	14	change_socialtoken
55	Can delete social application token	14	delete_socialtoken
56	Can view social application token	14	view_socialtoken
57	Can add profile	15	add_profile
58	Can change profile	15	change_profile
59	Can delete profile	15	delete_profile
60	Can view profile	15	view_profile
61	Can add task	16	add_task
62	Can change task	16	change_task
63	Can delete task	16	delete_task
64	Can view task	16	view_task
65	Can add category	17	add_category
66	Can change category	17	change_category
67	Can delete category	17	delete_category
68	Can view category	17	view_category
69	Can add comment	18	add_comment
70	Can change comment	18	change_comment
71	Can delete comment	18	delete_comment
72	Can view comment	18	view_comment
73	Can add watcher	19	add_watcher
74	Can change watcher	19	change_watcher
75	Can delete watcher	19	delete_watcher
76	Can view watcher	19	view_watcher
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: hjecwirx
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
9	pbkdf2_sha256$260000$ve3tPPY1Fal2CNYCtkvMsQ$UV31XC5bPcXPLEj+PUqD6hbkGGiI4EjcfzEXvsS/4VA=	2023-09-28 21:12:36.299972+00	t	ChiefCarpetFitter			jeandevilliers1972@gmail.com	t	t	2023-09-28 21:11:11.43486+00
10	pbkdf2_sha256$260000$PO6UB8EhiYPIj4YfSvbc1F$1l8qZUzynRw+O1JrnvkcALfH2EUH64QAF9KSRLkhLLo=	2023-10-20 11:55:01.128502+00	f	testuser				f	t	2023-10-20 11:53:40.709106+00
11	pbkdf2_sha256$260000$mo83SrekEwKVPOHbCPpLxE$CZD0WwHG+MU3EwOgzWMQkEJtcGZDLNso8xMUIy+eRz4=	2023-10-23 00:34:31.879779+00	f	eval				f	t	2023-10-23 00:34:25.09202+00
8	pbkdf2_sha256$260000$bkXwY7hM4P40yFzIPqfpT7$CGglzYytXMRXaFPSYzIN7gg1jcUUFYCver5hxTmWtTE=	2023-10-24 21:21:52.39171+00	f	Keef				f	t	2023-09-25 16:59:12.482999+00
1	pbkdf2_sha256$260000$YUPT9594wCtXrAZWxCLa5J$sBe9ENqZxFtAFTqeXS6HONw7f100DxvoMM/H1JBnTFI=	2024-10-08 11:58:49.597851+00	t	PhantomPWR			jeandevilliers@me.com	t	t	2023-07-27 16:37:05+00
4	pbkdf2_sha256$260000$uJcJKJ9K1oHGVepTAuLE68$Mm645jmzlYJTF/F8AQu9l6RHZwb+osWg9EzBsNCzifI=	2023-09-23 15:24:52.791086+00	f	Freddy				f	t	2023-09-15 17:50:38+00
6	pbkdf2_sha256$260000$RA0nuWljKem8EHOAmp6EuA$0JVDioLBAsREHHmN+Ze7CxSvhO9LHhuPJToS05LtG5M=	2023-09-20 16:36:00.041991+00	f	pieter@hey.com				f	t	2023-09-20 16:35:42.974277+00
3	pbkdf2_sha256$260000$CXLnmfBJXVSbHCicrdqCPr$NRyUlz7PkMJ4nlGmQEREPXZc38JxTJMAPIYBAwn4340=	2023-09-03 15:50:34.011071+00	f	Roger				f	t	2023-09-03 15:50:19.055083+00
5	pbkdf2_sha256$260000$jVbqF3V3THQwZ1WBl23SBW$EZ7M1bKSf3yVRnmSg6JEIzdm+kLlK1ub55nies8ce+o=	2023-09-21 08:24:19.686602+00	f	John				f	t	2023-09-16 09:09:07.08316+00
2	pbkdf2_sha256$260000$r1rTzbYU2DPwDwTlkFyXH8$P1KBxqab7iN39VoYt3TPfUHrGRlzjr7TqR+6q3h2VtA=	2023-09-28 11:00:15.716506+00	f	Brian				t	t	2023-08-05 12:12:06.19699+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: hjecwirx
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: hjecwirx
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: authtoken_token; Type: TABLE DATA; Schema: public; Owner: hjecwirx
--

COPY public.authtoken_token (key, created, user_id) FROM stdin;
\.


--
-- Data for Name: categories_category; Type: TABLE DATA; Schema: public; Owner: hjecwirx
--

COPY public.categories_category (id, title, description) FROM stdin;
2	Maintenance	General Maintenance
3	Testing	Testing code, functionality, etc.
1	Troubleshooting	Troubleshooting & Bug Fixes
8	Bug	Bug squashing
23	test t agagin	edited again
\.


--
-- Data for Name: categories_category_related_tasks; Type: TABLE DATA; Schema: public; Owner: hjecwirx
--

COPY public.categories_category_related_tasks (id, category_id, task_id) FROM stdin;
1	3	4
\.


--
-- Data for Name: comments_comment; Type: TABLE DATA; Schema: public; Owner: hjecwirx
--

COPY public.comments_comment (id, created_date, updated_date, content, owner_id, task_id) FROM stdin;
1	2023-07-31 18:23:10.330551+00	2023-07-31 18:23:30.885177+00	First comment edited	1	1
2	2023-08-26 16:26:32.975928+00	2023-08-26 16:26:32.975943+00	- Selecting category from search dropdown works\n- Entering category in searchbar works, regardless of text case	1	15
4	2023-09-26 22:44:00.163422+00	2023-09-26 22:44:00.163439+00	PhantomPWR created this task for Brian	1	31
5	2023-09-26 22:46:44.555675+00	2023-09-26 22:46:44.555693+00	Brian completed this task	2	31
6	2023-09-26 22:51:35.089756+00	2023-09-26 22:51:35.089772+00	Let me know when this is done.	2	32
9	2023-09-27 06:16:40.162825+00	2023-09-27 06:16:40.162839+00	All done.	1	32
11	2023-09-28 09:40:21.779941+00	2023-09-28 09:46:46.265722+00	test comment create toast edited again	1	32
12	2023-09-28 10:31:30.790158+00	2023-09-28 10:31:47.685407+00	Test comment edit toast	1	33
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: hjecwirx
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2023-08-08 17:18:17.5364+00	1	1 First Task on ElephantSQL	2	[{"changed": {"fields": ["Assigned to"]}}]	16	1
2	2023-08-08 17:18:25.336642+00	2	2 Task 2	2	[{"changed": {"fields": ["Assigned to"]}}]	16	1
3	2023-08-12 17:26:22.561937+00	2	2 Task 2	2	[{"changed": {"fields": ["Assigned to"]}}]	16	1
4	2023-08-13 16:16:55.539327+00	1	Troubleshooting	1	[{"added": {}}]	17	1
5	2023-08-13 16:17:25.438204+00	2	Maintenance	1	[{"added": {}}]	17	1
6	2023-08-13 16:55:53.176946+00	3	Testing	1	[{"added": {}}]	17	1
7	2023-08-22 19:04:56.478578+00	11	11 Test Due Date	2	[{"changed": {"fields": ["Due date"]}}]	16	1
8	2023-09-21 08:39:23.764845+00	2	Brian	2	[{"changed": {"fields": ["password"]}}]	4	1
9	2023-09-21 20:23:38.668085+00	5	John's profile	2	[{"changed": {"fields": ["Image"]}}]	15	1
10	2023-09-21 20:24:15.252214+00	3	Roger's profile	2	[{"changed": {"fields": ["Image"]}}]	15	1
11	2023-09-21 20:24:40.731647+00	4	Freddy's profile	2	[{"changed": {"fields": ["Image"]}}]	15	1
12	2023-09-23 12:21:06.726706+00	4	Freddy	2	[{"changed": {"fields": ["password"]}}]	4	1
13	2023-09-23 12:21:42.06036+00	4	Freddy	2	[]	4	1
14	2023-09-25 16:58:47.82566+00	7	TestUser	3		4	1
15	2023-09-28 21:14:01.620557+00	1	PhantomPWR	2	[]	4	9
16	2023-09-28 21:14:50.701658+00	1	PhantomPWR	2	[{"changed": {"fields": ["password"]}}]	4	9
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: hjecwirx
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	authtoken	token
8	authtoken	tokenproxy
9	sites	site
10	account	emailaddress
11	account	emailconfirmation
12	socialaccount	socialaccount
13	socialaccount	socialapp
14	socialaccount	socialtoken
15	profiles	profile
16	tasks	task
17	categories	category
18	comments	comment
19	watchers	watcher
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: hjecwirx
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2023-07-25 16:52:31.841113+00
2	auth	0001_initial	2023-07-25 16:52:32.130365+00
3	account	0001_initial	2023-07-25 16:52:32.211151+00
4	account	0002_email_max_length	2023-07-25 16:52:32.240699+00
5	account	0003_auto_20230725_1652	2023-07-25 16:52:32.419593+00
6	admin	0001_initial	2023-07-25 16:52:32.472094+00
7	admin	0002_logentry_remove_auto_add	2023-07-25 16:52:32.48975+00
8	admin	0003_logentry_add_action_flag_choices	2023-07-25 16:52:32.502518+00
9	contenttypes	0002_remove_content_type_name	2023-07-25 16:52:32.522072+00
10	auth	0002_alter_permission_name_max_length	2023-07-25 16:52:32.53449+00
11	auth	0003_alter_user_email_max_length	2023-07-25 16:52:32.546831+00
12	auth	0004_alter_user_username_opts	2023-07-25 16:52:32.556761+00
13	auth	0005_alter_user_last_login_null	2023-07-25 16:52:32.568086+00
14	auth	0006_require_contenttypes_0002	2023-07-25 16:52:32.574061+00
15	auth	0007_alter_validators_add_error_messages	2023-07-25 16:52:32.584201+00
16	auth	0008_alter_user_username_max_length	2023-07-25 16:52:32.60653+00
17	auth	0009_alter_user_last_name_max_length	2023-07-25 16:52:32.624828+00
18	auth	0010_alter_group_name_max_length	2023-07-25 16:52:32.643901+00
19	auth	0011_update_proxy_permissions	2023-07-25 16:52:32.657503+00
20	auth	0012_alter_user_first_name_max_length	2023-07-25 16:52:32.669079+00
21	authtoken	0001_initial	2023-07-25 16:52:32.702595+00
22	authtoken	0002_auto_20160226_1747	2023-07-25 16:52:32.728767+00
23	authtoken	0003_tokenproxy	2023-07-25 16:52:32.73555+00
24	sessions	0001_initial	2023-07-25 16:52:32.775292+00
25	sites	0001_initial	2023-07-25 16:52:32.791661+00
26	sites	0002_alter_domain_unique	2023-07-25 16:52:32.813238+00
27	socialaccount	0001_initial	2023-07-25 16:52:32.95885+00
28	socialaccount	0002_token_max_lengths	2023-07-25 16:52:32.987489+00
29	socialaccount	0003_extra_data_default_dict	2023-07-25 16:52:32.999556+00
30	socialaccount	0004_auto_20230725_1652	2023-07-25 16:52:33.273926+00
31	account	0003_auto_20230725_1711	2023-07-25 17:11:07.821734+00
32	profiles	0001_initial	2023-07-25 17:11:07.857351+00
33	socialaccount	0004_auto_20230725_1711	2023-07-25 17:11:07.934135+00
34	account	0003_auto_20230725_1716	2023-07-25 17:16:05.243616+00
35	socialaccount	0004_auto_20230725_1716	2023-07-25 17:16:05.328821+00
36	account	0003_auto_20230718_1752	2023-07-27 16:36:07.004136+00
37	socialaccount	0004_auto_20230718_1752	2023-07-27 16:36:07.74208+00
38	account	0003_auto_20230727_1702	2023-07-27 17:02:19.216732+00
39	socialaccount	0004_auto_20230727_1702	2023-07-27 17:02:19.320902+00
40	account	0003_auto_20230728_1442	2023-07-28 14:42:18.946685+00
41	socialaccount	0004_auto_20230728_1442	2023-07-28 14:42:19.06169+00
42	account	0003_auto_20230728_1447	2023-07-28 14:47:38.272195+00
43	socialaccount	0004_auto_20230728_1447	2023-07-28 14:47:38.362285+00
44	account	0003_auto_20230728_1448	2023-07-28 14:48:58.26017+00
45	socialaccount	0004_auto_20230728_1448	2023-07-28 14:48:58.348634+00
46	account	0003_auto_20230728_1449	2023-07-28 14:49:44.886163+00
47	socialaccount	0004_auto_20230728_1449	2023-07-28 14:49:44.968884+00
48	account	0003_auto_20230728_1451	2023-07-28 14:51:24.275858+00
49	socialaccount	0004_auto_20230728_1451	2023-07-28 14:51:24.341666+00
50	account	0003_auto_20230728_1452	2023-07-28 14:52:32.348261+00
51	socialaccount	0004_auto_20230728_1452	2023-07-28 14:52:32.41971+00
52	account	0003_auto_20230728_1532	2023-07-28 15:32:24.145983+00
56	comments	0001_initial	2023-07-28 15:32:24.33867+00
57	socialaccount	0004_auto_20230728_1532	2023-07-28 15:32:24.452788+00
61	account	0003_auto_20230728_1553	2023-07-28 15:53:25.666709+00
62	socialaccount	0004_auto_20230728_1553	2023-07-28 15:53:25.756087+00
63	account	0003_auto_20230728_1557	2023-07-28 15:57:02.927209+00
64	socialaccount	0004_auto_20230728_1557	2023-07-28 15:57:03.016567+00
65	account	0003_auto_20230728_1659	2023-07-28 16:59:18.887455+00
66	socialaccount	0004_auto_20230728_1659	2023-07-28 16:59:18.963671+00
67	account	0003_auto_20230731_1828	2023-07-31 18:28:33.840021+00
68	socialaccount	0004_auto_20230731_1828	2023-07-31 18:28:33.94569+00
69	account	0003_auto_20230808_1716	2023-08-08 17:16:37.3612+00
70	socialaccount	0004_auto_20230808_1716	2023-08-08 17:16:37.448169+00
72	account	0003_auto_20230808_1721	2023-08-08 17:21:10.637+00
73	socialaccount	0004_auto_20230808_1721	2023-08-08 17:21:10.732154+00
74	account	0003_auto_20230808_1723	2023-08-08 17:23:27.625583+00
75	socialaccount	0004_auto_20230808_1723	2023-08-08 17:23:27.711226+00
76	account	0003_auto_20230811_1705	2023-08-11 17:05:48.542424+00
77	socialaccount	0004_auto_20230811_1705	2023-08-11 17:05:48.649139+00
78	account	0003_auto_20230811_1712	2023-08-11 17:12:26.573574+00
79	socialaccount	0004_auto_20230811_1712	2023-08-11 17:12:26.710803+00
80	account	0003_auto_20230812_1130	2023-08-12 11:30:27.558577+00
81	socialaccount	0004_auto_20230812_1130	2023-08-12 11:30:27.69222+00
82	account	0003_auto_20230812_1424	2023-08-12 14:24:21.172435+00
83	socialaccount	0004_auto_20230812_1424	2023-08-12 14:24:21.274614+00
84	account	0003_auto_20230812_1753	2023-08-12 17:53:57.664424+00
85	socialaccount	0004_auto_20230812_1753	2023-08-12 17:53:57.758134+00
86	account	0003_auto_20230813_1615	2023-08-13 16:15:08.905039+00
87	socialaccount	0004_auto_20230813_1615	2023-08-13 16:15:09.058624+00
88	account	0003_auto_20230813_1631	2023-08-13 16:31:56.881234+00
89	socialaccount	0004_auto_20230813_1631	2023-08-13 16:31:56.988243+00
90	account	0003_auto_20230814_1620	2023-08-14 16:20:05.217943+00
91	socialaccount	0004_auto_20230814_1620	2023-08-14 16:20:05.32476+00
92	account	0003_auto_20230814_1628	2023-08-14 16:28:35.739228+00
93	socialaccount	0004_auto_20230814_1628	2023-08-14 16:28:35.828025+00
94	account	0003_auto_20230814_1647	2023-08-14 16:47:05.974818+00
95	socialaccount	0004_auto_20230814_1647	2023-08-14 16:47:06.07351+00
96	account	0003_auto_20230814_1728	2023-08-14 17:28:19.824308+00
97	socialaccount	0004_auto_20230814_1728	2023-08-14 17:28:19.962675+00
98	account	0003_auto_20230818_1604	2023-08-18 16:04:33.322889+00
99	socialaccount	0004_auto_20230818_1604	2023-08-18 16:04:33.453076+00
100	account	0003_auto_20230818_1621	2023-08-18 16:21:49.099618+00
101	socialaccount	0004_auto_20230818_1621	2023-08-18 16:21:49.21728+00
102	account	0003_auto_20230818_1631	2023-08-18 16:31:47.257172+00
103	socialaccount	0004_auto_20230818_1631	2023-08-18 16:31:47.352592+00
104	account	0003_auto_20230821_0819	2023-08-21 08:19:23.613256+00
105	socialaccount	0004_auto_20230821_0819	2023-08-21 08:19:23.737915+00
106	account	0003_auto_20230821_0824	2023-08-21 08:24:30.314933+00
107	socialaccount	0004_auto_20230821_0824	2023-08-21 08:24:30.440092+00
108	account	0003_auto_20230821_0841	2023-08-21 08:41:42.359938+00
109	socialaccount	0004_auto_20230821_0841	2023-08-21 08:41:42.486625+00
110	account	0003_auto_20230821_0844	2023-08-21 08:44:23.122236+00
111	socialaccount	0004_auto_20230821_0844	2023-08-21 08:44:23.209147+00
112	tasks	0001_initial	2023-08-22 18:13:00.875687+00
113	categories	0001_initial	2023-08-22 18:13:00.883553+00
114	account	0003_auto_20230822_1814	2023-08-22 18:14:28.933116+00
115	socialaccount	0004_auto_20230822_1814	2023-08-22 18:14:29.035287+00
116	account	0003_auto_20230823_0832	2023-08-23 08:32:04.480674+00
117	socialaccount	0004_auto_20230823_0832	2023-08-23 08:32:04.566439+00
118	tasks	0002_alter_task_due_date	2023-08-23 08:32:04.612867+00
119	account	0003_auto_20230823_0843	2023-08-23 08:43:36.82612+00
120	socialaccount	0004_auto_20230823_0843	2023-08-23 08:43:36.920428+00
121	account	0003_auto_20230824_1739	2023-08-24 17:39:28.878602+00
122	socialaccount	0004_auto_20230824_1739	2023-08-24 17:39:28.981708+00
123	account	0003_auto_20230825_0746	2023-08-25 07:46:21.161701+00
124	socialaccount	0004_auto_20230825_0746	2023-08-25 07:46:21.286949+00
125	account	0003_auto_20230826_1511	2023-08-26 15:11:17.557503+00
126	socialaccount	0004_auto_20230826_1511	2023-08-26 15:11:17.654267+00
127	account	0003_auto_20230903_1517	2023-09-03 15:17:20.523455+00
128	socialaccount	0004_auto_20230903_1517	2023-09-03 15:17:20.626971+00
129	account	0003_auto_20230909_1748	2023-09-09 17:48:18.794848+00
130	socialaccount	0004_auto_20230909_1748	2023-09-09 17:48:18.909504+00
131	account	0003_auto_20230914_0859	2023-09-14 08:59:45.976085+00
132	socialaccount	0004_auto_20230914_0859	2023-09-14 08:59:46.114548+00
133	account	0003_auto_20230915_1821	2023-09-15 18:21:54.008114+00
134	account	0003_auto_20230915_1841	2023-09-15 18:41:24.71027+00
136	account	0003_auto_20230916_0858	2023-09-16 08:58:40.259203+00
137	account	0003_auto_20230916_0904	2023-09-16 09:04:13.569439+00
138	socialaccount	0004_auto_20230916_0904	2023-09-16 09:04:13.65289+00
139	account	0003_auto_20230924_1625	2023-09-24 16:25:58.20516+00
140	socialaccount	0004_auto_20230924_1625	2023-09-24 16:25:58.315337+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: hjecwirx
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
f66o82042kd0z3zzfs586sodhb2biiwj	.eJxVjMsOwiAQRf-FtSE8BVy67zcQmBmkaiAp7cr479qkC93ec859sZi2tcZt0BJnZBcm2el3ywke1HaA99RunUNv6zJnviv8oINPHel5Pdy_g5pG_dbFF0PWoIAcUFuwEotWzgFhztqEswsGNQEKFFmq5DxoJOe19aIYJdn7AwGEODg:1qQXV1:n_8HMMwSdz1WsxuwtYgKTOoNrvO6klIoXndfq0Rvi9o	2023-08-14 18:20:07.390679+00
w7neqe6vpmk2duwkgn2av9mi2xegstqk	.eJxVjEEOwiAQRe_C2hCGFCgu3XsGMsOAVA0kpV013t2QdKHb_977hwi4byXsPa1hYXEVIC6_G2F8pToAP7E-moytbutCcijypF3eG6f37XT_Dgr2Muo4o56tt5g1QTZJeUtKs0ETGSCTd9k5gwSTzuRgAp_QKGPzpDgqKz5f8aE3-Q:1qQXcX:LQ50u5JgT5rWGlfOGuzYio9pmqH37ZkHq4UVD6ahtOo	2023-08-14 18:27:53.196291+00
liyh10rgo0oize7bqk1f59yvmffnxciz	.eJxVjEEOwiAQRe_C2hCGFCgu3XsGMsOAVA0kpV013t2QdKHb_977hwi4byXsPa1hYXEVIC6_G2F8pToAP7E-moytbutCcijypF3eG6f37XT_Dgr2Muo4o56tt5g1QTZJeUtKs0ETGSCTd9k5gwSTzuRgAp_QKGPzpDgqKz5f8aE3-Q:1qRbs1:XPTXaeAVoBapPZsvbWwGRUk8NOiuRzoLtXv8n8K5Rnw	2023-08-17 17:12:17.299635+00
oh3ppz80815fv034hjkn8gs06gxtjmfh	.eJxVjEEOwiAQRe_C2hCGFCgu3XsGMsOAVA0kpV013t2QdKHb_977hwi4byXsPa1hYXEVIC6_G2F8pToAP7E-moytbutCcijypF3eG6f37XT_Dgr2Muo4o56tt5g1QTZJeUtKs0ETGSCTd9k5gwSTzuRgAp_QKGPzpDgqKz5f8aE3-Q:1qSG6e:OsJzZ6uWzNTpi201rNgnruPrZ4RwsH7f_jyKd-SVnfQ	2023-08-19 12:10:04.532716+00
3vs061f8p3p6xmuclymle0ndbjqqzf8r	.eJxljMsOwiAUBf-FdUPgCggu3fsN5PKyKELSFjfGf9eaxsS4nZlzHgS9b70u9h6nnHIMNt4wF3KovZTha_scJ3IgQAZisS_jB9gc_plDf411FeGC9dyob3WZsqNrQjc701MLsRy39udgxHl8rxkwACOTcybATmsUTiIDVCwxpbQ2ECSkFFmSXAkvuQbBOeyN9IIlbsjzBU3mSAs:1qSG8c:qKRELdrzlI_V21g06kmEW_TJzQPf4hJiBjduAqJYiA0	2023-08-19 12:12:06.360721+00
v2fam7mmsyoxsqq91efx7qp6ix2q3j13	.eJxVjEsOAiEQBe_C2pCmpRFcuvcMpPnJqIFkmFkZ766TzEK3r6reS3hel-rXkWc_JXEWKA6_W-D4yG0D6c7t1mXsbZmnIDdF7nTIa0_5edndv4PKo35rQEB0VEJwCY_Wsg7EgGyggDHWOkyEpWQopIyOpCxqpfDkKGooyon3B7phNno:1qSG8s:VxMCrgoFtxR9WzPWP8Xvi6qPq5o4Sl8v_Je6NYO2GJI	2023-08-19 12:12:22.128441+00
v5291eperszt65e0ou6wz07ifrf3kprh	.eJxVjEEOwiAQRe_C2hCGFCgu3XsGMsOAVA0kpV013t2QdKHb_977hwi4byXsPa1hYXEVIC6_G2F8pToAP7E-moytbutCcijypF3eG6f37XT_Dgr2Muo4o56tt5g1QTZJeUtKs0ETGSCTd9k5gwSTzuRgAp_QKGPzpDgqKz5f8aE3-Q:1qSa1c:6mTc8vMuZ-0q4qoijYopaCfAlIMeFaQw0XNQ6M023rs	2023-08-20 09:26:12.256226+00
sb4tbvhb3gag2csh988jis9006avbz8d	.eJxVjEsOAiEQBe_C2pCmpRFcuvcMpPnJqIFkmFkZ766TzEK3r6reS3hel-rXkWc_JXEWKA6_W-D4yG0D6c7t1mXsbZmnIDdF7nTIa0_5edndv4PKo35rQEB0VEJwCY_Wsg7EgGyggDHWOkyEpWQopIyOpCxqpfDkKGooyon3B7phNno:1qSgG1:a2kBlpVEg821Oz_UuX9L09CegLLAuKa8pXzDwRh3iyI	2023-08-20 16:05:29.430129+00
w5uakz9o8ehn6048t0jl94qzzvtdqkyk	.eJxVjEsOAiEQBe_C2pCmpRFcuvcMpPnJqIFkmFkZ766TzEK3r6reS3hel-rXkWc_JXEWKA6_W-D4yG0D6c7t1mXsbZmnIDdF7nTIa0_5edndv4PKo35rQEB0VEJwCY_Wsg7EgGyggDHWOkyEpWQopIyOpCxqpfDkKGooyon3B7phNno:1qT3nU:twtXCH8D2j6ffrlyJn0yykD-vr7oKDSvMpIwyCeg8pw	2023-08-21 17:13:36.657257+00
oy0q4cy22wfq8cvqm3b90c2jvclomjh7	.eJxVjEsOAiEQBe_C2pCmpRFcuvcMpPnJqIFkmFkZ766TzEK3r6reS3hel-rXkWc_JXEWKA6_W-D4yG0D6c7t1mXsbZmnIDdF7nTIa0_5edndv4PKo35rQEB0VEJwCY_Wsg7EgGyggDHWOkyEpWQopIyOpCxqpfDkKGooyon3B7phNno:1qTQP0:d3xCCq9KZpcb3RDy9aVyKOLhpSHCnYGP7AP-9lYapLI	2023-08-22 17:21:50.146554+00
is6xm3l1itktg4c26cgohzf5vbzli28w	.eJxVjEsOAiEQBe_C2pCmpRFcuvcMpPnJqIFkmFkZ766TzEK3r6reS3hel-rXkWc_JXEWKA6_W-D4yG0D6c7t1mXsbZmnIDdF7nTIa0_5edndv4PKo35rQEB0VEJwCY_Wsg7EgGyggDHWOkyEpWQopIyOpCxqpfDkKGooyon3B7phNno:1qTmcj:oQANZlGvuVo8li3KikZMQwEYYf85USkKbbHReRADNJw	2023-08-23 17:05:29.298489+00
emaxwuvtibbz56rts7eavt1wbxee8kym	.eJxVjEsOAiEQBe_C2pCmpRFcuvcMpPnJqIFkmFkZ766TzEK3r6reS3hel-rXkWc_JXEWKA6_W-D4yG0D6c7t1mXsbZmnIDdF7nTIa0_5edndv4PKo35rQEB0VEJwCY_Wsg7EgGyggDHWOkyEpWQopIyOpCxqpfDkKGooyon3B7phNno:1qU9QR:iX15KO-_NWS7GOVbdJ0eveF8QJuGK0Z9dndvps-mzSU	2023-08-24 17:26:19.552415+00
3txzwzeyqr48ctd5zf2gaf8hp3w4rckq	.eJxVjEEOwiAQRe_C2hCGFCgu3XsGMsOAVA0kpV013t2QdKHb_977hwi4byXsPa1hYXEVIC6_G2F8pToAP7E-moytbutCcijypF3eG6f37XT_Dgr2Muo4o56tt5g1QTZJeUtKs0ETGSCTd9k5gwSTzuRgAp_QKGPzpDgqKz5f8aE3-Q:1qU9c0:DZIu-8rxqZnYZQynKDRwgRkfTuDSAJsZNrWHB25nr4U	2023-08-24 17:38:16.915751+00
uwr6ir4cc0w5nsctq0yk5h52fkt4339a	.eJxVjEEOwiAQRe_C2hCGFCgu3XsGMsOAVA0kpV013t2QdKHb_977hwi4byXsPa1hYXEVIC6_G2F8pToAP7E-moytbutCcijypF3eG6f37XT_Dgr2Muo4o56tt5g1QTZJeUtKs0ETGSCTd9k5gwSTzuRgAp_QKGPzpDgqKz5f8aE3-Q:1qUVdx:E39YlDsjPNONzVZ2063y2_3dzuezP_Tcc5aYQ8va24Y	2023-08-25 17:09:45.844399+00
mrw0zeluxzrdncwbxvq1402ynqyx6pb2	.eJxVjEEOwiAQRe_C2hCGFCgu3XsGMsOAVA0kpV013t2QdKHb_977hwi4byXsPa1hYXEVIC6_G2F8pToAP7E-moytbutCcijypF3eG6f37XT_Dgr2Muo4o56tt5g1QTZJeUtKs0ETGSCTd9k5gwSTzuRgAp_QKGPzpDgqKz5f8aE3-Q:1qUsGm:cUKS6NGNcmDYXD7P1ZiisLz152JlsCw0Vz5oX6mZjVw	2023-08-26 17:19:20.755134+00
ydmf1vsfisovj5fpzlxvlftimjsy9ayc	.eJxVjEEOwiAQRe_C2hCGFCgu3XsGMsOAVA0kpV013t2QdKHb_977hwi4byXsPa1hYXEVIC6_G2F8pToAP7E-moytbutCcijypF3eG6f37XT_Dgr2Muo4o56tt5g1QTZJeUtKs0ETGSCTd9k5gwSTzuRgAp_QKGPzpDgqKz5f8aE3-Q:1qVWeU:yozt9AzH7xJg9j8KIoXd-ccIQ8bu0SiC-QL1SB-FuPU	2023-08-28 12:26:30.451848+00
qqge93qku8ochi05dgaoje8apmcz0ta4	.eJxVjEEOwiAQRe_C2hCGFCgu3XsGMsOAVA0kpV013t2QdKHb_977hwi4byXsPa1hYXEVIC6_G2F8pToAP7E-moytbutCcijypF3eG6f37XT_Dgr2Muo4o56tt5g1QTZJeUtKs0ETGSCTd9k5gwSTzuRgAp_QKGPzpDgqKz5f8aE3-Q:1qVx7r:ovJi4j3Gj7MezBA3CYySSwUbjHIJoih7dbWr9CIzTXo	2023-08-29 16:42:35.414968+00
lpafm36ircjmr2oy7mub4u5mklxs24b4	.eJxVjEEOwiAQRe_C2hCGFCgu3XsGMsOAVA0kpV013t2QdKHb_977hwi4byXsPa1hYXEVIC6_G2F8pToAP7E-moytbutCcijypF3eG6f37XT_Dgr2Muo4o56tt5g1QTZJeUtKs0ETGSCTd9k5gwSTzuRgAp_QKGPzpDgqKz5f8aE3-Q:1qWKSt:_2O31XsAPa24OAA2RhelsvDfdIFkP7k3H_DWlbSn_uQ	2023-08-30 17:37:51.684893+00
lyxnoz4xjpgdcnywhcs9v3a9s62a989y	.eJxVjEEOwiAQRe_C2hCGFCgu3XsGMsOAVA0kpV013t2QdKHb_977hwi4byXsPa1hYXEVIC6_G2F8pToAP7E-moytbutCcijypF3eG6f37XT_Dgr2Muo4o56tt5g1QTZJeUtKs0ETGSCTd9k5gwSTzuRgAp_QKGPzpDgqKz5f8aE3-Q:1qWhVp:70oLYLk1b1AzT7ef42jeKcRAEdONfwYgA6Xv0Zvns_c	2023-08-31 18:14:25.847069+00
kum9ch7tq91eqrtpqty6llc1xx32m3tc	.eJxVjEEOwiAQRe_C2hCGFCgu3XsGMsOAVA0kpV013t2QdKHb_977hwi4byXsPa1hYXEVIC6_G2F8pToAP7E-moytbutCcijypF3eG6f37XT_Dgr2Muo4o56tt5g1QTZJeUtKs0ETGSCTd9k5gwSTzuRgAp_QKGPzpDgqKz5f8aE3-Q:1qXJdX:hcGOmCc-EBHcGJpue7opNEZ5rLDuj642XIGUipCSlMU	2023-09-02 10:56:55.653886+00
19iickh93b9i033toz5v9qahi2n17yg9	.eJxVjEsOAiEQBe_C2pCmpRFcuvcMpPnJqIFkmFkZ766TzEK3r6reS3hel-rXkWc_JXEWKA6_W-D4yG0D6c7t1mXsbZmnIDdF7nTIa0_5edndv4PKo35rQEB0VEJwCY_Wsg7EgGyggDHWOkyEpWQopIyOpCxqpfDkKGooyon3B7phNno:1qXMSJ:__0-dc2O-XxLOpZvMumJya6_BZfiC9lmLrEmDnBmdH4	2023-09-02 13:57:31.499286+00
w2oj0gwuwbtkuykjzfsii53fjb8tokb7	.eJxVjEsOAiEQBe_C2pCmpRFcuvcMpPnJqIFkmFkZ766TzEK3r6reS3hel-rXkWc_JXEWKA6_W-D4yG0D6c7t1mXsbZmnIDdF7nTIa0_5edndv4PKo35rQEB0VEJwCY_Wsg7EgGyggDHWOkyEpWQopIyOpCxqpfDkKGooyon3B7phNno:1qXix9:Yh334oGA19dFw46KDPE-pXDEajBwZbn0t_kVHYlzL48	2023-09-03 13:58:51.831613+00
r33lps0z1hcjv6y00mmkxuqghge0zqfz	.eJxVjEEOwiAQRe_C2hCGFCgu3XsGMsOAVA0kpV013t2QdKHb_977hwi4byXsPa1hYXEVIC6_G2F8pToAP7E-moytbutCcijypF3eG6f37XT_Dgr2Muo4o56tt5g1QTZJeUtKs0ETGSCTd9k5gwSTzuRgAp_QKGPzpDgqKz5f8aE3-Q:1qXlgP:GFrG5CCn7xFYJV-MpoNyKmEfYeiULwjv9RQuq3vSSkk	2023-09-03 16:53:45.706689+00
uhy12ku423mnhsdn1b7m3fxesh4jfhik	.eJxVjEEOwiAQRe_C2hCGFCgu3XsGMsOAVA0kpV013t2QdKHb_977hwi4byXsPa1hYXEVIC6_G2F8pToAP7E-moytbutCcijypF3eG6f37XT_Dgr2Muo4o56tt5g1QTZJeUtKs0ETGSCTd9k5gwSTzuRgAp_QKGPzpDgqKz5f8aE3-Q:1qY8hR:t9I1NlQ2QyObSiQ1-EdvlX_5HyG8qt2Q74SnyRt_dxw	2023-09-04 17:28:21.958662+00
qfxlgzbwjach138yyftn13vzs7vq5nf1	.eJxVjEEOwiAQRe_C2hCGFCgu3XsGMsOAVA0kpV013t2QdKHb_977hwi4byXsPa1hYXEVIC6_G2F8pToAP7E-moytbutCcijypF3eG6f37XT_Dgr2Muo4o56tt5g1QTZJeUtKs0ETGSCTd9k5gwSTzuRgAp_QKGPzpDgqKz5f8aE3-Q:1qYVec:MtDXaZpMRXFcpDr4P_ZxoQfW7lueYT89EOJjzI_2luM	2023-09-05 17:58:58.110051+00
krrtev806tndty7zlomh0ur0uogvmkl7	.eJxVjEEOwiAQRe_C2hCGFCgu3XsGMsOAVA0kpV013t2QdKHb_977hwi4byXsPa1hYXEVIC6_G2F8pToAP7E-moytbutCcijypF3eG6f37XT_Dgr2Muo4o56tt5g1QTZJeUtKs0ETGSCTd9k5gwSTzuRgAp_QKGPzpDgqKz5f8aE3-Q:1qYWfu:bpU1yyYDXWYdSrgVIa7_0XZ36YkkeyGF0Rs2eojUfDA	2023-09-05 19:04:22.69599+00
tj2rmzs6fxu5aogxp8epfj19713p3fcx	.eJwFwckRgDAIAMBeUgGKHLGZDAKZvI15Ofbu7luarWe0NfNuw-YoZ6EkzQq8gaVjR8E0dqW4Yt9A_BB3UqmSSMydVUHRoiYDe8co3w-ODhlf:1qloV4:0nzQFQTE53ptXlZDiPz08X2iU07M1NXXEyJH1OJWgxE	2023-10-12 10:44:06.558725+00
vc5l5serwmw5luk06m000k2sfpjwiw65	.eJxVjEEOwiAQRe_C2hCGFCgu3XsGMsOAVA0kpV013t2QdKHb_977hwi4byXsPa1hYXEVIC6_G2F8pToAP7E-moytbutCcijypF3eG6f37XT_Dgr2Muo4o56tt5g1QTZJeUtKs0ETGSCTd9k5gwSTzuRgAp_QKGPzpDgqKz5f8aE3-Q:1qZ6Is:WeTPIlincaMLrGF7Ry2wCSUleR6Q8e2PTq9IKLnbFY4	2023-09-07 09:06:58.515176+00
79trd17is8djc81cnaivlbpegll3s2nk	.eJxVjEsOAiEQBe_C2pCmpRFcuvcMpPnJqIFkmFkZ766TzEK3r6reS3hel-rXkWc_JXEWKA6_W-D4yG0D6c7t1mXsbZmnIDdF7nTIa0_5edndv4PKo35rQEB0VEJwCY_Wsg7EgGyggDHWOkyEpWQopIyOpCxqpfDkKGooyon3B7phNno:1qZE4M:JNrnG1poIgnyd5sAulIxxzJYSQBulFJ7ROPga5arEiE	2023-09-07 17:24:30.070743+00
nvqthwz82z0v381zmw4x9dnoi0v7eg3v	.eJxVjEEOwiAQRe_C2hCGFCgu3XsGMsOAVA0kpV013t2QdKHb_977hwi4byXsPa1hYXEVIC6_G2F8pToAP7E-moytbutCcijypF3eG6f37XT_Dgr2Muo4o56tt5g1QTZJeUtKs0ETGSCTd9k5gwSTzuRgAp_QKGPzpDgqKz5f8aE3-Q:1qZE5d:qkF4yOHPCtH_JBsaG38vZhBcEvtm0BNl_3-T6lDoXXQ	2023-09-07 17:25:49.769192+00
anddxnpetyeoqrr7tish9tho9d1mmok3	.eJxVjEEOwiAQRe_C2hCGFCgu3XsGMsOAVA0kpV013t2QdKHb_977hwi4byXsPa1hYXEVIC6_G2F8pToAP7E-moytbutCcijypF3eG6f37XT_Dgr2Muo4o56tt5g1QTZJeUtKs0ETGSCTd9k5gwSTzuRgAp_QKGPzpDgqKz5f8aE3-Q:1qZu4Z:ZMhaq4wHgLXzI6cTqnWRWYri9sgXkDWW3aZtih-aToU	2023-09-09 14:15:31.904109+00
jcnydp4q4c90auloykjfozmpgbb8x9ff	.eJxVjEEOwiAQRe_C2hCGFCgu3XsGMsOAVA0kpV013t2QdKHb_977hwi4byXsPa1hYXEVIC6_G2F8pToAP7E-moytbutCcijypF3eG6f37XT_Dgr2Muo4o56tt5g1QTZJeUtKs0ETGSCTd9k5gwSTzuRgAp_QKGPzpDgqKz5f8aE3-Q:1qaZPe:sJ6JlVsIM7uPSemNO1Wg1woWreR2WNQ-TCk46aeDpGo	2023-09-11 10:24:02.216256+00
sfvgprobsinefpk0zf1t999l6tafvrwd	.eJxVjEEOwiAQRe_C2hCGFCgu3XsGMsOAVA0kpV013t2QdKHb_977hwi4byXsPa1hYXEVIC6_G2F8pToAP7E-moytbutCcijypF3eG6f37XT_Dgr2Muo4o56tt5g1QTZJeUtKs0ETGSCTd9k5gwSTzuRgAp_QKGPzpDgqKz5f8aE3-Q:1qcNes:FVTj0BpNC8aSrvGfVrdIPVDSjODjTtH0ZyagHWL_9M8	2023-09-16 10:15:14.52491+00
15iuali5j3061lxdieq286h7vtenm32y	.eJxVjEEOwiAQRe_C2hCGFCgu3XsGMsOAVA0kpV013t2QdKHb_977hwi4byXsPa1hYXEVIC6_G2F8pToAP7E-moytbutCcijypF3eG6f37XT_Dgr2Muo4o56tt5g1QTZJeUtKs0ETGSCTd9k5gwSTzuRgAp_QKGPzpDgqKz5f8aE3-Q:1qcnkU:KPkzVn7Mm4hmkaqhe30FFFGjcGkpC-I8BdCEu-Tiy6s	2023-09-17 14:06:46.435198+00
qe47l6p6yrhtp3thepqvu8enkuom1ihf	.eJxljEEOwiAQRe_CuiGUoaTt0r1nIDAzWhQhaYsb4921pjExbt97_z-ERyw1r-7OczxFJsc3H5MYc02p-dq68CxGAaIRztd1-gAX6Z8Fj1fOm6CLz-ciseR1jkFuidztIo-FOB329udg8sv0XquhRRU4gO-sBXsyHSgitIjcWgiABqjXmgbLxmrqMfSKEYwh7EhrJZ4veqFJgA:1qcpMh:CH1LoYjKdkvQzfn-SKhpmd_6508WRDrchSZA5XH0yJA	2023-09-17 15:50:19.201605+00
2iuswya7gsnxt307wd468igihyqmpzof	.eJxVjEEOwiAQRe_C2hDKwIS6dO8ZCMyMUjWQlHbVeHdt0oVu_3vvbyqmdSlx7TLHidVZgTr9bjnRU-oO-JHqvWlqdZmnrHdFH7Tra2N5XQ7376CkXr61GQcyWTIkjwh4cx4MMyGRDAgZyAEHa3lEcWg5UA5GCJxj8mytUe8P5m837g:1qcpMw:DGy9TN2f53idgR_4iDjWyNWVAnPp7Nnp1U0oQBeSqhE	2023-09-17 15:50:34.020171+00
sueoh2nx94zcp0lpanfeps5vd6ope12u	.eJxVjEEOwiAQRe_C2hCGFCgu3XsGMsOAVA0kpV013t2QdKHb_977hwi4byXsPa1hYXEVIC6_G2F8pToAP7E-moytbutCcijypF3eG6f37XT_Dgr2Muo4o56tt5g1QTZJeUtKs0ETGSCTd9k5gwSTzuRgAp_QKGPzpDgqKz5f8aE3-Q:1qdCoj:ppggmEIJ8b-Y51zoFTu5YgSY1IAOGjc0IbQVE3hQsfU	2023-09-18 16:52:49.563101+00
tjvvs87e25jl6h9ov52bo7v2d7ijeq3y	.eJxVjEEOwiAQRe_C2hCGFCgu3XsGMsOAVA0kpV013t2QdKHb_977hwi4byXsPa1hYXEVIC6_G2F8pToAP7E-moytbutCcijypF3eG6f37XT_Dgr2Muo4o56tt5g1QTZJeUtKs0ETGSCTd9k5gwSTzuRgAp_QKGPzpDgqKz5f8aE3-Q:1qerVy:wEuYoHEpjI_N76NrP7xAzbuwlKxCeA-7L18TdH6aMEY	2023-09-23 06:32:18.967655+00
g3kefl1pb9jg9wqacciem1c0lyymzvs5	.eJxVjEEOwiAQRe_C2hCGFCgu3XsGMsOAVA0kpV013t2QdKHb_977hwi4byXsPa1hYXEVIC6_G2F8pToAP7E-moytbutCcijypF3eG6f37XT_Dgr2Muo4o56tt5g1QTZJeUtKs0ETGSCTd9k5gwSTzuRgAp_QKGPzpDgqKz5f8aE3-Q:1qerVy:wEuYoHEpjI_N76NrP7xAzbuwlKxCeA-7L18TdH6aMEY	2023-09-23 06:32:18.993185+00
uw97gudvxru3s7sc333ddyvzh3i2tr80	.eJxVjEEOwiAQRe_C2hCGFCgu3XsGMsOAVA0kpV013t2QdKHb_977hwi4byXsPa1hYXEVIC6_G2F8pToAP7E-moytbutCcijypF3eG6f37XT_Dgr2Muo4o56tt5g1QTZJeUtKs0ETGSCTd9k5gwSTzuRgAp_QKGPzpDgqKz5f8aE3-Q:1qfGxi:bgYof1A10n08JFFuhL_HIgCLoW50DgVgxY3yGO4VhT8	2023-09-24 09:42:38.360582+00
o7jimv0jigofzutm37q1z25qhzv8r4kc	.eJxVjEEOwiAQRe_C2hCGFCgu3XsGMsOAVA0kpV013t2QdKHb_977hwi4byXsPa1hYXEVIC6_G2F8pToAP7E-moytbutCcijypF3eG6f37XT_Dgr2Muo4o56tt5g1QTZJeUtKs0ETGSCTd9k5gwSTzuRgAp_QKGPzpDgqKz5f8aE3-Q:1qfkjo:GKhQ0t3wjoV1dh5htymHa4q5VIi_tubgiG-uS_3hu5s	2023-09-25 17:30:16.962945+00
sg2p0tiqpvi4ecaiej0d30m8f25y4ktk	.eJxVjEEOwiAQRe_C2hCGFCgu3XsGMsOAVA0kpV013t2QdKHb_977hwi4byXsPa1hYXEVIC6_G2F8pToAP7E-moytbutCcijypF3eG6f37XT_Dgr2Muo4o56tt5g1QTZJeUtKs0ETGSCTd9k5gwSTzuRgAp_QKGPzpDgqKz5f8aE3-Q:1qfyqa:PtbDX_7CrCRRHALK7UpXXkG0JVkHS7eglOXJ2Cqoamc	2023-09-26 08:34:12.362143+00
ysz6ec67cm56ee39lg03ej5y033zbl6z	.eJxVjEEOwiAQRe_C2hCGFCgu3XsGMsOAVA0kpV013t2QdKHb_977hwi4byXsPa1hYXEVIC6_G2F8pToAP7E-moytbutCcijypF3eG6f37XT_Dgr2Muo4o56tt5g1QTZJeUtKs0ETGSCTd9k5gwSTzuRgAp_QKGPzpDgqKz5f8aE3-Q:1qfzaZ:YULJ1owwHwWJTUUY2JmGQXWkrPIpiNabeIWwVacnekI	2023-09-26 09:21:43.446097+00
5c6unz4vpg5ul3plrrlxhfan0li941hw	.eJxVjEEOwiAQRe_C2hCGFCgu3XsGMsOAVA0kpV013t2QdKHb_977hwi4byXsPa1hYXEVIC6_G2F8pToAP7E-moytbutCcijypF3eG6f37XT_Dgr2Muo4o56tt5g1QTZJeUtKs0ETGSCTd9k5gwSTzuRgAp_QKGPzpDgqKz5f8aE3-Q:1qgUBu:bBnlRRcIK8KV2s8g8815rPTdvIf4gLOFFAyqBCdIWL0	2023-09-27 18:02:18.008883+00
7bwhxpsqtcgfze13siyukijmilezxfis	.eJxVjEEOwiAQRe_C2hCGFCgu3XsGMsOAVA0kpV013t2QdKHb_977hwi4byXsPa1hYXEVIC6_G2F8pToAP7E-moytbutCcijypF3eG6f37XT_Dgr2Muo4o56tt5g1QTZJeUtKs0ETGSCTd9k5gwSTzuRgAp_QKGPzpDgqKz5f8aE3-Q:1qgqkw:QAlDyiVtS3USkuOvxFqzyipKhC6qsbRJ_STTXMw48_M	2023-09-28 18:07:58.636515+00
oqd8e87zh7utv3flxaefh2j7taczfoln	.eJxljEEOwiAQRe8y64bUQqDt0r1nIMMwWBQhaYsb4921pjExbt97_z8AiUrNq73zHENkb_mGMcGYa0rN19aFZxhBQQMW6zp9gI3-nzmkK-dN-AvmcxFU8jpHJ7ZE7HYRp-I5Hff252DCZXqvhwMrLVttWqe0kkwe267zfTDGaSQeJDrHXWAKZNhL0o5RDkGyVtiTgecLitZKuw:1qhCxi:jZID2i3fN79fel16XIJkufDkPwiMz6QjVVPwCeIc6m8	2023-09-29 17:50:38.608913+00
gfhi3tldiagumpzo79sov3u11n1905jh	.eJxVjEEOwiAQRe_C2hAEMhSX7j0DmRkGqRqalHbVeHdt0oVu_3vvbyrhutS0dpnTmNVFeXX63Qj5KW0H-YHtPmme2jKPpHdFH7Tr25TldT3cv4OKvX7reBYPzkAw5ME74YzG2jyUEAiQJTokEluECwfJjoEEXSxOwOPAQb0_9fc5KA:1qhCxq:2GrvKQlPL_M4TEo67UZgbISMDv4uZEhSUHNt47lr8og	2023-09-29 17:50:46.184988+00
9un8iwob6cswm384chgymxqux5tnxa6f	.eJxVjEEOwiAQRe_C2hCGFCgu3XsGMsOAVA0kpV013t2QdKHb_977hwi4byXsPa1hYXEVIC6_G2F8pToAP7E-moytbutCcijypF3eG6f37XT_Dgr2Muo4o56tt5g1QTZJeUtKs0ETGSCTd9k5gwSTzuRgAp_QKGPzpDgqKz5f8aE3-Q:1qhCyS:WcHSjycnxSjHe0f1tDNQNYek_RobiUaf97RSVvZTLCk	2023-09-29 17:51:24.510296+00
rrh5sgwmgbpi4uocjjib6dykvyfef36h	.eJxVjEEOwiAQRe_C2hAEMhSX7j0DmRkGqRqalHbVeHdt0oVu_3vvbyrhutS0dpnTmNVFeXX63Qj5KW0H-YHtPmme2jKPpHdFH7Tr25TldT3cv4OKvX7reBYPzkAw5ME74YzG2jyUEAiQJTokEluECwfJjoEEXSxOwOPAQb0_9fc5KA:1qhD0y:WLJj_9fTDjtcv2oJW9cUbyjhF2fJBokOgyLL2liROhw	2023-09-29 17:54:00.430009+00
jyyzw3fei6qmbm3t4nhkb4ftpbcin6vk	.eJxVjEEOwiAQRe_C2hCGFCgu3XsGMsOAVA0kpV013t2QdKHb_977hwi4byXsPa1hYXEVIC6_G2F8pToAP7E-moytbutCcijypF3eG6f37XT_Dgr2Muo4o56tt5g1QTZJeUtKs0ETGSCTd9k5gwSTzuRgAp_QKGPzpDgqKz5f8aE3-Q:1qhDbX:PPszc0MyARpLC-8Rc8vqKY5_WqMbREXFJ0eSu8-pLPs	2023-09-29 18:31:47.106362+00
yh0n7emfy00yt78eio0zm6hntttnbnca	.eJxljMsOwiAUBf-FdUN423bp3m8gF7hYFCFpixvjv2tNY2Lczsw5DwLe11ZWe8c5xYTB4g1SJmNpOXdf2xacyUg06YiFtk4fYFP4Zw78FcsmwgXKuVJfyzonR7eE7nahpxowH_f252CCZXqvB8dkADNIh67veeQglRHYS-W5BOa0MzpIJgQ3jAkttGYi8oNWfFAQvSbPF13kSCY:1qhRIZ:SQ9V0cRUZnB5_8AS3FHRki9Z67y-LQbk7fsfuWJPowg	2023-09-30 09:09:07.213052+00
gy8gbfhgg59l0j1kgjv9d9pi42pr32rs	.eJxVjDsOwjAQBe_iGln-rbEp6XMGa9cfHEC2FCcV4u4QKQW0b2beiwXc1hq2kZcwJ3ZhwE6_G2F85LaDdMd26zz2ti4z8V3hBx186ik_r4f7d1Bx1G_tSeiE1mvK5JwsErWxKjttotQoCMhC0kIpaYVQoACEKvIMRnqDJQJ7fwDIWDaS:1qhRIc:a0WzzLz7S9LDDGjYanS9kf_sWgFe0nFm-AawDc8vMTw	2023-09-30 09:09:10.881126+00
tipgzt657awz7ddbmhtjs107v9uqf4s1	.eJxVjEEOwiAQRe_C2hCGFCgu3XsGMsOAVA0kpV013t2QdKHb_977hwi4byXsPa1hYXEVIC6_G2F8pToAP7E-moytbutCcijypF3eG6f37XT_Dgr2Muo4o56tt5g1QTZJeUtKs0ETGSCTd9k5gwSTzuRgAp_QKGPzpDgqKz5f8aE3-Q:1qi1IB:-47d_r_wcpjMe82kJx9Sj-cRVTEaobsGV3S69VX7AKg	2023-10-01 23:35:07.245065+00
uxcbfr2n93ytazrq3sbelai9yb6txxgc	.eJxVjEEOwiAQRe_C2hCGFCgu3XsGMsOAVA0kpV013t2QdKHb_977hwi4byXsPa1hYXEVIC6_G2F8pToAP7E-moytbutCcijypF3eG6f37XT_Dgr2Muo4o56tt5g1QTZJeUtKs0ETGSCTd9k5gwSTzuRgAp_QKGPzpDgqKz5f8aE3-Q:1qhRKn:RDmUlGWDjAHWsW5HK2iXVbSABThsipuHsAtV8DEnbqw	2023-09-30 09:11:25.516706+00
z578b1juig27f7t1xctfpuoifyu6f2jz	.eJxVjEEOwiAQRe_C2hCGFCgu3XsGMsOAVA0kpV013t2QdKHb_977hwi4byXsPa1hYXEVIC6_G2F8pToAP7E-moytbutCcijypF3eG6f37XT_Dgr2Muo4o56tt5g1QTZJeUtKs0ETGSCTd9k5gwSTzuRgAp_QKGPzpDgqKz5f8aE3-Q:1qiHWB:jhVGUJF5STpxF_97zJxXgl2R0Y4vz8ELhzzx98QPQ5s	2023-10-02 16:54:39.723191+00
1gws46xt5c62ebkwc5m2c2egda987qgd	.eJxVjEEOwiAQRe_C2hCGFCgu3XsGMsOAVA0kpV013t2QdKHb_977hwi4byXsPa1hYXEVIC6_G2F8pToAP7E-moytbutCcijypF3eG6f37XT_Dgr2Muo4o56tt5g1QTZJeUtKs0ETGSCTd9k5gwSTzuRgAp_QKGPzpDgqKz5f8aE3-Q:1qhRYi:HowIX2589ML3t5ZvizEH73OzJm9r0IuFzX47BKoD7ko	2023-09-30 09:25:48.959257+00
cdxa54s0sf182ozc90qd60pltc445vua	.eJxVjEEOwiAQRe_C2hCGFCgu3XsGMsOAVA0kpV013t2QdKHb_977hwi4byXsPa1hYXEVIC6_G2F8pToAP7E-moytbutCcijypF3eG6f37XT_Dgr2Muo4o56tt5g1QTZJeUtKs0ETGSCTd9k5gwSTzuRgAp_QKGPzpDgqKz5f8aE3-Q:1qiWc3:MG5K4ttG7rLPGz8ly-TmjUEobDZLMkT8b-IuK5m5lBk	2023-10-03 09:01:43.511928+00
8mgnj8x2ys6rtlrjrtsjibmqgtddyxpc	.eJxVjDsOwjAQBe_iGln-rbEp6XMGa9cfHEC2FCcV4u4QKQW0b2beiwXc1hq2kZcwJ3ZhwE6_G2F85LaDdMd26zz2ti4z8V3hBx186ik_r4f7d1Bx1G_tSeiE1mvK5JwsErWxKjttotQoCMhC0kIpaYVQoACEKvIMRnqDJQJ7fwDIWDaS:1qhoi0:G8ldL6JWE4wxeEOvR0_6RRp7NGH1DGEZEA9XWyxkTZo	2023-10-01 10:08:56.088462+00
w69qehlkhgnt1f0plqtpu1bjjj79v39k	.eJxVjEEOwiAQRe_C2hCGFCgu3XsGMsOAVA0kpV013t2QdKHb_977hwi4byXsPa1hYXEVIC6_G2F8pToAP7E-moytbutCcijypF3eG6f37XT_Dgr2Muo4o56tt5g1QTZJeUtKs0ETGSCTd9k5gwSTzuRgAp_QKGPzpDgqKz5f8aE3-Q:1qie5w:fzA2Dl4id0PL-qZrJKH6wjXEI-iffaoz9UtdUswM1LE	2023-10-03 17:01:04.442009+00
u8krawtqrel88kwc9lm2gx5zsbdeo7tj	.eJxVjEEOwiAQRe_C2hCGFCgu3XsGMsOAVA0kpV013t2QdKHb_977hwi4byXsPa1hYXEVIC6_G2F8pToAP7E-moytbutCcijypF3eG6f37XT_Dgr2Muo4o56tt5g1QTZJeUtKs0ETGSCTd9k5gwSTzuRgAp_QKGPzpDgqKz5f8aE3-Q:1qhomW:UBLuqE-CwZ3J_yB4ltKVxejyQq7tIpr4h-y9Mv04_9s	2023-10-01 10:13:36.511713+00
l52w8dx01liwanss03huxrjqg9v9lo04	.eJxljMEOwiAQBf-Fc0MolLZ49O43kF1YLIqQtMWL8d-1pjExXmfmvQcD50rNq73THEMkb-kGMbFDrik1X1sXmtmB9axhFuo6fYCN_p8huCvlTfgL5HPhruR1jsi3hO924afiKR339udggmV6r7t-1Eq2CkUgidIAdFKNWggtwANBB4jOaEctklfk3GCkDP0IgzABvWLPF3kGShA:1qj0Ax:Z_4Xzb7f6kxK8kMFB8Ks1gEqhe6PUWXhh2Lbn_JqvLU	2023-10-04 16:35:43.293186+00
ufi828voagbi4bh6srbt3kchyux2zhmn	.eJxVjDsOwjAQBe_iGln-rbEp6XMGa9cfHEC2FCcV4u4QKQW0b2beiwXc1hq2kZcwJ3ZhwE6_G2F85LaDdMd26zz2ti4z8V3hBx186ik_r4f7d1Bx1G_tSeiE1mvK5JwsErWxKjttotQoCMhC0kIpaYVQoACEKvIMRnqDJQJ7fwDIWDaS:1qhpmC:OlObS_AjTvKWU2Lzx2bLXJ0q8jUmx4Di3F-mhvfsFNw	2023-10-01 11:17:20.095781+00
vg6nwoio5fhgh3i9ryf151vum36w51t9	.eJxVjMsOwiAQRf-FtSF0eBRcuvcbyAwMUjU0Ke3K-O_apAvd3nPOfYmI21rj1nmJUxZn4cTpdyNMD247yHdst1mmua3LRHJX5EG7vM6Zn5fD_Tuo2Ou3Ns5bDYMmVRgIAqIB7a1SVmFGRoNEKdjEA3HWnNIYAIrzOKpQKGvx_gDizTh7:1qj0BE:ng3vGRA_eDi-gCViM75g3Oi0xmrIO6CRbWGT37iS-LU	2023-10-04 16:36:00.052021+00
3ab4wqksb1bwg9t1xdxnifo6hlacysbp	.eJxVjEEOwiAQRe_C2hCGFCgu3XsGMsOAVA0kpV013t2QdKHb_977hwi4byXsPa1hYXEVIC6_G2F8pToAP7E-moytbutCcijypF3eG6f37XT_Dgr2Muo4o56tt5g1QTZJeUtKs0ETGSCTd9k5gwSTzuRgAp_QKGPzpDgqKz5f8aE3-Q:1qhqK6:ZjC9bjIB2w4GOvhXFWVsp_Kd73wrkHkO_aM7Q8St-eQ	2023-10-01 11:52:22.004759+00
jtlx8oesiljjvvbjz1nmw2qi2ia607c5	.eJxVjEEOwiAQRe_C2hCGFCgu3XsGMsOAVA0kpV013t2QdKHb_977hwi4byXsPa1hYXEVIC6_G2F8pToAP7E-moytbutCcijypF3eG6f37XT_Dgr2Muo4o56tt5g1QTZJeUtKs0ETGSCTd9k5gwSTzuRgAp_QKGPzpDgqKz5f8aE3-Q:1qj0Mp:wbK2iCxGlk09rOS9L_vNI0k8CV5SsAt-eE8-_gBpTQk	2023-10-04 16:47:59.731287+00
fi8s8sijucloeemn9rmv505s723pddhw	.eJxVjEEOwiAQRe_C2hCGFCgu3XsGMsOAVA0kpV013t2QdKHb_977hwi4byXsPa1hYXEVIC6_G2F8pToAP7E-moytbutCcijypF3eG6f37XT_Dgr2Muo4o56tt5g1QTZJeUtKs0ETGSCTd9k5gwSTzuRgAp_QKGPzpDgqKz5f8aE3-Q:1qhr7w:Sus-BnRUQlDecuJn0So-fgvTQngv7AL0NUZSMSf4vjw	2023-10-01 12:43:52.395169+00
rvmd1b53s53gn4b8jvoaj5uaknbwnicl	.eJxVjEEOwiAQRe_C2hCGFCgu3XsGMsOAVA0kpV013t2QdKHb_977hwi4byXsPa1hYXEVIC6_G2F8pToAP7E-moytbutCcijypF3eG6f37XT_Dgr2Muo4o56tt5g1QTZJeUtKs0ETGSCTd9k5gwSTzuRgAp_QKGPzpDgqKz5f8aE3-Q:1qj0ND:P_CfJoj-qyt9pKgR1ZAC90hJns1EsTzTBb7YXxq9-Ck	2023-10-04 16:48:23.566382+00
iewxv2jx3r2s5mva6h3pa7ejaae66f7u	.eJxVjEEOwiAQRe_C2hCGFCgu3XsGMsOAVA0kpV013t2QdKHb_977hwi4byXsPa1hYXEVIC6_G2F8pToAP7E-moytbutCcijypF3eG6f37XT_Dgr2Muo4o56tt5g1QTZJeUtKs0ETGSCTd9k5gwSTzuRgAp_QKGPzpDgqKz5f8aE3-Q:1qhyt3:S9Lzj1RVWefkBME_KTHpY5YFTxWSQvhwncBaf9ZPb5w	2023-10-01 21:01:01.106672+00
gtto6bjvd6p4nhhi7tpgrmx6g8av15xj	.eJxVjEEOwiAQRe_C2hCGFCgu3XsGMsOAVA0kpV013t2QdKHb_977hwi4byXsPa1hYXEVIC6_G2F8pToAP7E-moytbutCcijypF3eG6f37XT_Dgr2Muo4o56tt5g1QTZJeUtKs0ETGSCTd9k5gwSTzuRgAp_QKGPzpDgqKz5f8aE3-Q:1qj0ig:f2VjpfpVNlyasRCa7GrNpIItlzqQzEFeuIdVG1kwuVI	2023-10-04 17:10:34.509632+00
t5wqh3fgvqcrk30dy8os1onwjgovxjzw	.eJxVjDsOwjAQBe_iGln-rbEp6XMGa9cfHEC2FCcV4u4QKQW0b2beiwXc1hq2kZcwJ3ZhwE6_G2F85LaDdMd26zz2ti4z8V3hBx186ik_r4f7d1Bx1G_tSeiE1mvK5JwsErWxKjttotQoCMhC0kIpaYVQoACEKvIMRnqDJQJ7fwDIWDaS:1qjE8x:YvBpf5qCDj1x0tUQ0gZ-yqE53RP9k1TC5nGNviVS2ak	2023-10-05 07:30:35.559178+00
8sqy8oexqf7k8wh33osat54mbrjj4xir	.eJxVjEEOwiAQRe_C2hCGFCgu3XsGMsOAVA0kpV013t2QdKHb_977hwi4byXsPa1hYXEVIC6_G2F8pToAP7E-moytbutCcijypF3eG6f37XT_Dgr2Muo4o56tt5g1QTZJeUtKs0ETGSCTd9k5gwSTzuRgAp_QKGPzpDgqKz5f8aE3-Q:1qjELc:wp5vHL0kRiWUycQ-EGk9XRGvbLM3C3sIM_3l9SwQ14c	2023-10-05 07:43:40.906189+00
tf3ew19djiah6dswj11kggqjx52l2tvw	.eJxVjDsOwjAQBe_iGln-rbEp6XMGa9cfHEC2FCcV4u4QKQW0b2beiwXc1hq2kZcwJ3ZhwE6_G2F85LaDdMd26zz2ti4z8V3hBx186ik_r4f7d1Bx1G_tSeiE1mvK5JwsErWxKjttotQoCMhC0kIpaYVQoACEKvIMRnqDJQJ7fwDIWDaS:1qjENY:DuSQbs6aOjC01E5ctYNa7-xH5gYYktuE9vFVu4KujE8	2023-10-05 07:45:40.253522+00
l78xnfdat8pmzq2ewtd9p5xj858fajas	.eJxVjDsOwjAQBe_iGln-rbEp6XMGa9cfHEC2FCcV4u4QKQW0b2beiwXc1hq2kZcwJ3ZhwE6_G2F85LaDdMd26zz2ti4z8V3hBx186ik_r4f7d1Bx1G_tSeiE1mvK5JwsErWxKjttotQoCMhC0kIpaYVQoACEKvIMRnqDJQJ7fwDIWDaS:1qjEyx:J35UOCC1V591mfagtnrnx8gqe7mYU4Yzvzftf0y45-Y	2023-10-05 08:24:19.693203+00
qbst6qy9k7zlysue7ccma9404s7q81bi	.eJxVjEEOwiAQRe_C2hCGFCgu3XsGMsOAVA0kpV013t2QdKHb_977hwi4byXsPa1hYXEVIC6_G2F8pToAP7E-moytbutCcijypF3eG6f37XT_Dgr2Muo4o56tt5g1QTZJeUtKs0ETGSCTd9k5gwSTzuRgAp_QKGPzpDgqKz5f8aE3-Q:1qjF7X:D5o_tmUJCWUmSUJQNx4vSaoyfhh43Ygyend9Ss-EWTs	2023-10-05 08:33:11.565032+00
yn3m1birv27h2sqqibyywmk0au1271xb	.eJxVjDkOwjAUBe_iGlny9xpKes5g_cXgAHKkOKki7g6RUkD7ZuZtKuO61Lz2MudR1FmBOv1uhPwsbQfywHafNE9tmUfSu6IP2vV1kvK6HO7fQcVev7WPg7Hsk8PihQo5Qh-QCiRK0VrLaAwzW6IIYgMFEBhuyUlwCDGBen8A9o44Kg:1qlYFe:RonVHen780J9k6dsOYwH5iwlIvqslnmy2jW_HgGdvvc	2023-10-11 17:23:06.231569+00
vut4i5hizrjmxxht2eeiu6nt7gq1m47s	.eJxVjDkOwjAUBe_iGlny9xpKes5g_cXgAHKkOKki7g6RUkD7ZuZtKuO61Lz2MudR1FmBOv1uhPwsbQfywHafNE9tmUfSu6IP2vV1kvK6HO7fQcVev7WPg7Hsk8PihQo5Qh-QCiRK0VrLaAwzW6IIYgMFEBhuyUlwCDGBen8A9o44Kg:1qlokh:te4h8yPWerkkhI5rFo54bCO0CWuLJxoxq0S9qfmhrdU	2023-10-12 11:00:15.724854+00
zz7tpryct4d825vigtis2z4a4kx38o7x	.eJxVjEEOwiAQRe_C2hCGFCgu3XsGMsOAVA0kpV013t2QdKHb_977hwi4byXsPa1hYXEVIC6_G2F8pToAP7E-moytbutCcijypF3eG6f37XT_Dgr2Muo4o56tt5g1QTZJeUtKs0ETGSCTd9k5gwSTzuRgAp_QKGPzpDgqKz5f8aE3-Q:1qjFDX:NU5kQFCi2surbCvB7F5bseAaykiP5YzRN6o6PEFkzB4	2023-10-05 08:39:23.798186+00
kikhbplxgwogjlhgusoysbarispa7r46	.eJxVjEEOwiAQRe_C2hBmWgp16d4zkIEZpGpoUtqV8e7apAvd_vfef6lA21rC1mQJE6uzQnX63SKlh9Qd8J3qbdZprusyRb0r-qBNX2eW5-Vw_w4KtfKtwYIHB4LG5E5opJwsC9ghY0ay3gMyATkvyJIk2T5yn9C6IfsORqPeH-I1N_g:1qjFDp:gQvME4dbTPagPi9jogk4Ga59xuQaZ15uYuzre40qe7U	2023-10-05 08:39:41.968509+00
schc3nsab85oz00vznpln6j87mvi0v1s	.eJxVjEEOwiAQRe_C2hCGFCgu3XsGMsOAVA0kpV013t2QdKHb_977hwi4byXsPa1hYXEVIC6_G2F8pToAP7E-moytbutCcijypF3eG6f37XT_Dgr2Muo4o56tt5g1QTZJeUtKs0ETGSCTd9k5gwSTzuRgAp_QKGPzpDgqKz5f8aE3-Q:1qjFrS:RoMgkegZ1mOwMRbA02kdeWqzqi_2FkUTKisYw7CNq6k	2023-10-05 09:20:38.903191+00
lm820g4le9t8ebwlm19zt23454k6s5he	.eJxVjEEOwiAQRe_C2hCGFCgu3XsGMsOAVA0kpV013t2QdKHb_977hwi4byXsPa1hYXEVIC6_G2F8pToAP7E-moytbutCcijypF3eG6f37XT_Dgr2Muo4o56tt5g1QTZJeUtKs0ETGSCTd9k5gwSTzuRgAp_QKGPzpDgqKz5f8aE3-Q:1qjQBh:37TYQJWI6USHX8Dw6TPDFyQSk-zG97l4mwjiUTnOZPQ	2023-10-05 20:22:13.542883+00
qfrb2wt9qidtxyq9qtldvujxndvjd00k	.eJxVjEEOwiAQRe_C2hCGFCgu3XsGMsOAVA0kpV013t2QdKHb_977hwi4byXsPa1hYXEVIC6_G2F8pToAP7E-moytbutCcijypF3eG6f37XT_Dgr2Muo4o56tt5g1QTZJeUtKs0ETGSCTd9k5gwSTzuRgAp_QKGPzpDgqKz5f8aE3-Q:1qjQsl:waAFQYZQNWqPjID-g_5QJAEbaP85qX-_m7c900C8p0w	2023-10-05 21:06:43.24254+00
4effcjlq7fzp6zjm3uglcn2im9va02ws	.eJxVjEEOwiAQRe_C2hCGFCgu3XsGMsOAVA0kpV013t2QdKHb_977hwi4byXsPa1hYXEVIC6_G2F8pToAP7E-moytbutCcijypF3eG6f37XT_Dgr2Muo4o56tt5g1QTZJeUtKs0ETGSCTd9k5gwSTzuRgAp_QKGPzpDgqKz5f8aE3-Q:1qjU1m:RDFaHAYGxqTr2hqrwMc4iWLNy-PJm2RcNpYWhmDRgS8	2023-10-06 00:28:14.403663+00
nxnlcrm5ulifsp3g0rx1820dawry809j	.eJxVjEEOwiAQRe_C2hCGFCgu3XsGMsOAVA0kpV013t2QdKHb_977hwi4byXsPa1hYXEVIC6_G2F8pToAP7E-moytbutCcijypF3eG6f37XT_Dgr2Muo4o56tt5g1QTZJeUtKs0ETGSCTd9k5gwSTzuRgAp_QKGPzpDgqKz5f8aE3-Q:1qjlbg:0xkgvici2dHIggkhRY7JyI7bT88rbAR3L5XYTuY69x0	2023-10-06 19:14:28.095737+00
sxt12jith9uak5iysom2u7nx1g5vu9n4	.eJxVjEEOwiAQRe_C2hCGFCgu3XsGMsOAVA0kpV013t2QdKHb_977hwi4byXsPa1hYXEVIC6_G2F8pToAP7E-moytbutCcijypF3eG6f37XT_Dgr2Muo4o56tt5g1QTZJeUtKs0ETGSCTd9k5gwSTzuRgAp_QKGPzpDgqKz5f8aE3-Q:1qjq32:Q3PRd7pEkP4wBLnXMui_KVMV9yl9JIrtj9Z6oGb9Jnk	2023-10-06 23:59:00.973761+00
xut7vx4d1jicbjcss91zcpabhvf9uobl	.eJxVjEEOwiAQRe_C2hBmWgp16d4zkIEZpGpoUtqV8e7apAvd_vfef6lA21rC1mQJE6uzQnX63SKlh9Qd8J3qbdZprusyRb0r-qBNX2eW5-Vw_w4KtfKtwYIHB4LG5E5opJwsC9ghY0ay3gMyATkvyJIk2T5yn9C6IfsORqPeH-I1N_g:1qjzJO:w48bhUHl2C5r2FahO_DvS9CeykZ9HnUvCq0_fx-DyQc	2023-10-07 09:52:30.255095+00
5kia0cceu01t72o4a857pnd7vu7hkzw5	.eJxVjEEOwiAQRe_C2hCGFCgu3XsGMsOAVA0kpV013t2QdKHb_977hwi4byXsPa1hYXEVIC6_G2F8pToAP7E-moytbutCcijypF3eG6f37XT_Dgr2Muo4o56tt5g1QTZJeUtKs0ETGSCTd9k5gwSTzuRgAp_QKGPzpDgqKz5f8aE3-Q:1qjzZV:SW2NLLX0Y8Qe03JFbJrntSabq5gwiAb2dAv6bH6CTy4	2023-10-07 10:09:09.227781+00
60if22cf1gzzg9ypeyzr1r3t1hxpa9z4	.eJxVjEEOwiAQRe_C2hBmWgp16d4zkIEZpGpoUtqV8e7apAvd_vfef6lA21rC1mQJE6uzQnX63SKlh9Qd8J3qbdZprusyRb0r-qBNX2eW5-Vw_w4KtfKtwYIHB4LG5E5opJwsC9ghY0ay3gMyATkvyJIk2T5yn9C6IfsORqPeH-I1N_g:1qjzbh:kHau-jRcqvvv_xDzRF-aOsVKQcgvG8ZPaqm80Ph-tu0	2023-10-07 10:11:25.115967+00
6q649a1crj3f76o2ey2qpre4g0v7aosa	.eJxVjEEOwiAQRe_C2hBmWgp16d4zkIEZpGpoUtqV8e7apAvd_vfef6lA21rC1mQJE6uzQnX63SKlh9Qd8J3qbdZprusyRb0r-qBNX2eW5-Vw_w4KtfKtwYIHB4LG5E5opJwsC9ghY0ay3gMyATkvyJIk2T5yn9C6IfsORqPeH-I1N_g:1qjzhZ:ep6w9iNRAdqq5JtNidvCPS5wF1JkNT7rkjKySgV_2Fc	2023-10-07 10:17:29.500451+00
xvoekyb6cn8cz7qbegatrtxuhqfb28nu	.eJxVjEEOwiAQRe_C2hBmWgp16d4zkIEZpGpoUtqV8e7apAvd_vfef6lA21rC1mQJE6uzQnX63SKlh9Qd8J3qbdZprusyRb0r-qBNX2eW5-Vw_w4KtfKtwYIHB4LG5E5opJwsC9ghY0ay3gMyATkvyJIk2T5yn9C6IfsORqPeH-I1N_g:1qjzwI:mPzTffrauVOMDcSUbN8YwKoQMvIcoFrCqW6PwgoMlRU	2023-10-07 10:32:42.896173+00
y1y2n5y02lo00i7f4xdpqfgaax279c54	.eJxVjEEOwiAQRe_C2hBmWgp16d4zkIEZpGpoUtqV8e7apAvd_vfef6lA21rC1mQJE6uzQnX63SKlh9Qd8J3qbdZprusyRb0r-qBNX2eW5-Vw_w4KtfKtwYIHB4LG5E5opJwsC9ghY0ay3gMyATkvyJIk2T5yn9C6IfsORqPeH-I1N_g:1qjzx0:-yekd7TgKSCYOh5XAdXi4kO57kOy6O-DNd6nlf3wp9k	2023-10-07 10:33:26.753243+00
n4md8rtq4xx2rc2ay9c9qyupya21dzvs	.eJxVjMsOwiAQRf-FtSF0yqPj0r3fQAYYpGogKe3K-O_apAvd3nPOfQlP21r81nnxcxJnocXpdwsUH1x3kO5Ub03GVtdlDnJX5EG7vLbEz8vh_h0U6uVbszMRJ4vIxmomlx0mGCiokTATAE7aaFDGsAJlc8yEJnLiQY0K0Gnx_gDYHTdW:1qk1e0:a76WAGZDM7T2c6KEQHBFqFlJoRFIh47CyFjo4qIr9rE	2023-10-07 12:21:56.348778+00
m6m2wmfkq6hq3mn51tbez8li136tf1rm	.eJxVjMsOwiAQRf-FtSF0yqPj0r3fQAYYpGogKe3K-O_apAvd3nPOfQlP21r81nnxcxJnocXpdwsUH1x3kO5Ub03GVtdlDnJX5EG7vLbEz8vh_h0U6uVbszMRJ4vIxmomlx0mGCiokTATAE7aaFDGsAJlc8yEJnLiQY0K0Gnx_gDYHTdW:1qk1eK:5JcgesX3hKxjYhjSEVqxXcEzrwblMkFPb1VS8vS9Atg	2023-10-07 12:22:16.596171+00
mr3pksl6s1fkejzd7sozho9vvtx3jvvz	.eJxVjEEOwiAQRe_C2hCGFCgu3XsGMsOAVA0kpV013t2QdKHb_977hwi4byXsPa1hYXEVIC6_G2F8pToAP7E-moytbutCcijypF3eG6f37XT_Dgr2Muo4o56tt5g1QTZJeUtKs0ETGSCTd9k5gwSTzuRgAp_QKGPzpDgqKz5f8aE3-Q:1qk2VD:0n4w46S4xnm0LJbj9BLA3LSIsRYg4ASegTRupjv3ItE	2023-10-07 13:16:55.598361+00
xkmv2rdc3h7ywfmszo9cgsh8t82x9vo1	.eJxVjEEOwiAQRe_C2hBmWgp16d4zkIEZpGpoUtqV8e7apAvd_vfef6lA21rC1mQJE6uzQnX63SKlh9Qd8J3qbdZprusyRb0r-qBNX2eW5-Vw_w4KtfKtwYIHB4LG5E5opJwsC9ghY0ay3gMyATkvyJIk2T5yn9C6IfsORqPeH-I1N_g:1qk3JQ:HMq_Y2OsdsSE9Bmz8DBe604l0skPmhlGJUo2QoAxgKs	2023-10-07 14:08:48.652638+00
2n84xy2mm3zxnyqfg6ey3crfo09anz78	.eJxVjMsOwiAQRf-FtSF0yqPj0r3fQAYYpGogKe3K-O_apAvd3nPOfQlP21r81nnxcxJnocXpdwsUH1x3kO5Ub03GVtdlDnJX5EG7vLbEz8vh_h0U6uVbszMRJ4vIxmomlx0mGCiokTATAE7aaFDGsAJlc8yEJnLiQY0K0Gnx_gDYHTdW:1qk4V2:j4ahFzan2kLVS4lBTsnGUbTI0hI3AZkwrPUO3e2f6tE	2023-10-07 15:24:52.79857+00
qu1lbdo74w672hzqx3dms7lm54zk8e2t	.eJxVjEEOwiAQRe_C2hBmWgp16d4zkIEZpGpoUtqV8e7apAvd_vfef6lA21rC1mQJE6uzQnX63SKlh9Qd8J3qbdZprusyRb0r-qBNX2eW5-Vw_w4KtfKtwYIHB4LG5E5opJwsC9ghY0ay3gMyATkvyJIk2T5yn9C6IfsORqPeH-I1N_g:1qk4VI:ihV63zBJljt3U4sNRk9sc9_-YJ-sHq9vp5HZlYaAdPc	2023-10-07 15:25:08.85193+00
mx3hrh2yn7nw2mjckq6bh7deo5x8bytd	.eJwFwckRgCAMAMBe0gE5SLAZJgk4vEVfjr27-0L351792fPqy_eCA0RboRRjnzJiBodL9ZhoYUpE6aVkJkUoDqpRcWA7jUdlRzWE7welXhnJ:1qk5dR:Ball_SQwt45Qv3jN6WUvQrAEYlfkbb6GNMKUKXiS4zQ	2023-10-07 16:37:37.207172+00
p2662b9zad12n2o8yy6wd5qhgh5q18kf	.eJxVjDkOwjAUBe_iGlny9xpKes5g_cXgAHKkOKki7g6RUkD7ZuZtKuO61Lz2MudR1FmBOv1uhPwsbQfywHafNE9tmUfSu6IP2vV1kvK6HO7fQcVev7WPg7Hsk8PihQo5Qh-QCiRK0VrLaAwzW6IIYgMFEBhuyUlwCDGBen8A9o44Kg:1qk5nd:Un9Cb5j4JP9GmVkEEmmAbX7WQNYMGN74asSQJn63MnE	2023-10-07 16:48:09.342314+00
7r9qo9wutwhf30nayj2jh3a7wxwxqcut	.eJxVjEEOwiAQRe_C2hCGFCgu3XsGMsOAVA0kpV013t2QdKHb_977hwi4byXsPa1hYXEVIC6_G2F8pToAP7E-moytbutCcijypF3eG6f37XT_Dgr2Muo4o56tt5g1QTZJeUtKs0ETGSCTd9k5gwSTzuRgAp_QKGPzpDgqKz5f8aE3-Q:1qkCTu:S4jba14OMgOfG1-MneQGixsCV028QCIC_qXBQvaieT4	2023-10-07 23:56:14.011714+00
ubqs8rntefre371o6s8hw7y7xmc9dwu0	.eJxVjEEOwiAQRe_C2hCGFCgu3XsGMsOAVA0kpV013t2QdKHb_977hwi4byXsPa1hYXEVIC6_G2F8pToAP7E-moytbutCcijypF3eG6f37XT_Dgr2Muo4o56tt5g1QTZJeUtKs0ETGSCTd9k5gwSTzuRgAp_QKGPzpDgqKz5f8aE3-Q:1qkCVJ:Gutn7eqoewVUfTn_4bTMXsWJnK21uTc5sQB_QN10C5s	2023-10-07 23:57:41.084867+00
uq4ubfv3upm7obrc555z8y03zo5t1p77	.eJxVjDkOwjAUBe_iGlny9xpKes5g_cXgAHKkOKki7g6RUkD7ZuZtKuO61Lz2MudR1FmBOv1uhPwsbQfywHafNE9tmUfSu6IP2vV1kvK6HO7fQcVev7WPg7Hsk8PihQo5Qh-QCiRK0VrLaAwzW6IIYgMFEBhuyUlwCDGBen8A9o44Kg:1qkCW4:HLUj1bZBcdJR5sHd-NO6ym1nkGcMPUgVY82otL7lvRc	2023-10-07 23:58:28.380803+00
z6hkl9pyj7iujhzs9mjhddjqjnmc5d98	.eJxVjEEOwiAQRe_C2hCGFCgu3XsGMsOAVA0kpV013t2QdKHb_977hwi4byXsPa1hYXEVIC6_G2F8pToAP7E-moytbutCcijypF3eG6f37XT_Dgr2Muo4o56tt5g1QTZJeUtKs0ETGSCTd9k5gwSTzuRgAp_QKGPzpDgqKz5f8aE3-Q:1qkP51:mOUdyJXL1vgL8TDytpW4iUMHsEfbIILZQ_qY7OM6-Ng	2023-10-08 13:23:23.011785+00
i9bhlf2ap7i5ph72v37zapz3dgjqavwl	.eJxVjDkOwjAUBe_iGlny9xpKes5g_cXgAHKkOKki7g6RUkD7ZuZtKuO61Lz2MudR1FmBOv1uhPwsbQfywHafNE9tmUfSu6IP2vV1kvK6HO7fQcVev7WPg7Hsk8PihQo5Qh-QCiRK0VrLaAwzW6IIYgMFEBhuyUlwCDGBen8A9o44Kg:1qkPIM:Sc0qTO72v1XJBK5zSzcDD_WOSILyDAxLu6Jlv5vtwQU	2023-10-08 13:37:10.660303+00
83pi7lf2u4f21e4fy77765a78cxbgilf	.eJxVjEEOwiAQRe_C2hCGFCgu3XsGMsOAVA0kpV013t2QdKHb_977hwi4byXsPa1hYXEVIC6_G2F8pToAP7E-moytbutCcijypF3eG6f37XT_Dgr2Muo4o56tt5g1QTZJeUtKs0ETGSCTd9k5gwSTzuRgAp_QKGPzpDgqKz5f8aE3-Q:1qkgrr:FNrGDBxNdkbGQI3RE_Z9qvExLou2IQp4MCr9u5acTPM	2023-10-09 08:22:59.599956+00
zn7sfqu2xfu0a84rhu37mq24ah198bqf	.eJxVjEEOwiAQRe_C2hCGFCgu3XsGMsOAVA0kpV013t2QdKHb_977hwi4byXsPa1hYXEVIC6_G2F8pToAP7E-moytbutCcijypF3eG6f37XT_Dgr2Muo4o56tt5g1QTZJeUtKs0ETGSCTd9k5gwSTzuRgAp_QKGPzpDgqKz5f8aE3-Q:1qkgsO:KOcetADJOY-LvE6ggLNULrTRYyckNKl2BycRVK4-KpQ	2023-10-09 08:23:32.401055+00
1c448oqzj0b76a1s95ig8vg0jxzsjgoa	.eJxljMEOgjAQRP9lz6Qx0ELh6N1vaLbbrVRrmwDlYvx3wRAT42Eu783ME5Aol7SYlafgAzvDDwwRhlRirL62zDzBAB1UYLAs4weY4P6ZRbpz2oW7YbpmQTktU7Bir4jDzuKSHcfz0f05GHEetzWzt9bZpmeknnWNpw6l1rq2RF7RBtARbfEdWeUbkl4q3dayJWwUKni9Adq8S30:1qkiFI:Ggq_Boiu6tI1kiNRywehKWrksdtMioPj5uQVPDg46BI	2023-10-09 09:51:16.509193+00
apox8hsofti30qjciupcjizckibmldp6	.eJxVjDsOwyAQRO9CHSGLj8Ep0-cMaHdZgpMIJGNXUe5uLLlIimnevJmPCLCtOWyNlzBHcRVOXH4ZAr24HEV8QnlUSbWsy4zyUOTZNnmvkd-30_07yNByXzMnxIh6YqCJvYLBgfHeKyRKljqASNSTHKFNmkwy1o_KjATaghXfHUPlOec:1qkiFO:6dGMTzlL7VIpRI_c8q8zo5fP6TE3uK0adX7DmTGTbuI	2023-10-09 09:51:22.29611+00
dl2yrh24o6lturc8y1xrgyyq5tqz1mcv	.eJxVjDsOwyAQRO9CHSGLj8Ep0-cMaHdZgpMIJGNXUe5uLLlIimnevJmPCLCtOWyNlzBHcRVOXH4ZAr24HEV8QnlUSbWsy4zyUOTZNnmvkd-30_07yNByXzMnxIh6YqCJvYLBgfHeKyRKljqASNSTHKFNmkwy1o_KjATaghXfHUPlOec:1qkicH:Tfvg3eUD2jHHOi0CkgbzbFvPBWMUzGQR1gUk7pFTNq4	2023-10-09 10:15:01.017219+00
914m8rktjey890dd589pa8yvcykrcdyr	.eJxVjEEOwiAQRe_C2hCGFCgu3XsGMsOAVA0kpV013t2QdKHb_977hwi4byXsPa1hYXEVIC6_G2F8pToAP7E-moytbutCcijypF3eG6f37XT_Dgr2Muo4o56tt5g1QTZJeUtKs0ETGSCTd9k5gwSTzuRgAp_QKGPzpDgqKz5f8aE3-Q:1qkicp:VqjwcdZaz6d8Dijshb4KeQ6B0u23cNjtQEAbLl5AvbY	2023-10-09 10:15:35.680179+00
xzg3awxcuayiaootc588t46ohw3obeww	.eJxVjDkOwjAUBe_iGlny9xpKes5g_cXgAHKkOKki7g6RUkD7ZuZtKuO61Lz2MudR1FmBOv1uhPwsbQfywHafNE9tmUfSu6IP2vV1kvK6HO7fQcVev7WPg7Hsk8PihQo5Qh-QCiRK0VrLaAwzW6IIYgMFEBhuyUlwCDGBen8A9o44Kg:1qkocT:wMEGphX0udvImMUjACZN6MbhSVGVSf_Y6P450o6aWL8	2023-10-09 16:39:37.546554+00
gl46uem4hjwurl4quqe3gmztc350eat7	.eJxVjDkOwjAUBe_iGlny9xpKes5g_cXgAHKkOKki7g6RUkD7ZuZtKuO61Lz2MudR1FmBOv1uhPwsbQfywHafNE9tmUfSu6IP2vV1kvK6HO7fQcVev7WPg7Hsk8PihQo5Qh-QCiRK0VrLaAwzW6IIYgMFEBhuyUlwCDGBen8A9o44Kg:1qkorX:uPcHyixOYwyHAGE_y1ViFsQom8pE1tFFuQrDtpthgos	2023-10-09 16:55:11.505837+00
2s75uubofmb9dpatss8ctg9lunq1wy1v	.eJxVjEEOwiAQRe_C2hCGFCgu3XsGMsOAVA0kpV013t2QdKHb_977hwi4byXsPa1hYXEVIC6_G2F8pToAP7E-moytbutCcijypF3eG6f37XT_Dgr2Muo4o56tt5g1QTZJeUtKs0ETGSCTd9k5gwSTzuRgAp_QKGPzpDgqKz5f8aE3-Q:1qkorv:h2-m7adl-XCazbMx77NzVKP9Y3DE1v7G8eWLFZuhp_w	2023-10-09 16:55:35.571137+00
nl513h9q1d5oe649o8p5gpq9cfg77y1l	.eJxljMsOwiAUBf-FdUNaoDxcuvcbCNwLFkVI2uLG-O9a05gYtzNzzoM4gNrKau9hTjEFtOHmUiaH0nLuvrYtYSYHoklHrGvr9AE24T_zDq6hbAIvrpwrhVrWOXm6JXS3Cz1VDPm4tz8Hk1um99rgwHspouSgAJgAqbRncRw1OM6VMUyM2PsQJaBmCFrxKLwcwCMDpwx5vgB0a0mw:1qkovQ:FPEtJ1t0qVe6AxbLZZkLzwDm70TCK7WYK8WHsycjadg	2023-10-09 16:59:12.618174+00
epsng4kmxo2n96xkt2rcr39bh225i0uv	.eJxVjDkOwjAUBe_iGlmJd1PScwbrLzYOIEeKkwpxd4iUAto3M-8lEmxrTVvPS5pYnEUQp98NgR657YDv0G6zpLmty4RyV-RBu7zOnJ-Xw_07qNDrt4486sGZ4jR5ImXI-YCqWBsItPYxKmN5wFwccVBMweti0I2ErAh8FO8P3Ng4GQ:1qkovZ:itcJRhDX7FL96ynE_QxgImJmkexYE1aPz5GnAQxKmjw	2023-10-09 16:59:21.091611+00
ic50cn4tudfv4jxob683vxxmk0axpb5k	.eJxVjDkOwjAUBe_iGlmJd1PScwbrLzYOIEeKkwpxd4iUAto3M-8lEmxrTVvPS5pYnEUQp98NgR657YDv0G6zpLmty4RyV-RBu7zOnJ-Xw_07qNDrt4486sGZ4jR5ImXI-YCqWBsItPYxKmN5wFwccVBMweti0I2ErAh8FO8P3Ng4GQ:1qkoxe:mcBD6GKhceXHOEzqu1LJ0Y91xZUcJub_siCChy2aFcY	2023-10-09 17:01:30.935973+00
h8vws4l75mnylayjjjkytzrmh5cizvcg	.eJxVjDkOwjAUBe_iGlmJd1PScwbrLzYOIEeKkwpxd4iUAto3M-8lEmxrTVvPS5pYnEUQp98NgR657YDv0G6zpLmty4RyV-RBu7zOnJ-Xw_07qNDrt4486sGZ4jR5ImXI-YCqWBsItPYxKmN5wFwccVBMweti0I2ErAh8FO8P3Ng4GQ:1qkrEz:maUcL6YAeyaRH3rnHFMU4HTXGN7DZVH4Tu0vfwUCa3c	2023-10-09 19:27:33.761278+00
fjwluj139t5eu3hf3ttznucwdh9nmkc4	.eJxVjDkOwjAUBe_iGlmJd1PScwbrLzYOIEeKkwpxd4iUAto3M-8lEmxrTVvPS5pYnEUQp98NgR657YDv0G6zpLmty4RyV-RBu7zOnJ-Xw_07qNDrt4486sGZ4jR5ImXI-YCqWBsItPYxKmN5wFwccVBMweti0I2ErAh8FO8P3Ng4GQ:1qkrN3:FmuCWzM3IIx_of05uGG9HEBEBnQdbbptrEoXnj34YgA	2023-10-09 19:35:53.518663+00
499z6hzfwhiffkux1b8hxwce6k462ni5	.eJxVjEEOwiAQRe_C2hCGFCgu3XsGMsOAVA0kpV013t2QdKHb_977hwi4byXsPa1hYXEVIC6_G2F8pToAP7E-moytbutCcijypF3eG6f37XT_Dgr2Muo4o56tt5g1QTZJeUtKs0ETGSCTd9k5gwSTzuRgAp_QKGPzpDgqKz5f8aE3-Q:1qkt1B:tq1qg5qw_p_rMFyOTSPWecqyhMCcoetqY90Rmjvv0dM	2023-10-09 21:21:25.930056+00
6s0pwgubqr1qugzqfanyit5m7c1vgyn8	.eJxVjDkOwjAUBe_iGlmJd1PScwbrLzYOIEeKkwpxd4iUAto3M-8lEmxrTVvPS5pYnEUQp98NgR657YDv0G6zpLmty4RyV-RBu7zOnJ-Xw_07qNDrt4486sGZ4jR5ImXI-YCqWBsItPYxKmN5wFwccVBMweti0I2ErAh8FO8P3Ng4GQ:1ql2FC:DgE5PftIb0QXs29bXiBoeHrGncsc1MMHS9Ye5Se29EE	2023-10-10 07:12:30.325901+00
7few3rywgzpgb8ak3ca0vlno5jqx99wv	.eJxVjDkOwjAUBe_iGlmJd1PScwbrLzYOIEeKkwpxd4iUAto3M-8lEmxrTVvPS5pYnEUQp98NgR657YDv0G6zpLmty4RyV-RBu7zOnJ-Xw_07qNDrt4486sGZ4jR5ImXI-YCqWBsItPYxKmN5wFwccVBMweti0I2ErAh8FO8P3Ng4GQ:1ql2FN:NoxrK-TRYH-WoOH55wP7El7FTpyRruomLlJl7mjH0Xs	2023-10-10 07:12:41.924335+00
uw7helqfxghy4g50jasx01r08987acef	.eJxVjEEOwiAQRe_C2hCGFCgu3XsGMsOAVA0kpV013t2QdKHb_977hwi4byXsPa1hYXEVIC6_G2F8pToAP7E-moytbutCcijypF3eG6f37XT_Dgr2Muo4o56tt5g1QTZJeUtKs0ETGSCTd9k5gwSTzuRgAp_QKGPzpDgqKz5f8aE3-Q:1ql2tN:1PhGGVGyqa9q3raAO9xnTRUVsZTl59Jlv_UMYMD-TeE	2023-10-10 07:54:01.045035+00
jjnwm70s8w01aplec9dd88dvfffufw5s	.eJxVjEEOwiAQRe_C2hCGFCgu3XsGMsOAVA0kpV013t2QdKHb_977hwi4byXsPa1hYXEVIC6_G2F8pToAP7E-moytbutCcijypF3eG6f37XT_Dgr2Muo4o56tt5g1QTZJeUtKs0ETGSCTd9k5gwSTzuRgAp_QKGPzpDgqKz5f8aE3-Q:1ql3Wz:2w8-nyk8NKspsEBOV9pR59CLMT3OXV9TGEZgZY3g8Hg	2023-10-10 08:34:57.350886+00
10ry0h47s7gbajcgvw1lt80cafonipw2	.eJxVjEEOwiAQRe_C2hCGFCgu3XsGMsOAVA0kpV013t2QdKHb_977hwi4byXsPa1hYXEVIC6_G2F8pToAP7E-moytbutCcijypF3eG6f37XT_Dgr2Muo4o56tt5g1QTZJeUtKs0ETGSCTd9k5gwSTzuRgAp_QKGPzpDgqKz5f8aE3-Q:1qlCb8:cuMOgmQ0qFBH9zsL4a1lPzGvEb-sohFW3LGOGLtUp38	2023-10-10 18:15:50.632126+00
0t55lmov43s6whts1r40hpcg9tjyzng5	.eJxVjEEOwiAQRe_C2hCGFCgu3XsGMsOAVA0kpV013t2QdKHb_977hwi4byXsPa1hYXEVIC6_G2F8pToAP7E-moytbutCcijypF3eG6f37XT_Dgr2Muo4o56tt5g1QTZJeUtKs0ETGSCTd9k5gwSTzuRgAp_QKGPzpDgqKz5f8aE3-Q:1qlDH2:iZRv1WKMkRS736hO9Sqgl-3NzB41AKfepxnBus6tLSc	2023-10-10 18:59:08.081845+00
2t7a98ojpyx0kwufb62qggupelkigsic	.eJxVjEEOwiAQRe_C2hCGFCgu3XsGMsOAVA0kpV013t2QdKHb_977hwi4byXsPa1hYXEVIC6_G2F8pToAP7E-moytbutCcijypF3eG6f37XT_Dgr2Muo4o56tt5g1QTZJeUtKs0ETGSCTd9k5gwSTzuRgAp_QKGPzpDgqKz5f8aE3-Q:1qlEEG:8Yp3kywtAHY_8OyBQg4krRP5QroifLfHuwGuQeqm88M	2023-10-10 20:00:20.40002+00
34z063i9vgo2eexuh7s6ru50ofklaejx	.eJxVjEEOwiAQRe_C2hCGFCgu3XsGMsOAVA0kpV013t2QdKHb_977hwi4byXsPa1hYXEVIC6_G2F8pToAP7E-moytbutCcijypF3eG6f37XT_Dgr2Muo4o56tt5g1QTZJeUtKs0ETGSCTd9k5gwSTzuRgAp_QKGPzpDgqKz5f8aE3-Q:1qlEo6:TofmW3CL-PhF7It7aEdaEQN0jnsM6TzeG9WAQeYnC1U	2023-10-10 20:37:22.532267+00
liq6wj7nbox9563a2q55mmpn446286az	.eJxVjDkOwjAUBe_iGlny9xpKes5g_cXgAHKkOKki7g6RUkD7ZuZtKuO61Lz2MudR1FmBOv1uhPwsbQfywHafNE9tmUfSu6IP2vV1kvK6HO7fQcVev7WPg7Hsk8PihQo5Qh-QCiRK0VrLaAwzW6IIYgMFEBhuyUlwCDGBen8A9o44Kg:1qlGoP:220dQF1Om7yGTQU9N8G5n3zfxjxv2FQ6g6WZUkkC5lM	2023-10-10 22:45:49.501158+00
mn9nhsoubiycapebc4tr1phelodwxe12	.eJxVjEEOwiAQRe_C2hCGFCgu3XsGMsOAVA0kpV013t2QdKHb_977hwi4byXsPa1hYXEVIC6_G2F8pToAP7E-moytbutCcijypF3eG6f37XT_Dgr2Muo4o56tt5g1QTZJeUtKs0ETGSCTd9k5gwSTzuRgAp_QKGPzpDgqKz5f8aE3-Q:1qlGuU:QvfNXbWrzyXGMjNvnC-eKscDaLu5EzQORQ44P910g40	2023-10-10 22:52:06.283543+00
jwtrbomm43sft6nnnv4l0kkoaog5462q	.eJxVjEEOwiAQRe_C2hCGFCgu3XsGMsOAVA0kpV013t2QdKHb_977hwi4byXsPa1hYXEVIC6_G2F8pToAP7E-moytbutCcijypF3eG6f37XT_Dgr2Muo4o56tt5g1QTZJeUtKs0ETGSCTd9k5gwSTzuRgAp_QKGPzpDgqKz5f8aE3-Q:1qlYnb:XnnR9GiRUu12tAo2JcQTtTt3tJnAfYok93tbOSErfho	2023-10-11 17:58:11.658241+00
z9ps35f05bp1vgvmmj1ntggh2lm3dasf	.eJxVjDkOwjAUBe_iGlny9xpKes5g_cXgAHKkOKki7g6RUkD7ZuZtKuO61Lz2MudR1FmBOv1uhPwsbQfywHafNE9tmUfSu6IP2vV1kvK6HO7fQcVev7WPg7Hsk8PihQo5Qh-QCiRK0VrLaAwzW6IIYgMFEBhuyUlwCDGBen8A9o44Kg:1qlNqz:pKG5roEfU6QCed8pj0DGrHW2ckcVlD76tdn_50caguo	2023-10-11 06:16:57.622895+00
8bvjm14gzeau5rd9htsa0jypalucrwd9	.eJxVjDkOwjAUBe_iGlmJd1PScwbrLzYOIEeKkwpxd4iUAto3M-8lEmxrTVvPS5pYnEUQp98NgR657YDv0G6zpLmty4RyV-RBu7zOnJ-Xw_07qNDrt4486sGZ4jR5ImXI-YCqWBsItPYxKmN5wFwccVBMweti0I2ErAh8FO8P3Ng4GQ:1qlvCy:cKpoNwouoqB7tDw-FBdsfwN63U3k096oBeT55xj_Koc	2023-10-12 17:53:52.698629+00
ixdr8d4n5fi5qug2raiofgjsube0u2sp	.eJxVjEEOwiAQRe_C2hCGFCgu3XsGMsOAVA0kpV013t2QdKHb_977hwi4byXsPa1hYXEVIC6_G2F8pToAP7E-moytbutCcijypF3eG6f37XT_Dgr2Muo4o56tt5g1QTZJeUtKs0ETGSCTd9k5gwSTzuRgAp_QKGPzpDgqKz5f8aE3-Q:1qlOHu:a5lHlu3X1I_6zL1VZU9FWuJHT6wWXYZKb2Xwt3pEbIE	2023-10-11 06:44:46.103521+00
kb77pvfj6d0cmjgs0s17teq4ayr01n69	.eJxVjDkOwjAUBe_iGlmJd1PScwbrLzYOIEeKkwpxd4iUAto3M-8lEmxrTVvPS5pYnEUQp98NgR657YDv0G6zpLmty4RyV-RBu7zOnJ-Xw_07qNDrt4486sGZ4jR5ImXI-YCqWBsItPYxKmN5wFwccVBMweti0I2ErAh8FO8P3Ng4GQ:1qlvEw:P6tPT3XcwdN2NCIlabca6Jysn0As5jcqTDUGbam3Ntw	2023-10-12 17:55:54.470014+00
n64vdaba8a31k160ofvlrbwlb56ao43n	.eJxVjDkOwjAUBe_iGlny9xpKes5g_cXgAHKkOKki7g6RUkD7ZuZtKuO61Lz2MudR1FmBOv1uhPwsbQfywHafNE9tmUfSu6IP2vV1kvK6HO7fQcVev7WPg7Hsk8PihQo5Qh-QCiRK0VrLaAwzW6IIYgMFEBhuyUlwCDGBen8A9o44Kg:1qlOLF:9XlOI2ETuaEY7Iqr_vbfZWbkoafihR2Vi895BbE22ak	2023-10-11 06:48:13.918423+00
9rwfe6modsfdax8buwrpmeds2toykpny	.eJxVjDEOwjAMRe-SGUUpJk7KyM4ZKsd2aAElUtNOiLtDpQ6w_vfef5mB1mUc1qbzMIk5m84cfrdE_NCyAblTuVXLtSzzlOym2J02e62iz8vu_h2M1MZv7dVH7R12jpQhQwAl5OglybFzgU-B2cfQBwWPmDFGF4GkV3TIGcS8P96lN78:1qlxBG:pIa2mr1ErbcO-Nd7IlkZVV-ghWQOZp0dc2ZEalUO_uY	2023-10-12 20:00:14.667083+00
cdggb5oz4022vycbaw8ggsy5gqfa99tt	.eJxVjEEOwiAQRe_C2hCGFCgu3XsGMsOAVA0kpV013t2QdKHb_977hwi4byXsPa1hYXEVIC6_G2F8pToAP7E-moytbutCcijypF3eG6f37XT_Dgr2Muo4o56tt5g1QTZJeUtKs0ETGSCTd9k5gwSTzuRgAp_QKGPzpDgqKz5f8aE3-Q:1qlQ5l:Yhcu48A1FwEXVhmZ-Tw80BJ_0B1BnLb0eTM6RGsurkI	2023-10-11 08:40:21.157654+00
ej0oxil9gmhv7or0y1zcnr6yq5untps1	.eJxVjDEOwjAMRe-SGUUpJk7KyM4ZKsd2aAElUtNOiLtDpQ6w_vfef5mB1mUc1qbzMIk5m84cfrdE_NCyAblTuVXLtSzzlOym2J02e62iz8vu_h2M1MZv7dVH7R12jpQhQwAl5OglybFzgU-B2cfQBwWPmDFGF4GkV3TIGcS8P96lN78:1qlxfM:eayCiADqawYC45QT4O_nAb02J6_Uc_IxRcEzK4puSxs	2023-10-12 20:31:20.371834+00
wl8oou1bqrx20mjkd8p5qdbbtrbl0igm	.eJxVjDsOwyAQBe9CHSEW8IeU6X0GtLBLcBKBZOwqyt1jSy6S9s3MewuP25r91njxM4mrAHH53QLGJ5cD0APLvcpYy7rMQR6KPGmTUyV-3U737yBjy3vNxI6iAw0hobMjJQPBGMVW9yN2kRMPPfFASSelQNuQAAMBKNe5vRCfLwvIOL0:1qlyLt:S-XOGAsKPvLfc5BMBhrUAOxz74uohV1Poyx8ryMV4iY	2023-10-12 21:15:17.482621+00
lblb1qeqczhue853231gdsdxd9w478yk	.eJxVjDsOwyAQBe9CHSEW8IeU6X0GtLBLcBKBZOwqyt1jSy6S9s3MewuP25r91njxM4mrAHH53QLGJ5cD0APLvcpYy7rMQR6KPGmTUyV-3U737yBjy3vNxI6iAw0hobMjJQPBGMVW9yN2kRMPPfFASSelQNuQAAMBKNe5vRCfLwvIOL0:1qlyxo:6P-mIODwKkzSrHYx7Hmk-AfzEx1yFkpEsf3RqYfNYE0	2023-10-12 21:54:28.168821+00
5sq82m7rdnvig61xozikd52ze585m8hz	.eJxVjDsOwyAQBe9CHSEW8IeU6X0GtLBLcBKBZOwqyt1jSy6S9s3MewuP25r91njxM4mrAHH53QLGJ5cD0APLvcpYy7rMQR6KPGmTUyV-3U737yBjy3vNxI6iAw0hobMjJQPBGMVW9yN2kRMPPfFASSelQNuQAAMBKNe5vRCfLwvIOL0:1qlzel:viz45CAk8zpYTWEsyhyjXQlR8UCcrMskBp21hfdENHg	2023-10-12 22:38:51.166153+00
5388owsjocpjdn2hq36fkpmbje7onyk8	.eJxVjDsOwyAQBe9CHSEW8IeU6X0GtLBLcBKBZOwqyt1jSy6S9s3MewuP25r91njxM4mrAHH53QLGJ5cD0APLvcpYy7rMQR6KPGmTUyV-3U737yBjy3vNxI6iAw0hobMjJQPBGMVW9yN2kRMPPfFASSelQNuQAAMBKNe5vRCfLwvIOL0:1qm04J:BjGNj8MP9hnO3c--FocgFI7CPe-5ptBfE-KXFVW-YRE	2023-10-12 23:05:15.522319+00
jwvbzfiv1i03fmo1r3qlv7u2ay2bcoq5	.eJxVjDsOwyAQBe9CHSEW8IeU6X0GtLBLcBKBZOwqyt1jSy6S9s3MewuP25r91njxM4mrAHH53QLGJ5cD0APLvcpYy7rMQR6KPGmTUyV-3U737yBjy3vNxI6iAw0hobMjJQPBGMVW9yN2kRMPPfFASSelQNuQAAMBKNe5vRCfLwvIOL0:1qm04x:3ccNvm9ixqh_lIKrWC8kMHLAr4RmE8f_TUfzMLYqREo	2023-10-12 23:05:55.94674+00
d7mv3ibcsxl05kavktvjf38gjqwzdroh	.eJxVjDsOwyAQBe9CHSEW8IeU6X0GtLBLcBKBZOwqyt1jSy6S9s3MewuP25r91njxM4mrAHH53QLGJ5cD0APLvcpYy7rMQR6KPGmTUyV-3U737yBjy3vNxI6iAw0hobMjJQPBGMVW9yN2kRMPPfFASSelQNuQAAMBKNe5vRCfLwvIOL0:1qm0FW:1Up9h90av5HnWOcmW0yRsIO8MKzCEhrydS7PP9yeSSQ	2023-10-12 23:16:50.261018+00
d04ecj17oilt8n92n9qzjo3u8dglb5fh	.eJxVjDkOwjAUBe_iGlmJd1PScwbrLzYOIEeKkwpxd4iUAto3M-8lEmxrTVvPS5pYnEUQp98NgR657YDv0G6zpLmty4RyV-RBu7zOnJ-Xw_07qNDrt4486sGZ4jR5ImXI-YCqWBsItPYxKmN5wFwccVBMweti0I2ErAh8FO8P3Ng4GQ:1qm0a7:t66d1Wc4k9i1UonOCYDsZArnihW3DaRnfROj_R4t2SU	2023-10-12 23:38:07.22098+00
9hy35zck1tlofu743ormj8gdudikuk5q	.eJxVjDsOwyAQBe9CHSEW8IeU6X0GtLBLcBKBZOwqyt1jSy6S9s3MewuP25r91njxM4mrAHH53QLGJ5cD0APLvcpYy7rMQR6KPGmTUyV-3U737yBjy3vNxI6iAw0hobMjJQPBGMVW9yN2kRMPPfFASSelQNuQAAMBKNe5vRCfLwvIOL0:1qm58o:h7QEKQbvvVb8ZTGihnrb1WyX-sBJrBCQL3roNqZhDSY	2023-10-13 04:30:14.137479+00
bktw8ieup3o8bl3bit8qycdqgxtmsx0g	.eJxVjDsOwyAQBe9CHSEW8IeU6X0GtLBLcBKBZOwqyt1jSy6S9s3MewuP25r91njxM4mrAHH53QLGJ5cD0APLvcpYy7rMQR6KPGmTUyV-3U737yBjy3vNxI6iAw0hobMjJQPBGMVW9yN2kRMPPfFASSelQNuQAAMBKNe5vRCfLwvIOL0:1qmAtO:MruGFxbWTVWfoUW1mveZJYH5qhhVaPsVWbf1216gV0k	2023-10-13 10:38:42.546737+00
mkrp5fepdq8lht332tw7qa8y63hzyzmn	.eJxVjDsOwyAQBe9CHSEW8IeU6X0GtLBLcBKBZOwqyt1jSy6S9s3MewuP25r91njxM4mrAHH53QLGJ5cD0APLvcpYy7rMQR6KPGmTUyV-3U737yBjy3vNxI6iAw0hobMjJQPBGMVW9yN2kRMPPfFASSelQNuQAAMBKNe5vRCfLwvIOL0:1qmBIL:3OBgkbUwBvpkChQMRwppjBUC82nuByzHzMqIJ0C46r4	2023-10-13 11:04:29.287347+00
hj3mv9tb2j9ph78n94y5t4mjz36t9xgj	.eJxVjDkOwjAUBe_iGlmJd1PScwbrLzYOIEeKkwpxd4iUAto3M-8lEmxrTVvPS5pYnEUQp98NgR657YDv0G6zpLmty4RyV-RBu7zOnJ-Xw_07qNDrt4486sGZ4jR5ImXI-YCqWBsItPYxKmN5wFwccVBMweti0I2ErAh8FO8P3Ng4GQ:1qmlO3:X_z6CjkkdacyXGyp9Ju9QkhLMLv_hBonMm_IXFC2a5M	2023-10-15 01:36:47.822892+00
imbesqy429y4c7wisc81ilpvo0scczem	.eJxVjDkOwjAUBe_iGlmJd1PScwbrLzYOIEeKkwpxd4iUAto3M-8lEmxrTVvPS5pYnEUQp98NgR657YDv0G6zpLmty4RyV-RBu7zOnJ-Xw_07qNDrt4486sGZ4jR5ImXI-YCqWBsItPYxKmN5wFwccVBMweti0I2ErAh8FO8P3Ng4GQ:1qnClT:AeQW7znc6HY1o5fRAJeEjMbPy3KffBp-tpFrTWFPRPU	2023-10-16 06:50:47.833289+00
br2ajxwccsyihq7as36uoqp67ivn8w0h	.eJxVjDkOwjAUBe_iGlmJd1PScwbrLzYOIEeKkwpxd4iUAto3M-8lEmxrTVvPS5pYnEUQp98NgR657YDv0G6zpLmty4RyV-RBu7zOnJ-Xw_07qNDrt4486sGZ4jR5ImXI-YCqWBsItPYxKmN5wFwccVBMweti0I2ErAh8FO8P3Ng4GQ:1qnSCo:91HtTm84Q9k3B2N5RGNemv4VaOC_Tl3PIRMi7Qjz3Ro	2023-10-16 23:20:02.78456+00
vxhflqsr2e4fzqdib3ui63hztj390b6u	.eJxVjDkOwjAUBe_iGlmJd1PScwbrLzYOIEeKkwpxd4iUAto3M-8lEmxrTVvPS5pYnEUQp98NgR657YDv0G6zpLmty4RyV-RBu7zOnJ-Xw_07qNDrt4486sGZ4jR5ImXI-YCqWBsItPYxKmN5wFwccVBMweti0I2ErAh8FO8P3Ng4GQ:1qnzGl:A1fyrlAGeWxzYAY7PaQAgVuZl5PbaXMhGxvodGDlGSs	2023-10-18 10:38:19.072677+00
imk4c5cclt1xkacexyz2e493tud8p7h1	.eJxVjDsOwyAQBe9CHSEW8IeU6X0GtLBLcBKBZOwqyt1jSy6S9s3MewuP25r91njxM4mrAHH53QLGJ5cD0APLvcpYy7rMQR6KPGmTUyV-3U737yBjy3vNxI6iAw0hobMjJQPBGMVW9yN2kRMPPfFASSelQNuQAAMBKNe5vRCfLwvIOL0:1qoRWY:Gq9aAHOIR-PC7Wrkt2p0L5J5J4RzZuhelTgFWS5z_-M	2023-10-19 16:48:30.118414+00
lbyqsfk6c3bo4wdi5ieljw6yjwh48bon	.eJxVjDkOwjAUBe_iGlmJd1PScwbrLzYOIEeKkwpxd4iUAto3M-8lEmxrTVvPS5pYnEUQp98NgR657YDv0G6zpLmty4RyV-RBu7zOnJ-Xw_07qNDrt4486sGZ4jR5ImXI-YCqWBsItPYxKmN5wFwccVBMweti0I2ErAh8FO8P3Ng4GQ:1qot11:1Q7O11waSCdywDts-pecgvZa9hAlN1K7BfwuqztwJ1M	2023-10-20 22:09:47.953262+00
hictaa1kv25rq0qhwitjl81lyyd7q2cb	.eJxVjDkOwjAUBe_iGlmJd1PScwbrLzYOIEeKkwpxd4iUAto3M-8lEmxrTVvPS5pYnEUQp98NgR657YDv0G6zpLmty4RyV-RBu7zOnJ-Xw_07qNDrt4486sGZ4jR5ImXI-YCqWBsItPYxKmN5wFwccVBMweti0I2ErAh8FO8P3Ng4GQ:1qpaUr:NUTNNho8lsYT2UqfEENxUeC-X2jFWC-0aKJ20FjI9ZE	2023-10-22 20:35:29.171704+00
h8veyr213uj7pluczjs8wtnd3xzavwlo	.eJxVjDkOwjAUBe_iGlmJd1PScwbrLzYOIEeKkwpxd4iUAto3M-8lEmxrTVvPS5pYnEUQp98NgR657YDv0G6zpLmty4RyV-RBu7zOnJ-Xw_07qNDrt4486sGZ4jR5ImXI-YCqWBsItPYxKmN5wFwccVBMweti0I2ErAh8FO8P3Ng4GQ:1qqCOp:W86NWLMmUkE5Zs9BSwA4uhhI2-2kJzFy-9glyIZt0k0	2023-10-24 13:03:47.023013+00
4mmxe6qf2pth3czwvd3xasfndak4ke38	.eJxVjDkOwjAUBe_iGlmJd1PScwbrLzYOIEeKkwpxd4iUAto3M-8lEmxrTVvPS5pYnEUQp98NgR657YDv0G6zpLmty4RyV-RBu7zOnJ-Xw_07qNDrt4486sGZ4jR5ImXI-YCqWBsItPYxKmN5wFwccVBMweti0I2ErAh8FO8P3Ng4GQ:1qqjOJ:fa-ZHD8AHObdNT7sH3YIQsy2h2qN1a1komMTtgG86qQ	2023-10-26 00:17:27.702973+00
ptq9jo4ifiopo1gks3e1ko0sd3gbhgyp	.eJxVjDkOwjAUBe_iGlmJd1PScwbrLzYOIEeKkwpxd4iUAto3M-8lEmxrTVvPS5pYnEUQp98NgR657YDv0G6zpLmty4RyV-RBu7zOnJ-Xw_07qNDrt4486sGZ4jR5ImXI-YCqWBsItPYxKmN5wFwccVBMweti0I2ErAh8FO8P3Ng4GQ:1qr56r:Fo8krsCDIfavYk4jLnwU_AAf6-1Ne3pl3AImFTeOb4Q	2023-10-26 23:28:53.810994+00
m7375fskszb4vnbfaeb03b06r9dsxczn	.eJxVjDkOwjAUBe_iGlmJd1PScwbrLzYOIEeKkwpxd4iUAto3M-8lEmxrTVvPS5pYnEUQp98NgR657YDv0G6zpLmty4RyV-RBu7zOnJ-Xw_07qNDrt4486sGZ4jR5ImXI-YCqWBsItPYxKmN5wFwccVBMweti0I2ErAh8FO8P3Ng4GQ:1qreQE:tC86HvqKY4KupY0QQT3Cfroth6Hq_-Cdxc2KIunVZiw	2023-10-28 13:11:14.003662+00
28dle2fgchbg4vyfui07i6dua999x7u6	.eJxVjDkOwjAUBe_iGlmJd1PScwbrLzYOIEeKkwpxd4iUAto3M-8lEmxrTVvPS5pYnEUQp98NgR657YDv0G6zpLmty4RyV-RBu7zOnJ-Xw_07qNDrt4486sGZ4jR5ImXI-YCqWBsItPYxKmN5wFwccVBMweti0I2ErAh8FO8P3Ng4GQ:1qrp50:MqBeoTFm7pdfaXX5VojtaaVv4hshYOdrxicEGz8ywso	2023-10-29 00:34:02.019125+00
jl1uy46i3ajf1lw1p4xpt0t0yyq4a7xk	.eJxVjDsOwyAQBe9CHSEW8IeU6X0GtLBLcBKBZOwqyt1jSy6S9s3MewuP25r91njxM4mrAHH53QLGJ5cD0APLvcpYy7rMQR6KPGmTUyV-3U737yBjy3vNxI6iAw0hobMjJQPBGMVW9yN2kRMPPfFASSelQNuQAAMBKNe5vRCfLwvIOL0:1qrwbk:XSV_rg2-_Em4SEfHv7EuB4abvZSlnkox1f4_ewcdVyI	2023-10-29 08:36:20.241169+00
lpwzsc50axfie6op9toy5m8rufzj7j1m	.eJxVjDkOwjAUBe_iGlmJd1PScwbrLzYOIEeKkwpxd4iUAto3M-8lEmxrTVvPS5pYnEUQp98NgR657YDv0G6zpLmty4RyV-RBu7zOnJ-Xw_07qNDrt4486sGZ4jR5ImXI-YCqWBsItPYxKmN5wFwccVBMweti0I2ErAh8FO8P3Ng4GQ:1qseAD:NJ72dAbJEx2Y-rd2t_BbN3NC_ZYezyKE_E9znYOdIIk	2023-10-31 07:06:49.465071+00
oyl95adwbd6fuu21wv0iq3za34635lxg	.eJxVjDkOwjAUBe_iGlmJd1PScwbrLzYOIEeKkwpxd4iUAto3M-8lEmxrTVvPS5pYnEUQp98NgR657YDv0G6zpLmty4RyV-RBu7zOnJ-Xw_07qNDrt4486sGZ4jR5ImXI-YCqWBsItPYxKmN5wFwccVBMweti0I2ErAh8FO8P3Ng4GQ:1qt0fJ:ESgJFUU8bc_LXlutKL44_MMV7GOsJVL8sI6vdP_dRlY	2023-11-01 07:08:25.866226+00
122e7y16hu6w69i5uye2htqd7bw3xx20	.eJxVjDkOwjAUBe_iGlmJd1PScwbrLzYOIEeKkwpxd4iUAto3M-8lEmxrTVvPS5pYnEUQp98NgR657YDv0G6zpLmty4RyV-RBu7zOnJ-Xw_07qNDrt4486sGZ4jR5ImXI-YCqWBsItPYxKmN5wFwccVBMweti0I2ErAh8FO8P3Ng4GQ:1qtS3t:6A1S176cY7Cr8M6c3O1SzHOVNL61KJx1ElWAAe-658Q	2023-11-02 12:23:37.935661+00
88wiecu1ocybhwa3gw40feyun0sql42g	.eJxVjEEOgjAQRe_SNSFTBkpl6d4zNMO0lWptE6BujHcXjDFh-977_yWIOZe0mqebgw_OGvegEMWQSozV35bFzWIQJCphqKzTF5hgNybhCEfiu0u7sTdK11xzTuscxnpP6p9d6ku2Lp5_7eFgomXa1q1vO4_aWd-xstCgJLCgCCUqajRqxdio3npACdwrQCQHrQLiE2jW4v0BtilI5g:1qto4S:Q8pNwhiOkcVKpYzmMcq53E7Skie7Gm2rDNfR7s6AuWA	2023-11-03 11:53:40.893605+00
dw2o7vmy5x373aemor5h4cfczy0sn0og	.eJxVjEEOgjAQRe_StWmmTBmqS_ecoRlmWosaSCisjHdXEha6_e-9_zKRt7XEraYljmouxoE5_Y4DyyNNO9E7T7fZyjytyzjYXbEHrbafNT2vh_t3ULiWb-2zbzOGpLkVUmjQMSgQo0PiJmAgwYY6zYAOpCNA5ASegOUMQYJ5fwDxITcm:1qto4X:btKd2pxiN6CMxl-_IRaww0GYHTlZ8rkOfBy8tdUsBjM	2023-11-03 11:53:45.8111+00
7chn0nel8hk3q0f257h8ow15qnxgszfe	.eJwFwckRwCAIAMBeqEBBFNKM4wHjO8ZXJr1n94XazrPq2XbX1faCC9SFuEnCnkZWkjk5huQ4c1EUnMaGsZMRhuJaurPnzNrdRxIzg-8HflUZmQ:1qto5W:1WtIegMeyBTYdhDeWZCbNG82bAARxWTn7O_YXJpQTlM	2023-11-03 11:54:46.5645+00
jyv9q5z5bc01j0swipzjzvxf195zo7wf	.eJxVjDsOwjAQBe_iGln-fyjpOYNle3dxADlSnFSIu0OkFNC-mXkvlvK2trQNXNIE7MykYKffseT6wL4TuOd-m3md-7pMhe8KP-jg1xnweTncv4OWR_vWkYK2ORhVTHVRBwArhSEFzkcVFKBFJYtGrYSn6AtZcs7GQlRNQET2_gDyRDgp:1qto5l:QNfjtUnqdlyW0t2nGmutMZayt5jfRWNRoXCWj8rzR4I	2023-11-03 11:55:01.142406+00
093ly8ysv3dx2w8dqlgvqjlwfxu40xtp	.eJxVjDsOwyAQBe9CHSEW8IeU6X0GtLBLcBKBZOwqyt1jSy6S9s3MewuP25r91njxM4mrAHH53QLGJ5cD0APLvcpYy7rMQR6KPGmTUyV-3U737yBjy3vNxI6iAw0hobMjJQPBGMVW9yN2kRMPPfFASSelQNuQAAMBKNe5vRCfLwvIOL0:1qtoEF:U3dT3vT8htlyHpGVCSoXcshnLeP4l_I5cpvVGdo8wHc	2023-11-03 12:03:47.745007+00
1cwfnadt8pf73t51sqowycdtg4sjlr7g	.eJxVjDkOwjAUBe_iGlmJd1PScwbrLzYOIEeKkwpxd4iUAto3M-8lEmxrTVvPS5pYnEUQp98NgR657YDv0G6zpLmty4RyV-RBu7zOnJ-Xw_07qNDrt4486sGZ4jR5ImXI-YCqWBsItPYxKmN5wFwccVBMweti0I2ErAh8FO8P3Ng4GQ:1quKHD:ksBLwgvjCkt4J_XWe3SR1dF5o5NxIjahz2pxRJDHzHU	2023-11-04 22:16:59.123108+00
ngzzhtaxe973zot4leg3f1aafeh0s2c1	.eJxVjMsOgjAQRf-la9L0iZWle7-BzEyLVGubAHVj_HfBEBO255x73wyISs1L_wpTHGLwfXhCTKzLNaXmb-scJtYxZA3roS7jD_TRr0zKI0SgR8ib8XfIt8Kp5GWKyLeE73bm1-JDuuzt4WCEeVzXzlqHwcJALXiUXhspHFjtjNDSOUsElnDwxkNrlNAgtLXKCIV4OpNC9vkCzoRJow:1quitl:gvQ95dhUZiLpB0S-_58WEF4mTgE5Td2k1m-u-lcL-wQ	2023-11-06 00:34:25.244805+00
s40tut50bchub7t0pa8j6l5bqkw1zpp9	.eJxVjDkOwjAUBe_iGlnefjCU9JzB-ouDA8iW4qRC3B0ipYD2zcx7qYTrUtLa85wmUWdlrTr8joT8yHUjcsd6a5pbXeaJ9KbonXZ9bZKfl939OyjYy7eOAJEy4MgDClnxwZqI4GMw3sYIzAhMowTBITjj0XgAF4wjOp7YkXp_AAjdN-I:1quitr:PIqbYU-IhtEFyHcCgMnJBORmZahofHFZu46a3p-oIj4	2023-11-06 00:34:31.886846+00
ifewcd4hf1sh9n27cge9g54z8br3fkcb	.eJxVjDsOwyAQBe9CHSEW8IeU6X0GtLBLcBKBZOwqyt1jSy6S9s3MewuP25r91njxM4mrAHH53QLGJ5cD0APLvcpYy7rMQR6KPGmTUyV-3U737yBjy3vNxI6iAw0hobMjJQPBGMVW9yN2kRMPPfFASSelQNuQAAMBKNe5vRCfLwvIOL0:1quqDo:nnfsTjElrrZ_NQzcBn1Ia33qnm4nrp_HKp9RlJF5iMs	2023-11-06 08:23:36.765704+00
5ijdkr7cb501k3w4hx1b2wjg5dfvdqum	.eJxVjDkOwjAUBe_iGlmJd1PScwbrLzYOIEeKkwpxd4iUAto3M-8lEmxrTVvPS5pYnEUQp98NgR657YDv0G6zpLmty4RyV-RBu7zOnJ-Xw_07qNDrt4486sGZ4jR5ImXI-YCqWBsItPYxKmN5wFwccVBMweti0I2ErAh8FO8P3Ng4GQ:1qvOqW:eTfqsj6AVZ6Y9_OwTHd3ebplZeE9Li3BEZqVRNOM9xA	2023-11-07 21:21:52.580309+00
g2ed0cjddqie97kq32b5nov1d5c9zzq4	.eJxVjDsOwyAQBe9CHSEW8IeU6X0GtLBLcBKBZOwqyt1jSy6S9s3MewuP25r91njxM4mrAHH53QLGJ5cD0APLvcpYy7rMQR6KPGmTUyV-3U737yBjy3vNxI6iAw0hobMjJQPBGMVW9yN2kRMPPfFASSelQNuQAAMBKNe5vRCfLwvIOL0:1qwVMF:ZkLSX-onSjlqlfxudZpb6ldtQOEYR0LLLiIoMxpwSiQ	2023-11-10 22:31:11.184188+00
ze2imr4kv4iyq4dtxikook3ge300b3ym	.eJxVjDsOwyAQBe9CHSEW8IeU6X0GtLBLcBKBZOwqyt1jSy6S9s3MewuP25r91njxM4mrAHH53QLGJ5cD0APLvcpYy7rMQR6KPGmTUyV-3U737yBjy3vNxI6iAw0hobMjJQPBGMVW9yN2kRMPPfFASSelQNuQAAMBKNe5vRCfLwvIOL0:1qxOWY:RvBPn7xUjF6TxLYrpoyNZi8A7HGw2LtFpojvL7UfsaE	2023-11-13 09:25:30.050618+00
f5trel4cia0e31678m6p0yqpzjjvinkw	.eJxVjDsOwyAQBe9CHSEW8IeU6X0GtLBLcBKBZOwqyt1jSy6S9s3MewuP25r91njxM4mrAHH53QLGJ5cD0APLvcpYy7rMQR6KPGmTUyV-3U737yBjy3vNxI6iAw0hobMjJQPBGMVW9yN2kRMPPfFASSelQNuQAAMBKNe5vRCfLwvIOL0:1siUyD:4YU3cmVrCQW9G7Imki1FRqdItHgJ2969U8hg6E0mb4g	2024-09-09 08:21:01.03195+00
fpln36zhnuxcrlq8lik4dz8y39h1z22a	.eJxVjDsOwyAQBe9CHSEW8IeU6X0GtLBLcBKBZOwqyt1jSy6S9s3MewuP25r91njxM4mrAHH53QLGJ5cD0APLvcpYy7rMQR6KPGmTUyV-3U737yBjy3vNxI6iAw0hobMjJQPBGMVW9yN2kRMPPfFASSelQNuQAAMBKNe5vRCfLwvIOL0:1sy8rZ:_1aX56inBccOgMicr5yQNic383pk812eQJYi2HXx-E8	2024-10-22 11:58:49.71227+00
\.


--
-- Data for Name: django_site; Type: TABLE DATA; Schema: public; Owner: hjecwirx
--

COPY public.django_site (id, domain, name) FROM stdin;
1	example.com	example.com
\.


--
-- Data for Name: profiles_profile; Type: TABLE DATA; Schema: public; Owner: hjecwirx
--

COPY public.profiles_profile (id, created_at, updated_at, name, content, image, owner_id) FROM stdin;
6	2023-09-20 16:35:43.07523+00	2023-09-20 16:35:43.075248+00			../default_profile_ht7rq2	6
5	2023-09-16 09:09:07.169232+00	2023-09-21 20:23:37.449822+00			media/images/bass-guitar_btpqju	5
3	2023-09-03 15:50:19.155094+00	2023-09-21 20:24:14.580829+00			media/images/drumsticks_np7l1y	3
4	2023-09-15 17:50:38.543143+00	2023-09-21 20:24:40.196623+00			media/images/mic_ii3m0v	4
8	2023-09-25 16:59:12.587304+00	2023-09-25 17:02:15.802469+00			media/images/IMG_4218_djvjbl	8
2	2023-08-05 12:12:06.297411+00	2023-09-28 11:00:29.492819+00			media/images/dark-night-strat_khkuwh	2
9	2023-09-28 21:11:11.527935+00	2023-09-28 21:11:11.527953+00			../default_profile_ht7rq2	9
1	2023-07-27 16:37:05.200934+00	2023-09-28 23:29:05.961885+00			media/images/phantompwr_njyfg0	1
10	2023-10-20 11:53:40.82307+00	2023-10-20 11:54:02.928456+00		test profile	media/images/pooh_rpdgqx	10
11	2023-10-23 00:34:25.179382+00	2023-10-23 00:34:25.179398+00			../default_profile_ht7rq2	11
\.


--
-- Data for Name: socialaccount_socialaccount; Type: TABLE DATA; Schema: public; Owner: hjecwirx
--

COPY public.socialaccount_socialaccount (id, provider, uid, last_login, date_joined, extra_data, user_id) FROM stdin;
\.


--
-- Data for Name: socialaccount_socialapp; Type: TABLE DATA; Schema: public; Owner: hjecwirx
--

COPY public.socialaccount_socialapp (id, provider, name, client_id, secret, key) FROM stdin;
\.


--
-- Data for Name: socialaccount_socialapp_sites; Type: TABLE DATA; Schema: public; Owner: hjecwirx
--

COPY public.socialaccount_socialapp_sites (id, socialapp_id, site_id) FROM stdin;
\.


--
-- Data for Name: socialaccount_socialtoken; Type: TABLE DATA; Schema: public; Owner: hjecwirx
--

COPY public.socialaccount_socialtoken (id, token, token_secret, expires_at, account_id, app_id) FROM stdin;
\.


--
-- Data for Name: tasks_task; Type: TABLE DATA; Schema: public; Owner: hjecwirx
--

COPY public.tasks_task (id, created_date, due_date, updated_date, completed_date, title, description, image, priority, task_status, category_id, owner_id, assigned_to_id) FROM stdin;
4	2023-08-13 16:42:51.511499+00	2023-08-13	2023-08-13 16:43:27.710965+00	2023-08-13 16:43:27.710742+00:00	Test Task Create	Test task create form	../default_post_bge1xm	PRIORITY1	COMPLETED	1	1	2
10	2023-08-21 08:59:15.692245+00	2023-08-21	2023-08-21 08:59:15.692269+00		Test Date Formats	Check date formats after modifying serializers.py	../default_post_bge1xm	PRIORITY1	INPROGRESS	3	1	1
9	2023-08-21 08:39:49.216576+00	2023-08-21	2023-08-21 09:00:00.643231+00	2023-08-21 09:00:00.643086+00:00	Test Completed Date	Test setting date to completed	../default_post_bge1xm	PRIORITY1	COMPLETED	3	1	1
7	2023-08-20 14:00:47.021809+00	2023-08-20	2023-08-20 16:50:09.638261+00	2023-08-20 16:50:09.638113+00:00	Test Show Completed Date	Test showing the completed date when status: Completed is selected.	../default_post_bge1xm	PRIORITY1	COMPLETED	3	2	2
8	2023-08-20 16:52:35.885056+00	2023-08-20	2023-08-20 16:54:21.819891+00	2023-08-20 16:54:21.819745+00:00	Test Add Task	Test adding task after amending completed date/StatusUpdateForm conditional display.	../default_post_bge1xm	PRIORITY1	COMPLETED	3	2	1
6	2023-08-16 18:39:32.873789+00	2023-08-20	2023-08-20 12:17:50.756046+00	2023-08-20 12:17:50.755899+00:00	Test Cat	Test Category Select on task create	../default_post_bge1xm	PRIORITY1	COMPLETED	3	1	2
18	2023-09-02 12:48:44.497801+00	2023-08-30	2023-09-02 12:48:44.49782+00		Test Task Overdue	Due date in past - test correct status badge display	../default_post_bge1xm	PRIORITY1	INPROGRESS	3	1	2
17	2023-09-02 12:47:22.582438+00	2023-09-30	2023-09-02 16:04:07.342329+00		Test Due Date In Future	Test correct status badge display	../default_post_bge1xm	PRIORITY1	INPROGRESS	3	1	2
16	2023-09-02 11:47:07.135655+00	2023-09-02	2023-09-04 16:55:30.888295+00	2023-09-04 16:55:30.888146+00:00	Test Due Today	Test status badge display.	../default_post_bge1xm	PRIORITY1	COMPLETED	3	1	2
13	2023-08-23 08:49:40.376544+00	2023-08-06	2023-08-24 17:19:29.957549+00	2023-08-24 17:19:29.957314+00:00	Test Due Date In Past	Test behaviour if setting due date in the past	../default_post_bge1xm	PRIORITY1	COMPLETED	3	1	1
1	2023-07-31 18:22:34.359043+00	2023-08-20	2023-08-24 17:22:26.985723+00	2023-08-24 17:22:26.985477+00:00	First Task on ElephantSQL	checking	../default_post_bge1xm	PRIORITY1	COMPLETED	2	1	2
3	2023-08-09 17:40:54.519702+00	2023-08-21	2023-08-24 17:24:51.175266+00	2023-08-24 17:24:51.174794+00:00	Brian's Task	Task created by Brian.	../default_post_bge1xm	PRIORITY1	COMPLETED	3	2	1
2	2023-08-06 11:28:56.995543+00	2023-08-12	2023-08-24 17:26:56.128962+00	\N	Task 2	Test create task GitPod	../default_post_bge1xm	PRIORITY2	TODO	3	1	2
14	2023-08-24 17:28:27.519866+00	2023-08-25	2023-08-24 17:28:27.519889+00		Task Category Test	Test Category on task create	../default_post_bge1xm	PRIORITY1	INPROGRESS	3	1	2
12	2023-08-23 08:46:53.530853+00	2023-08-25	2023-08-26 16:21:50.33375+00	2023-08-26 16:21:50.333470+00:00	Test Completed Date	Completed date reverts to 01 Jan 1970	../default_post_bge1xm	PRIORITY1	COMPLETED	8	1	1
20	2023-09-14 09:22:01.084539+00	2023-09-14	2023-09-14 09:25:13.018682+00	2023-09-14 09:25:13.018483+00:00	Testing pagination	Testing paginagtion - page 3	../default_post_bge1xm	PRIORITY1	COMPLETED	1	1	1
15	2023-08-26 16:23:13.705743+00	2023-08-27	2023-08-26 16:29:00.679857+00	2023-08-26 16:29:00.679716+00:00	Test Category Name Filter	Test searching & filtering category by name.	media/images/Screenshot_2023-08-26_at_17.28.20_kdjw3u	PRIORITY1	COMPLETED	3	1	1
32	2023-09-26 22:51:01.301719+00	2023-09-27	2023-09-27 06:48:45.734191+00	2023-09-27 06:48:45.734005+00:00	Comments Icon	Add comments icon to home page glossary	media/images/IMG_4288_x6ow21	PRIORITY1	COMPLETED	2	2	1
11	2023-08-21 09:10:53.860829+00	2023-09-02	2023-09-02 11:46:08.567546+00	2023-09-02 11:46:08.567385+00:00	Test Due Date	Test selected due date saved correctly	../default_post_bge1xm	PRIORITY1	COMPLETED	3	1	1
34	2023-09-28 10:34:28.687042+00	2024-10-08	2024-10-08 12:04:13.704942+00		task create toast	task create toast	../default_post_bge1xm	PRIORITY1	INPROGRESS	3	1	4
27	2023-09-21 18:12:18.669954+00	2023-09-22	2023-09-24 13:12:41.587111+00		Brian's Second Task	Second task Brian owns.	../default_post_bge1xm	PRIORITY2	INPROGRESS	3	2	3
23	2023-09-15 17:53:12.638301+00	2023-09-15	2023-09-16 09:11:49.699393+00		Mic Battery Flat	Replace battery asap	../default_post_bge1xm	PRIORITY1	INPROGRESS	2	1	4
22	2023-09-14 09:23:32.439833+00	2023-09-14	2023-09-17 13:16:45.028603+00	2023-09-17 13:16:45.027782+00:00	Testing pagination 3	Testing pagination - page 3	../default_post_bge1xm	PRIORITY1	COMPLETED	1	1	1
21	2023-09-14 09:22:56.911711+00	2023-09-14	2023-09-17 13:18:08.318118+00	2023-09-17 13:18:08.317953+00:00	Testing pagination 2	Testing pagination - page 3	../default_post_bge1xm	PRIORITY1	COMPLETED	1	1	1
19	2023-09-11 08:17:00.155846+00	2023-09-12	2023-09-11 17:30:51.132327+00	2023-09-11 17:30:51.132153+00:00	Test Status Update Form	jhgfds	../default_post_bge1xm	PRIORITY1	COMPLETED	3	1	3
25	2023-09-21 08:21:16.850309+00	2023-09-21	2023-09-21 08:21:16.85033+00		John's Created Task	John's created dashboard task	../default_post_bge1xm	PRIORITY1	TODO	3	5	2
24	2023-09-21 07:44:57.508609+00	2023-09-21	2023-09-25 10:41:25.71797+00	2023-09-25 10:41:25.717818+00:00	John's assigned task	Test John's assigned dashboard task.	../default_post_bge1xm	PRIORITY1	COMPLETED	3	1	5
26	2023-09-21 08:57:19.253842+00	2023-09-22	2023-09-24 13:56:34.101869+00	2023-09-24 13:55:58.041632+00:00	Brian's Created Dashboard Task	Testing created task display on dashboard.	../default_post_bge1xm	PRIORITY1	INPROGRESS	3	2	4
28	2023-09-24 13:54:41.624129+00	2023-09-24	2023-09-25 07:04:37.049938+00	2023-09-25 07:04:37.049788+00:00	Test Due Date Today	Testing after code clean-up.	../default_post_bge1xm	PRIORITY1	COMPLETED	1	2	1
31	2023-09-26 22:42:46.57112+00	2023-09-27	2023-09-27 21:07:54.987421+00	2023-09-27 21:07:54.987259+00:00	Mobile test	Creating task on mobile	media/images/IMG_4287_ssg5en	PRIORITY2	COMPLETED	3	1	2
33	2023-09-28 09:51:41.090639+00	2023-09-27	2023-09-28 20:17:20.945125+00		Test Toast - Toast Position Again	Test success toast message	../default_post_bge1xm	PRIORITY1	INPROGRESS	3	1	2
37	2023-10-20 12:02:47.297144+00	2023-10-21	2023-10-20 12:04:42.331389+00	2023-10-20 12:04:42.331210+00:00	ds edited again	sd	media/images/pooh_ldeejc	PRIORITY2	COMPLETED	3	10	10
38	2023-10-23 00:35:08.524894+00	2023-10-20	2023-10-23 00:35:30.731911+00	2023-10-23 00:35:30.731765+00:00	test	test	media/images/default_post_nasy22	PRIORITY1	COMPLETED	3	11	4
35	2023-09-28 20:02:16.33537+00	2023-09-29	2024-08-26 08:22:56.267298+00	2024-08-26 08:22:56.267128+00:00	task create test - edited	check functionality after code clean-up	../default_post_bge1xm	PRIORITY2	COMPLETED	2	1	5
\.


--
-- Name: account_emailaddress_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hjecwirx
--

SELECT pg_catalog.setval('public.account_emailaddress_id_seq', 1, false);


--
-- Name: account_emailconfirmation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hjecwirx
--

SELECT pg_catalog.setval('public.account_emailconfirmation_id_seq', 1, false);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hjecwirx
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hjecwirx
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hjecwirx
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 76, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hjecwirx
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hjecwirx
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 11, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hjecwirx
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: categories_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hjecwirx
--

SELECT pg_catalog.setval('public.categories_category_id_seq', 23, true);


--
-- Name: categories_category_related_tasks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hjecwirx
--

SELECT pg_catalog.setval('public.categories_category_related_tasks_id_seq', 1, true);


--
-- Name: comments_comment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hjecwirx
--

SELECT pg_catalog.setval('public.comments_comment_id_seq', 21, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hjecwirx
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 16, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hjecwirx
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 19, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hjecwirx
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 140, true);


--
-- Name: django_site_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hjecwirx
--

SELECT pg_catalog.setval('public.django_site_id_seq', 1, true);


--
-- Name: profiles_profile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hjecwirx
--

SELECT pg_catalog.setval('public.profiles_profile_id_seq', 11, true);


--
-- Name: socialaccount_socialaccount_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hjecwirx
--

SELECT pg_catalog.setval('public.socialaccount_socialaccount_id_seq', 1, false);


--
-- Name: socialaccount_socialapp_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hjecwirx
--

SELECT pg_catalog.setval('public.socialaccount_socialapp_id_seq', 1, false);


--
-- Name: socialaccount_socialapp_sites_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hjecwirx
--

SELECT pg_catalog.setval('public.socialaccount_socialapp_sites_id_seq', 1, false);


--
-- Name: socialaccount_socialtoken_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hjecwirx
--

SELECT pg_catalog.setval('public.socialaccount_socialtoken_id_seq', 1, false);


--
-- Name: tasks_task_id_seq; Type: SEQUENCE SET; Schema: public; Owner: hjecwirx
--

SELECT pg_catalog.setval('public.tasks_task_id_seq', 38, true);


--
-- Name: account_emailaddress account_emailaddress_email_key; Type: CONSTRAINT; Schema: public; Owner: hjecwirx
--

ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_email_key UNIQUE (email);


--
-- Name: account_emailaddress account_emailaddress_pkey; Type: CONSTRAINT; Schema: public; Owner: hjecwirx
--

ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_pkey PRIMARY KEY (id);


--
-- Name: account_emailconfirmation account_emailconfirmation_key_key; Type: CONSTRAINT; Schema: public; Owner: hjecwirx
--

ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirmation_key_key UNIQUE (key);


--
-- Name: account_emailconfirmation account_emailconfirmation_pkey; Type: CONSTRAINT; Schema: public; Owner: hjecwirx
--

ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirmation_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: hjecwirx
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: hjecwirx
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: hjecwirx
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: hjecwirx
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: hjecwirx
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: hjecwirx
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: hjecwirx
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: hjecwirx
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: hjecwirx
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: hjecwirx
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: hjecwirx
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: hjecwirx
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: authtoken_token authtoken_token_pkey; Type: CONSTRAINT; Schema: public; Owner: hjecwirx
--

ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_pkey PRIMARY KEY (key);


--
-- Name: authtoken_token authtoken_token_user_id_key; Type: CONSTRAINT; Schema: public; Owner: hjecwirx
--

ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_key UNIQUE (user_id);


--
-- Name: categories_category categories_category_pkey; Type: CONSTRAINT; Schema: public; Owner: hjecwirx
--

ALTER TABLE ONLY public.categories_category
    ADD CONSTRAINT categories_category_pkey PRIMARY KEY (id);


--
-- Name: categories_category_related_tasks categories_category_rela_category_id_task_id_fbd886d2_uniq; Type: CONSTRAINT; Schema: public; Owner: hjecwirx
--

ALTER TABLE ONLY public.categories_category_related_tasks
    ADD CONSTRAINT categories_category_rela_category_id_task_id_fbd886d2_uniq UNIQUE (category_id, task_id);


--
-- Name: categories_category_related_tasks categories_category_related_tasks_pkey; Type: CONSTRAINT; Schema: public; Owner: hjecwirx
--

ALTER TABLE ONLY public.categories_category_related_tasks
    ADD CONSTRAINT categories_category_related_tasks_pkey PRIMARY KEY (id);


--
-- Name: comments_comment comments_comment_pkey; Type: CONSTRAINT; Schema: public; Owner: hjecwirx
--

ALTER TABLE ONLY public.comments_comment
    ADD CONSTRAINT comments_comment_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: hjecwirx
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: hjecwirx
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: hjecwirx
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: hjecwirx
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: hjecwirx
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: django_site django_site_domain_a2e37b91_uniq; Type: CONSTRAINT; Schema: public; Owner: hjecwirx
--

ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_domain_a2e37b91_uniq UNIQUE (domain);


--
-- Name: django_site django_site_pkey; Type: CONSTRAINT; Schema: public; Owner: hjecwirx
--

ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_pkey PRIMARY KEY (id);


--
-- Name: profiles_profile profiles_profile_owner_id_key; Type: CONSTRAINT; Schema: public; Owner: hjecwirx
--

ALTER TABLE ONLY public.profiles_profile
    ADD CONSTRAINT profiles_profile_owner_id_key UNIQUE (owner_id);


--
-- Name: profiles_profile profiles_profile_pkey; Type: CONSTRAINT; Schema: public; Owner: hjecwirx
--

ALTER TABLE ONLY public.profiles_profile
    ADD CONSTRAINT profiles_profile_pkey PRIMARY KEY (id);


--
-- Name: socialaccount_socialaccount socialaccount_socialaccount_pkey; Type: CONSTRAINT; Schema: public; Owner: hjecwirx
--

ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_pkey PRIMARY KEY (id);


--
-- Name: socialaccount_socialaccount socialaccount_socialaccount_provider_uid_fc810c6e_uniq; Type: CONSTRAINT; Schema: public; Owner: hjecwirx
--

ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_provider_uid_fc810c6e_uniq UNIQUE (provider, uid);


--
-- Name: socialaccount_socialapp_sites socialaccount_socialapp__socialapp_id_site_id_71a9a768_uniq; Type: CONSTRAINT; Schema: public; Owner: hjecwirx
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_socialapp__socialapp_id_site_id_71a9a768_uniq UNIQUE (socialapp_id, site_id);


--
-- Name: socialaccount_socialapp socialaccount_socialapp_pkey; Type: CONSTRAINT; Schema: public; Owner: hjecwirx
--

ALTER TABLE ONLY public.socialaccount_socialapp
    ADD CONSTRAINT socialaccount_socialapp_pkey PRIMARY KEY (id);


--
-- Name: socialaccount_socialapp_sites socialaccount_socialapp_sites_pkey; Type: CONSTRAINT; Schema: public; Owner: hjecwirx
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_socialapp_sites_pkey PRIMARY KEY (id);


--
-- Name: socialaccount_socialtoken socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq; Type: CONSTRAINT; Schema: public; Owner: hjecwirx
--

ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq UNIQUE (app_id, account_id);


--
-- Name: socialaccount_socialtoken socialaccount_socialtoken_pkey; Type: CONSTRAINT; Schema: public; Owner: hjecwirx
--

ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_socialtoken_pkey PRIMARY KEY (id);


--
-- Name: tasks_task tasks_task_pkey; Type: CONSTRAINT; Schema: public; Owner: hjecwirx
--

ALTER TABLE ONLY public.tasks_task
    ADD CONSTRAINT tasks_task_pkey PRIMARY KEY (id);


--
-- Name: account_emailaddress_email_03be32b2_like; Type: INDEX; Schema: public; Owner: hjecwirx
--

CREATE INDEX account_emailaddress_email_03be32b2_like ON public.account_emailaddress USING btree (email varchar_pattern_ops);


--
-- Name: account_emailaddress_user_id_2c513194; Type: INDEX; Schema: public; Owner: hjecwirx
--

CREATE INDEX account_emailaddress_user_id_2c513194 ON public.account_emailaddress USING btree (user_id);


--
-- Name: account_emailconfirmation_email_address_id_5b7f8c58; Type: INDEX; Schema: public; Owner: hjecwirx
--

CREATE INDEX account_emailconfirmation_email_address_id_5b7f8c58 ON public.account_emailconfirmation USING btree (email_address_id);


--
-- Name: account_emailconfirmation_key_f43612bd_like; Type: INDEX; Schema: public; Owner: hjecwirx
--

CREATE INDEX account_emailconfirmation_key_f43612bd_like ON public.account_emailconfirmation USING btree (key varchar_pattern_ops);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: hjecwirx
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: hjecwirx
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: hjecwirx
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: hjecwirx
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: hjecwirx
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: hjecwirx
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: hjecwirx
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: hjecwirx
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: hjecwirx
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: authtoken_token_key_10f0b77e_like; Type: INDEX; Schema: public; Owner: hjecwirx
--

CREATE INDEX authtoken_token_key_10f0b77e_like ON public.authtoken_token USING btree (key varchar_pattern_ops);


--
-- Name: categories_category_related_tasks_category_id_3d51f196; Type: INDEX; Schema: public; Owner: hjecwirx
--

CREATE INDEX categories_category_related_tasks_category_id_3d51f196 ON public.categories_category_related_tasks USING btree (category_id);


--
-- Name: categories_category_related_tasks_task_id_5d195097; Type: INDEX; Schema: public; Owner: hjecwirx
--

CREATE INDEX categories_category_related_tasks_task_id_5d195097 ON public.categories_category_related_tasks USING btree (task_id);


--
-- Name: comments_comment_owner_id_26de7a7f; Type: INDEX; Schema: public; Owner: hjecwirx
--

CREATE INDEX comments_comment_owner_id_26de7a7f ON public.comments_comment USING btree (owner_id);


--
-- Name: comments_comment_task_id_63978290; Type: INDEX; Schema: public; Owner: hjecwirx
--

CREATE INDEX comments_comment_task_id_63978290 ON public.comments_comment USING btree (task_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: hjecwirx
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: hjecwirx
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: hjecwirx
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: hjecwirx
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: django_site_domain_a2e37b91_like; Type: INDEX; Schema: public; Owner: hjecwirx
--

CREATE INDEX django_site_domain_a2e37b91_like ON public.django_site USING btree (domain varchar_pattern_ops);


--
-- Name: socialaccount_socialaccount_user_id_8146e70c; Type: INDEX; Schema: public; Owner: hjecwirx
--

CREATE INDEX socialaccount_socialaccount_user_id_8146e70c ON public.socialaccount_socialaccount USING btree (user_id);


--
-- Name: socialaccount_socialapp_sites_site_id_2579dee5; Type: INDEX; Schema: public; Owner: hjecwirx
--

CREATE INDEX socialaccount_socialapp_sites_site_id_2579dee5 ON public.socialaccount_socialapp_sites USING btree (site_id);


--
-- Name: socialaccount_socialapp_sites_socialapp_id_97fb6e7d; Type: INDEX; Schema: public; Owner: hjecwirx
--

CREATE INDEX socialaccount_socialapp_sites_socialapp_id_97fb6e7d ON public.socialaccount_socialapp_sites USING btree (socialapp_id);


--
-- Name: socialaccount_socialtoken_account_id_951f210e; Type: INDEX; Schema: public; Owner: hjecwirx
--

CREATE INDEX socialaccount_socialtoken_account_id_951f210e ON public.socialaccount_socialtoken USING btree (account_id);


--
-- Name: socialaccount_socialtoken_app_id_636a42d7; Type: INDEX; Schema: public; Owner: hjecwirx
--

CREATE INDEX socialaccount_socialtoken_app_id_636a42d7 ON public.socialaccount_socialtoken USING btree (app_id);


--
-- Name: tasks_task_assigned_to_id_e8821f61; Type: INDEX; Schema: public; Owner: hjecwirx
--

CREATE INDEX tasks_task_assigned_to_id_e8821f61 ON public.tasks_task USING btree (assigned_to_id);


--
-- Name: tasks_task_category_id_ec02979a; Type: INDEX; Schema: public; Owner: hjecwirx
--

CREATE INDEX tasks_task_category_id_ec02979a ON public.tasks_task USING btree (category_id);


--
-- Name: tasks_task_owner_id_db3dcc3e; Type: INDEX; Schema: public; Owner: hjecwirx
--

CREATE INDEX tasks_task_owner_id_db3dcc3e ON public.tasks_task USING btree (owner_id);


--
-- Name: account_emailaddress account_emailaddress_user_id_2c513194_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: hjecwirx
--

ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_user_id_2c513194_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: account_emailconfirmation account_emailconfirmation_email_address_id_5b7f8c58_fk; Type: FK CONSTRAINT; Schema: public; Owner: hjecwirx
--

ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirmation_email_address_id_5b7f8c58_fk FOREIGN KEY (email_address_id) REFERENCES public.account_emailaddress(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: hjecwirx
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: hjecwirx
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: hjecwirx
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: hjecwirx
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: hjecwirx
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: hjecwirx
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: hjecwirx
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: authtoken_token authtoken_token_user_id_35299eff_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: hjecwirx
--

ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_35299eff_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: categories_category_related_tasks categories_category__category_id_3d51f196_fk_categorie; Type: FK CONSTRAINT; Schema: public; Owner: hjecwirx
--

ALTER TABLE ONLY public.categories_category_related_tasks
    ADD CONSTRAINT categories_category__category_id_3d51f196_fk_categorie FOREIGN KEY (category_id) REFERENCES public.categories_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: categories_category_related_tasks categories_category__task_id_5d195097_fk_tasks_tas; Type: FK CONSTRAINT; Schema: public; Owner: hjecwirx
--

ALTER TABLE ONLY public.categories_category_related_tasks
    ADD CONSTRAINT categories_category__task_id_5d195097_fk_tasks_tas FOREIGN KEY (task_id) REFERENCES public.tasks_task(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: comments_comment comments_comment_owner_id_26de7a7f_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: hjecwirx
--

ALTER TABLE ONLY public.comments_comment
    ADD CONSTRAINT comments_comment_owner_id_26de7a7f_fk_auth_user_id FOREIGN KEY (owner_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: comments_comment comments_comment_task_id_63978290_fk_tasks_task_id; Type: FK CONSTRAINT; Schema: public; Owner: hjecwirx
--

ALTER TABLE ONLY public.comments_comment
    ADD CONSTRAINT comments_comment_task_id_63978290_fk_tasks_task_id FOREIGN KEY (task_id) REFERENCES public.tasks_task(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: hjecwirx
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: hjecwirx
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: profiles_profile profiles_profile_owner_id_91c6cc2a_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: hjecwirx
--

ALTER TABLE ONLY public.profiles_profile
    ADD CONSTRAINT profiles_profile_owner_id_91c6cc2a_fk_auth_user_id FOREIGN KEY (owner_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialapp_sites socialaccount_social_site_id_2579dee5_fk_django_si; Type: FK CONSTRAINT; Schema: public; Owner: hjecwirx
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_social_site_id_2579dee5_fk_django_si FOREIGN KEY (site_id) REFERENCES public.django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialaccount socialaccount_socialaccount_user_id_8146e70c_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: hjecwirx
--

ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_user_id_8146e70c_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialtoken socialaccount_socialtoken_account_id_951f210e_fk; Type: FK CONSTRAINT; Schema: public; Owner: hjecwirx
--

ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_socialtoken_account_id_951f210e_fk FOREIGN KEY (account_id) REFERENCES public.socialaccount_socialaccount(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialtoken socialaccount_socialtoken_app_id_636a42d7_fk; Type: FK CONSTRAINT; Schema: public; Owner: hjecwirx
--

ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_socialtoken_app_id_636a42d7_fk FOREIGN KEY (app_id) REFERENCES public.socialaccount_socialapp(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: tasks_task tasks_task_assigned_to_id_e8821f61_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: hjecwirx
--

ALTER TABLE ONLY public.tasks_task
    ADD CONSTRAINT tasks_task_assigned_to_id_e8821f61_fk_auth_user_id FOREIGN KEY (assigned_to_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: tasks_task tasks_task_category_id_ec02979a_fk_categories_category_id; Type: FK CONSTRAINT; Schema: public; Owner: hjecwirx
--

ALTER TABLE ONLY public.tasks_task
    ADD CONSTRAINT tasks_task_category_id_ec02979a_fk_categories_category_id FOREIGN KEY (category_id) REFERENCES public.categories_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: tasks_task tasks_task_owner_id_db3dcc3e_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: hjecwirx
--

ALTER TABLE ONLY public.tasks_task
    ADD CONSTRAINT tasks_task_owner_id_db3dcc3e_fk_auth_user_id FOREIGN KEY (owner_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

GRANT CREATE ON SCHEMA public TO hjecwirx;


--
-- Name: TABLE pg_stat_statements; Type: ACL; Schema: public; Owner: postgres
--

GRANT INSERT,UPDATE ON TABLE public.pg_stat_statements TO hjecwirx;


--
-- PostgreSQL database dump complete
--

