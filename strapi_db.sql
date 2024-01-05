--
-- PostgreSQL database dump
--

-- Dumped from database version 14.10 (Debian 14.10-1.pgdg120+1)
-- Dumped by pg_dump version 14.10 (Homebrew)

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
-- Name: admin_permissions; Type: TABLE; Schema: public; Owner: strapi_worker
--

CREATE TABLE public.admin_permissions (
    id integer NOT NULL,
    action character varying(255),
    action_parameters jsonb,
    subject character varying(255),
    properties jsonb,
    conditions jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.admin_permissions OWNER TO strapi_worker;

--
-- Name: admin_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_worker
--

CREATE SEQUENCE public.admin_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_permissions_id_seq OWNER TO strapi_worker;

--
-- Name: admin_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_worker
--

ALTER SEQUENCE public.admin_permissions_id_seq OWNED BY public.admin_permissions.id;


--
-- Name: admin_permissions_role_links; Type: TABLE; Schema: public; Owner: strapi_worker
--

CREATE TABLE public.admin_permissions_role_links (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_order double precision
);


ALTER TABLE public.admin_permissions_role_links OWNER TO strapi_worker;

--
-- Name: admin_permissions_role_links_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_worker
--

CREATE SEQUENCE public.admin_permissions_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_permissions_role_links_id_seq OWNER TO strapi_worker;

--
-- Name: admin_permissions_role_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_worker
--

ALTER SEQUENCE public.admin_permissions_role_links_id_seq OWNED BY public.admin_permissions_role_links.id;


--
-- Name: admin_roles; Type: TABLE; Schema: public; Owner: strapi_worker
--

CREATE TABLE public.admin_roles (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    description character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.admin_roles OWNER TO strapi_worker;

--
-- Name: admin_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_worker
--

CREATE SEQUENCE public.admin_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_roles_id_seq OWNER TO strapi_worker;

--
-- Name: admin_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_worker
--

ALTER SEQUENCE public.admin_roles_id_seq OWNED BY public.admin_roles.id;


--
-- Name: admin_users; Type: TABLE; Schema: public; Owner: strapi_worker
--

CREATE TABLE public.admin_users (
    id integer NOT NULL,
    firstname character varying(255),
    lastname character varying(255),
    username character varying(255),
    email character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    registration_token character varying(255),
    is_active boolean,
    blocked boolean,
    prefered_language character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.admin_users OWNER TO strapi_worker;

--
-- Name: admin_users_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_worker
--

CREATE SEQUENCE public.admin_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_users_id_seq OWNER TO strapi_worker;

--
-- Name: admin_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_worker
--

ALTER SEQUENCE public.admin_users_id_seq OWNED BY public.admin_users.id;


--
-- Name: admin_users_roles_links; Type: TABLE; Schema: public; Owner: strapi_worker
--

CREATE TABLE public.admin_users_roles_links (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    role_order double precision,
    user_order double precision
);


ALTER TABLE public.admin_users_roles_links OWNER TO strapi_worker;

--
-- Name: admin_users_roles_links_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_worker
--

CREATE SEQUENCE public.admin_users_roles_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_users_roles_links_id_seq OWNER TO strapi_worker;

--
-- Name: admin_users_roles_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_worker
--

ALTER SEQUENCE public.admin_users_roles_links_id_seq OWNED BY public.admin_users_roles_links.id;


--
-- Name: analyses; Type: TABLE; Schema: public; Owner: strapi_worker
--

CREATE TABLE public.analyses (
    id integer NOT NULL,
    heading character varying(255),
    content text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    form_title character varying(255)
);


ALTER TABLE public.analyses OWNER TO strapi_worker;

--
-- Name: analyses_components; Type: TABLE; Schema: public; Owner: strapi_worker
--

CREATE TABLE public.analyses_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.analyses_components OWNER TO strapi_worker;

--
-- Name: analyses_components_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_worker
--

CREATE SEQUENCE public.analyses_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.analyses_components_id_seq OWNER TO strapi_worker;

--
-- Name: analyses_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_worker
--

ALTER SEQUENCE public.analyses_components_id_seq OWNED BY public.analyses_components.id;


--
-- Name: analyses_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_worker
--

CREATE SEQUENCE public.analyses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.analyses_id_seq OWNER TO strapi_worker;

--
-- Name: analyses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_worker
--

ALTER SEQUENCE public.analyses_id_seq OWNED BY public.analyses.id;


--
-- Name: components_analysis_empties; Type: TABLE; Schema: public; Owner: strapi_worker
--

CREATE TABLE public.components_analysis_empties (
    id integer NOT NULL,
    heading character varying(255),
    content text
);


ALTER TABLE public.components_analysis_empties OWNER TO strapi_worker;

--
-- Name: components_analysis_empties_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_worker
--

CREATE SEQUENCE public.components_analysis_empties_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_analysis_empties_id_seq OWNER TO strapi_worker;

--
-- Name: components_analysis_empties_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_worker
--

ALTER SEQUENCE public.components_analysis_empties_id_seq OWNED BY public.components_analysis_empties.id;


--
-- Name: components_contact_contacts; Type: TABLE; Schema: public; Owner: strapi_worker
--

CREATE TABLE public.components_contact_contacts (
    id integer NOT NULL
);


ALTER TABLE public.components_contact_contacts OWNER TO strapi_worker;

--
-- Name: components_contact_contacts_components; Type: TABLE; Schema: public; Owner: strapi_worker
--

CREATE TABLE public.components_contact_contacts_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_contact_contacts_components OWNER TO strapi_worker;

--
-- Name: components_contact_contacts_components_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_worker
--

CREATE SEQUENCE public.components_contact_contacts_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_contact_contacts_components_id_seq OWNER TO strapi_worker;

--
-- Name: components_contact_contacts_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_worker
--

ALTER SEQUENCE public.components_contact_contacts_components_id_seq OWNED BY public.components_contact_contacts_components.id;


--
-- Name: components_contact_contacts_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_worker
--

CREATE SEQUENCE public.components_contact_contacts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_contact_contacts_id_seq OWNER TO strapi_worker;

--
-- Name: components_contact_contacts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_worker
--

ALTER SEQUENCE public.components_contact_contacts_id_seq OWNED BY public.components_contact_contacts.id;


--
-- Name: components_contact_items; Type: TABLE; Schema: public; Owner: strapi_worker
--

CREATE TABLE public.components_contact_items (
    id integer NOT NULL,
    label character varying(255),
    placeholder character varying(255),
    name character varying(255),
    error character varying(255),
    type character varying(255),
    required boolean
);


ALTER TABLE public.components_contact_items OWNER TO strapi_worker;

--
-- Name: components_contact_items_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_worker
--

CREATE SEQUENCE public.components_contact_items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_contact_items_id_seq OWNER TO strapi_worker;

--
-- Name: components_contact_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_worker
--

ALTER SEQUENCE public.components_contact_items_id_seq OWNED BY public.components_contact_items.id;


--
-- Name: components_faq_faq_items; Type: TABLE; Schema: public; Owner: strapi_worker
--

CREATE TABLE public.components_faq_faq_items (
    id integer NOT NULL,
    heading character varying(255),
    content text
);


ALTER TABLE public.components_faq_faq_items OWNER TO strapi_worker;

--
-- Name: components_faq_faq_items_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_worker
--

CREATE SEQUENCE public.components_faq_faq_items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_faq_faq_items_id_seq OWNER TO strapi_worker;

--
-- Name: components_faq_faq_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_worker
--

ALTER SEQUENCE public.components_faq_faq_items_id_seq OWNED BY public.components_faq_faq_items.id;


--
-- Name: components_faq_faqs; Type: TABLE; Schema: public; Owner: strapi_worker
--

CREATE TABLE public.components_faq_faqs (
    id integer NOT NULL
);


ALTER TABLE public.components_faq_faqs OWNER TO strapi_worker;

--
-- Name: components_faq_faqs_components; Type: TABLE; Schema: public; Owner: strapi_worker
--

CREATE TABLE public.components_faq_faqs_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_faq_faqs_components OWNER TO strapi_worker;

--
-- Name: components_faq_faqs_components_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_worker
--

CREATE SEQUENCE public.components_faq_faqs_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_faq_faqs_components_id_seq OWNER TO strapi_worker;

--
-- Name: components_faq_faqs_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_worker
--

ALTER SEQUENCE public.components_faq_faqs_components_id_seq OWNED BY public.components_faq_faqs_components.id;


--
-- Name: components_faq_faqs_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_worker
--

CREATE SEQUENCE public.components_faq_faqs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_faq_faqs_id_seq OWNER TO strapi_worker;

--
-- Name: components_faq_faqs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_worker
--

ALTER SEQUENCE public.components_faq_faqs_id_seq OWNED BY public.components_faq_faqs.id;


--
-- Name: components_get_started_get_starteds; Type: TABLE; Schema: public; Owner: strapi_worker
--

CREATE TABLE public.components_get_started_get_starteds (
    id integer NOT NULL,
    heading character varying(255)
);


ALTER TABLE public.components_get_started_get_starteds OWNER TO strapi_worker;

--
-- Name: components_get_started_get_starteds_components; Type: TABLE; Schema: public; Owner: strapi_worker
--

CREATE TABLE public.components_get_started_get_starteds_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_get_started_get_starteds_components OWNER TO strapi_worker;

--
-- Name: components_get_started_get_starteds_components_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_worker
--

CREATE SEQUENCE public.components_get_started_get_starteds_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_get_started_get_starteds_components_id_seq OWNER TO strapi_worker;

--
-- Name: components_get_started_get_starteds_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_worker
--

ALTER SEQUENCE public.components_get_started_get_starteds_components_id_seq OWNED BY public.components_get_started_get_starteds_components.id;


--
-- Name: components_get_started_get_starteds_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_worker
--

CREATE SEQUENCE public.components_get_started_get_starteds_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_get_started_get_starteds_id_seq OWNER TO strapi_worker;

--
-- Name: components_get_started_get_starteds_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_worker
--

ALTER SEQUENCE public.components_get_started_get_starteds_id_seq OWNED BY public.components_get_started_get_starteds.id;


--
-- Name: components_get_started_items; Type: TABLE; Schema: public; Owner: strapi_worker
--

CREATE TABLE public.components_get_started_items (
    id integer NOT NULL,
    heading character varying(255),
    content text
);


ALTER TABLE public.components_get_started_items OWNER TO strapi_worker;

--
-- Name: components_get_started_items_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_worker
--

CREATE SEQUENCE public.components_get_started_items_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_get_started_items_id_seq OWNER TO strapi_worker;

--
-- Name: components_get_started_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_worker
--

ALTER SEQUENCE public.components_get_started_items_id_seq OWNED BY public.components_get_started_items.id;


--
-- Name: components_home_heroes; Type: TABLE; Schema: public; Owner: strapi_worker
--

CREATE TABLE public.components_home_heroes (
    id integer NOT NULL,
    heading character varying(255)
);


ALTER TABLE public.components_home_heroes OWNER TO strapi_worker;

--
-- Name: components_home_heroes_components; Type: TABLE; Schema: public; Owner: strapi_worker
--

CREATE TABLE public.components_home_heroes_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_home_heroes_components OWNER TO strapi_worker;

--
-- Name: components_home_heroes_components_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_worker
--

CREATE SEQUENCE public.components_home_heroes_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_home_heroes_components_id_seq OWNER TO strapi_worker;

--
-- Name: components_home_heroes_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_worker
--

ALTER SEQUENCE public.components_home_heroes_components_id_seq OWNED BY public.components_home_heroes_components.id;


--
-- Name: components_home_heroes_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_worker
--

CREATE SEQUENCE public.components_home_heroes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_home_heroes_id_seq OWNER TO strapi_worker;

--
-- Name: components_home_heroes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_worker
--

ALTER SEQUENCE public.components_home_heroes_id_seq OWNED BY public.components_home_heroes.id;


--
-- Name: components_shared_meta_socials; Type: TABLE; Schema: public; Owner: strapi_worker
--

CREATE TABLE public.components_shared_meta_socials (
    id integer NOT NULL,
    social_network character varying(255),
    title character varying(255),
    description character varying(255)
);


ALTER TABLE public.components_shared_meta_socials OWNER TO strapi_worker;

--
-- Name: components_shared_meta_socials_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_worker
--

CREATE SEQUENCE public.components_shared_meta_socials_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_shared_meta_socials_id_seq OWNER TO strapi_worker;

--
-- Name: components_shared_meta_socials_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_worker
--

ALTER SEQUENCE public.components_shared_meta_socials_id_seq OWNED BY public.components_shared_meta_socials.id;


--
-- Name: components_shared_seos; Type: TABLE; Schema: public; Owner: strapi_worker
--

CREATE TABLE public.components_shared_seos (
    id integer NOT NULL,
    meta_title character varying(255),
    meta_description character varying(255),
    keywords text,
    meta_robots character varying(255),
    structured_data jsonb,
    meta_viewport character varying(255),
    canonical_url character varying(255)
);


ALTER TABLE public.components_shared_seos OWNER TO strapi_worker;

--
-- Name: components_shared_seos_components; Type: TABLE; Schema: public; Owner: strapi_worker
--

CREATE TABLE public.components_shared_seos_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_shared_seos_components OWNER TO strapi_worker;

--
-- Name: components_shared_seos_components_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_worker
--

CREATE SEQUENCE public.components_shared_seos_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_shared_seos_components_id_seq OWNER TO strapi_worker;

--
-- Name: components_shared_seos_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_worker
--

ALTER SEQUENCE public.components_shared_seos_components_id_seq OWNED BY public.components_shared_seos_components.id;


--
-- Name: components_shared_seos_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_worker
--

CREATE SEQUENCE public.components_shared_seos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_shared_seos_id_seq OWNER TO strapi_worker;

--
-- Name: components_shared_seos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_worker
--

ALTER SEQUENCE public.components_shared_seos_id_seq OWNED BY public.components_shared_seos.id;


--
-- Name: components_ui_buttons; Type: TABLE; Schema: public; Owner: strapi_worker
--

CREATE TABLE public.components_ui_buttons (
    id integer NOT NULL,
    label character varying(255),
    href character varying(255),
    class character varying(255),
    target character varying(255)
);


ALTER TABLE public.components_ui_buttons OWNER TO strapi_worker;

--
-- Name: components_ui_buttons_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_worker
--

CREATE SEQUENCE public.components_ui_buttons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_ui_buttons_id_seq OWNER TO strapi_worker;

--
-- Name: components_ui_buttons_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_worker
--

ALTER SEQUENCE public.components_ui_buttons_id_seq OWNED BY public.components_ui_buttons.id;


--
-- Name: components_ui_forms; Type: TABLE; Schema: public; Owner: strapi_worker
--

CREATE TABLE public.components_ui_forms (
    id integer NOT NULL,
    title character varying(255)
);


ALTER TABLE public.components_ui_forms OWNER TO strapi_worker;

--
-- Name: components_ui_forms_components; Type: TABLE; Schema: public; Owner: strapi_worker
--

CREATE TABLE public.components_ui_forms_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.components_ui_forms_components OWNER TO strapi_worker;

--
-- Name: components_ui_forms_components_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_worker
--

CREATE SEQUENCE public.components_ui_forms_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_ui_forms_components_id_seq OWNER TO strapi_worker;

--
-- Name: components_ui_forms_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_worker
--

ALTER SEQUENCE public.components_ui_forms_components_id_seq OWNED BY public.components_ui_forms_components.id;


--
-- Name: components_ui_forms_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_worker
--

CREATE SEQUENCE public.components_ui_forms_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_ui_forms_id_seq OWNER TO strapi_worker;

--
-- Name: components_ui_forms_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_worker
--

ALTER SEQUENCE public.components_ui_forms_id_seq OWNED BY public.components_ui_forms.id;


--
-- Name: components_ui_inputs; Type: TABLE; Schema: public; Owner: strapi_worker
--

CREATE TABLE public.components_ui_inputs (
    id integer NOT NULL,
    placeholder character varying(255),
    error character varying(255),
    type character varying(255),
    name character varying(255),
    required boolean,
    description text,
    tooltip character varying(255),
    tooltip_content text,
    label character varying(255),
    range_min character varying(255),
    range_max character varying(255)
);


ALTER TABLE public.components_ui_inputs OWNER TO strapi_worker;

--
-- Name: components_ui_inputs_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_worker
--

CREATE SEQUENCE public.components_ui_inputs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_ui_inputs_id_seq OWNER TO strapi_worker;

--
-- Name: components_ui_inputs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_worker
--

ALTER SEQUENCE public.components_ui_inputs_id_seq OWNED BY public.components_ui_inputs.id;


--
-- Name: components_ui_texts; Type: TABLE; Schema: public; Owner: strapi_worker
--

CREATE TABLE public.components_ui_texts (
    id integer NOT NULL,
    text character varying(255)
);


ALTER TABLE public.components_ui_texts OWNER TO strapi_worker;

--
-- Name: components_ui_texts_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_worker
--

CREATE SEQUENCE public.components_ui_texts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.components_ui_texts_id_seq OWNER TO strapi_worker;

--
-- Name: components_ui_texts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_worker
--

ALTER SEQUENCE public.components_ui_texts_id_seq OWNED BY public.components_ui_texts.id;


--
-- Name: contacts; Type: TABLE; Schema: public; Owner: strapi_worker
--

CREATE TABLE public.contacts (
    id integer NOT NULL,
    heading character varying(255),
    content text,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.contacts OWNER TO strapi_worker;

--
-- Name: contacts_components; Type: TABLE; Schema: public; Owner: strapi_worker
--

CREATE TABLE public.contacts_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.contacts_components OWNER TO strapi_worker;

--
-- Name: contacts_components_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_worker
--

CREATE SEQUENCE public.contacts_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.contacts_components_id_seq OWNER TO strapi_worker;

--
-- Name: contacts_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_worker
--

ALTER SEQUENCE public.contacts_components_id_seq OWNED BY public.contacts_components.id;


--
-- Name: contacts_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_worker
--

CREATE SEQUENCE public.contacts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.contacts_id_seq OWNER TO strapi_worker;

--
-- Name: contacts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_worker
--

ALTER SEQUENCE public.contacts_id_seq OWNED BY public.contacts.id;


--
-- Name: files; Type: TABLE; Schema: public; Owner: strapi_worker
--

CREATE TABLE public.files (
    id integer NOT NULL,
    name character varying(255),
    alternative_text character varying(255),
    caption character varying(255),
    width integer,
    height integer,
    formats jsonb,
    hash character varying(255),
    ext character varying(255),
    mime character varying(255),
    size numeric(10,2),
    url character varying(255),
    preview_url character varying(255),
    provider character varying(255),
    provider_metadata jsonb,
    folder_path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.files OWNER TO strapi_worker;

--
-- Name: files_folder_links; Type: TABLE; Schema: public; Owner: strapi_worker
--

CREATE TABLE public.files_folder_links (
    id integer NOT NULL,
    file_id integer,
    folder_id integer,
    file_order double precision
);


ALTER TABLE public.files_folder_links OWNER TO strapi_worker;

--
-- Name: files_folder_links_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_worker
--

CREATE SEQUENCE public.files_folder_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.files_folder_links_id_seq OWNER TO strapi_worker;

--
-- Name: files_folder_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_worker
--

ALTER SEQUENCE public.files_folder_links_id_seq OWNED BY public.files_folder_links.id;


--
-- Name: files_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_worker
--

CREATE SEQUENCE public.files_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.files_id_seq OWNER TO strapi_worker;

--
-- Name: files_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_worker
--

ALTER SEQUENCE public.files_id_seq OWNED BY public.files.id;


--
-- Name: files_related_morphs; Type: TABLE; Schema: public; Owner: strapi_worker
--

CREATE TABLE public.files_related_morphs (
    id integer NOT NULL,
    file_id integer,
    related_id integer,
    related_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.files_related_morphs OWNER TO strapi_worker;

--
-- Name: files_related_morphs_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_worker
--

CREATE SEQUENCE public.files_related_morphs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.files_related_morphs_id_seq OWNER TO strapi_worker;

--
-- Name: files_related_morphs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_worker
--

ALTER SEQUENCE public.files_related_morphs_id_seq OWNED BY public.files_related_morphs.id;


--
-- Name: i18n_locale; Type: TABLE; Schema: public; Owner: strapi_worker
--

CREATE TABLE public.i18n_locale (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.i18n_locale OWNER TO strapi_worker;

--
-- Name: i18n_locale_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_worker
--

CREATE SEQUENCE public.i18n_locale_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.i18n_locale_id_seq OWNER TO strapi_worker;

--
-- Name: i18n_locale_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_worker
--

ALTER SEQUENCE public.i18n_locale_id_seq OWNED BY public.i18n_locale.id;


--
-- Name: layouts; Type: TABLE; Schema: public; Owner: strapi_worker
--

CREATE TABLE public.layouts (
    id integer NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.layouts OWNER TO strapi_worker;

--
-- Name: layouts_components; Type: TABLE; Schema: public; Owner: strapi_worker
--

CREATE TABLE public.layouts_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.layouts_components OWNER TO strapi_worker;

--
-- Name: layouts_components_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_worker
--

CREATE SEQUENCE public.layouts_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.layouts_components_id_seq OWNER TO strapi_worker;

--
-- Name: layouts_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_worker
--

ALTER SEQUENCE public.layouts_components_id_seq OWNED BY public.layouts_components.id;


--
-- Name: layouts_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_worker
--

CREATE SEQUENCE public.layouts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.layouts_id_seq OWNER TO strapi_worker;

--
-- Name: layouts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_worker
--

ALTER SEQUENCE public.layouts_id_seq OWNED BY public.layouts.id;


--
-- Name: pages; Type: TABLE; Schema: public; Owner: strapi_worker
--

CREATE TABLE public.pages (
    id integer NOT NULL,
    title character varying(255),
    slug character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.pages OWNER TO strapi_worker;

--
-- Name: pages_components; Type: TABLE; Schema: public; Owner: strapi_worker
--

CREATE TABLE public.pages_components (
    id integer NOT NULL,
    entity_id integer,
    component_id integer,
    component_type character varying(255),
    field character varying(255),
    "order" double precision
);


ALTER TABLE public.pages_components OWNER TO strapi_worker;

--
-- Name: pages_components_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_worker
--

CREATE SEQUENCE public.pages_components_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pages_components_id_seq OWNER TO strapi_worker;

--
-- Name: pages_components_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_worker
--

ALTER SEQUENCE public.pages_components_id_seq OWNED BY public.pages_components.id;


--
-- Name: pages_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_worker
--

CREATE SEQUENCE public.pages_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pages_id_seq OWNER TO strapi_worker;

--
-- Name: pages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_worker
--

ALTER SEQUENCE public.pages_id_seq OWNED BY public.pages.id;


--
-- Name: strapi_api_token_permissions; Type: TABLE; Schema: public; Owner: strapi_worker
--

CREATE TABLE public.strapi_api_token_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.strapi_api_token_permissions OWNER TO strapi_worker;

--
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_worker
--

CREATE SEQUENCE public.strapi_api_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_api_token_permissions_id_seq OWNER TO strapi_worker;

--
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_worker
--

ALTER SEQUENCE public.strapi_api_token_permissions_id_seq OWNED BY public.strapi_api_token_permissions.id;


--
-- Name: strapi_api_token_permissions_token_links; Type: TABLE; Schema: public; Owner: strapi_worker
--

CREATE TABLE public.strapi_api_token_permissions_token_links (
    id integer NOT NULL,
    api_token_permission_id integer,
    api_token_id integer,
    api_token_permission_order double precision
);


ALTER TABLE public.strapi_api_token_permissions_token_links OWNER TO strapi_worker;

--
-- Name: strapi_api_token_permissions_token_links_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_worker
--

CREATE SEQUENCE public.strapi_api_token_permissions_token_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_api_token_permissions_token_links_id_seq OWNER TO strapi_worker;

--
-- Name: strapi_api_token_permissions_token_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_worker
--

ALTER SEQUENCE public.strapi_api_token_permissions_token_links_id_seq OWNED BY public.strapi_api_token_permissions_token_links.id;


--
-- Name: strapi_api_tokens; Type: TABLE; Schema: public; Owner: strapi_worker
--

CREATE TABLE public.strapi_api_tokens (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    type character varying(255),
    access_key character varying(255),
    last_used_at timestamp(6) without time zone,
    expires_at timestamp(6) without time zone,
    lifespan bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.strapi_api_tokens OWNER TO strapi_worker;

--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_worker
--

CREATE SEQUENCE public.strapi_api_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_api_tokens_id_seq OWNER TO strapi_worker;

--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_worker
--

ALTER SEQUENCE public.strapi_api_tokens_id_seq OWNED BY public.strapi_api_tokens.id;


--
-- Name: strapi_core_store_settings; Type: TABLE; Schema: public; Owner: strapi_worker
--

CREATE TABLE public.strapi_core_store_settings (
    id integer NOT NULL,
    key character varying(255),
    value text,
    type character varying(255),
    environment character varying(255),
    tag character varying(255)
);


ALTER TABLE public.strapi_core_store_settings OWNER TO strapi_worker;

--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_worker
--

CREATE SEQUENCE public.strapi_core_store_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_core_store_settings_id_seq OWNER TO strapi_worker;

--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_worker
--

ALTER SEQUENCE public.strapi_core_store_settings_id_seq OWNED BY public.strapi_core_store_settings.id;


--
-- Name: strapi_database_schema; Type: TABLE; Schema: public; Owner: strapi_worker
--

CREATE TABLE public.strapi_database_schema (
    id integer NOT NULL,
    schema json,
    "time" timestamp without time zone,
    hash character varying(255)
);


ALTER TABLE public.strapi_database_schema OWNER TO strapi_worker;

--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_worker
--

CREATE SEQUENCE public.strapi_database_schema_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_database_schema_id_seq OWNER TO strapi_worker;

--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_worker
--

ALTER SEQUENCE public.strapi_database_schema_id_seq OWNED BY public.strapi_database_schema.id;


--
-- Name: strapi_migrations; Type: TABLE; Schema: public; Owner: strapi_worker
--

CREATE TABLE public.strapi_migrations (
    id integer NOT NULL,
    name character varying(255),
    "time" timestamp without time zone
);


ALTER TABLE public.strapi_migrations OWNER TO strapi_worker;

--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_worker
--

CREATE SEQUENCE public.strapi_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_migrations_id_seq OWNER TO strapi_worker;

--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_worker
--

ALTER SEQUENCE public.strapi_migrations_id_seq OWNED BY public.strapi_migrations.id;


--
-- Name: strapi_transfer_token_permissions; Type: TABLE; Schema: public; Owner: strapi_worker
--

CREATE TABLE public.strapi_transfer_token_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.strapi_transfer_token_permissions OWNER TO strapi_worker;

--
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_worker
--

CREATE SEQUENCE public.strapi_transfer_token_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_transfer_token_permissions_id_seq OWNER TO strapi_worker;

--
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_worker
--

ALTER SEQUENCE public.strapi_transfer_token_permissions_id_seq OWNED BY public.strapi_transfer_token_permissions.id;


--
-- Name: strapi_transfer_token_permissions_token_links; Type: TABLE; Schema: public; Owner: strapi_worker
--

CREATE TABLE public.strapi_transfer_token_permissions_token_links (
    id integer NOT NULL,
    transfer_token_permission_id integer,
    transfer_token_id integer,
    transfer_token_permission_order double precision
);


ALTER TABLE public.strapi_transfer_token_permissions_token_links OWNER TO strapi_worker;

--
-- Name: strapi_transfer_token_permissions_token_links_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_worker
--

CREATE SEQUENCE public.strapi_transfer_token_permissions_token_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_transfer_token_permissions_token_links_id_seq OWNER TO strapi_worker;

--
-- Name: strapi_transfer_token_permissions_token_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_worker
--

ALTER SEQUENCE public.strapi_transfer_token_permissions_token_links_id_seq OWNED BY public.strapi_transfer_token_permissions_token_links.id;


--
-- Name: strapi_transfer_tokens; Type: TABLE; Schema: public; Owner: strapi_worker
--

CREATE TABLE public.strapi_transfer_tokens (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    access_key character varying(255),
    last_used_at timestamp(6) without time zone,
    expires_at timestamp(6) without time zone,
    lifespan bigint,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.strapi_transfer_tokens OWNER TO strapi_worker;

--
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_worker
--

CREATE SEQUENCE public.strapi_transfer_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_transfer_tokens_id_seq OWNER TO strapi_worker;

--
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_worker
--

ALTER SEQUENCE public.strapi_transfer_tokens_id_seq OWNED BY public.strapi_transfer_tokens.id;


--
-- Name: strapi_webhooks; Type: TABLE; Schema: public; Owner: strapi_worker
--

CREATE TABLE public.strapi_webhooks (
    id integer NOT NULL,
    name character varying(255),
    url text,
    headers jsonb,
    events jsonb,
    enabled boolean
);


ALTER TABLE public.strapi_webhooks OWNER TO strapi_worker;

--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_worker
--

CREATE SEQUENCE public.strapi_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_webhooks_id_seq OWNER TO strapi_worker;

--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_worker
--

ALTER SEQUENCE public.strapi_webhooks_id_seq OWNED BY public.strapi_webhooks.id;


--
-- Name: up_permissions; Type: TABLE; Schema: public; Owner: strapi_worker
--

CREATE TABLE public.up_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.up_permissions OWNER TO strapi_worker;

--
-- Name: up_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_worker
--

CREATE SEQUENCE public.up_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.up_permissions_id_seq OWNER TO strapi_worker;

--
-- Name: up_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_worker
--

ALTER SEQUENCE public.up_permissions_id_seq OWNED BY public.up_permissions.id;


--
-- Name: up_permissions_role_links; Type: TABLE; Schema: public; Owner: strapi_worker
--

CREATE TABLE public.up_permissions_role_links (
    id integer NOT NULL,
    permission_id integer,
    role_id integer,
    permission_order double precision
);


ALTER TABLE public.up_permissions_role_links OWNER TO strapi_worker;

--
-- Name: up_permissions_role_links_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_worker
--

CREATE SEQUENCE public.up_permissions_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.up_permissions_role_links_id_seq OWNER TO strapi_worker;

--
-- Name: up_permissions_role_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_worker
--

ALTER SEQUENCE public.up_permissions_role_links_id_seq OWNED BY public.up_permissions_role_links.id;


--
-- Name: up_roles; Type: TABLE; Schema: public; Owner: strapi_worker
--

CREATE TABLE public.up_roles (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    type character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.up_roles OWNER TO strapi_worker;

--
-- Name: up_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_worker
--

CREATE SEQUENCE public.up_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.up_roles_id_seq OWNER TO strapi_worker;

--
-- Name: up_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_worker
--

ALTER SEQUENCE public.up_roles_id_seq OWNED BY public.up_roles.id;


--
-- Name: up_users; Type: TABLE; Schema: public; Owner: strapi_worker
--

CREATE TABLE public.up_users (
    id integer NOT NULL,
    username character varying(255),
    email character varying(255),
    provider character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    confirmation_token character varying(255),
    confirmed boolean,
    blocked boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.up_users OWNER TO strapi_worker;

--
-- Name: up_users_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_worker
--

CREATE SEQUENCE public.up_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.up_users_id_seq OWNER TO strapi_worker;

--
-- Name: up_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_worker
--

ALTER SEQUENCE public.up_users_id_seq OWNED BY public.up_users.id;


--
-- Name: up_users_role_links; Type: TABLE; Schema: public; Owner: strapi_worker
--

CREATE TABLE public.up_users_role_links (
    id integer NOT NULL,
    user_id integer,
    role_id integer,
    user_order double precision
);


ALTER TABLE public.up_users_role_links OWNER TO strapi_worker;

--
-- Name: up_users_role_links_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_worker
--

CREATE SEQUENCE public.up_users_role_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.up_users_role_links_id_seq OWNER TO strapi_worker;

--
-- Name: up_users_role_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_worker
--

ALTER SEQUENCE public.up_users_role_links_id_seq OWNED BY public.up_users_role_links.id;


--
-- Name: upload_folders; Type: TABLE; Schema: public; Owner: strapi_worker
--

CREATE TABLE public.upload_folders (
    id integer NOT NULL,
    name character varying(255),
    path_id integer,
    path character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.upload_folders OWNER TO strapi_worker;

--
-- Name: upload_folders_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_worker
--

CREATE SEQUENCE public.upload_folders_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.upload_folders_id_seq OWNER TO strapi_worker;

--
-- Name: upload_folders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_worker
--

ALTER SEQUENCE public.upload_folders_id_seq OWNED BY public.upload_folders.id;


--
-- Name: upload_folders_parent_links; Type: TABLE; Schema: public; Owner: strapi_worker
--

CREATE TABLE public.upload_folders_parent_links (
    id integer NOT NULL,
    folder_id integer,
    inv_folder_id integer,
    folder_order double precision
);


ALTER TABLE public.upload_folders_parent_links OWNER TO strapi_worker;

--
-- Name: upload_folders_parent_links_id_seq; Type: SEQUENCE; Schema: public; Owner: strapi_worker
--

CREATE SEQUENCE public.upload_folders_parent_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.upload_folders_parent_links_id_seq OWNER TO strapi_worker;

--
-- Name: upload_folders_parent_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: strapi_worker
--

ALTER SEQUENCE public.upload_folders_parent_links_id_seq OWNED BY public.upload_folders_parent_links.id;


--
-- Name: admin_permissions id; Type: DEFAULT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.admin_permissions ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_id_seq'::regclass);


--
-- Name: admin_permissions_role_links id; Type: DEFAULT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.admin_permissions_role_links ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_role_links_id_seq'::regclass);


--
-- Name: admin_roles id; Type: DEFAULT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.admin_roles ALTER COLUMN id SET DEFAULT nextval('public.admin_roles_id_seq'::regclass);


--
-- Name: admin_users id; Type: DEFAULT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.admin_users ALTER COLUMN id SET DEFAULT nextval('public.admin_users_id_seq'::regclass);


--
-- Name: admin_users_roles_links id; Type: DEFAULT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.admin_users_roles_links ALTER COLUMN id SET DEFAULT nextval('public.admin_users_roles_links_id_seq'::regclass);


--
-- Name: analyses id; Type: DEFAULT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.analyses ALTER COLUMN id SET DEFAULT nextval('public.analyses_id_seq'::regclass);


--
-- Name: analyses_components id; Type: DEFAULT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.analyses_components ALTER COLUMN id SET DEFAULT nextval('public.analyses_components_id_seq'::regclass);


--
-- Name: components_analysis_empties id; Type: DEFAULT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.components_analysis_empties ALTER COLUMN id SET DEFAULT nextval('public.components_analysis_empties_id_seq'::regclass);


--
-- Name: components_contact_contacts id; Type: DEFAULT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.components_contact_contacts ALTER COLUMN id SET DEFAULT nextval('public.components_contact_contacts_id_seq'::regclass);


--
-- Name: components_contact_contacts_components id; Type: DEFAULT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.components_contact_contacts_components ALTER COLUMN id SET DEFAULT nextval('public.components_contact_contacts_components_id_seq'::regclass);


--
-- Name: components_contact_items id; Type: DEFAULT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.components_contact_items ALTER COLUMN id SET DEFAULT nextval('public.components_contact_items_id_seq'::regclass);


--
-- Name: components_faq_faq_items id; Type: DEFAULT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.components_faq_faq_items ALTER COLUMN id SET DEFAULT nextval('public.components_faq_faq_items_id_seq'::regclass);


--
-- Name: components_faq_faqs id; Type: DEFAULT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.components_faq_faqs ALTER COLUMN id SET DEFAULT nextval('public.components_faq_faqs_id_seq'::regclass);


--
-- Name: components_faq_faqs_components id; Type: DEFAULT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.components_faq_faqs_components ALTER COLUMN id SET DEFAULT nextval('public.components_faq_faqs_components_id_seq'::regclass);


--
-- Name: components_get_started_get_starteds id; Type: DEFAULT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.components_get_started_get_starteds ALTER COLUMN id SET DEFAULT nextval('public.components_get_started_get_starteds_id_seq'::regclass);


--
-- Name: components_get_started_get_starteds_components id; Type: DEFAULT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.components_get_started_get_starteds_components ALTER COLUMN id SET DEFAULT nextval('public.components_get_started_get_starteds_components_id_seq'::regclass);


--
-- Name: components_get_started_items id; Type: DEFAULT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.components_get_started_items ALTER COLUMN id SET DEFAULT nextval('public.components_get_started_items_id_seq'::regclass);


--
-- Name: components_home_heroes id; Type: DEFAULT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.components_home_heroes ALTER COLUMN id SET DEFAULT nextval('public.components_home_heroes_id_seq'::regclass);


--
-- Name: components_home_heroes_components id; Type: DEFAULT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.components_home_heroes_components ALTER COLUMN id SET DEFAULT nextval('public.components_home_heroes_components_id_seq'::regclass);


--
-- Name: components_shared_meta_socials id; Type: DEFAULT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.components_shared_meta_socials ALTER COLUMN id SET DEFAULT nextval('public.components_shared_meta_socials_id_seq'::regclass);


--
-- Name: components_shared_seos id; Type: DEFAULT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.components_shared_seos ALTER COLUMN id SET DEFAULT nextval('public.components_shared_seos_id_seq'::regclass);


--
-- Name: components_shared_seos_components id; Type: DEFAULT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.components_shared_seos_components ALTER COLUMN id SET DEFAULT nextval('public.components_shared_seos_components_id_seq'::regclass);


--
-- Name: components_ui_buttons id; Type: DEFAULT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.components_ui_buttons ALTER COLUMN id SET DEFAULT nextval('public.components_ui_buttons_id_seq'::regclass);


--
-- Name: components_ui_forms id; Type: DEFAULT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.components_ui_forms ALTER COLUMN id SET DEFAULT nextval('public.components_ui_forms_id_seq'::regclass);


--
-- Name: components_ui_forms_components id; Type: DEFAULT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.components_ui_forms_components ALTER COLUMN id SET DEFAULT nextval('public.components_ui_forms_components_id_seq'::regclass);


--
-- Name: components_ui_inputs id; Type: DEFAULT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.components_ui_inputs ALTER COLUMN id SET DEFAULT nextval('public.components_ui_inputs_id_seq'::regclass);


--
-- Name: components_ui_texts id; Type: DEFAULT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.components_ui_texts ALTER COLUMN id SET DEFAULT nextval('public.components_ui_texts_id_seq'::regclass);


--
-- Name: contacts id; Type: DEFAULT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.contacts ALTER COLUMN id SET DEFAULT nextval('public.contacts_id_seq'::regclass);


--
-- Name: contacts_components id; Type: DEFAULT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.contacts_components ALTER COLUMN id SET DEFAULT nextval('public.contacts_components_id_seq'::regclass);


--
-- Name: files id; Type: DEFAULT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.files ALTER COLUMN id SET DEFAULT nextval('public.files_id_seq'::regclass);


--
-- Name: files_folder_links id; Type: DEFAULT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.files_folder_links ALTER COLUMN id SET DEFAULT nextval('public.files_folder_links_id_seq'::regclass);


--
-- Name: files_related_morphs id; Type: DEFAULT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.files_related_morphs ALTER COLUMN id SET DEFAULT nextval('public.files_related_morphs_id_seq'::regclass);


--
-- Name: i18n_locale id; Type: DEFAULT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.i18n_locale ALTER COLUMN id SET DEFAULT nextval('public.i18n_locale_id_seq'::regclass);


--
-- Name: layouts id; Type: DEFAULT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.layouts ALTER COLUMN id SET DEFAULT nextval('public.layouts_id_seq'::regclass);


--
-- Name: layouts_components id; Type: DEFAULT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.layouts_components ALTER COLUMN id SET DEFAULT nextval('public.layouts_components_id_seq'::regclass);


--
-- Name: pages id; Type: DEFAULT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.pages ALTER COLUMN id SET DEFAULT nextval('public.pages_id_seq'::regclass);


--
-- Name: pages_components id; Type: DEFAULT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.pages_components ALTER COLUMN id SET DEFAULT nextval('public.pages_components_id_seq'::regclass);


--
-- Name: strapi_api_token_permissions id; Type: DEFAULT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.strapi_api_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_id_seq'::regclass);


--
-- Name: strapi_api_token_permissions_token_links id; Type: DEFAULT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_links ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_token_permissions_token_links_id_seq'::regclass);


--
-- Name: strapi_api_tokens id; Type: DEFAULT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.strapi_api_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_tokens_id_seq'::regclass);


--
-- Name: strapi_core_store_settings id; Type: DEFAULT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.strapi_core_store_settings ALTER COLUMN id SET DEFAULT nextval('public.strapi_core_store_settings_id_seq'::regclass);


--
-- Name: strapi_database_schema id; Type: DEFAULT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.strapi_database_schema ALTER COLUMN id SET DEFAULT nextval('public.strapi_database_schema_id_seq'::regclass);


--
-- Name: strapi_migrations id; Type: DEFAULT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.strapi_migrations ALTER COLUMN id SET DEFAULT nextval('public.strapi_migrations_id_seq'::regclass);


--
-- Name: strapi_transfer_token_permissions id; Type: DEFAULT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_id_seq'::regclass);


--
-- Name: strapi_transfer_token_permissions_token_links id; Type: DEFAULT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_token_permissions_token_links_id_seq'::regclass);


--
-- Name: strapi_transfer_tokens id; Type: DEFAULT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.strapi_transfer_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_transfer_tokens_id_seq'::regclass);


--
-- Name: strapi_webhooks id; Type: DEFAULT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('public.strapi_webhooks_id_seq'::regclass);


--
-- Name: up_permissions id; Type: DEFAULT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.up_permissions ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_id_seq'::regclass);


--
-- Name: up_permissions_role_links id; Type: DEFAULT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.up_permissions_role_links ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_role_links_id_seq'::regclass);


--
-- Name: up_roles id; Type: DEFAULT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.up_roles ALTER COLUMN id SET DEFAULT nextval('public.up_roles_id_seq'::regclass);


--
-- Name: up_users id; Type: DEFAULT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.up_users ALTER COLUMN id SET DEFAULT nextval('public.up_users_id_seq'::regclass);


--
-- Name: up_users_role_links id; Type: DEFAULT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.up_users_role_links ALTER COLUMN id SET DEFAULT nextval('public.up_users_role_links_id_seq'::regclass);


--
-- Name: upload_folders id; Type: DEFAULT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.upload_folders ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_id_seq'::regclass);


--
-- Name: upload_folders_parent_links id; Type: DEFAULT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.upload_folders_parent_links ALTER COLUMN id SET DEFAULT nextval('public.upload_folders_parent_links_id_seq'::regclass);


--
-- Data for Name: admin_permissions; Type: TABLE DATA; Schema: public; Owner: strapi_worker
--

COPY public.admin_permissions (id, action, action_parameters, subject, properties, conditions, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
4	plugin::content-manager.explorer.delete	{}	api::page.page	{}	[]	2023-12-13 20:17:35.356	2023-12-13 20:17:35.356	\N	\N
5	plugin::content-manager.explorer.publish	{}	api::page.page	{}	[]	2023-12-13 20:17:35.358	2023-12-13 20:17:35.358	\N	\N
6	plugin::upload.read	{}	\N	{}	[]	2023-12-13 20:17:35.36	2023-12-13 20:17:35.36	\N	\N
7	plugin::upload.configure-view	{}	\N	{}	[]	2023-12-13 20:17:35.361	2023-12-13 20:17:35.361	\N	\N
8	plugin::upload.assets.create	{}	\N	{}	[]	2023-12-13 20:17:35.363	2023-12-13 20:17:35.363	\N	\N
9	plugin::upload.assets.update	{}	\N	{}	[]	2023-12-13 20:17:35.364	2023-12-13 20:17:35.364	\N	\N
10	plugin::upload.assets.download	{}	\N	{}	[]	2023-12-13 20:17:35.366	2023-12-13 20:17:35.366	\N	\N
11	plugin::upload.assets.copy-link	{}	\N	{}	[]	2023-12-13 20:17:35.368	2023-12-13 20:17:35.368	\N	\N
15	plugin::content-manager.explorer.delete	{}	api::page.page	{}	["admin::is-creator"]	2023-12-13 20:17:35.375	2023-12-13 20:17:35.375	\N	\N
16	plugin::upload.read	{}	\N	{}	["admin::is-creator"]	2023-12-13 20:17:35.376	2023-12-13 20:17:35.376	\N	\N
17	plugin::upload.configure-view	{}	\N	{}	[]	2023-12-13 20:17:35.378	2023-12-13 20:17:35.378	\N	\N
18	plugin::upload.assets.create	{}	\N	{}	[]	2023-12-13 20:17:35.38	2023-12-13 20:17:35.38	\N	\N
19	plugin::upload.assets.update	{}	\N	{}	["admin::is-creator"]	2023-12-13 20:17:35.381	2023-12-13 20:17:35.381	\N	\N
20	plugin::upload.assets.download	{}	\N	{}	[]	2023-12-13 20:17:35.383	2023-12-13 20:17:35.383	\N	\N
21	plugin::upload.assets.copy-link	{}	\N	{}	[]	2023-12-13 20:17:35.384	2023-12-13 20:17:35.384	\N	\N
23	plugin::content-manager.explorer.create	{}	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2023-12-13 20:17:35.396	2023-12-13 20:17:35.396	\N	\N
25	plugin::content-manager.explorer.read	{}	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2023-12-13 20:17:35.399	2023-12-13 20:17:35.399	\N	\N
27	plugin::content-manager.explorer.update	{}	plugin::users-permissions.user	{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}	[]	2023-12-13 20:17:35.403	2023-12-13 20:17:35.403	\N	\N
28	plugin::content-manager.explorer.delete	{}	api::page.page	{}	[]	2023-12-13 20:17:35.404	2023-12-13 20:17:35.404	\N	\N
29	plugin::content-manager.explorer.delete	{}	plugin::users-permissions.user	{}	[]	2023-12-13 20:17:35.406	2023-12-13 20:17:35.406	\N	\N
30	plugin::content-manager.explorer.publish	{}	api::page.page	{}	[]	2023-12-13 20:17:35.407	2023-12-13 20:17:35.407	\N	\N
31	plugin::content-manager.single-types.configure-view	{}	\N	{}	[]	2023-12-13 20:17:35.409	2023-12-13 20:17:35.409	\N	\N
32	plugin::content-manager.collection-types.configure-view	{}	\N	{}	[]	2023-12-13 20:17:35.41	2023-12-13 20:17:35.41	\N	\N
33	plugin::content-manager.components.configure-layout	{}	\N	{}	[]	2023-12-13 20:17:35.412	2023-12-13 20:17:35.412	\N	\N
34	plugin::content-type-builder.read	{}	\N	{}	[]	2023-12-13 20:17:35.413	2023-12-13 20:17:35.413	\N	\N
35	plugin::email.settings.read	{}	\N	{}	[]	2023-12-13 20:17:35.415	2023-12-13 20:17:35.415	\N	\N
36	plugin::upload.read	{}	\N	{}	[]	2023-12-13 20:17:35.416	2023-12-13 20:17:35.416	\N	\N
37	plugin::upload.assets.create	{}	\N	{}	[]	2023-12-13 20:17:35.418	2023-12-13 20:17:35.418	\N	\N
38	plugin::upload.assets.update	{}	\N	{}	[]	2023-12-13 20:17:35.419	2023-12-13 20:17:35.419	\N	\N
39	plugin::upload.assets.download	{}	\N	{}	[]	2023-12-13 20:17:35.421	2023-12-13 20:17:35.421	\N	\N
1	plugin::content-manager.explorer.create	{}	api::page.page	{"fields": ["title", "slug", "blocks", "seo.metaTitle", "seo.metaDescription", "seo.metaImage", "seo.metaSocial.socialNetwork", "seo.metaSocial.title", "seo.metaSocial.description", "seo.metaSocial.image", "seo.keywords", "seo.metaRobots", "seo.structuredData", "seo.metaViewport", "seo.canonicalURL"]}	[]	2023-12-13 20:17:35.35	2023-12-13 21:10:50.908	\N	\N
12	plugin::content-manager.explorer.create	{}	api::page.page	{"fields": ["title", "slug", "blocks", "seo.metaTitle", "seo.metaDescription", "seo.metaImage", "seo.metaSocial.socialNetwork", "seo.metaSocial.title", "seo.metaSocial.description", "seo.metaSocial.image", "seo.keywords", "seo.metaRobots", "seo.structuredData", "seo.metaViewport", "seo.canonicalURL"]}	["admin::is-creator"]	2023-12-13 20:17:35.37	2023-12-13 21:10:50.908	\N	\N
3	plugin::content-manager.explorer.update	{}	api::page.page	{"fields": ["title", "slug", "blocks", "seo.metaTitle", "seo.metaDescription", "seo.metaImage", "seo.metaSocial.socialNetwork", "seo.metaSocial.title", "seo.metaSocial.description", "seo.metaSocial.image", "seo.keywords", "seo.metaRobots", "seo.structuredData", "seo.metaViewport", "seo.canonicalURL"]}	[]	2023-12-13 20:17:35.354	2023-12-13 21:10:50.908	\N	\N
40	plugin::upload.assets.copy-link	{}	\N	{}	[]	2023-12-13 20:17:35.422	2023-12-13 20:17:35.422	\N	\N
41	plugin::upload.configure-view	{}	\N	{}	[]	2023-12-13 20:17:35.424	2023-12-13 20:17:35.424	\N	\N
42	plugin::upload.settings.read	{}	\N	{}	[]	2023-12-13 20:17:35.425	2023-12-13 20:17:35.425	\N	\N
43	plugin::users-permissions.roles.create	{}	\N	{}	[]	2023-12-13 20:17:35.427	2023-12-13 20:17:35.427	\N	\N
44	plugin::users-permissions.roles.read	{}	\N	{}	[]	2023-12-13 20:17:35.428	2023-12-13 20:17:35.428	\N	\N
45	plugin::users-permissions.roles.update	{}	\N	{}	[]	2023-12-13 20:17:35.43	2023-12-13 20:17:35.43	\N	\N
46	plugin::users-permissions.roles.delete	{}	\N	{}	[]	2023-12-13 20:17:35.431	2023-12-13 20:17:35.431	\N	\N
47	plugin::users-permissions.providers.read	{}	\N	{}	[]	2023-12-13 20:17:35.433	2023-12-13 20:17:35.433	\N	\N
48	plugin::users-permissions.providers.update	{}	\N	{}	[]	2023-12-13 20:17:35.434	2023-12-13 20:17:35.434	\N	\N
49	plugin::users-permissions.email-templates.read	{}	\N	{}	[]	2023-12-13 20:17:35.435	2023-12-13 20:17:35.435	\N	\N
50	plugin::users-permissions.email-templates.update	{}	\N	{}	[]	2023-12-13 20:17:35.437	2023-12-13 20:17:35.437	\N	\N
51	plugin::users-permissions.advanced-settings.read	{}	\N	{}	[]	2023-12-13 20:17:35.438	2023-12-13 20:17:35.438	\N	\N
52	plugin::users-permissions.advanced-settings.update	{}	\N	{}	[]	2023-12-13 20:17:35.439	2023-12-13 20:17:35.439	\N	\N
53	plugin::seo.read	{}	\N	{}	[]	2023-12-13 20:17:35.441	2023-12-13 20:17:35.441	\N	\N
54	plugin::i18n.locale.create	{}	\N	{}	[]	2023-12-13 20:17:35.442	2023-12-13 20:17:35.442	\N	\N
55	plugin::i18n.locale.read	{}	\N	{}	[]	2023-12-13 20:17:35.443	2023-12-13 20:17:35.443	\N	\N
56	plugin::i18n.locale.update	{}	\N	{}	[]	2023-12-13 20:17:35.445	2023-12-13 20:17:35.445	\N	\N
57	plugin::i18n.locale.delete	{}	\N	{}	[]	2023-12-13 20:17:35.446	2023-12-13 20:17:35.446	\N	\N
58	admin::marketplace.read	{}	\N	{}	[]	2023-12-13 20:17:35.447	2023-12-13 20:17:35.447	\N	\N
59	admin::webhooks.create	{}	\N	{}	[]	2023-12-13 20:17:35.448	2023-12-13 20:17:35.448	\N	\N
60	admin::webhooks.read	{}	\N	{}	[]	2023-12-13 20:17:35.45	2023-12-13 20:17:35.45	\N	\N
61	admin::webhooks.update	{}	\N	{}	[]	2023-12-13 20:17:35.451	2023-12-13 20:17:35.451	\N	\N
62	admin::webhooks.delete	{}	\N	{}	[]	2023-12-13 20:17:35.453	2023-12-13 20:17:35.453	\N	\N
63	admin::users.create	{}	\N	{}	[]	2023-12-13 20:17:35.454	2023-12-13 20:17:35.454	\N	\N
64	admin::users.read	{}	\N	{}	[]	2023-12-13 20:17:35.455	2023-12-13 20:17:35.455	\N	\N
65	admin::users.update	{}	\N	{}	[]	2023-12-13 20:17:35.456	2023-12-13 20:17:35.456	\N	\N
66	admin::users.delete	{}	\N	{}	[]	2023-12-13 20:17:35.458	2023-12-13 20:17:35.458	\N	\N
67	admin::roles.create	{}	\N	{}	[]	2023-12-13 20:17:35.459	2023-12-13 20:17:35.459	\N	\N
68	admin::roles.read	{}	\N	{}	[]	2023-12-13 20:17:35.46	2023-12-13 20:17:35.46	\N	\N
69	admin::roles.update	{}	\N	{}	[]	2023-12-13 20:17:35.462	2023-12-13 20:17:35.462	\N	\N
70	admin::roles.delete	{}	\N	{}	[]	2023-12-13 20:17:35.463	2023-12-13 20:17:35.463	\N	\N
71	admin::api-tokens.access	{}	\N	{}	[]	2023-12-13 20:17:35.464	2023-12-13 20:17:35.464	\N	\N
72	admin::api-tokens.create	{}	\N	{}	[]	2023-12-13 20:17:35.465	2023-12-13 20:17:35.465	\N	\N
73	admin::api-tokens.read	{}	\N	{}	[]	2023-12-13 20:17:35.466	2023-12-13 20:17:35.466	\N	\N
74	admin::api-tokens.update	{}	\N	{}	[]	2023-12-13 20:17:35.468	2023-12-13 20:17:35.468	\N	\N
75	admin::api-tokens.regenerate	{}	\N	{}	[]	2023-12-13 20:17:35.469	2023-12-13 20:17:35.469	\N	\N
76	admin::api-tokens.delete	{}	\N	{}	[]	2023-12-13 20:17:35.47	2023-12-13 20:17:35.47	\N	\N
77	admin::project-settings.update	{}	\N	{}	[]	2023-12-13 20:17:35.471	2023-12-13 20:17:35.471	\N	\N
78	admin::project-settings.read	{}	\N	{}	[]	2023-12-13 20:17:35.472	2023-12-13 20:17:35.472	\N	\N
79	admin::transfer.tokens.access	{}	\N	{}	[]	2023-12-13 20:17:35.473	2023-12-13 20:17:35.473	\N	\N
80	admin::transfer.tokens.create	{}	\N	{}	[]	2023-12-13 20:17:35.475	2023-12-13 20:17:35.475	\N	\N
81	admin::transfer.tokens.read	{}	\N	{}	[]	2023-12-13 20:17:35.476	2023-12-13 20:17:35.476	\N	\N
82	admin::transfer.tokens.update	{}	\N	{}	[]	2023-12-13 20:17:35.477	2023-12-13 20:17:35.477	\N	\N
83	admin::transfer.tokens.regenerate	{}	\N	{}	[]	2023-12-13 20:17:35.479	2023-12-13 20:17:35.479	\N	\N
84	admin::transfer.tokens.delete	{}	\N	{}	[]	2023-12-13 20:17:35.48	2023-12-13 20:17:35.48	\N	\N
85	plugin::content-manager.explorer.create	{}	api::page.page	{"fields": ["title", "slug", "blocks", "seo.metaTitle", "seo.metaDescription", "seo.metaImage", "seo.metaSocial.socialNetwork", "seo.metaSocial.title", "seo.metaSocial.description", "seo.metaSocial.image", "seo.keywords", "seo.metaRobots", "seo.structuredData", "seo.metaViewport", "seo.canonicalURL"]}	[]	2023-12-13 21:10:50.891	2023-12-13 21:10:50.891	\N	\N
86	plugin::content-manager.explorer.read	{}	api::page.page	{"fields": ["title", "slug", "blocks", "seo.metaTitle", "seo.metaDescription", "seo.metaImage", "seo.metaSocial.socialNetwork", "seo.metaSocial.title", "seo.metaSocial.description", "seo.metaSocial.image", "seo.keywords", "seo.metaRobots", "seo.structuredData", "seo.metaViewport", "seo.canonicalURL"]}	[]	2023-12-13 21:10:50.894	2023-12-13 21:10:50.894	\N	\N
87	plugin::content-manager.explorer.update	{}	api::page.page	{"fields": ["title", "slug", "blocks", "seo.metaTitle", "seo.metaDescription", "seo.metaImage", "seo.metaSocial.socialNetwork", "seo.metaSocial.title", "seo.metaSocial.description", "seo.metaSocial.image", "seo.keywords", "seo.metaRobots", "seo.structuredData", "seo.metaViewport", "seo.canonicalURL"]}	[]	2023-12-13 21:10:50.896	2023-12-13 21:10:50.896	\N	\N
2	plugin::content-manager.explorer.read	{}	api::page.page	{"fields": ["title", "slug", "blocks", "seo.metaTitle", "seo.metaDescription", "seo.metaImage", "seo.metaSocial.socialNetwork", "seo.metaSocial.title", "seo.metaSocial.description", "seo.metaSocial.image", "seo.keywords", "seo.metaRobots", "seo.structuredData", "seo.metaViewport", "seo.canonicalURL"]}	[]	2023-12-13 20:17:35.353	2023-12-13 21:10:50.908	\N	\N
14	plugin::content-manager.explorer.update	{}	api::page.page	{"fields": ["title", "slug", "blocks", "seo.metaTitle", "seo.metaDescription", "seo.metaImage", "seo.metaSocial.socialNetwork", "seo.metaSocial.title", "seo.metaSocial.description", "seo.metaSocial.image", "seo.keywords", "seo.metaRobots", "seo.structuredData", "seo.metaViewport", "seo.canonicalURL"]}	["admin::is-creator"]	2023-12-13 20:17:35.373	2023-12-13 21:10:50.908	\N	\N
13	plugin::content-manager.explorer.read	{}	api::page.page	{"fields": ["title", "slug", "blocks", "seo.metaTitle", "seo.metaDescription", "seo.metaImage", "seo.metaSocial.socialNetwork", "seo.metaSocial.title", "seo.metaSocial.description", "seo.metaSocial.image", "seo.keywords", "seo.metaRobots", "seo.structuredData", "seo.metaViewport", "seo.canonicalURL"]}	["admin::is-creator"]	2023-12-13 20:17:35.372	2023-12-13 21:10:50.908	\N	\N
91	plugin::content-manager.explorer.delete	{}	api::analysis.analysis	{}	[]	2023-12-15 13:41:11.867	2023-12-15 13:41:11.867	\N	\N
92	plugin::content-manager.explorer.publish	{}	api::analysis.analysis	{}	[]	2023-12-15 13:41:11.869	2023-12-15 13:41:11.869	\N	\N
108	plugin::content-manager.explorer.create	{}	api::layout.layout	{"fields": ["menu.label", "menu.href", "menu.class", "menu.target"]}	[]	2023-12-16 20:53:47.9	2023-12-16 20:53:47.9	\N	\N
109	plugin::content-manager.explorer.read	{}	api::layout.layout	{"fields": ["menu.label", "menu.href", "menu.class", "menu.target"]}	[]	2023-12-16 20:53:47.906	2023-12-16 20:53:47.906	\N	\N
110	plugin::content-manager.explorer.update	{}	api::layout.layout	{"fields": ["menu.label", "menu.href", "menu.class", "menu.target"]}	[]	2023-12-16 20:53:47.908	2023-12-16 20:53:47.908	\N	\N
111	plugin::content-manager.explorer.delete	{}	api::layout.layout	{}	[]	2023-12-16 20:53:47.91	2023-12-16 20:53:47.91	\N	\N
112	plugin::content-manager.explorer.publish	{}	api::layout.layout	{}	[]	2023-12-16 20:53:47.912	2023-12-16 20:53:47.912	\N	\N
116	plugin::content-manager.explorer.create	{}	api::analysis.analysis	{"fields": ["heading", "content", "form.placeholder", "form.error", "form.type", "form.name", "form.required", "form.description", "form.tooltip", "form.tooltipContent", "form.label", "form.rangeMin", "form.rangeMax", "submit.label", "submit.href", "submit.class", "submit.target", "formTitle"]}	[]	2023-12-16 22:18:48.286	2023-12-16 22:18:48.286	\N	\N
117	plugin::content-manager.explorer.read	{}	api::analysis.analysis	{"fields": ["heading", "content", "form.placeholder", "form.error", "form.type", "form.name", "form.required", "form.description", "form.tooltip", "form.tooltipContent", "form.label", "form.rangeMin", "form.rangeMax", "submit.label", "submit.href", "submit.class", "submit.target", "formTitle"]}	[]	2023-12-16 22:18:48.291	2023-12-16 22:18:48.291	\N	\N
118	plugin::content-manager.explorer.update	{}	api::analysis.analysis	{"fields": ["heading", "content", "form.placeholder", "form.error", "form.type", "form.name", "form.required", "form.description", "form.tooltip", "form.tooltipContent", "form.label", "form.rangeMin", "form.rangeMax", "submit.label", "submit.href", "submit.class", "submit.target", "formTitle"]}	[]	2023-12-16 22:18:48.295	2023-12-16 22:18:48.295	\N	\N
122	plugin::content-manager.explorer.delete	{}	api::contact.contact	{}	[]	2023-12-17 10:47:47.065	2023-12-17 10:47:47.065	\N	\N
123	plugin::content-manager.explorer.publish	{}	api::contact.contact	{}	[]	2023-12-17 10:47:47.067	2023-12-17 10:47:47.067	\N	\N
127	plugin::content-manager.explorer.create	{}	api::contact.contact	{"fields": ["form.input.label", "form.input.placeholder", "form.input.name", "form.input.error", "form.input.type", "form.input.required", "heading", "content", "submit.label", "submit.href", "submit.class", "submit.target"]}	[]	2023-12-17 10:52:28.076	2023-12-17 10:52:28.076	\N	\N
128	plugin::content-manager.explorer.read	{}	api::contact.contact	{"fields": ["form.input.label", "form.input.placeholder", "form.input.name", "form.input.error", "form.input.type", "form.input.required", "heading", "content", "submit.label", "submit.href", "submit.class", "submit.target"]}	[]	2023-12-17 10:52:28.08	2023-12-17 10:52:28.08	\N	\N
129	plugin::content-manager.explorer.update	{}	api::contact.contact	{"fields": ["form.input.label", "form.input.placeholder", "form.input.name", "form.input.error", "form.input.type", "form.input.required", "heading", "content", "submit.label", "submit.href", "submit.class", "submit.target"]}	[]	2023-12-17 10:52:28.082	2023-12-17 10:52:28.082	\N	\N
\.


--
-- Data for Name: admin_permissions_role_links; Type: TABLE DATA; Schema: public; Owner: strapi_worker
--

COPY public.admin_permissions_role_links (id, permission_id, role_id, permission_order) FROM stdin;
1	1	2	1
2	2	2	2
3	3	2	3
4	4	2	4
5	5	2	5
6	6	2	6
7	7	2	7
8	8	2	8
9	9	2	9
10	10	2	10
11	11	2	11
12	12	3	1
13	13	3	2
14	14	3	3
15	15	3	4
16	16	3	5
17	17	3	6
18	18	3	7
19	19	3	8
20	20	3	9
21	21	3	10
23	23	1	2
25	25	1	4
27	27	1	6
28	28	1	7
29	29	1	8
30	30	1	9
31	31	1	10
32	32	1	11
33	33	1	12
34	34	1	13
35	35	1	14
36	36	1	15
37	37	1	16
38	38	1	17
39	39	1	18
40	40	1	19
41	41	1	20
42	42	1	21
43	43	1	22
44	44	1	23
45	45	1	24
46	46	1	25
47	47	1	26
48	48	1	27
49	49	1	28
50	50	1	29
51	51	1	30
52	52	1	31
53	53	1	32
54	54	1	33
55	55	1	34
56	56	1	35
57	57	1	36
58	58	1	37
59	59	1	38
60	60	1	39
61	61	1	40
62	62	1	41
63	63	1	42
64	64	1	43
65	65	1	44
66	66	1	45
67	67	1	46
68	68	1	47
69	69	1	48
70	70	1	49
71	71	1	50
72	72	1	51
73	73	1	52
74	74	1	53
75	75	1	54
76	76	1	55
77	77	1	56
78	78	1	57
79	79	1	58
80	80	1	59
81	81	1	60
82	82	1	61
83	83	1	62
84	84	1	63
85	85	1	64
86	86	1	65
87	87	1	66
91	91	1	70
92	92	1	71
108	108	1	75
109	109	1	76
110	110	1	77
111	111	1	78
112	112	1	79
116	116	1	80
117	117	1	81
118	118	1	82
122	122	1	86
123	123	1	87
127	127	1	88
128	128	1	89
129	129	1	90
\.


--
-- Data for Name: admin_roles; Type: TABLE DATA; Schema: public; Owner: strapi_worker
--

COPY public.admin_roles (id, name, code, description, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	Super Admin	strapi-super-admin	Super Admins can access and manage all features and settings.	2023-12-13 20:17:35.344	2023-12-13 20:17:35.344	\N	\N
2	Editor	strapi-editor	Editors can manage and publish contents including those of other users.	2023-12-13 20:17:35.346	2023-12-13 20:17:35.346	\N	\N
3	Author	strapi-author	Authors can manage the content they have created.	2023-12-13 20:17:35.348	2023-12-13 20:17:35.348	\N	\N
\.


--
-- Data for Name: admin_users; Type: TABLE DATA; Schema: public; Owner: strapi_worker
--

COPY public.admin_users (id, firstname, lastname, username, email, password, reset_password_token, registration_token, is_active, blocked, prefered_language, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	Djarma	Kin	\N	djarma.kin@gmail.com	$2a$10$OA4vFOdfvlZGKQtvQp4mwOhmazxvtZqpIUIOdWVgnq9.Fq.lPlnci	\N	\N	t	f	\N	2023-12-13 20:18:51.291	2023-12-13 20:18:51.291	\N	\N
\.


--
-- Data for Name: admin_users_roles_links; Type: TABLE DATA; Schema: public; Owner: strapi_worker
--

COPY public.admin_users_roles_links (id, user_id, role_id, role_order, user_order) FROM stdin;
1	1	1	1	1
\.


--
-- Data for Name: analyses; Type: TABLE DATA; Schema: public; Owner: strapi_worker
--

COPY public.analyses (id, heading, content, created_at, updated_at, published_at, created_by_id, updated_by_id, form_title) FROM stdin;
1	Welcome to Tide	This publicly available version of TIDE is exclusively intended for non-commercial research purposes. For information about the commercial application suite of TIDE, please visit [our website](http://www.google.com).	2023-12-15 13:43:10.242	2023-12-18 11:43:02.316	2023-12-15 14:06:46.281	1	1	Upload Data:
\.


--
-- Data for Name: analyses_components; Type: TABLE DATA; Schema: public; Owner: strapi_worker
--

COPY public.analyses_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
47	1	2	ui.button	submit	10
1	1	1	ui.input	form	1
4	1	2	ui.input	form	2
5	1	3	ui.input	form	3
6	1	4	ui.input	form	4
72	1	10	ui.input	form	5
78	1	11	ui.input	form	6
7	1	5	ui.input	form	7
18	1	6	ui.input	form	8
19	1	7	ui.input	form	9
27	1	8	ui.input	form	10
28	1	9	ui.input	form	11
\.


--
-- Data for Name: components_analysis_empties; Type: TABLE DATA; Schema: public; Owner: strapi_worker
--

COPY public.components_analysis_empties (id, heading, content) FROM stdin;
1	There is nothing  here, please check input files and gRNA sequence	Lorem ipsum dolor sit amet consectetur. Malesuada urna hendrerit curabitur eleifend. Euismod nibh posuere vulputate eget nulla orci duis platea odio. Purus in volutpat mattis aliquet massa feugiat ipsum at vestibulum.
\.


--
-- Data for Name: components_contact_contacts; Type: TABLE DATA; Schema: public; Owner: strapi_worker
--

COPY public.components_contact_contacts (id) FROM stdin;
1
\.


--
-- Data for Name: components_contact_contacts_components; Type: TABLE DATA; Schema: public; Owner: strapi_worker
--

COPY public.components_contact_contacts_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
1	1	1	contact.item	input	1
2	1	2	contact.item	input	2
3	1	3	contact.item	input	3
4	1	4	contact.item	input	4
\.


--
-- Data for Name: components_contact_items; Type: TABLE DATA; Schema: public; Owner: strapi_worker
--

COPY public.components_contact_items (id, label, placeholder, name, error, type, required) FROM stdin;
1	Your name:	Type here	name	\N	text	t
2	Organization you work for:	Type here	organization	\N	text	t
3	Your E-mail address:	Type here	email	\N	email	t
4	Your message:	Type here	message	\N	textarea	\N
\.


--
-- Data for Name: components_faq_faq_items; Type: TABLE DATA; Schema: public; Owner: strapi_worker
--

COPY public.components_faq_faq_items (id, heading, content) FROM stdin;
1	What is the minimal sequence length you need?	The requirements of sequence length are flexible. This region upstream of the break site is used to align the sequencing data of the test sample with that of the control sample. The region behind the break site is used for a decomposition to determine the various indels in the pool of cells. In general, with a bigger stretch of sequence trace a better estimation can be performed by TIDE. We advise to sequence a stretch of DNA ~700bp enclosing the designed editing site. The projected break site should be located preferably ~200bp downstream from the sequencing start site.
3	How is the overall efficiency calculated?	Lorem ipsum dolor sit amet consectetur. Malesuada urna hendrerit curabitur eleifend. Euismod nibh posuere vulputate eget nulla orci duis platea odio. Purus in volutpat mattis aliquet massa feugiat ipsum at vestibulum. Suscipit tempor in ridiculus lectus vestibulum tempor. Tellus fames a purus risus. Euismod duis faucibus odio enim eget diam condimentum turpis. Purus viverra aliquam aliquet urna eros tellus integer faucibus.
5	What do the different indel bars indicate when cell pool was sequenced?	The requirements of sequence length are flexible. This region upstream of the break site is used to align the sequencing data of the test sample with that of the control sample. The region behind the break site is used for a decomposition to determine the various indels in the pool of cells. In general, with a bigger stretch of sequence trace a better estimation can be performed by TIDE. We advise to sequence a stretch of DNA ~700bp enclosing the designed editing site. The projected break site should be located preferably ~200bp downstream from the sequencing start site.
7	Can we get the sequence of different indels?	The requirements of sequence length are flexible. This region upstream of the break site is used to align the sequencing data of the test sample with that of the control sample. The region behind the break site is used for a decomposition to determine the various indels in the pool of cells. In general, with a bigger stretch of sequence trace a better estimation can be performed by TIDE. We advise to sequence a stretch of DNA ~700bp enclosing the designed editing site. The projected break site should be located preferably ~200bp downstream from the sequencing start site.
2	What happens if the sequence is shorter than 700 bp?	Lorem ipsum dolor sit amet consectetur. Malesuada urna hendrerit curabitur eleifend. Euismod nibh posuere vulputate eget nulla orci duis platea odio. Purus in volutpat mattis aliquet massa feugiat ipsum at vestibulum. Suscipit tempor in ridiculus lectus vestibulum tempor. Tellus fames a purus risus. Euismod duis faucibus odio enim eget diam condimentum turpis. Purus viverra aliquam aliquet urna eros tellus integer faucibus.
4	Does the break site really need to be 200 bp away from the primers?	The requirements of sequence length are flexible. This region upstream of the break site is used to align the sequencing data of the test sample with that of the control sample. The region behind the break site is used for a decomposition to determine the various indels in the pool of cells. In general, with a bigger stretch of sequence trace a better estimation can be performed by TIDE. We advise to sequence a stretch of DNA ~700bp enclosing the designed editing site. The projected break site should be located preferably ~200bp downstream from the sequencing start site.
6	What do the different indel bars indicate when cell clone was sequenced?	Lorem ipsum dolor sit amet consectetur. Malesuada urna hendrerit curabitur eleifend. Euismod nibh posuere vulputate eget nulla orci duis platea odio. Purus in volutpat mattis aliquet massa feugiat ipsum at vestibulum. Suscipit tempor in ridiculus lectus vestibulum tempor. Tellus fames a purus risus. Euismod duis faucibus odio enim eget diam condimentum turpis. Purus viverra aliquam aliquet urna eros tellus integer faucibus.
8	Can TIDE be used for other nucleases (e.g. TALEN, ZFN, other RNA guided nucleases with different PAM)?	Lorem ipsum dolor sit amet consectetur. Malesuada urna hendrerit curabitur eleifend. Euismod nibh posuere vulputate eget nulla orci duis platea odio. Purus in volutpat mattis aliquet massa feugiat ipsum at vestibulum. Suscipit tempor in ridiculus lectus vestibulum tempor. Tellus fames a purus risus. Euismod duis faucibus odio enim eget diam condimentum turpis. Purus viverra aliquam aliquet urna eros tellus integer faucibus.
\.


--
-- Data for Name: components_faq_faqs; Type: TABLE DATA; Schema: public; Owner: strapi_worker
--

COPY public.components_faq_faqs (id) FROM stdin;
1
\.


--
-- Data for Name: components_faq_faqs_components; Type: TABLE DATA; Schema: public; Owner: strapi_worker
--

COPY public.components_faq_faqs_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
1	1	1	faq.faq-item	items	1
2	1	2	faq.faq-item	items	2
3	1	4	faq.faq-item	items	3
4	1	3	faq.faq-item	items	4
5	1	5	faq.faq-item	items	5
6	1	6	faq.faq-item	items	6
7	1	7	faq.faq-item	items	7
8	1	8	faq.faq-item	items	8
\.


--
-- Data for Name: components_get_started_get_starteds; Type: TABLE DATA; Schema: public; Owner: strapi_worker
--

COPY public.components_get_started_get_starteds (id, heading) FROM stdin;
1	Overview:
\.


--
-- Data for Name: components_get_started_get_starteds_components; Type: TABLE DATA; Schema: public; Owner: strapi_worker
--

COPY public.components_get_started_get_starteds_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
1	1	1	get-started.item	items	1
3	1	2	get-started.item	items	2
\.


--
-- Data for Name: components_get_started_items; Type: TABLE DATA; Schema: public; Owner: strapi_worker
--

COPY public.components_get_started_items (id, heading, content) FROM stdin;
2	Lorem ipsum dolor sit amet consectetur. Lacinia phasellus leo varius rutrum et tincidunt.	Lorem ipsum dolor sit amet consectetur. Malesuada urna hendrerit curabitur eleifend. Euismod nibh posuere vulputate eget nulla orci duis platea odio. Purus in volutpat mattis aliquet massa feugiat ipsum at vestibulum. Suscipit tempor in ridiculus lectus vestibulum tempor. Tellus fames a purus risus. Euismod duis faucibus odio enim eget diam condimentum turpis. Purus viverra aliquam aliquet urna eros tellus integer faucibus.
1	Lorem ipsum dolor sit amet consectetur. Lacinia phasellus leo varius rutrum et tincidunt.	Lorem ipsum dolor sit amet consectetur. Malesuada urna hendrerit curabitur eleifend. Euismod nibh posuere vulputate eget nulla orci duis platea odio. Purus in volutpat mattis aliquet massa feugiat ipsum at vestibulum. Suscipit tempor in ridiculus lectus vestibulum tempor. Tellus fames a purus risus. Euismod duis faucibus odio enim eget diam condimentum turpis. Purus viverra aliquam aliquet urna eros tellus integer faucibus.
\.


--
-- Data for Name: components_home_heroes; Type: TABLE DATA; Schema: public; Owner: strapi_worker
--

COPY public.components_home_heroes (id, heading) FROM stdin;
1	Rapid and Easy Quantitative Assessment of Genome Editing
\.


--
-- Data for Name: components_home_heroes_components; Type: TABLE DATA; Schema: public; Owner: strapi_worker
--

COPY public.components_home_heroes_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
4	1	1	ui.button	button	4
1	1	1	ui.text	items	1
2	1	2	ui.text	items	2
3	1	3	ui.text	items	3
\.


--
-- Data for Name: components_shared_meta_socials; Type: TABLE DATA; Schema: public; Owner: strapi_worker
--

COPY public.components_shared_meta_socials (id, social_network, title, description) FROM stdin;
\.


--
-- Data for Name: components_shared_seos; Type: TABLE DATA; Schema: public; Owner: strapi_worker
--

COPY public.components_shared_seos (id, meta_title, meta_description, keywords, meta_robots, structured_data, meta_viewport, canonical_url) FROM stdin;
\.


--
-- Data for Name: components_shared_seos_components; Type: TABLE DATA; Schema: public; Owner: strapi_worker
--

COPY public.components_shared_seos_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
\.


--
-- Data for Name: components_ui_buttons; Type: TABLE DATA; Schema: public; Owner: strapi_worker
--

COPY public.components_ui_buttons (id, label, href, class, target) FROM stdin;
3	The Analysts Output 	/tide	\N	\N
4	Get Started	/get-started	\N	\N
6	Support	\N	contact-form	\N
5	FAQ	/faq	\N	\N
2	Upload View	\N	\N	\N
7	Send	\N	\N	\N
1	*Start*   TIDE	/tide	\N	\N
\.


--
-- Data for Name: components_ui_forms; Type: TABLE DATA; Schema: public; Owner: strapi_worker
--

COPY public.components_ui_forms (id, title) FROM stdin;
\.


--
-- Data for Name: components_ui_forms_components; Type: TABLE DATA; Schema: public; Owner: strapi_worker
--

COPY public.components_ui_forms_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
\.


--
-- Data for Name: components_ui_inputs; Type: TABLE DATA; Schema: public; Owner: strapi_worker
--

COPY public.components_ui_inputs (id, placeholder, error, type, name, required, description, tooltip, tooltip_content, label, range_min, range_max) FROM stdin;
7	\N	\N	range	decomposition	\N	The sequence segment used for decomposition.Default is maximum window possible	This is a tooltip	\N	Decomposition window (bp):	0	1000
1	Type here	\N	text	sample	\N	E.G. sample name.	This is a tooltip	Tooltips are used to describe or identify an element. In most scenarios, tooltips help the user understand the meaning, function or alt-text of an element.	Title plot: 	\N	\N
3	Upload files	\N	file	controlfile	\N	This is a hint text to help user.	This is a tooltip	Tooltips are used to describe or identify an element. In most scenarios, tooltips help the user understand the meaning, function or alt-text of an element.	Control Sample Chromatogram:	\N	\N
2	Type here	*Error message	text	sequence	t	Submit 20nt guide sequence upstream of PAM ('5-'3).	This is a tooltip	Tooltips are used to describe or identify an element. In most scenarios, tooltips help the user understand the meaning, function or alt-text of an element.	Guide sequence:	\N	\N
4	Upload files	\N	file	samplefile	\N	This is a hint text to help user.	This is a tooltip	Tooltips are used to describe or identify an element. In most scenarios, tooltips help the user understand the meaning, function or alt-text of an element.	Test Sample Chromatogram:	\N	\N
10	\N	\N	checkbox	batch-mode	\N	Lorem Ipsum	\N	\N	Run Samples in Batch mode	\N	\N
11	\N	\N	checkbox	example-data	\N	Lorem Ipsum	\N	\N	Load Example Data	\N	\N
6	\N	\N	range	alignment	\N	The sequence segment used to align the control and test sample.	This is a tooltip	Tooltips are used to describe or identify an element. In most scenarios, tooltips help the user understand the meaning, function or alt-text of an element.	Alignment window (bp)	\N	1000
8	\N	\N	range	indel	\N	Maximum size of insertions and deletions modeled in decomposition.	This is a tooltip	Tooltips are used to describe or identify an element. In most scenarios, tooltips help the user understand the meaning, function or alt-text of an element.	Indel size range:	\N	1000
5	\N	\N	\N	\N	\N	All parameters have default settings but can be adjusted here manually.	\N	\N	Parameters	\N	\N
9	0.00	*Error message	number	p-threshold	t	Significance cutoff for decomposition.	This is a tooltip	Tooltips are used to describe or identify an element. In most scenarios, tooltips help the user understand the meaning, function or alt-text of an element.	P-value threshold:	\N	\N
\.


--
-- Data for Name: components_ui_texts; Type: TABLE DATA; Schema: public; Owner: strapi_worker
--

COPY public.components_ui_texts (id, text) FROM stdin;
2	Input: 2 Sanger sequence traces
1	For non-templated Cas9 editing
3	Output: Quantitative spectrum of indels around the cut site
\.


--
-- Data for Name: contacts; Type: TABLE DATA; Schema: public; Owner: strapi_worker
--

COPY public.contacts (id, heading, content, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
1	Contact Tide	Feel free to ask or suggest, we are waiting for you on the other side.	2023-12-17 10:49:13.158	2023-12-18 11:59:44.361	2023-12-17 10:49:54.408	1	1
\.


--
-- Data for Name: contacts_components; Type: TABLE DATA; Schema: public; Owner: strapi_worker
--

COPY public.contacts_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
1	1	1	contact.contact	form	\N
3	1	7	ui.button	submit	\N
\.


--
-- Data for Name: files; Type: TABLE DATA; Schema: public; Owner: strapi_worker
--

COPY public.files (id, name, alternative_text, caption, width, height, formats, hash, ext, mime, size, url, preview_url, provider, provider_metadata, folder_path, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	nci.svg	\N	\N	117	73	\N	nci_6e7106f7ae	.svg	image/svg+xml	47.25	/uploads/nci_6e7106f7ae.svg	\N	local	\N	/	2023-12-13 20:58:30.552	2023-12-13 20:58:30.552	1	1
2	hero.png	\N	\N	682	904	{"small": {"ext": ".png", "url": "/uploads/small_hero_55be00d425.png", "hash": "small_hero_55be00d425", "mime": "image/png", "name": "small_hero.png", "path": null, "size": 395.2, "width": 377, "height": 500}, "medium": {"ext": ".png", "url": "/uploads/medium_hero_55be00d425.png", "hash": "medium_hero_55be00d425", "mime": "image/png", "name": "medium_hero.png", "path": null, "size": 841.04, "width": 566, "height": 750}, "thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_hero_55be00d425.png", "hash": "thumbnail_hero_55be00d425", "mime": "image/png", "name": "thumbnail_hero.png", "path": null, "size": 47.58, "width": 118, "height": 156}}	hero_55be00d425	.png	image/png	187.41	/uploads/hero_55be00d425.png	\N	local	\N	/	2023-12-13 20:58:58.373	2023-12-13 20:58:58.373	1	1
3	empty.svg	\N	\N	280	280	\N	empty_5421f5d384	.svg	image/svg+xml	3.70	/uploads/empty_5421f5d384.svg	\N	local	\N	/	2023-12-16 22:22:36.706	2023-12-16 22:22:36.706	1	1
4	Rectangle 58.png	\N	\N	492	222	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_Rectangle_58_bd3ca7eab1.png", "hash": "thumbnail_Rectangle_58_bd3ca7eab1", "mime": "image/png", "name": "thumbnail_Rectangle 58.png", "path": null, "size": 29.06, "width": 245, "height": 111}}	Rectangle_58_bd3ca7eab1	.png	image/png	39.16	/uploads/Rectangle_58_bd3ca7eab1.png	\N	local	\N	/	2023-12-16 22:46:03.311	2023-12-16 22:46:03.311	1	1
5	analytics.png	\N	\N	492	222	{"thumbnail": {"ext": ".png", "url": "/uploads/thumbnail_analytics_39ee85cfe1.png", "hash": "thumbnail_analytics_39ee85cfe1", "mime": "image/png", "name": "thumbnail_analytics.png", "path": null, "size": 29.06, "width": 245, "height": 111}}	analytics_39ee85cfe1	.png	image/png	39.16	/uploads/analytics_39ee85cfe1.png	\N	local	\N	/	2023-12-16 22:46:30.685	2023-12-16 22:46:30.685	1	1
\.


--
-- Data for Name: files_folder_links; Type: TABLE DATA; Schema: public; Owner: strapi_worker
--

COPY public.files_folder_links (id, file_id, folder_id, file_order) FROM stdin;
\.


--
-- Data for Name: files_related_morphs; Type: TABLE DATA; Schema: public; Owner: strapi_worker
--

COPY public.files_related_morphs (id, file_id, related_id, related_type, field, "order") FROM stdin;
7	3	1	analysis.empty	image	1
10	5	1	get-started.item	images	1
11	4	1	get-started.item	images	2
14	1	1	home.hero	logo	1
15	2	1	home.hero	image	1
\.


--
-- Data for Name: i18n_locale; Type: TABLE DATA; Schema: public; Owner: strapi_worker
--

COPY public.i18n_locale (id, name, code, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	English (en)	en	2023-12-13 20:17:35.335	2023-12-13 20:17:35.335	\N	\N
\.


--
-- Data for Name: layouts; Type: TABLE DATA; Schema: public; Owner: strapi_worker
--

COPY public.layouts (id, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
1	2023-12-16 20:55:28.532	2023-12-16 22:00:09.561	2023-12-16 20:55:29.063	1	1
\.


--
-- Data for Name: layouts_components; Type: TABLE DATA; Schema: public; Owner: strapi_worker
--

COPY public.layouts_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
1	1	3	ui.button	menu	1
2	1	4	ui.button	menu	2
3	1	5	ui.button	menu	3
4	1	6	ui.button	menu	4
\.


--
-- Data for Name: pages; Type: TABLE DATA; Schema: public; Owner: strapi_worker
--

COPY public.pages (id, title, slug, created_at, updated_at, published_at, created_by_id, updated_by_id) FROM stdin;
4	FAQ	faq	2023-12-16 20:49:23.032	2023-12-16 21:52:19.048	2023-12-16 20:49:24.627	1	1
5	Analysis results	tide	2023-12-16 22:19:37.109	2023-12-16 22:22:39.106	2023-12-16 22:19:37.967	1	1
3	Get Started	get-started	2023-12-16 20:49:14.734	2023-12-16 22:46:51.132	2023-12-16 20:49:15.429	1	1
1	home	home	2023-12-13 20:59:03.081	2023-12-18 12:05:25.865	2023-12-13 20:59:03.717	1	1
\.


--
-- Data for Name: pages_components; Type: TABLE DATA; Schema: public; Owner: strapi_worker
--

COPY public.pages_components (id, entity_id, component_id, component_type, field, "order") FROM stdin;
4	4	1	faq.faq	blocks	1
5	5	1	analysis.empty	blocks	1
7	3	1	get-started.get-started	blocks	1
9	1	1	home.hero	blocks	1
\.


--
-- Data for Name: strapi_api_token_permissions; Type: TABLE DATA; Schema: public; Owner: strapi_worker
--

COPY public.strapi_api_token_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: strapi_api_token_permissions_token_links; Type: TABLE DATA; Schema: public; Owner: strapi_worker
--

COPY public.strapi_api_token_permissions_token_links (id, api_token_permission_id, api_token_id, api_token_permission_order) FROM stdin;
\.


--
-- Data for Name: strapi_api_tokens; Type: TABLE DATA; Schema: public; Owner: strapi_worker
--

COPY public.strapi_api_tokens (id, name, description, type, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: strapi_core_store_settings; Type: TABLE DATA; Schema: public; Owner: strapi_worker
--

COPY public.strapi_core_store_settings (id, key, value, type, environment, tag) FROM stdin;
40	plugin_content_manager_configuration_components::contact.item	{"uid":"contact.item","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"label","defaultSortBy":"label","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"label":{"edit":{"label":"label","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"label","searchable":true,"sortable":true}},"placeholder":{"edit":{"label":"placeholder","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"placeholder","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"error":{"edit":{"label":"error","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"error","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"required":{"edit":{"label":"required","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"required","searchable":true,"sortable":true}}},"layouts":{"list":["id","label","placeholder","name"],"edit":[[{"name":"label","size":6},{"name":"placeholder","size":6}],[{"name":"name","size":6},{"name":"error","size":6}],[{"name":"type","size":6},{"name":"required","size":4}]]},"isComponent":true}	object	\N	\N
7	plugin_content_manager_configuration_content_types::admin::permission	{"uid":"admin::permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"actionParameters":{"edit":{"label":"actionParameters","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"actionParameters","searchable":false,"sortable":false}},"subject":{"edit":{"label":"subject","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subject","searchable":true,"sortable":true}},"properties":{"edit":{"label":"properties","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"properties","searchable":false,"sortable":false}},"conditions":{"edit":{"label":"conditions","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"conditions","searchable":false,"sortable":false}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","subject","role"],"edit":[[{"name":"action","size":6}],[{"name":"actionParameters","size":12}],[{"name":"subject","size":6}],[{"name":"properties","size":12}],[{"name":"conditions","size":12}],[{"name":"role","size":6}]]}}	object	\N	\N
8	plugin_content_manager_configuration_content_types::admin::role	{"uid":"admin::role","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"users":{"edit":{"label":"users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"firstname"},"list":{"label":"users","searchable":false,"sortable":false}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","description"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}],[{"name":"description","size":6},{"name":"users","size":6}],[{"name":"permissions","size":6}]]}}	object	\N	\N
9	plugin_content_manager_configuration_content_types::admin::api-token	{"uid":"admin::api-token","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"accessKey":{"edit":{"label":"accessKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"accessKey","searchable":true,"sortable":true}},"lastUsedAt":{"edit":{"label":"lastUsedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastUsedAt","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"expiresAt":{"edit":{"label":"expiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"expiresAt","searchable":true,"sortable":true}},"lifespan":{"edit":{"label":"lifespan","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lifespan","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","type"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6},{"name":"accessKey","size":6}],[{"name":"lastUsedAt","size":6},{"name":"permissions","size":6}],[{"name":"expiresAt","size":6},{"name":"lifespan","size":4}]]}}	object	\N	\N
1	strapi_content_types_schema	{"admin::permission":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"actionParameters":{"type":"json","configurable":false,"required":false,"default":{}},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"actionParameters":{"type":"json","configurable":false,"required":false,"default":{}},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"}},"kind":"collectionType"},"modelType":"contentType","modelName":"permission","connection":"default","uid":"admin::permission","plugin":"admin","globalId":"AdminPermission"},"admin::user":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"registrationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false,"searchable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"config":{"attributes":{"resetPasswordToken":{"hidden":true},"registrationToken":{"hidden":true}}},"kind":"collectionType","__schema__":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"registrationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false,"searchable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"user","connection":"default","uid":"admin::user","plugin":"admin","globalId":"AdminUser"},"admin::role":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"}},"kind":"collectionType"},"modelType":"contentType","modelName":"role","connection":"default","uid":"admin::role","plugin":"admin","globalId":"AdminRole"},"admin::api-token":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access","custom"],"configurable":false,"required":true,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true,"searchable":false},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::api-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access","custom"],"configurable":false,"required":true,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true,"searchable":false},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::api-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"api-token","connection":"default","uid":"admin::api-token","plugin":"admin","globalId":"AdminApiToken"},"admin::api-token-permission":{"collectionName":"strapi_api_token_permissions","info":{"name":"API Token Permission","description":"","singularName":"api-token-permission","pluralName":"api-token-permissions","displayName":"API Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::api-token"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_api_token_permissions","info":{"name":"API Token Permission","description":"","singularName":"api-token-permission","pluralName":"api-token-permissions","displayName":"API Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::api-token"}},"kind":"collectionType"},"modelType":"contentType","modelName":"api-token-permission","connection":"default","uid":"admin::api-token-permission","plugin":"admin","globalId":"AdminApiTokenPermission"},"admin::transfer-token":{"collectionName":"strapi_transfer_tokens","info":{"name":"Transfer Token","singularName":"transfer-token","pluralName":"transfer-tokens","displayName":"Transfer Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::transfer-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_transfer_tokens","info":{"name":"Transfer Token","singularName":"transfer-token","pluralName":"transfer-tokens","displayName":"Transfer Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true,"unique":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true},"lastUsedAt":{"type":"datetime","configurable":false,"required":false},"permissions":{"type":"relation","target":"admin::transfer-token-permission","relation":"oneToMany","mappedBy":"token","configurable":false,"required":false},"expiresAt":{"type":"datetime","configurable":false,"required":false},"lifespan":{"type":"biginteger","configurable":false,"required":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"transfer-token","connection":"default","uid":"admin::transfer-token","plugin":"admin","globalId":"AdminTransferToken"},"admin::transfer-token-permission":{"collectionName":"strapi_transfer_token_permissions","info":{"name":"Transfer Token Permission","description":"","singularName":"transfer-token-permission","pluralName":"transfer-token-permissions","displayName":"Transfer Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::transfer-token"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_transfer_token_permissions","info":{"name":"Transfer Token Permission","description":"","singularName":"transfer-token-permission","pluralName":"transfer-token-permissions","displayName":"Transfer Token Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"token":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::transfer-token"}},"kind":"collectionType"},"modelType":"contentType","modelName":"transfer-token-permission","connection":"default","uid":"admin::transfer-token-permission","plugin":"admin","globalId":"AdminTransferTokenPermission"},"plugin::upload.file":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false},"folder":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"files","private":true},"folderPath":{"type":"string","min":1,"required":true,"private":true,"searchable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"indexes":[{"name":"upload_files_folder_path_index","columns":["folder_path"],"type":null},{"name":"upload_files_created_at_index","columns":["created_at"],"type":null},{"name":"upload_files_updated_at_index","columns":["updated_at"],"type":null},{"name":"upload_files_name_index","columns":["name"],"type":null},{"name":"upload_files_size_index","columns":["size"],"type":null},{"name":"upload_files_ext_index","columns":["ext"],"type":null}],"kind":"collectionType","__schema__":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false},"folder":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"files","private":true},"folderPath":{"type":"string","min":1,"required":true,"private":true,"searchable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"file","connection":"default","uid":"plugin::upload.file","plugin":"upload","globalId":"UploadFile"},"plugin::upload.folder":{"collectionName":"upload_folders","info":{"singularName":"folder","pluralName":"folders","displayName":"Folder"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"required":true},"pathId":{"type":"integer","unique":true,"required":true},"parent":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"children"},"children":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","mappedBy":"parent"},"files":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","mappedBy":"folder"},"path":{"type":"string","min":1,"required":true},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"indexes":[{"name":"upload_folders_path_id_index","columns":["path_id"],"type":"unique"},{"name":"upload_folders_path_index","columns":["path"],"type":"unique"}],"kind":"collectionType","__schema__":{"collectionName":"upload_folders","info":{"singularName":"folder","pluralName":"folders","displayName":"Folder"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"required":true},"pathId":{"type":"integer","unique":true,"required":true},"parent":{"type":"relation","relation":"manyToOne","target":"plugin::upload.folder","inversedBy":"children"},"children":{"type":"relation","relation":"oneToMany","target":"plugin::upload.folder","mappedBy":"parent"},"files":{"type":"relation","relation":"oneToMany","target":"plugin::upload.file","mappedBy":"folder"},"path":{"type":"string","min":1,"required":true}},"kind":"collectionType"},"modelType":"contentType","modelName":"folder","connection":"default","uid":"plugin::upload.folder","plugin":"upload","globalId":"UploadFolder"},"plugin::users-permissions.permission":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"permission","connection":"default","uid":"plugin::users-permissions.permission","plugin":"users-permissions","globalId":"UsersPermissionsPermission"},"plugin::users-permissions.role":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"role","connection":"default","uid":"plugin::users-permissions.role","plugin":"users-permissions","globalId":"UsersPermissionsRole"},"plugin::users-permissions.user":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"draftAndPublish":false,"timestamps":true},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"config":{"attributes":{"resetPasswordToken":{"hidden":true},"confirmationToken":{"hidden":true},"provider":{"hidden":true}}},"kind":"collectionType","__schema__":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"draftAndPublish":false,"timestamps":true},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true,"searchable":false},"resetPasswordToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmationToken":{"type":"string","configurable":false,"private":true,"searchable":false},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"user","connection":"default","uid":"plugin::users-permissions.user","plugin":"users-permissions","globalId":"UsersPermissionsUser"},"plugin::i18n.locale":{"info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"locale","connection":"default","uid":"plugin::i18n.locale","plugin":"i18n","collectionName":"i18n_locale","globalId":"I18NLocale"},"api::analysis.analysis":{"kind":"singleType","collectionName":"analyses","info":{"singularName":"analysis","pluralName":"analyses","displayName":"analysis","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"heading":{"type":"string"},"content":{"type":"richtext"},"form":{"type":"component","repeatable":true,"component":"ui.input"},"submit":{"type":"component","repeatable":false,"component":"ui.button"},"formTitle":{"type":"string"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"analyses","info":{"singularName":"analysis","pluralName":"analyses","displayName":"analysis","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"heading":{"type":"string"},"content":{"type":"richtext"},"form":{"type":"component","repeatable":true,"component":"ui.input"},"submit":{"type":"component","repeatable":false,"component":"ui.button"},"formTitle":{"type":"string"}},"kind":"singleType"},"modelType":"contentType","modelName":"analysis","connection":"default","uid":"api::analysis.analysis","apiName":"analysis","globalId":"Analysis","actions":{},"lifecycles":{}},"api::contact.contact":{"kind":"singleType","collectionName":"contacts","info":{"singularName":"contact","pluralName":"contacts","displayName":"contact","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"form":{"displayName":"contact","type":"component","repeatable":false,"component":"contact.contact"},"heading":{"type":"string"},"content":{"type":"text"},"submit":{"type":"component","repeatable":false,"component":"ui.button"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"contacts","info":{"singularName":"contact","pluralName":"contacts","displayName":"contact","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"form":{"displayName":"contact","type":"component","repeatable":false,"component":"contact.contact"},"heading":{"type":"string"},"content":{"type":"text"},"submit":{"type":"component","repeatable":false,"component":"ui.button"}},"kind":"singleType"},"modelType":"contentType","modelName":"contact","connection":"default","uid":"api::contact.contact","apiName":"contact","globalId":"Contact","actions":{},"lifecycles":{}},"api::layout.layout":{"kind":"singleType","collectionName":"layouts","info":{"singularName":"layout","pluralName":"layouts","displayName":"layout"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"menu":{"type":"component","repeatable":true,"component":"ui.button"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"layouts","info":{"singularName":"layout","pluralName":"layouts","displayName":"layout"},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"menu":{"type":"component","repeatable":true,"component":"ui.button"}},"kind":"singleType"},"modelType":"contentType","modelName":"layout","connection":"default","uid":"api::layout.layout","apiName":"layout","globalId":"Layout","actions":{},"lifecycles":{}},"api::page.page":{"kind":"collectionType","collectionName":"pages","info":{"singularName":"page","pluralName":"pages","displayName":"page","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"title":{"type":"string"},"slug":{"type":"uid","targetField":"title"},"blocks":{"type":"dynamiczone","components":["home.hero","faq.faq","analysis.empty","get-started.get-started"]},"seo":{"type":"component","repeatable":false,"component":"shared.seo"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"pages","info":{"singularName":"page","pluralName":"pages","displayName":"page","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"title":{"type":"string"},"slug":{"type":"uid","targetField":"title"},"blocks":{"type":"dynamiczone","components":["home.hero","faq.faq","analysis.empty","get-started.get-started"]},"seo":{"type":"component","repeatable":false,"component":"shared.seo"}},"kind":"collectionType"},"modelType":"contentType","modelName":"page","connection":"default","uid":"api::page.page","apiName":"page","globalId":"Page","actions":{},"lifecycles":{}}}	object	\N	\N
10	plugin_content_manager_configuration_content_types::admin::api-token-permission	{"uid":"admin::api-token-permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"token":{"edit":{"label":"token","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"token","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","token","createdAt"],"edit":[[{"name":"action","size":6},{"name":"token","size":6}]]}}	object	\N	\N
15	plugin_content_manager_configuration_content_types::plugin::upload.file	{"uid":"plugin::upload.file","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"alternativeText":{"edit":{"label":"alternativeText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"alternativeText","searchable":true,"sortable":true}},"caption":{"edit":{"label":"caption","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"caption","searchable":true,"sortable":true}},"width":{"edit":{"label":"width","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"width","searchable":true,"sortable":true}},"height":{"edit":{"label":"height","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"height","searchable":true,"sortable":true}},"formats":{"edit":{"label":"formats","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"formats","searchable":false,"sortable":false}},"hash":{"edit":{"label":"hash","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"hash","searchable":true,"sortable":true}},"ext":{"edit":{"label":"ext","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ext","searchable":true,"sortable":true}},"mime":{"edit":{"label":"mime","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"mime","searchable":true,"sortable":true}},"size":{"edit":{"label":"size","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"size","searchable":true,"sortable":true}},"url":{"edit":{"label":"url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"url","searchable":true,"sortable":true}},"previewUrl":{"edit":{"label":"previewUrl","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"previewUrl","searchable":true,"sortable":true}},"provider":{"edit":{"label":"provider","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"provider","searchable":true,"sortable":true}},"provider_metadata":{"edit":{"label":"provider_metadata","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"provider_metadata","searchable":false,"sortable":false}},"folder":{"edit":{"label":"folder","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"folder","searchable":true,"sortable":true}},"folderPath":{"edit":{"label":"folderPath","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"folderPath","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","alternativeText","caption"],"edit":[[{"name":"name","size":6},{"name":"alternativeText","size":6}],[{"name":"caption","size":6},{"name":"width","size":4}],[{"name":"height","size":4}],[{"name":"formats","size":12}],[{"name":"hash","size":6},{"name":"ext","size":6}],[{"name":"mime","size":6},{"name":"size","size":4}],[{"name":"url","size":6},{"name":"previewUrl","size":6}],[{"name":"provider","size":6}],[{"name":"provider_metadata","size":12}],[{"name":"folder","size":6},{"name":"folderPath","size":6}]]}}	object	\N	\N
20	plugin_content_manager_configuration_content_types::plugin::users-permissions.user	{"uid":"plugin::users-permissions.user","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"username","defaultSortBy":"username","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"username":{"edit":{"label":"username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"username","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"provider":{"edit":{"label":"provider","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"provider","searchable":true,"sortable":true}},"password":{"edit":{"label":"password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"resetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"resetPasswordToken","searchable":true,"sortable":true}},"confirmationToken":{"edit":{"label":"confirmationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"confirmationToken","searchable":true,"sortable":true}},"confirmed":{"edit":{"label":"confirmed","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"confirmed","searchable":true,"sortable":true}},"blocked":{"edit":{"label":"blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocked","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","username","email","confirmed"],"edit":[[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"confirmed","size":4}],[{"name":"blocked","size":4},{"name":"role","size":6}]]}}	object	\N	\N
11	plugin_content_manager_configuration_content_types::admin::transfer-token	{"uid":"admin::transfer-token","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"accessKey":{"edit":{"label":"accessKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"accessKey","searchable":true,"sortable":true}},"lastUsedAt":{"edit":{"label":"lastUsedAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastUsedAt","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"expiresAt":{"edit":{"label":"expiresAt","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"expiresAt","searchable":true,"sortable":true}},"lifespan":{"edit":{"label":"lifespan","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lifespan","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","accessKey"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"accessKey","size":6},{"name":"lastUsedAt","size":6}],[{"name":"permissions","size":6},{"name":"expiresAt","size":6}],[{"name":"lifespan","size":4}]]}}	object	\N	\N
17	plugin_content_manager_configuration_content_types::plugin::i18n.locale	{"uid":"plugin::i18n.locale","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","createdAt"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}]]}}	object	\N	\N
12	plugin_content_manager_configuration_content_types::admin::transfer-token-permission	{"uid":"admin::transfer-token-permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"token":{"edit":{"label":"token","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"token","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","token","createdAt"],"edit":[[{"name":"action","size":6},{"name":"token","size":6}]]}}	object	\N	\N
16	plugin_content_manager_configuration_content_types::plugin::upload.folder	{"uid":"plugin::upload.folder","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"pathId":{"edit":{"label":"pathId","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"pathId","searchable":true,"sortable":true}},"parent":{"edit":{"label":"parent","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"parent","searchable":true,"sortable":true}},"children":{"edit":{"label":"children","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"children","searchable":false,"sortable":false}},"files":{"edit":{"label":"files","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"files","searchable":false,"sortable":false}},"path":{"edit":{"label":"path","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"path","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","pathId","parent"],"edit":[[{"name":"name","size":6},{"name":"pathId","size":4}],[{"name":"parent","size":6},{"name":"children","size":6}],[{"name":"files","size":6},{"name":"path","size":6}]]}}	object	\N	\N
27	plugin_i18n_default_locale	"en"	string	\N	\N
28	core_admin_auth	{"providers":{"autoRegister":false,"defaultRole":null,"ssoLockedRoles":null}}	object	\N	\N
18	plugin_content_manager_configuration_content_types::plugin::users-permissions.role	{"uid":"plugin::users-permissions.role","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"users":{"edit":{"label":"users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"users","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","type"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6},{"name":"permissions","size":6}],[{"name":"users","size":6}]]}}	object	\N	\N
13	plugin_content_manager_configuration_content_types::api::page.page	{"uid":"api::page.page","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"slug":{"edit":{"label":"slug","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"slug","searchable":true,"sortable":true}},"blocks":{"edit":{"label":"blocks","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocks","searchable":false,"sortable":false}},"seo":{"edit":{"label":"seo","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"seo","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","title","slug"],"edit":[[{"name":"title","size":6},{"name":"slug","size":6}],[{"name":"blocks","size":12}],[{"name":"seo","size":12}]]}}	object	\N	\N
14	plugin_content_manager_configuration_content_types::admin::user	{"uid":"admin::user","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"firstname","defaultSortBy":"firstname","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"firstname":{"edit":{"label":"firstname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"firstname","searchable":true,"sortable":true}},"lastname":{"edit":{"label":"lastname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastname","searchable":true,"sortable":true}},"username":{"edit":{"label":"username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"username","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"password":{"edit":{"label":"password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"resetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"resetPasswordToken","searchable":true,"sortable":true}},"registrationToken":{"edit":{"label":"registrationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"registrationToken","searchable":true,"sortable":true}},"isActive":{"edit":{"label":"isActive","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"isActive","searchable":true,"sortable":true}},"roles":{"edit":{"label":"roles","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"roles","searchable":false,"sortable":false}},"blocked":{"edit":{"label":"blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocked","searchable":true,"sortable":true}},"preferedLanguage":{"edit":{"label":"preferedLanguage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"preferedLanguage","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","firstname","lastname","username"],"edit":[[{"name":"firstname","size":6},{"name":"lastname","size":6}],[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"isActive","size":4}],[{"name":"roles","size":6},{"name":"blocked","size":4}],[{"name":"preferedLanguage","size":6}]]}}	object	\N	\N
19	plugin_content_manager_configuration_content_types::plugin::users-permissions.permission	{"uid":"plugin::users-permissions.permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","role","createdAt"],"edit":[[{"name":"action","size":6},{"name":"role","size":6}]]}}	object	\N	\N
21	plugin_upload_settings	{"sizeOptimization":true,"responsiveDimensions":true,"autoOrientation":false}	object	\N	\N
22	plugin_upload_view_configuration	{"pageSize":10,"sort":"createdAt:DESC"}	object	\N	\N
24	plugin_users-permissions_grant	{"email":{"enabled":true,"icon":"envelope"},"discord":{"enabled":false,"icon":"discord","key":"","secret":"","callback":"api/auth/discord/callback","scope":["identify","email"]},"facebook":{"enabled":false,"icon":"facebook-square","key":"","secret":"","callback":"api/auth/facebook/callback","scope":["email"]},"google":{"enabled":false,"icon":"google","key":"","secret":"","callback":"api/auth/google/callback","scope":["email"]},"github":{"enabled":false,"icon":"github","key":"","secret":"","callback":"api/auth/github/callback","scope":["user","user:email"]},"microsoft":{"enabled":false,"icon":"windows","key":"","secret":"","callback":"api/auth/microsoft/callback","scope":["user.read"]},"twitter":{"enabled":false,"icon":"twitter","key":"","secret":"","callback":"api/auth/twitter/callback"},"instagram":{"enabled":false,"icon":"instagram","key":"","secret":"","callback":"api/auth/instagram/callback","scope":["user_profile"]},"vk":{"enabled":false,"icon":"vk","key":"","secret":"","callback":"api/auth/vk/callback","scope":["email"]},"twitch":{"enabled":false,"icon":"twitch","key":"","secret":"","callback":"api/auth/twitch/callback","scope":["user:read:email"]},"linkedin":{"enabled":false,"icon":"linkedin","key":"","secret":"","callback":"api/auth/linkedin/callback","scope":["r_liteprofile","r_emailaddress"]},"cognito":{"enabled":false,"icon":"aws","key":"","secret":"","subdomain":"my.subdomain.com","callback":"api/auth/cognito/callback","scope":["email","openid","profile"]},"reddit":{"enabled":false,"icon":"reddit","key":"","secret":"","state":true,"callback":"api/auth/reddit/callback","scope":["identity"]},"auth0":{"enabled":false,"icon":"","key":"","secret":"","subdomain":"my-tenant.eu","callback":"api/auth/auth0/callback","scope":["openid","email","profile"]},"cas":{"enabled":false,"icon":"book","key":"","secret":"","callback":"api/auth/cas/callback","scope":["openid email"],"subdomain":"my.subdomain.com/cas"},"patreon":{"enabled":false,"icon":"","key":"","secret":"","callback":"api/auth/patreon/callback","scope":["identity","identity[email]"]}}	object	\N	\N
25	plugin_users-permissions_email	{"reset_password":{"display":"Email.template.reset_password","icon":"sync","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Reset password","message":"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>"}},"email_confirmation":{"display":"Email.template.email_confirmation","icon":"check-square","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Account confirmation","message":"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>"}}}	object	\N	\N
26	plugin_users-permissions_advanced	{"unique_email":true,"allow_register":true,"email_confirmation":false,"email_reset_password":null,"email_confirmation_redirection":null,"default_role":"authenticated"}	object	\N	\N
2	plugin_content_manager_configuration_components::shared.meta-social	{"uid":"shared.meta-social","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"socialNetwork":{"edit":{"label":"socialNetwork","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"socialNetwork","searchable":true,"sortable":true}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"image":{"edit":{"label":"image","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"image","searchable":false,"sortable":false}}},"layouts":{"list":["id","socialNetwork","title","description"],"edit":[[{"name":"socialNetwork","size":6},{"name":"title","size":6}],[{"name":"description","size":6},{"name":"image","size":6}]]},"isComponent":true}	object	\N	\N
4	plugin_content_manager_configuration_components::shared.seo	{"uid":"shared.seo","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"metaTitle","defaultSortBy":"metaTitle","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"metaTitle":{"edit":{"label":"metaTitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"metaTitle","searchable":true,"sortable":true}},"metaDescription":{"edit":{"label":"metaDescription","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"metaDescription","searchable":true,"sortable":true}},"metaImage":{"edit":{"label":"metaImage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"metaImage","searchable":false,"sortable":false}},"metaSocial":{"edit":{"label":"metaSocial","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"metaSocial","searchable":false,"sortable":false}},"keywords":{"edit":{"label":"keywords","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"keywords","searchable":true,"sortable":true}},"metaRobots":{"edit":{"label":"metaRobots","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"metaRobots","searchable":true,"sortable":true}},"structuredData":{"edit":{"label":"structuredData","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"structuredData","searchable":false,"sortable":false}},"metaViewport":{"edit":{"label":"metaViewport","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"metaViewport","searchable":true,"sortable":true}},"canonicalURL":{"edit":{"label":"canonicalURL","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"canonicalURL","searchable":true,"sortable":true}}},"layouts":{"list":["id","metaTitle","metaDescription","metaImage"],"edit":[[{"name":"metaTitle","size":6},{"name":"metaDescription","size":6}],[{"name":"metaImage","size":6}],[{"name":"metaSocial","size":12}],[{"name":"keywords","size":6},{"name":"metaRobots","size":6}],[{"name":"structuredData","size":12}],[{"name":"metaViewport","size":6},{"name":"canonicalURL","size":6}]]},"isComponent":true}	object	\N	\N
23	plugin_upload_metrics	{"weeklySchedule":"57 58 13 * * 5","lastWeeklyUpdate":1703704598041}	object	\N	\N
3	plugin_content_manager_configuration_components::ui.button	{"uid":"ui.button","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"label","defaultSortBy":"label","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"label":{"edit":{"label":"label","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"label","searchable":true,"sortable":true}},"href":{"edit":{"label":"href","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"href","searchable":true,"sortable":true}},"class":{"edit":{"label":"class","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"class","searchable":true,"sortable":true}},"target":{"edit":{"label":"target","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"target","searchable":true,"sortable":true}}},"layouts":{"list":["id","label","href","class"],"edit":[[{"name":"label","size":6},{"name":"href","size":6}],[{"name":"class","size":6},{"name":"target","size":6}]]},"isComponent":true}	object	\N	\N
5	plugin_content_manager_configuration_components::ui.form	{"uid":"ui.form","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"title","defaultSortBy":"title","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"title":{"edit":{"label":"title","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"title","searchable":true,"sortable":true}},"input":{"edit":{"label":"input","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"input","searchable":false,"sortable":false}},"submit":{"edit":{"label":"submit","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"submit","searchable":false,"sortable":false}}},"layouts":{"list":["id","title","input","submit"],"edit":[[{"name":"title","size":6}],[{"name":"input","size":12}],[{"name":"submit","size":12}]]},"isComponent":true}	object	\N	\N
29	plugin_content_manager_configuration_components::home.hero	{"uid":"home.hero","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"heading","defaultSortBy":"heading","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"heading":{"edit":{"label":"heading","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"heading","searchable":true,"sortable":true}},"items":{"edit":{"label":"items","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"items","searchable":false,"sortable":false}},"logo":{"edit":{"label":"logo","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"logo","searchable":false,"sortable":false}},"button":{"edit":{"label":"button","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"button","searchable":false,"sortable":false}},"image":{"edit":{"label":"image","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"image","searchable":false,"sortable":false}}},"layouts":{"list":["id","heading","items","logo"],"edit":[[{"name":"heading","size":6}],[{"name":"items","size":12}],[{"name":"logo","size":6}],[{"name":"button","size":12}],[{"name":"image","size":6}]]},"isComponent":true}	object	\N	\N
30	plugin_content_manager_configuration_components::ui.text	{"uid":"ui.text","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"text","defaultSortBy":"text","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"text":{"edit":{"label":"text","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"text","searchable":true,"sortable":true}}},"layouts":{"list":["id","text"],"edit":[[{"name":"text","size":6}]]},"isComponent":true}	object	\N	\N
31	plugin_seo_settings	{"api::page.page":{"collectionName":"page","seoChecks":{"metaTitle":true,"metaDescription":true,"metaRobots":true,"metaSocial":true,"wordCount":true,"canonicalUrl":true,"keywordDensity":true,"structuredData":true,"alternativeText":true,"lastUpdatedAt":true}}}	object	\N	\N
38	plugin_content_manager_configuration_components::get-started.item	{"uid":"get-started.item","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"heading","defaultSortBy":"heading","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"heading":{"edit":{"label":"heading","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"heading","searchable":true,"sortable":true}},"content":{"edit":{"label":"content","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"content","searchable":true,"sortable":true}},"images":{"edit":{"label":"images","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"images","searchable":false,"sortable":false}}},"layouts":{"list":["id","heading","content","images"],"edit":[[{"name":"heading","size":12}],[{"name":"content","size":12}],[{"name":"images","size":12}]]},"isComponent":true}	object	\N	\N
35	plugin_content_manager_configuration_content_types::api::layout.layout	{"uid":"api::layout.layout","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"menu":{"edit":{"label":"menu","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"menu","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","menu","createdAt","updatedAt"],"edit":[[{"name":"menu","size":12}]]}}	object	\N	\N
36	plugin_content_manager_configuration_components::analysis.empty	{"uid":"analysis.empty","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"heading","defaultSortBy":"heading","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"heading":{"edit":{"label":"heading","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"heading","searchable":true,"sortable":true}},"content":{"edit":{"label":"content","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"content","searchable":true,"sortable":true}},"image":{"edit":{"label":"image","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"image","searchable":false,"sortable":false}}},"layouts":{"list":["id","heading","content","image"],"edit":[[{"name":"heading","size":12}],[{"name":"content","size":12}],[{"name":"image","size":12}]]},"isComponent":true}	object	\N	\N
6	plugin_content_manager_configuration_components::ui.input	{"uid":"ui.input","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"placeholder","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"placeholder":{"edit":{"label":"placeholder","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"placeholder","searchable":true,"sortable":true}},"error":{"edit":{"label":"error","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"error","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"required":{"edit":{"label":"required","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"required","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"tooltip":{"edit":{"label":"tooltip","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"tooltip","searchable":true,"sortable":true}},"tooltipContent":{"edit":{"label":"tooltipContent","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"tooltipContent","searchable":true,"sortable":true}},"label":{"edit":{"label":"label","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"label","searchable":true,"sortable":true}},"rangeMin":{"edit":{"label":"rangeMin","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"rangeMin","searchable":true,"sortable":true}},"rangeMax":{"edit":{"label":"rangeMax","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"rangeMax","searchable":true,"sortable":true}}},"layouts":{"list":["id","placeholder","error","type"],"edit":[[{"name":"name","size":6},{"name":"type","size":6}],[{"name":"placeholder","size":6},{"name":"error","size":6}],[{"name":"label","size":6},{"name":"required","size":6}],[{"name":"description","size":12}],[{"name":"tooltip","size":12}],[{"name":"tooltipContent","size":12}],[{"name":"rangeMin","size":6},{"name":"rangeMax","size":6}]]},"isComponent":true}	object	\N	\N
33	plugin_content_manager_configuration_components::faq.faq-item	{"uid":"faq.faq-item","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"heading","defaultSortBy":"heading","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"heading":{"edit":{"label":"heading","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"heading","searchable":true,"sortable":true}},"content":{"edit":{"label":"content","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"content","searchable":true,"sortable":true}}},"layouts":{"list":["id","heading","content"],"edit":[[{"name":"heading","size":12}],[{"name":"content","size":12}]]},"isComponent":true}	object	\N	\N
34	plugin_content_manager_configuration_components::faq.faq	{"uid":"faq.faq","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"items":{"edit":{"label":"items","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"items","searchable":false,"sortable":false}}},"layouts":{"list":["id","items"],"edit":[[{"name":"items","size":12}]]},"isComponent":true}	object	\N	\N
32	plugin_content_manager_configuration_content_types::api::analysis.analysis	{"uid":"api::analysis.analysis","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"heading","defaultSortBy":"heading","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"heading":{"edit":{"label":"heading","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"heading","searchable":true,"sortable":true}},"content":{"edit":{"label":"content","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"content","searchable":false,"sortable":false}},"form":{"edit":{"label":"form","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"form","searchable":false,"sortable":false}},"submit":{"edit":{"label":"submit","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"submit","searchable":false,"sortable":false}},"formTitle":{"edit":{"label":"formTitle","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"formTitle","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","heading","form","createdAt"],"edit":[[{"name":"heading","size":6}],[{"name":"content","size":12}],[{"name":"formTitle","size":6}],[{"name":"form","size":12}],[{"name":"submit","size":12}]]}}	object	\N	\N
39	plugin_content_manager_configuration_components::contact.contact	{"uid":"contact.contact","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"input":{"edit":{"label":"input","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"input","searchable":false,"sortable":false}}},"layouts":{"list":["id","input"],"edit":[[{"name":"input","size":12}]]},"isComponent":true}	object	\N	\N
37	plugin_content_manager_configuration_components::get-started.get-started	{"uid":"get-started.get-started","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"heading","defaultSortBy":"heading","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":false,"sortable":false}},"heading":{"edit":{"label":"heading","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"heading","searchable":true,"sortable":true}},"items":{"edit":{"label":"items","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"items","searchable":false,"sortable":false}}},"layouts":{"list":["id","heading","items"],"edit":[[{"name":"heading","size":12}],[{"name":"items","size":12}]]},"isComponent":true}	object	\N	\N
41	plugin_content_manager_configuration_content_types::api::contact.contact	{"uid":"api::contact.contact","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"heading","defaultSortBy":"heading","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"form":{"edit":{"label":"form","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"form","searchable":false,"sortable":false}},"heading":{"edit":{"label":"heading","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"heading","searchable":true,"sortable":true}},"content":{"edit":{"label":"content","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"content","searchable":true,"sortable":true}},"submit":{"edit":{"label":"submit","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"submit","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}},"createdBy":{"edit":{"label":"createdBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"createdBy","searchable":true,"sortable":true}},"updatedBy":{"edit":{"label":"updatedBy","description":"","placeholder":"","visible":false,"editable":true,"mainField":"firstname"},"list":{"label":"updatedBy","searchable":true,"sortable":true}}},"layouts":{"list":["id","form","heading","content"],"edit":[[{"name":"heading","size":12}],[{"name":"content","size":12}],[{"name":"form","size":12}],[{"name":"submit","size":12}]]}}	object	\N	\N
\.


--
-- Data for Name: strapi_database_schema; Type: TABLE DATA; Schema: public; Owner: strapi_worker
--

COPY public.strapi_database_schema (id, schema, "time", hash) FROM stdin;
14	{"tables":[{"name":"strapi_core_store_settings","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"value","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"environment","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"tag","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_webhooks","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"headers","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"events","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"enabled","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_permissions","indexes":[{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"action_parameters","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"subject","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"properties","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"conditions","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_users","indexes":[{"name":"admin_users_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"firstname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lastname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"registration_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_active","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"prefered_language","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_roles","indexes":[{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_tokens","indexes":[{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"access_key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"last_used_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lifespan","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_token_permissions","indexes":[{"name":"strapi_api_token_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_api_token_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_api_token_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_api_token_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_transfer_tokens","indexes":[{"name":"strapi_transfer_tokens_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_transfer_tokens_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_transfer_tokens_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_transfer_tokens_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"access_key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"last_used_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"expires_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lifespan","type":"bigInteger","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_transfer_token_permissions","indexes":[{"name":"strapi_transfer_token_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_transfer_token_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_transfer_token_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_transfer_token_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files","indexes":[{"name":"upload_files_folder_path_index","columns":["folder_path"],"type":null},{"name":"upload_files_created_at_index","columns":["created_at"],"type":null},{"name":"upload_files_updated_at_index","columns":["updated_at"],"type":null},{"name":"upload_files_name_index","columns":["name"],"type":null},{"name":"upload_files_size_index","columns":["size"],"type":null},{"name":"upload_files_ext_index","columns":["ext"],"type":null},{"name":"files_created_by_id_fk","columns":["created_by_id"]},{"name":"files_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"files_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"files_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"alternative_text","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"caption","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"width","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"height","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"formats","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"hash","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"ext","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"mime","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"size","type":"decimal","args":[10,2],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"preview_url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider_metadata","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"folder_path","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"upload_folders","indexes":[{"name":"upload_folders_path_id_index","columns":["path_id"],"type":"unique"},{"name":"upload_folders_path_index","columns":["path"],"type":"unique"},{"name":"upload_folders_created_by_id_fk","columns":["created_by_id"]},{"name":"upload_folders_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"upload_folders_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"upload_folders_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"path_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"path","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_permissions","indexes":[{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_roles","indexes":[{"name":"up_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_users","indexes":[{"name":"up_users_created_by_id_fk","columns":["created_by_id"]},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmation_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmed","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"i18n_locale","indexes":[{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"]},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"analyses","indexes":[{"name":"analyses_created_by_id_fk","columns":["created_by_id"]},{"name":"analyses_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"analyses_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"analyses_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"heading","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"content","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"form_title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"contacts","indexes":[{"name":"contacts_created_by_id_fk","columns":["created_by_id"]},{"name":"contacts_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"contacts_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"contacts_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"heading","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"content","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"layouts","indexes":[{"name":"layouts_created_by_id_fk","columns":["created_by_id"]},{"name":"layouts_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"layouts_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"layouts_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"pages","indexes":[{"type":"unique","name":"pages_slug_unique","columns":["slug"]},{"name":"pages_created_by_id_fk","columns":["created_by_id"]},{"name":"pages_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"pages_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"pages_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"slug","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false,"unique":true},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_analysis_empties","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"heading","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"content","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_contact_contacts","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false}]},{"name":"components_contact_items","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"label","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"placeholder","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"error","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"required","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_faq_faq_items","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"heading","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"content","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_faq_faqs","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false}]},{"name":"components_get_started_get_starteds","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"heading","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_get_started_items","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"heading","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"content","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_home_heroes","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"heading","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_meta_socials","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"social_network","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_shared_seos","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"meta_title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"meta_description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"keywords","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"meta_robots","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"structured_data","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"meta_viewport","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"canonical_url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_ui_buttons","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"label","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"href","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"class","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"target","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_ui_forms","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"title","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_ui_inputs","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"placeholder","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"error","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"required","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"tooltip","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"tooltip_content","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"label","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"range_min","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"range_max","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"components_ui_texts","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"text","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_permissions_role_links","indexes":[{"name":"admin_permissions_role_links_fk","columns":["permission_id"]},{"name":"admin_permissions_role_links_inv_fk","columns":["role_id"]},{"name":"admin_permissions_role_links_unique","columns":["permission_id","role_id"],"type":"unique"},{"name":"admin_permissions_role_links_order_inv_fk","columns":["permission_order"]}],"foreignKeys":[{"name":"admin_permissions_role_links_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"admin_permissions","onDelete":"CASCADE"},{"name":"admin_permissions_role_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_users_roles_links","indexes":[{"name":"admin_users_roles_links_fk","columns":["user_id"]},{"name":"admin_users_roles_links_inv_fk","columns":["role_id"]},{"name":"admin_users_roles_links_unique","columns":["user_id","role_id"],"type":"unique"},{"name":"admin_users_roles_links_order_fk","columns":["role_order"]},{"name":"admin_users_roles_links_order_inv_fk","columns":["user_order"]}],"foreignKeys":[{"name":"admin_users_roles_links_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"admin_users","onDelete":"CASCADE"},{"name":"admin_users_roles_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_token_permissions_token_links","indexes":[{"name":"strapi_api_token_permissions_token_links_fk","columns":["api_token_permission_id"]},{"name":"strapi_api_token_permissions_token_links_inv_fk","columns":["api_token_id"]},{"name":"strapi_api_token_permissions_token_links_unique","columns":["api_token_permission_id","api_token_id"],"type":"unique"},{"name":"strapi_api_token_permissions_token_links_order_inv_fk","columns":["api_token_permission_order"]}],"foreignKeys":[{"name":"strapi_api_token_permissions_token_links_fk","columns":["api_token_permission_id"],"referencedColumns":["id"],"referencedTable":"strapi_api_token_permissions","onDelete":"CASCADE"},{"name":"strapi_api_token_permissions_token_links_inv_fk","columns":["api_token_id"],"referencedColumns":["id"],"referencedTable":"strapi_api_tokens","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"api_token_permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"api_token_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"api_token_permission_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_transfer_token_permissions_token_links","indexes":[{"name":"strapi_transfer_token_permissions_token_links_fk","columns":["transfer_token_permission_id"]},{"name":"strapi_transfer_token_permissions_token_links_inv_fk","columns":["transfer_token_id"]},{"name":"strapi_transfer_token_permissions_token_links_unique","columns":["transfer_token_permission_id","transfer_token_id"],"type":"unique"},{"name":"strapi_transfer_token_permissions_token_links_order_inv_fk","columns":["transfer_token_permission_order"]}],"foreignKeys":[{"name":"strapi_transfer_token_permissions_token_links_fk","columns":["transfer_token_permission_id"],"referencedColumns":["id"],"referencedTable":"strapi_transfer_token_permissions","onDelete":"CASCADE"},{"name":"strapi_transfer_token_permissions_token_links_inv_fk","columns":["transfer_token_id"],"referencedColumns":["id"],"referencedTable":"strapi_transfer_tokens","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"transfer_token_permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"transfer_token_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"transfer_token_permission_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files_related_morphs","indexes":[{"name":"files_related_morphs_fk","columns":["file_id"]},{"name":"files_related_morphs_order_index","columns":["order"]},{"name":"files_related_morphs_id_column_index","columns":["related_id"]}],"foreignKeys":[{"name":"files_related_morphs_fk","columns":["file_id"],"referencedColumns":["id"],"referencedTable":"files","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"file_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files_folder_links","indexes":[{"name":"files_folder_links_fk","columns":["file_id"]},{"name":"files_folder_links_inv_fk","columns":["folder_id"]},{"name":"files_folder_links_unique","columns":["file_id","folder_id"],"type":"unique"},{"name":"files_folder_links_order_inv_fk","columns":["file_order"]}],"foreignKeys":[{"name":"files_folder_links_fk","columns":["file_id"],"referencedColumns":["id"],"referencedTable":"files","onDelete":"CASCADE"},{"name":"files_folder_links_inv_fk","columns":["folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"file_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"file_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"upload_folders_parent_links","indexes":[{"name":"upload_folders_parent_links_fk","columns":["folder_id"]},{"name":"upload_folders_parent_links_inv_fk","columns":["inv_folder_id"]},{"name":"upload_folders_parent_links_unique","columns":["folder_id","inv_folder_id"],"type":"unique"},{"name":"upload_folders_parent_links_order_inv_fk","columns":["folder_order"]}],"foreignKeys":[{"name":"upload_folders_parent_links_fk","columns":["folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"},{"name":"upload_folders_parent_links_inv_fk","columns":["inv_folder_id"],"referencedColumns":["id"],"referencedTable":"upload_folders","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"inv_folder_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"folder_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_permissions_role_links","indexes":[{"name":"up_permissions_role_links_fk","columns":["permission_id"]},{"name":"up_permissions_role_links_inv_fk","columns":["role_id"]},{"name":"up_permissions_role_links_unique","columns":["permission_id","role_id"],"type":"unique"},{"name":"up_permissions_role_links_order_inv_fk","columns":["permission_order"]}],"foreignKeys":[{"name":"up_permissions_role_links_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"up_permissions","onDelete":"CASCADE"},{"name":"up_permissions_role_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"permission_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_users_role_links","indexes":[{"name":"up_users_role_links_fk","columns":["user_id"]},{"name":"up_users_role_links_inv_fk","columns":["role_id"]},{"name":"up_users_role_links_unique","columns":["user_id","role_id"],"type":"unique"},{"name":"up_users_role_links_order_inv_fk","columns":["user_order"]}],"foreignKeys":[{"name":"up_users_role_links_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"up_users","onDelete":"CASCADE"},{"name":"up_users_role_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"user_order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"analyses_components","indexes":[{"name":"analyses_field_index","columns":["field"]},{"name":"analyses_component_type_index","columns":["component_type"]},{"name":"analyses_entity_fk","columns":["entity_id"]},{"name":"analyses_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"analyses_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"analyses","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"contacts_components","indexes":[{"name":"contacts_field_index","columns":["field"]},{"name":"contacts_component_type_index","columns":["component_type"]},{"name":"contacts_entity_fk","columns":["entity_id"]},{"name":"contacts_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"contacts_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"contacts","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"layouts_components","indexes":[{"name":"layouts_field_index","columns":["field"]},{"name":"layouts_component_type_index","columns":["component_type"]},{"name":"layouts_entity_fk","columns":["entity_id"]},{"name":"layouts_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"layouts_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"layouts","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"pages_components","indexes":[{"name":"pages_field_index","columns":["field"]},{"name":"pages_component_type_index","columns":["component_type"]},{"name":"pages_entity_fk","columns":["entity_id"]},{"name":"pages_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"pages_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"pages","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_contact_contacts_components","indexes":[{"name":"components_contact_contacts_field_index","columns":["field"]},{"name":"components_contact_contacts_component_type_index","columns":["component_type"]},{"name":"components_contact_contacts_entity_fk","columns":["entity_id"]},{"name":"components_contact_contacts_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_contact_contacts_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_contact_contacts","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_faq_faqs_components","indexes":[{"name":"components_faq_faqs_field_index","columns":["field"]},{"name":"components_faq_faqs_component_type_index","columns":["component_type"]},{"name":"components_faq_faqs_entity_fk","columns":["entity_id"]},{"name":"components_faq_faqs_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_faq_faqs_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_faq_faqs","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_get_started_get_starteds_components","indexes":[{"name":"components_get_started_get_starteds_field_index","columns":["field"]},{"name":"components_get_started_get_starteds_component_type_index","columns":["component_type"]},{"name":"components_get_started_get_starteds_entity_fk","columns":["entity_id"]},{"name":"components_get_started_get_starteds_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_get_started_get_starteds_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_get_started_get_starteds","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_home_heroes_components","indexes":[{"name":"components_home_heroes_field_index","columns":["field"]},{"name":"components_home_heroes_component_type_index","columns":["component_type"]},{"name":"components_home_heroes_entity_fk","columns":["entity_id"]},{"name":"components_home_heroes_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_home_heroes_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_home_heroes","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_shared_seos_components","indexes":[{"name":"components_shared_seos_field_index","columns":["field"]},{"name":"components_shared_seos_component_type_index","columns":["component_type"]},{"name":"components_shared_seos_entity_fk","columns":["entity_id"]},{"name":"components_shared_seos_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_shared_seos_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_shared_seos","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"components_ui_forms_components","indexes":[{"name":"components_ui_forms_field_index","columns":["field"]},{"name":"components_ui_forms_component_type_index","columns":["component_type"]},{"name":"components_ui_forms_entity_fk","columns":["entity_id"]},{"name":"components_ui_forms_unique","columns":["entity_id","component_id","field","component_type"],"type":"unique"}],"foreignKeys":[{"name":"components_ui_forms_entity_fk","columns":["entity_id"],"referencedColumns":["id"],"referencedTable":"components_ui_forms","onDelete":"CASCADE"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"entity_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"component_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]}]}	2023-12-17 10:52:27.952	4abe0c86f94683b3c75ffd68712cde5c
\.


--
-- Data for Name: strapi_migrations; Type: TABLE DATA; Schema: public; Owner: strapi_worker
--

COPY public.strapi_migrations (id, name, "time") FROM stdin;
\.


--
-- Data for Name: strapi_transfer_token_permissions; Type: TABLE DATA; Schema: public; Owner: strapi_worker
--

COPY public.strapi_transfer_token_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: strapi_transfer_token_permissions_token_links; Type: TABLE DATA; Schema: public; Owner: strapi_worker
--

COPY public.strapi_transfer_token_permissions_token_links (id, transfer_token_permission_id, transfer_token_id, transfer_token_permission_order) FROM stdin;
\.


--
-- Data for Name: strapi_transfer_tokens; Type: TABLE DATA; Schema: public; Owner: strapi_worker
--

COPY public.strapi_transfer_tokens (id, name, description, access_key, last_used_at, expires_at, lifespan, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: strapi_webhooks; Type: TABLE DATA; Schema: public; Owner: strapi_worker
--

COPY public.strapi_webhooks (id, name, url, headers, events, enabled) FROM stdin;
\.


--
-- Data for Name: up_permissions; Type: TABLE DATA; Schema: public; Owner: strapi_worker
--

COPY public.up_permissions (id, action, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	plugin::users-permissions.user.me	2023-12-13 20:17:35.326	2023-12-13 20:17:35.326	\N	\N
2	plugin::users-permissions.auth.changePassword	2023-12-13 20:17:35.326	2023-12-13 20:17:35.326	\N	\N
3	plugin::users-permissions.auth.callback	2023-12-13 20:17:35.329	2023-12-13 20:17:35.329	\N	\N
4	plugin::users-permissions.auth.connect	2023-12-13 20:17:35.329	2023-12-13 20:17:35.329	\N	\N
5	plugin::users-permissions.auth.forgotPassword	2023-12-13 20:17:35.329	2023-12-13 20:17:35.329	\N	\N
6	plugin::users-permissions.auth.emailConfirmation	2023-12-13 20:17:35.329	2023-12-13 20:17:35.329	\N	\N
7	plugin::users-permissions.auth.resetPassword	2023-12-13 20:17:35.329	2023-12-13 20:17:35.329	\N	\N
8	plugin::users-permissions.auth.sendEmailConfirmation	2023-12-13 20:17:35.329	2023-12-13 20:17:35.329	\N	\N
9	plugin::users-permissions.auth.register	2023-12-13 20:17:35.329	2023-12-13 20:17:35.329	\N	\N
10	api::page.page.findOne	2023-12-13 21:09:07.56	2023-12-13 21:09:07.56	\N	\N
11	api::page.page.find	2023-12-13 21:09:07.56	2023-12-13 21:09:07.56	\N	\N
12	api::analysis.analysis.find	2023-12-15 14:06:56.916	2023-12-15 14:06:56.916	\N	\N
13	api::layout.layout.find	2023-12-16 20:55:40.336	2023-12-16 20:55:40.336	\N	\N
14	api::contact.contact.find	2023-12-17 10:50:02.774	2023-12-17 10:50:02.774	\N	\N
\.


--
-- Data for Name: up_permissions_role_links; Type: TABLE DATA; Schema: public; Owner: strapi_worker
--

COPY public.up_permissions_role_links (id, permission_id, role_id, permission_order) FROM stdin;
1	1	1	1
2	2	1	1
3	3	2	1
4	4	2	1
5	5	2	1
6	8	2	1
7	7	2	1
8	9	2	1
9	6	2	1
10	10	2	2
11	11	2	2
12	12	2	3
13	13	2	4
14	14	2	5
\.


--
-- Data for Name: up_roles; Type: TABLE DATA; Schema: public; Owner: strapi_worker
--

COPY public.up_roles (id, name, description, type, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
1	Authenticated	Default role given to authenticated user.	authenticated	2023-12-13 20:17:35.322	2023-12-13 20:17:35.322	\N	\N
2	Public	Default role given to unauthenticated user.	public	2023-12-13 20:17:35.324	2023-12-17 10:50:02.766	\N	\N
\.


--
-- Data for Name: up_users; Type: TABLE DATA; Schema: public; Owner: strapi_worker
--

COPY public.up_users (id, username, email, provider, password, reset_password_token, confirmation_token, confirmed, blocked, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: up_users_role_links; Type: TABLE DATA; Schema: public; Owner: strapi_worker
--

COPY public.up_users_role_links (id, user_id, role_id, user_order) FROM stdin;
\.


--
-- Data for Name: upload_folders; Type: TABLE DATA; Schema: public; Owner: strapi_worker
--

COPY public.upload_folders (id, name, path_id, path, created_at, updated_at, created_by_id, updated_by_id) FROM stdin;
\.


--
-- Data for Name: upload_folders_parent_links; Type: TABLE DATA; Schema: public; Owner: strapi_worker
--

COPY public.upload_folders_parent_links (id, folder_id, inv_folder_id, folder_order) FROM stdin;
\.


--
-- Name: admin_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_worker
--

SELECT pg_catalog.setval('public.admin_permissions_id_seq', 129, true);


--
-- Name: admin_permissions_role_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_worker
--

SELECT pg_catalog.setval('public.admin_permissions_role_links_id_seq', 129, true);


--
-- Name: admin_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_worker
--

SELECT pg_catalog.setval('public.admin_roles_id_seq', 3, true);


--
-- Name: admin_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_worker
--

SELECT pg_catalog.setval('public.admin_users_id_seq', 1, true);


--
-- Name: admin_users_roles_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_worker
--

SELECT pg_catalog.setval('public.admin_users_roles_links_id_seq', 1, true);


--
-- Name: analyses_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_worker
--

SELECT pg_catalog.setval('public.analyses_components_id_seq', 127, true);


--
-- Name: analyses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_worker
--

SELECT pg_catalog.setval('public.analyses_id_seq', 1, true);


--
-- Name: components_analysis_empties_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_worker
--

SELECT pg_catalog.setval('public.components_analysis_empties_id_seq', 1, true);


--
-- Name: components_contact_contacts_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_worker
--

SELECT pg_catalog.setval('public.components_contact_contacts_components_id_seq', 16, true);


--
-- Name: components_contact_contacts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_worker
--

SELECT pg_catalog.setval('public.components_contact_contacts_id_seq', 1, true);


--
-- Name: components_contact_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_worker
--

SELECT pg_catalog.setval('public.components_contact_items_id_seq', 4, true);


--
-- Name: components_faq_faq_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_worker
--

SELECT pg_catalog.setval('public.components_faq_faq_items_id_seq', 8, true);


--
-- Name: components_faq_faqs_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_worker
--

SELECT pg_catalog.setval('public.components_faq_faqs_components_id_seq', 8, true);


--
-- Name: components_faq_faqs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_worker
--

SELECT pg_catalog.setval('public.components_faq_faqs_id_seq', 1, true);


--
-- Name: components_get_started_get_starteds_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_worker
--

SELECT pg_catalog.setval('public.components_get_started_get_starteds_components_id_seq', 3, true);


--
-- Name: components_get_started_get_starteds_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_worker
--

SELECT pg_catalog.setval('public.components_get_started_get_starteds_id_seq', 1, true);


--
-- Name: components_get_started_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_worker
--

SELECT pg_catalog.setval('public.components_get_started_items_id_seq', 2, true);


--
-- Name: components_home_heroes_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_worker
--

SELECT pg_catalog.setval('public.components_home_heroes_components_id_seq', 20, true);


--
-- Name: components_home_heroes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_worker
--

SELECT pg_catalog.setval('public.components_home_heroes_id_seq', 1, true);


--
-- Name: components_shared_meta_socials_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_worker
--

SELECT pg_catalog.setval('public.components_shared_meta_socials_id_seq', 1, false);


--
-- Name: components_shared_seos_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_worker
--

SELECT pg_catalog.setval('public.components_shared_seos_components_id_seq', 1, false);


--
-- Name: components_shared_seos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_worker
--

SELECT pg_catalog.setval('public.components_shared_seos_id_seq', 1, false);


--
-- Name: components_ui_buttons_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_worker
--

SELECT pg_catalog.setval('public.components_ui_buttons_id_seq', 7, true);


--
-- Name: components_ui_forms_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_worker
--

SELECT pg_catalog.setval('public.components_ui_forms_components_id_seq', 1, false);


--
-- Name: components_ui_forms_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_worker
--

SELECT pg_catalog.setval('public.components_ui_forms_id_seq', 1, false);


--
-- Name: components_ui_inputs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_worker
--

SELECT pg_catalog.setval('public.components_ui_inputs_id_seq', 11, true);


--
-- Name: components_ui_texts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_worker
--

SELECT pg_catalog.setval('public.components_ui_texts_id_seq', 3, true);


--
-- Name: contacts_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_worker
--

SELECT pg_catalog.setval('public.contacts_components_id_seq', 7, true);


--
-- Name: contacts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_worker
--

SELECT pg_catalog.setval('public.contacts_id_seq', 1, true);


--
-- Name: files_folder_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_worker
--

SELECT pg_catalog.setval('public.files_folder_links_id_seq', 1, false);


--
-- Name: files_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_worker
--

SELECT pg_catalog.setval('public.files_id_seq', 5, true);


--
-- Name: files_related_morphs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_worker
--

SELECT pg_catalog.setval('public.files_related_morphs_id_seq', 15, true);


--
-- Name: i18n_locale_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_worker
--

SELECT pg_catalog.setval('public.i18n_locale_id_seq', 1, true);


--
-- Name: layouts_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_worker
--

SELECT pg_catalog.setval('public.layouts_components_id_seq', 36, true);


--
-- Name: layouts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_worker
--

SELECT pg_catalog.setval('public.layouts_id_seq', 1, true);


--
-- Name: pages_components_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_worker
--

SELECT pg_catalog.setval('public.pages_components_id_seq', 9, true);


--
-- Name: pages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_worker
--

SELECT pg_catalog.setval('public.pages_id_seq', 5, true);


--
-- Name: strapi_api_token_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_worker
--

SELECT pg_catalog.setval('public.strapi_api_token_permissions_id_seq', 1, false);


--
-- Name: strapi_api_token_permissions_token_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_worker
--

SELECT pg_catalog.setval('public.strapi_api_token_permissions_token_links_id_seq', 1, false);


--
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_worker
--

SELECT pg_catalog.setval('public.strapi_api_tokens_id_seq', 1, false);


--
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_worker
--

SELECT pg_catalog.setval('public.strapi_core_store_settings_id_seq', 41, true);


--
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_worker
--

SELECT pg_catalog.setval('public.strapi_database_schema_id_seq', 14, true);


--
-- Name: strapi_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_worker
--

SELECT pg_catalog.setval('public.strapi_migrations_id_seq', 1, false);


--
-- Name: strapi_transfer_token_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_worker
--

SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_id_seq', 1, false);


--
-- Name: strapi_transfer_token_permissions_token_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_worker
--

SELECT pg_catalog.setval('public.strapi_transfer_token_permissions_token_links_id_seq', 1, false);


--
-- Name: strapi_transfer_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_worker
--

SELECT pg_catalog.setval('public.strapi_transfer_tokens_id_seq', 1, false);


--
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_worker
--

SELECT pg_catalog.setval('public.strapi_webhooks_id_seq', 1, false);


--
-- Name: up_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_worker
--

SELECT pg_catalog.setval('public.up_permissions_id_seq', 14, true);


--
-- Name: up_permissions_role_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_worker
--

SELECT pg_catalog.setval('public.up_permissions_role_links_id_seq', 14, true);


--
-- Name: up_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_worker
--

SELECT pg_catalog.setval('public.up_roles_id_seq', 2, true);


--
-- Name: up_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_worker
--

SELECT pg_catalog.setval('public.up_users_id_seq', 1, false);


--
-- Name: up_users_role_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_worker
--

SELECT pg_catalog.setval('public.up_users_role_links_id_seq', 1, false);


--
-- Name: upload_folders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_worker
--

SELECT pg_catalog.setval('public.upload_folders_id_seq', 1, false);


--
-- Name: upload_folders_parent_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: strapi_worker
--

SELECT pg_catalog.setval('public.upload_folders_parent_links_id_seq', 1, false);


--
-- Name: admin_permissions admin_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_pkey PRIMARY KEY (id);


--
-- Name: admin_permissions_role_links admin_permissions_role_links_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_pkey PRIMARY KEY (id);


--
-- Name: admin_permissions_role_links admin_permissions_role_links_unique; Type: CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_unique UNIQUE (permission_id, role_id);


--
-- Name: admin_roles admin_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_pkey PRIMARY KEY (id);


--
-- Name: admin_users admin_users_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_pkey PRIMARY KEY (id);


--
-- Name: admin_users_roles_links admin_users_roles_links_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_pkey PRIMARY KEY (id);


--
-- Name: admin_users_roles_links admin_users_roles_links_unique; Type: CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_unique UNIQUE (user_id, role_id);


--
-- Name: analyses_components analyses_components_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.analyses_components
    ADD CONSTRAINT analyses_components_pkey PRIMARY KEY (id);


--
-- Name: analyses analyses_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.analyses
    ADD CONSTRAINT analyses_pkey PRIMARY KEY (id);


--
-- Name: analyses_components analyses_unique; Type: CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.analyses_components
    ADD CONSTRAINT analyses_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: components_analysis_empties components_analysis_empties_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.components_analysis_empties
    ADD CONSTRAINT components_analysis_empties_pkey PRIMARY KEY (id);


--
-- Name: components_contact_contacts_components components_contact_contacts_components_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.components_contact_contacts_components
    ADD CONSTRAINT components_contact_contacts_components_pkey PRIMARY KEY (id);


--
-- Name: components_contact_contacts components_contact_contacts_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.components_contact_contacts
    ADD CONSTRAINT components_contact_contacts_pkey PRIMARY KEY (id);


--
-- Name: components_contact_contacts_components components_contact_contacts_unique; Type: CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.components_contact_contacts_components
    ADD CONSTRAINT components_contact_contacts_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: components_contact_items components_contact_items_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.components_contact_items
    ADD CONSTRAINT components_contact_items_pkey PRIMARY KEY (id);


--
-- Name: components_faq_faq_items components_faq_faq_items_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.components_faq_faq_items
    ADD CONSTRAINT components_faq_faq_items_pkey PRIMARY KEY (id);


--
-- Name: components_faq_faqs_components components_faq_faqs_components_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.components_faq_faqs_components
    ADD CONSTRAINT components_faq_faqs_components_pkey PRIMARY KEY (id);


--
-- Name: components_faq_faqs components_faq_faqs_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.components_faq_faqs
    ADD CONSTRAINT components_faq_faqs_pkey PRIMARY KEY (id);


--
-- Name: components_faq_faqs_components components_faq_faqs_unique; Type: CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.components_faq_faqs_components
    ADD CONSTRAINT components_faq_faqs_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: components_get_started_get_starteds_components components_get_started_get_starteds_components_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.components_get_started_get_starteds_components
    ADD CONSTRAINT components_get_started_get_starteds_components_pkey PRIMARY KEY (id);


--
-- Name: components_get_started_get_starteds components_get_started_get_starteds_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.components_get_started_get_starteds
    ADD CONSTRAINT components_get_started_get_starteds_pkey PRIMARY KEY (id);


--
-- Name: components_get_started_get_starteds_components components_get_started_get_starteds_unique; Type: CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.components_get_started_get_starteds_components
    ADD CONSTRAINT components_get_started_get_starteds_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: components_get_started_items components_get_started_items_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.components_get_started_items
    ADD CONSTRAINT components_get_started_items_pkey PRIMARY KEY (id);


--
-- Name: components_home_heroes_components components_home_heroes_components_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.components_home_heroes_components
    ADD CONSTRAINT components_home_heroes_components_pkey PRIMARY KEY (id);


--
-- Name: components_home_heroes components_home_heroes_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.components_home_heroes
    ADD CONSTRAINT components_home_heroes_pkey PRIMARY KEY (id);


--
-- Name: components_home_heroes_components components_home_heroes_unique; Type: CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.components_home_heroes_components
    ADD CONSTRAINT components_home_heroes_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: components_shared_meta_socials components_shared_meta_socials_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.components_shared_meta_socials
    ADD CONSTRAINT components_shared_meta_socials_pkey PRIMARY KEY (id);


--
-- Name: components_shared_seos_components components_shared_seos_components_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.components_shared_seos_components
    ADD CONSTRAINT components_shared_seos_components_pkey PRIMARY KEY (id);


--
-- Name: components_shared_seos components_shared_seos_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.components_shared_seos
    ADD CONSTRAINT components_shared_seos_pkey PRIMARY KEY (id);


--
-- Name: components_shared_seos_components components_shared_seos_unique; Type: CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.components_shared_seos_components
    ADD CONSTRAINT components_shared_seos_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: components_ui_buttons components_ui_buttons_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.components_ui_buttons
    ADD CONSTRAINT components_ui_buttons_pkey PRIMARY KEY (id);


--
-- Name: components_ui_forms_components components_ui_forms_components_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.components_ui_forms_components
    ADD CONSTRAINT components_ui_forms_components_pkey PRIMARY KEY (id);


--
-- Name: components_ui_forms components_ui_forms_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.components_ui_forms
    ADD CONSTRAINT components_ui_forms_pkey PRIMARY KEY (id);


--
-- Name: components_ui_forms_components components_ui_forms_unique; Type: CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.components_ui_forms_components
    ADD CONSTRAINT components_ui_forms_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: components_ui_inputs components_ui_inputs_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.components_ui_inputs
    ADD CONSTRAINT components_ui_inputs_pkey PRIMARY KEY (id);


--
-- Name: components_ui_texts components_ui_texts_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.components_ui_texts
    ADD CONSTRAINT components_ui_texts_pkey PRIMARY KEY (id);


--
-- Name: contacts_components contacts_components_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.contacts_components
    ADD CONSTRAINT contacts_components_pkey PRIMARY KEY (id);


--
-- Name: contacts contacts_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.contacts
    ADD CONSTRAINT contacts_pkey PRIMARY KEY (id);


--
-- Name: contacts_components contacts_unique; Type: CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.contacts_components
    ADD CONSTRAINT contacts_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: files_folder_links files_folder_links_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_pkey PRIMARY KEY (id);


--
-- Name: files_folder_links files_folder_links_unique; Type: CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_unique UNIQUE (file_id, folder_id);


--
-- Name: files files_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_pkey PRIMARY KEY (id);


--
-- Name: files_related_morphs files_related_morphs_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.files_related_morphs
    ADD CONSTRAINT files_related_morphs_pkey PRIMARY KEY (id);


--
-- Name: i18n_locale i18n_locale_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_pkey PRIMARY KEY (id);


--
-- Name: layouts_components layouts_components_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.layouts_components
    ADD CONSTRAINT layouts_components_pkey PRIMARY KEY (id);


--
-- Name: layouts layouts_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.layouts
    ADD CONSTRAINT layouts_pkey PRIMARY KEY (id);


--
-- Name: layouts_components layouts_unique; Type: CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.layouts_components
    ADD CONSTRAINT layouts_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: pages_components pages_components_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.pages_components
    ADD CONSTRAINT pages_components_pkey PRIMARY KEY (id);


--
-- Name: pages pages_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.pages
    ADD CONSTRAINT pages_pkey PRIMARY KEY (id);


--
-- Name: pages pages_slug_unique; Type: CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.pages
    ADD CONSTRAINT pages_slug_unique UNIQUE (slug);


--
-- Name: pages_components pages_unique; Type: CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.pages_components
    ADD CONSTRAINT pages_unique UNIQUE (entity_id, component_id, field, component_type);


--
-- Name: strapi_api_token_permissions strapi_api_token_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_pkey PRIMARY KEY (id);


--
-- Name: strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_pkey PRIMARY KEY (id);


--
-- Name: strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_unique; Type: CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_unique UNIQUE (api_token_permission_id, api_token_id);


--
-- Name: strapi_api_tokens strapi_api_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_pkey PRIMARY KEY (id);


--
-- Name: strapi_core_store_settings strapi_core_store_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.strapi_core_store_settings
    ADD CONSTRAINT strapi_core_store_settings_pkey PRIMARY KEY (id);


--
-- Name: strapi_database_schema strapi_database_schema_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.strapi_database_schema
    ADD CONSTRAINT strapi_database_schema_pkey PRIMARY KEY (id);


--
-- Name: strapi_migrations strapi_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.strapi_migrations
    ADD CONSTRAINT strapi_migrations_pkey PRIMARY KEY (id);


--
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_pkey PRIMARY KEY (id);


--
-- Name: strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_pkey PRIMARY KEY (id);


--
-- Name: strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_unique; Type: CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_unique UNIQUE (transfer_token_permission_id, transfer_token_id);


--
-- Name: strapi_transfer_tokens strapi_transfer_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_pkey PRIMARY KEY (id);


--
-- Name: strapi_webhooks strapi_webhooks_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);


--
-- Name: up_permissions up_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_pkey PRIMARY KEY (id);


--
-- Name: up_permissions_role_links up_permissions_role_links_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_pkey PRIMARY KEY (id);


--
-- Name: up_permissions_role_links up_permissions_role_links_unique; Type: CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_unique UNIQUE (permission_id, role_id);


--
-- Name: up_roles up_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_pkey PRIMARY KEY (id);


--
-- Name: up_users up_users_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_pkey PRIMARY KEY (id);


--
-- Name: up_users_role_links up_users_role_links_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_pkey PRIMARY KEY (id);


--
-- Name: up_users_role_links up_users_role_links_unique; Type: CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_unique UNIQUE (user_id, role_id);


--
-- Name: upload_folders_parent_links upload_folders_parent_links_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_pkey PRIMARY KEY (id);


--
-- Name: upload_folders_parent_links upload_folders_parent_links_unique; Type: CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_unique UNIQUE (folder_id, inv_folder_id);


--
-- Name: upload_folders upload_folders_path_id_index; Type: CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_id_index UNIQUE (path_id);


--
-- Name: upload_folders upload_folders_path_index; Type: CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_path_index UNIQUE (path);


--
-- Name: upload_folders upload_folders_pkey; Type: CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_pkey PRIMARY KEY (id);


--
-- Name: admin_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi_worker
--

CREATE INDEX admin_permissions_created_by_id_fk ON public.admin_permissions USING btree (created_by_id);


--
-- Name: admin_permissions_role_links_fk; Type: INDEX; Schema: public; Owner: strapi_worker
--

CREATE INDEX admin_permissions_role_links_fk ON public.admin_permissions_role_links USING btree (permission_id);


--
-- Name: admin_permissions_role_links_inv_fk; Type: INDEX; Schema: public; Owner: strapi_worker
--

CREATE INDEX admin_permissions_role_links_inv_fk ON public.admin_permissions_role_links USING btree (role_id);


--
-- Name: admin_permissions_role_links_order_inv_fk; Type: INDEX; Schema: public; Owner: strapi_worker
--

CREATE INDEX admin_permissions_role_links_order_inv_fk ON public.admin_permissions_role_links USING btree (permission_order);


--
-- Name: admin_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi_worker
--

CREATE INDEX admin_permissions_updated_by_id_fk ON public.admin_permissions USING btree (updated_by_id);


--
-- Name: admin_roles_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi_worker
--

CREATE INDEX admin_roles_created_by_id_fk ON public.admin_roles USING btree (created_by_id);


--
-- Name: admin_roles_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi_worker
--

CREATE INDEX admin_roles_updated_by_id_fk ON public.admin_roles USING btree (updated_by_id);


--
-- Name: admin_users_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi_worker
--

CREATE INDEX admin_users_created_by_id_fk ON public.admin_users USING btree (created_by_id);


--
-- Name: admin_users_roles_links_fk; Type: INDEX; Schema: public; Owner: strapi_worker
--

CREATE INDEX admin_users_roles_links_fk ON public.admin_users_roles_links USING btree (user_id);


--
-- Name: admin_users_roles_links_inv_fk; Type: INDEX; Schema: public; Owner: strapi_worker
--

CREATE INDEX admin_users_roles_links_inv_fk ON public.admin_users_roles_links USING btree (role_id);


--
-- Name: admin_users_roles_links_order_fk; Type: INDEX; Schema: public; Owner: strapi_worker
--

CREATE INDEX admin_users_roles_links_order_fk ON public.admin_users_roles_links USING btree (role_order);


--
-- Name: admin_users_roles_links_order_inv_fk; Type: INDEX; Schema: public; Owner: strapi_worker
--

CREATE INDEX admin_users_roles_links_order_inv_fk ON public.admin_users_roles_links USING btree (user_order);


--
-- Name: admin_users_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi_worker
--

CREATE INDEX admin_users_updated_by_id_fk ON public.admin_users USING btree (updated_by_id);


--
-- Name: analyses_component_type_index; Type: INDEX; Schema: public; Owner: strapi_worker
--

CREATE INDEX analyses_component_type_index ON public.analyses_components USING btree (component_type);


--
-- Name: analyses_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi_worker
--

CREATE INDEX analyses_created_by_id_fk ON public.analyses USING btree (created_by_id);


--
-- Name: analyses_entity_fk; Type: INDEX; Schema: public; Owner: strapi_worker
--

CREATE INDEX analyses_entity_fk ON public.analyses_components USING btree (entity_id);


--
-- Name: analyses_field_index; Type: INDEX; Schema: public; Owner: strapi_worker
--

CREATE INDEX analyses_field_index ON public.analyses_components USING btree (field);


--
-- Name: analyses_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi_worker
--

CREATE INDEX analyses_updated_by_id_fk ON public.analyses USING btree (updated_by_id);


--
-- Name: components_contact_contacts_component_type_index; Type: INDEX; Schema: public; Owner: strapi_worker
--

CREATE INDEX components_contact_contacts_component_type_index ON public.components_contact_contacts_components USING btree (component_type);


--
-- Name: components_contact_contacts_entity_fk; Type: INDEX; Schema: public; Owner: strapi_worker
--

CREATE INDEX components_contact_contacts_entity_fk ON public.components_contact_contacts_components USING btree (entity_id);


--
-- Name: components_contact_contacts_field_index; Type: INDEX; Schema: public; Owner: strapi_worker
--

CREATE INDEX components_contact_contacts_field_index ON public.components_contact_contacts_components USING btree (field);


--
-- Name: components_faq_faqs_component_type_index; Type: INDEX; Schema: public; Owner: strapi_worker
--

CREATE INDEX components_faq_faqs_component_type_index ON public.components_faq_faqs_components USING btree (component_type);


--
-- Name: components_faq_faqs_entity_fk; Type: INDEX; Schema: public; Owner: strapi_worker
--

CREATE INDEX components_faq_faqs_entity_fk ON public.components_faq_faqs_components USING btree (entity_id);


--
-- Name: components_faq_faqs_field_index; Type: INDEX; Schema: public; Owner: strapi_worker
--

CREATE INDEX components_faq_faqs_field_index ON public.components_faq_faqs_components USING btree (field);


--
-- Name: components_get_started_get_starteds_component_type_index; Type: INDEX; Schema: public; Owner: strapi_worker
--

CREATE INDEX components_get_started_get_starteds_component_type_index ON public.components_get_started_get_starteds_components USING btree (component_type);


--
-- Name: components_get_started_get_starteds_entity_fk; Type: INDEX; Schema: public; Owner: strapi_worker
--

CREATE INDEX components_get_started_get_starteds_entity_fk ON public.components_get_started_get_starteds_components USING btree (entity_id);


--
-- Name: components_get_started_get_starteds_field_index; Type: INDEX; Schema: public; Owner: strapi_worker
--

CREATE INDEX components_get_started_get_starteds_field_index ON public.components_get_started_get_starteds_components USING btree (field);


--
-- Name: components_home_heroes_component_type_index; Type: INDEX; Schema: public; Owner: strapi_worker
--

CREATE INDEX components_home_heroes_component_type_index ON public.components_home_heroes_components USING btree (component_type);


--
-- Name: components_home_heroes_entity_fk; Type: INDEX; Schema: public; Owner: strapi_worker
--

CREATE INDEX components_home_heroes_entity_fk ON public.components_home_heroes_components USING btree (entity_id);


--
-- Name: components_home_heroes_field_index; Type: INDEX; Schema: public; Owner: strapi_worker
--

CREATE INDEX components_home_heroes_field_index ON public.components_home_heroes_components USING btree (field);


--
-- Name: components_shared_seos_component_type_index; Type: INDEX; Schema: public; Owner: strapi_worker
--

CREATE INDEX components_shared_seos_component_type_index ON public.components_shared_seos_components USING btree (component_type);


--
-- Name: components_shared_seos_entity_fk; Type: INDEX; Schema: public; Owner: strapi_worker
--

CREATE INDEX components_shared_seos_entity_fk ON public.components_shared_seos_components USING btree (entity_id);


--
-- Name: components_shared_seos_field_index; Type: INDEX; Schema: public; Owner: strapi_worker
--

CREATE INDEX components_shared_seos_field_index ON public.components_shared_seos_components USING btree (field);


--
-- Name: components_ui_forms_component_type_index; Type: INDEX; Schema: public; Owner: strapi_worker
--

CREATE INDEX components_ui_forms_component_type_index ON public.components_ui_forms_components USING btree (component_type);


--
-- Name: components_ui_forms_entity_fk; Type: INDEX; Schema: public; Owner: strapi_worker
--

CREATE INDEX components_ui_forms_entity_fk ON public.components_ui_forms_components USING btree (entity_id);


--
-- Name: components_ui_forms_field_index; Type: INDEX; Schema: public; Owner: strapi_worker
--

CREATE INDEX components_ui_forms_field_index ON public.components_ui_forms_components USING btree (field);


--
-- Name: contacts_component_type_index; Type: INDEX; Schema: public; Owner: strapi_worker
--

CREATE INDEX contacts_component_type_index ON public.contacts_components USING btree (component_type);


--
-- Name: contacts_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi_worker
--

CREATE INDEX contacts_created_by_id_fk ON public.contacts USING btree (created_by_id);


--
-- Name: contacts_entity_fk; Type: INDEX; Schema: public; Owner: strapi_worker
--

CREATE INDEX contacts_entity_fk ON public.contacts_components USING btree (entity_id);


--
-- Name: contacts_field_index; Type: INDEX; Schema: public; Owner: strapi_worker
--

CREATE INDEX contacts_field_index ON public.contacts_components USING btree (field);


--
-- Name: contacts_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi_worker
--

CREATE INDEX contacts_updated_by_id_fk ON public.contacts USING btree (updated_by_id);


--
-- Name: files_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi_worker
--

CREATE INDEX files_created_by_id_fk ON public.files USING btree (created_by_id);


--
-- Name: files_folder_links_fk; Type: INDEX; Schema: public; Owner: strapi_worker
--

CREATE INDEX files_folder_links_fk ON public.files_folder_links USING btree (file_id);


--
-- Name: files_folder_links_inv_fk; Type: INDEX; Schema: public; Owner: strapi_worker
--

CREATE INDEX files_folder_links_inv_fk ON public.files_folder_links USING btree (folder_id);


--
-- Name: files_folder_links_order_inv_fk; Type: INDEX; Schema: public; Owner: strapi_worker
--

CREATE INDEX files_folder_links_order_inv_fk ON public.files_folder_links USING btree (file_order);


--
-- Name: files_related_morphs_fk; Type: INDEX; Schema: public; Owner: strapi_worker
--

CREATE INDEX files_related_morphs_fk ON public.files_related_morphs USING btree (file_id);


--
-- Name: files_related_morphs_id_column_index; Type: INDEX; Schema: public; Owner: strapi_worker
--

CREATE INDEX files_related_morphs_id_column_index ON public.files_related_morphs USING btree (related_id);


--
-- Name: files_related_morphs_order_index; Type: INDEX; Schema: public; Owner: strapi_worker
--

CREATE INDEX files_related_morphs_order_index ON public.files_related_morphs USING btree ("order");


--
-- Name: files_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi_worker
--

CREATE INDEX files_updated_by_id_fk ON public.files USING btree (updated_by_id);


--
-- Name: i18n_locale_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi_worker
--

CREATE INDEX i18n_locale_created_by_id_fk ON public.i18n_locale USING btree (created_by_id);


--
-- Name: i18n_locale_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi_worker
--

CREATE INDEX i18n_locale_updated_by_id_fk ON public.i18n_locale USING btree (updated_by_id);


--
-- Name: layouts_component_type_index; Type: INDEX; Schema: public; Owner: strapi_worker
--

CREATE INDEX layouts_component_type_index ON public.layouts_components USING btree (component_type);


--
-- Name: layouts_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi_worker
--

CREATE INDEX layouts_created_by_id_fk ON public.layouts USING btree (created_by_id);


--
-- Name: layouts_entity_fk; Type: INDEX; Schema: public; Owner: strapi_worker
--

CREATE INDEX layouts_entity_fk ON public.layouts_components USING btree (entity_id);


--
-- Name: layouts_field_index; Type: INDEX; Schema: public; Owner: strapi_worker
--

CREATE INDEX layouts_field_index ON public.layouts_components USING btree (field);


--
-- Name: layouts_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi_worker
--

CREATE INDEX layouts_updated_by_id_fk ON public.layouts USING btree (updated_by_id);


--
-- Name: pages_component_type_index; Type: INDEX; Schema: public; Owner: strapi_worker
--

CREATE INDEX pages_component_type_index ON public.pages_components USING btree (component_type);


--
-- Name: pages_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi_worker
--

CREATE INDEX pages_created_by_id_fk ON public.pages USING btree (created_by_id);


--
-- Name: pages_entity_fk; Type: INDEX; Schema: public; Owner: strapi_worker
--

CREATE INDEX pages_entity_fk ON public.pages_components USING btree (entity_id);


--
-- Name: pages_field_index; Type: INDEX; Schema: public; Owner: strapi_worker
--

CREATE INDEX pages_field_index ON public.pages_components USING btree (field);


--
-- Name: pages_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi_worker
--

CREATE INDEX pages_updated_by_id_fk ON public.pages USING btree (updated_by_id);


--
-- Name: strapi_api_token_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi_worker
--

CREATE INDEX strapi_api_token_permissions_created_by_id_fk ON public.strapi_api_token_permissions USING btree (created_by_id);


--
-- Name: strapi_api_token_permissions_token_links_fk; Type: INDEX; Schema: public; Owner: strapi_worker
--

CREATE INDEX strapi_api_token_permissions_token_links_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_permission_id);


--
-- Name: strapi_api_token_permissions_token_links_inv_fk; Type: INDEX; Schema: public; Owner: strapi_worker
--

CREATE INDEX strapi_api_token_permissions_token_links_inv_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_id);


--
-- Name: strapi_api_token_permissions_token_links_order_inv_fk; Type: INDEX; Schema: public; Owner: strapi_worker
--

CREATE INDEX strapi_api_token_permissions_token_links_order_inv_fk ON public.strapi_api_token_permissions_token_links USING btree (api_token_permission_order);


--
-- Name: strapi_api_token_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi_worker
--

CREATE INDEX strapi_api_token_permissions_updated_by_id_fk ON public.strapi_api_token_permissions USING btree (updated_by_id);


--
-- Name: strapi_api_tokens_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi_worker
--

CREATE INDEX strapi_api_tokens_created_by_id_fk ON public.strapi_api_tokens USING btree (created_by_id);


--
-- Name: strapi_api_tokens_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi_worker
--

CREATE INDEX strapi_api_tokens_updated_by_id_fk ON public.strapi_api_tokens USING btree (updated_by_id);


--
-- Name: strapi_transfer_token_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi_worker
--

CREATE INDEX strapi_transfer_token_permissions_created_by_id_fk ON public.strapi_transfer_token_permissions USING btree (created_by_id);


--
-- Name: strapi_transfer_token_permissions_token_links_fk; Type: INDEX; Schema: public; Owner: strapi_worker
--

CREATE INDEX strapi_transfer_token_permissions_token_links_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_permission_id);


--
-- Name: strapi_transfer_token_permissions_token_links_inv_fk; Type: INDEX; Schema: public; Owner: strapi_worker
--

CREATE INDEX strapi_transfer_token_permissions_token_links_inv_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_id);


--
-- Name: strapi_transfer_token_permissions_token_links_order_inv_fk; Type: INDEX; Schema: public; Owner: strapi_worker
--

CREATE INDEX strapi_transfer_token_permissions_token_links_order_inv_fk ON public.strapi_transfer_token_permissions_token_links USING btree (transfer_token_permission_order);


--
-- Name: strapi_transfer_token_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi_worker
--

CREATE INDEX strapi_transfer_token_permissions_updated_by_id_fk ON public.strapi_transfer_token_permissions USING btree (updated_by_id);


--
-- Name: strapi_transfer_tokens_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi_worker
--

CREATE INDEX strapi_transfer_tokens_created_by_id_fk ON public.strapi_transfer_tokens USING btree (created_by_id);


--
-- Name: strapi_transfer_tokens_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi_worker
--

CREATE INDEX strapi_transfer_tokens_updated_by_id_fk ON public.strapi_transfer_tokens USING btree (updated_by_id);


--
-- Name: up_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi_worker
--

CREATE INDEX up_permissions_created_by_id_fk ON public.up_permissions USING btree (created_by_id);


--
-- Name: up_permissions_role_links_fk; Type: INDEX; Schema: public; Owner: strapi_worker
--

CREATE INDEX up_permissions_role_links_fk ON public.up_permissions_role_links USING btree (permission_id);


--
-- Name: up_permissions_role_links_inv_fk; Type: INDEX; Schema: public; Owner: strapi_worker
--

CREATE INDEX up_permissions_role_links_inv_fk ON public.up_permissions_role_links USING btree (role_id);


--
-- Name: up_permissions_role_links_order_inv_fk; Type: INDEX; Schema: public; Owner: strapi_worker
--

CREATE INDEX up_permissions_role_links_order_inv_fk ON public.up_permissions_role_links USING btree (permission_order);


--
-- Name: up_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi_worker
--

CREATE INDEX up_permissions_updated_by_id_fk ON public.up_permissions USING btree (updated_by_id);


--
-- Name: up_roles_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi_worker
--

CREATE INDEX up_roles_created_by_id_fk ON public.up_roles USING btree (created_by_id);


--
-- Name: up_roles_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi_worker
--

CREATE INDEX up_roles_updated_by_id_fk ON public.up_roles USING btree (updated_by_id);


--
-- Name: up_users_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi_worker
--

CREATE INDEX up_users_created_by_id_fk ON public.up_users USING btree (created_by_id);


--
-- Name: up_users_role_links_fk; Type: INDEX; Schema: public; Owner: strapi_worker
--

CREATE INDEX up_users_role_links_fk ON public.up_users_role_links USING btree (user_id);


--
-- Name: up_users_role_links_inv_fk; Type: INDEX; Schema: public; Owner: strapi_worker
--

CREATE INDEX up_users_role_links_inv_fk ON public.up_users_role_links USING btree (role_id);


--
-- Name: up_users_role_links_order_inv_fk; Type: INDEX; Schema: public; Owner: strapi_worker
--

CREATE INDEX up_users_role_links_order_inv_fk ON public.up_users_role_links USING btree (user_order);


--
-- Name: up_users_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi_worker
--

CREATE INDEX up_users_updated_by_id_fk ON public.up_users USING btree (updated_by_id);


--
-- Name: upload_files_created_at_index; Type: INDEX; Schema: public; Owner: strapi_worker
--

CREATE INDEX upload_files_created_at_index ON public.files USING btree (created_at);


--
-- Name: upload_files_ext_index; Type: INDEX; Schema: public; Owner: strapi_worker
--

CREATE INDEX upload_files_ext_index ON public.files USING btree (ext);


--
-- Name: upload_files_folder_path_index; Type: INDEX; Schema: public; Owner: strapi_worker
--

CREATE INDEX upload_files_folder_path_index ON public.files USING btree (folder_path);


--
-- Name: upload_files_name_index; Type: INDEX; Schema: public; Owner: strapi_worker
--

CREATE INDEX upload_files_name_index ON public.files USING btree (name);


--
-- Name: upload_files_size_index; Type: INDEX; Schema: public; Owner: strapi_worker
--

CREATE INDEX upload_files_size_index ON public.files USING btree (size);


--
-- Name: upload_files_updated_at_index; Type: INDEX; Schema: public; Owner: strapi_worker
--

CREATE INDEX upload_files_updated_at_index ON public.files USING btree (updated_at);


--
-- Name: upload_folders_created_by_id_fk; Type: INDEX; Schema: public; Owner: strapi_worker
--

CREATE INDEX upload_folders_created_by_id_fk ON public.upload_folders USING btree (created_by_id);


--
-- Name: upload_folders_parent_links_fk; Type: INDEX; Schema: public; Owner: strapi_worker
--

CREATE INDEX upload_folders_parent_links_fk ON public.upload_folders_parent_links USING btree (folder_id);


--
-- Name: upload_folders_parent_links_inv_fk; Type: INDEX; Schema: public; Owner: strapi_worker
--

CREATE INDEX upload_folders_parent_links_inv_fk ON public.upload_folders_parent_links USING btree (inv_folder_id);


--
-- Name: upload_folders_parent_links_order_inv_fk; Type: INDEX; Schema: public; Owner: strapi_worker
--

CREATE INDEX upload_folders_parent_links_order_inv_fk ON public.upload_folders_parent_links USING btree (folder_order);


--
-- Name: upload_folders_updated_by_id_fk; Type: INDEX; Schema: public; Owner: strapi_worker
--

CREATE INDEX upload_folders_updated_by_id_fk ON public.upload_folders USING btree (updated_by_id);


--
-- Name: admin_permissions admin_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_permissions_role_links admin_permissions_role_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.admin_permissions(id) ON DELETE CASCADE;


--
-- Name: admin_permissions_role_links admin_permissions_role_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;


--
-- Name: admin_permissions admin_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_roles admin_roles_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_roles admin_roles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_users admin_users_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: admin_users_roles_links admin_users_roles_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_fk FOREIGN KEY (user_id) REFERENCES public.admin_users(id) ON DELETE CASCADE;


--
-- Name: admin_users_roles_links admin_users_roles_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;


--
-- Name: admin_users admin_users_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: analyses analyses_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.analyses
    ADD CONSTRAINT analyses_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: analyses_components analyses_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.analyses_components
    ADD CONSTRAINT analyses_entity_fk FOREIGN KEY (entity_id) REFERENCES public.analyses(id) ON DELETE CASCADE;


--
-- Name: analyses analyses_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.analyses
    ADD CONSTRAINT analyses_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: components_contact_contacts_components components_contact_contacts_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.components_contact_contacts_components
    ADD CONSTRAINT components_contact_contacts_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_contact_contacts(id) ON DELETE CASCADE;


--
-- Name: components_faq_faqs_components components_faq_faqs_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.components_faq_faqs_components
    ADD CONSTRAINT components_faq_faqs_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_faq_faqs(id) ON DELETE CASCADE;


--
-- Name: components_get_started_get_starteds_components components_get_started_get_starteds_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.components_get_started_get_starteds_components
    ADD CONSTRAINT components_get_started_get_starteds_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_get_started_get_starteds(id) ON DELETE CASCADE;


--
-- Name: components_home_heroes_components components_home_heroes_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.components_home_heroes_components
    ADD CONSTRAINT components_home_heroes_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_home_heroes(id) ON DELETE CASCADE;


--
-- Name: components_shared_seos_components components_shared_seos_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.components_shared_seos_components
    ADD CONSTRAINT components_shared_seos_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_shared_seos(id) ON DELETE CASCADE;


--
-- Name: components_ui_forms_components components_ui_forms_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.components_ui_forms_components
    ADD CONSTRAINT components_ui_forms_entity_fk FOREIGN KEY (entity_id) REFERENCES public.components_ui_forms(id) ON DELETE CASCADE;


--
-- Name: contacts contacts_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.contacts
    ADD CONSTRAINT contacts_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: contacts_components contacts_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.contacts_components
    ADD CONSTRAINT contacts_entity_fk FOREIGN KEY (entity_id) REFERENCES public.contacts(id) ON DELETE CASCADE;


--
-- Name: contacts contacts_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.contacts
    ADD CONSTRAINT contacts_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: files files_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: files_folder_links files_folder_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;


--
-- Name: files_folder_links files_folder_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.files_folder_links
    ADD CONSTRAINT files_folder_links_inv_fk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- Name: files_related_morphs files_related_morphs_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.files_related_morphs
    ADD CONSTRAINT files_related_morphs_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;


--
-- Name: files files_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: i18n_locale i18n_locale_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: i18n_locale i18n_locale_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: layouts layouts_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.layouts
    ADD CONSTRAINT layouts_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: layouts_components layouts_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.layouts_components
    ADD CONSTRAINT layouts_entity_fk FOREIGN KEY (entity_id) REFERENCES public.layouts(id) ON DELETE CASCADE;


--
-- Name: layouts layouts_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.layouts
    ADD CONSTRAINT layouts_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: pages pages_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.pages
    ADD CONSTRAINT pages_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: pages_components pages_entity_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.pages_components
    ADD CONSTRAINT pages_entity_fk FOREIGN KEY (entity_id) REFERENCES public.pages(id) ON DELETE CASCADE;


--
-- Name: pages pages_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.pages
    ADD CONSTRAINT pages_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_token_permissions strapi_api_token_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_fk FOREIGN KEY (api_token_permission_id) REFERENCES public.strapi_api_token_permissions(id) ON DELETE CASCADE;


--
-- Name: strapi_api_token_permissions_token_links strapi_api_token_permissions_token_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.strapi_api_token_permissions_token_links
    ADD CONSTRAINT strapi_api_token_permissions_token_links_inv_fk FOREIGN KEY (api_token_id) REFERENCES public.strapi_api_tokens(id) ON DELETE CASCADE;


--
-- Name: strapi_api_token_permissions strapi_api_token_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.strapi_api_token_permissions
    ADD CONSTRAINT strapi_api_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_tokens strapi_api_tokens_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_api_tokens strapi_api_tokens_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_fk FOREIGN KEY (transfer_token_permission_id) REFERENCES public.strapi_transfer_token_permissions(id) ON DELETE CASCADE;


--
-- Name: strapi_transfer_token_permissions_token_links strapi_transfer_token_permissions_token_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions_token_links
    ADD CONSTRAINT strapi_transfer_token_permissions_token_links_inv_fk FOREIGN KEY (transfer_token_id) REFERENCES public.strapi_transfer_tokens(id) ON DELETE CASCADE;


--
-- Name: strapi_transfer_token_permissions strapi_transfer_token_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.strapi_transfer_token_permissions
    ADD CONSTRAINT strapi_transfer_token_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_tokens strapi_transfer_tokens_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: strapi_transfer_tokens strapi_transfer_tokens_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.strapi_transfer_tokens
    ADD CONSTRAINT strapi_transfer_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_permissions up_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_permissions_role_links up_permissions_role_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.up_permissions(id) ON DELETE CASCADE;


--
-- Name: up_permissions_role_links up_permissions_role_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;


--
-- Name: up_permissions up_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_roles up_roles_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_roles up_roles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_users up_users_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: up_users_role_links up_users_role_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_fk FOREIGN KEY (user_id) REFERENCES public.up_users(id) ON DELETE CASCADE;


--
-- Name: up_users_role_links up_users_role_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;


--
-- Name: up_users up_users_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: upload_folders upload_folders_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- Name: upload_folders_parent_links upload_folders_parent_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_fk FOREIGN KEY (folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- Name: upload_folders_parent_links upload_folders_parent_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.upload_folders_parent_links
    ADD CONSTRAINT upload_folders_parent_links_inv_fk FOREIGN KEY (inv_folder_id) REFERENCES public.upload_folders(id) ON DELETE CASCADE;


--
-- Name: upload_folders upload_folders_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: strapi_worker
--

ALTER TABLE ONLY public.upload_folders
    ADD CONSTRAINT upload_folders_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- PostgreSQL database dump complete
--

