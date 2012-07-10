--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: attributes; Type: TABLE; Schema: public; Owner: himitsu; Tablespace: 
--

CREATE TABLE attributes (
    id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.attributes OWNER TO himitsu;

--
-- Name: attributes_id_seq; Type: SEQUENCE; Schema: public; Owner: himitsu
--

CREATE SEQUENCE attributes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.attributes_id_seq OWNER TO himitsu;

--
-- Name: attributes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: himitsu
--

ALTER SEQUENCE attributes_id_seq OWNED BY attributes.id;


--
-- Name: attributes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: himitsu
--

SELECT pg_catalog.setval('attributes_id_seq', 19, true);


--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: himitsu; Tablespace: 
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO himitsu;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: himitsu
--

CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO himitsu;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: himitsu
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: himitsu
--

SELECT pg_catalog.setval('auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: himitsu; Tablespace: 
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO himitsu;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: himitsu
--

CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO himitsu;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: himitsu
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: himitsu
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: himitsu; Tablespace: 
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO himitsu;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: himitsu
--

CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO himitsu;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: himitsu
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: himitsu
--

SELECT pg_catalog.setval('auth_permission_id_seq', 33, true);


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: himitsu; Tablespace: 
--

CREATE TABLE auth_user (
    id integer NOT NULL,
    username character varying(30) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(75) NOT NULL,
    password character varying(128) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    is_superuser boolean NOT NULL,
    last_login timestamp with time zone NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO himitsu;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: himitsu; Tablespace: 
--

CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO himitsu;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: himitsu
--

CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO himitsu;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: himitsu
--

ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: himitsu
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: himitsu
--

CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO himitsu;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: himitsu
--

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: himitsu
--

SELECT pg_catalog.setval('auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: himitsu; Tablespace: 
--

CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO himitsu;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: himitsu
--

CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO himitsu;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: himitsu
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: himitsu
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);


--
-- Name: categories; Type: TABLE; Schema: public; Owner: himitsu; Tablespace: 
--

CREATE TABLE categories (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    slug character varying(50) NOT NULL,
    is_active boolean NOT NULL,
    meta_keywords character varying(255) NOT NULL,
    meta_description character varying(255) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    parent_id integer,
    lft integer NOT NULL,
    rght integer NOT NULL,
    tree_id integer NOT NULL,
    level integer NOT NULL,
    CONSTRAINT categories_level_check CHECK ((level >= 0)),
    CONSTRAINT categories_lft_check CHECK ((lft >= 0)),
    CONSTRAINT categories_rght_check CHECK ((rght >= 0)),
    CONSTRAINT categories_tree_id_check CHECK ((tree_id >= 0))
);


ALTER TABLE public.categories OWNER TO himitsu;

--
-- Name: categories_attributes; Type: TABLE; Schema: public; Owner: himitsu; Tablespace: 
--

CREATE TABLE categories_attributes (
    id integer NOT NULL,
    category_id integer NOT NULL,
    attribute_id integer NOT NULL
);


ALTER TABLE public.categories_attributes OWNER TO himitsu;

--
-- Name: categories_attributes_id_seq; Type: SEQUENCE; Schema: public; Owner: himitsu
--

CREATE SEQUENCE categories_attributes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categories_attributes_id_seq OWNER TO himitsu;

--
-- Name: categories_attributes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: himitsu
--

ALTER SEQUENCE categories_attributes_id_seq OWNED BY categories_attributes.id;


--
-- Name: categories_attributes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: himitsu
--

SELECT pg_catalog.setval('categories_attributes_id_seq', 438, true);


--
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: himitsu
--

CREATE SEQUENCE categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categories_id_seq OWNER TO himitsu;

--
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: himitsu
--

ALTER SEQUENCE categories_id_seq OWNED BY categories.id;


--
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: himitsu
--

SELECT pg_catalog.setval('categories_id_seq', 23, true);


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: himitsu; Tablespace: 
--

CREATE TABLE django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    user_id integer NOT NULL,
    content_type_id integer,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO himitsu;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: himitsu
--

CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO himitsu;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: himitsu
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: himitsu
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 137, true);


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: himitsu; Tablespace: 
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO himitsu;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: himitsu
--

CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO himitsu;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: himitsu
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: himitsu
--

SELECT pg_catalog.setval('django_content_type_id_seq', 11, true);


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: himitsu; Tablespace: 
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO himitsu;

--
-- Name: django_site; Type: TABLE; Schema: public; Owner: himitsu; Tablespace: 
--

CREATE TABLE django_site (
    id integer NOT NULL,
    domain character varying(100) NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.django_site OWNER TO himitsu;

--
-- Name: django_site_id_seq; Type: SEQUENCE; Schema: public; Owner: himitsu
--

CREATE SEQUENCE django_site_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_site_id_seq OWNER TO himitsu;

--
-- Name: django_site_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: himitsu
--

ALTER SEQUENCE django_site_id_seq OWNED BY django_site.id;


--
-- Name: django_site_id_seq; Type: SEQUENCE SET; Schema: public; Owner: himitsu
--

SELECT pg_catalog.setval('django_site_id_seq', 1, true);


--
-- Name: product_attribute_value; Type: TABLE; Schema: public; Owner: himitsu; Tablespace: 
--

CREATE TABLE product_attribute_value (
    id integer NOT NULL,
    product_id integer NOT NULL,
    attribute_id integer NOT NULL,
    value character varying(255) NOT NULL
);


ALTER TABLE public.product_attribute_value OWNER TO himitsu;

--
-- Name: product_attribute_value_id_seq; Type: SEQUENCE; Schema: public; Owner: himitsu
--

CREATE SEQUENCE product_attribute_value_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_attribute_value_id_seq OWNER TO himitsu;

--
-- Name: product_attribute_value_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: himitsu
--

ALTER SEQUENCE product_attribute_value_id_seq OWNED BY product_attribute_value.id;


--
-- Name: product_attribute_value_id_seq; Type: SEQUENCE SET; Schema: public; Owner: himitsu
--

SELECT pg_catalog.setval('product_attribute_value_id_seq', 309, true);


--
-- Name: products; Type: TABLE; Schema: public; Owner: himitsu; Tablespace: 
--

CREATE TABLE products (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    is_active boolean NOT NULL,
    price numeric(9,2) NOT NULL,
    slug character varying(255) NOT NULL,
    brand_url character varying(255) NOT NULL,
    image character varying(100) NOT NULL,
    description text NOT NULL,
    category_id integer NOT NULL,
    meta_keywords character varying(255) NOT NULL,
    meta_description character varying(255) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);


ALTER TABLE public.products OWNER TO himitsu;

--
-- Name: products_id_seq; Type: SEQUENCE; Schema: public; Owner: himitsu
--

CREATE SEQUENCE products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_id_seq OWNER TO himitsu;

--
-- Name: products_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: himitsu
--

ALTER SEQUENCE products_id_seq OWNED BY products.id;


--
-- Name: products_id_seq; Type: SEQUENCE SET; Schema: public; Owner: himitsu
--

SELECT pg_catalog.setval('products_id_seq', 53, true);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: himitsu
--

ALTER TABLE ONLY attributes ALTER COLUMN id SET DEFAULT nextval('attributes_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: himitsu
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: himitsu
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: himitsu
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: himitsu
--

ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: himitsu
--

ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: himitsu
--

ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: himitsu
--

ALTER TABLE ONLY categories ALTER COLUMN id SET DEFAULT nextval('categories_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: himitsu
--

ALTER TABLE ONLY categories_attributes ALTER COLUMN id SET DEFAULT nextval('categories_attributes_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: himitsu
--

ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: himitsu
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: himitsu
--

ALTER TABLE ONLY django_site ALTER COLUMN id SET DEFAULT nextval('django_site_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: himitsu
--

ALTER TABLE ONLY product_attribute_value ALTER COLUMN id SET DEFAULT nextval('product_attribute_value_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: himitsu
--

ALTER TABLE ONLY products ALTER COLUMN id SET DEFAULT nextval('products_id_seq'::regclass);


--
-- Data for Name: attributes; Type: TABLE DATA; Schema: public; Owner: himitsu
--

COPY attributes (id, name) FROM stdin;
1	Автор
2	Страниц
3	Язык
4	Год выпуска
5	ISBN
6	Издательство
7	Переплет
8	Тип велосипеда
9	Передний переключатель
10	Задний переключатель
11	Рама
12	Вес, кг.
13	Тормоза
14	Манетки
15	Диагональ экрана
16	Оперативная память
17	Жесткий диск
18	Процессор
19	Видеокарта
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: himitsu
--

COPY auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: himitsu
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: himitsu
--

COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
19	Can add log entry	7	add_logentry
20	Can change log entry	7	change_logentry
21	Can delete log entry	7	delete_logentry
1	Can add group	2	add_group
4	Can change group	2	change_group
7	Can delete group	2	delete_group
2	Can add permission	1	add_permission
5	Can change permission	1	change_permission
8	Can delete permission	1	delete_permission
3	Can add user	3	add_user
6	Can change user	3	change_user
9	Can delete user	3	delete_user
22	Can add Атрибут	8	add_attribute
26	Can change Атрибут	8	change_attribute
30	Can delete Атрибут	8	delete_attribute
23	Can add Категория товаров	9	add_category
27	Can change Категория товаров	9	change_category
31	Can delete Категория товаров	9	delete_category
24	Can add Товар	10	add_product
28	Can change Товар	10	change_product
32	Can delete Товар	10	delete_product
25	Can add Характеристика	11	add_productattributevalue
29	Can change Характеристика	11	change_productattributevalue
33	Can delete Характеристика	11	delete_productattributevalue
10	Can add content type	4	add_contenttype
11	Can change content type	4	change_contenttype
12	Can delete content type	4	delete_contenttype
13	Can add session	5	add_session
14	Can change session	5	change_session
15	Can delete session	5	delete_session
16	Can add site	6	add_site
17	Can change site	6	change_site
18	Can delete site	6	delete_site
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: himitsu
--

COPY auth_user (id, username, first_name, last_name, email, password, is_staff, is_active, is_superuser, last_login, date_joined) FROM stdin;
1	admin			so.cute.baka@gmail.com	pbkdf2_sha256$10000$feFrVWJOGiZU$A7P6JqZsSpQax+TRERJX3E+HkRmJpZH3fDzWn792cA4=	t	t	t	2012-07-10 09:57:45.117+04	2012-06-27 02:01:50.555+04
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: himitsu
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: himitsu
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: himitsu
--

COPY categories (id, name, slug, is_active, meta_keywords, meta_description, created_at, updated_at, parent_id, lft, rght, tree_id, level) FROM stdin;
1	Книги	books	t			2012-06-27 02:03:06.281+04	2012-06-27 02:03:06.281+04	\N	1	16	1	0
2	Художественная литература	fiction	t			2012-06-27 02:03:24.951+04	2012-06-27 02:03:24.951+04	1	2	9	1	1
3	Компьютерная литература	computer-books	t			2012-06-27 02:03:46.853+04	2012-06-27 02:03:46.853+04	1	10	15	1	1
4	Научная фантастика	science-fiction	t			2012-06-27 02:04:00.723+04	2012-06-27 02:13:26.616+04	8	4	5	1	3
5	Приключенческие романы	adventure-stories	t			2012-06-27 02:07:18.294+04	2012-06-27 02:07:18.294+04	2	7	8	1	2
6	Разработка программного обеспечения	software-development	t			2012-06-27 02:10:03.282+04	2012-06-27 04:34:13.308+04	3	11	12	1	2
7	Базы данных	databases	t			2012-06-27 02:10:33.325+04	2012-06-27 02:10:33.325+04	3	13	14	1	2
8	Фантастика	fantastic	t			2012-06-27 02:12:45.277+04	2012-06-27 02:13:35.181+04	2	3	6	1	2
9	Велосипеды	bicycles	t			2012-06-27 02:16:56.731+04	2012-06-27 02:17:39.952+04	\N	1	20	2	0
10	Горные велосипеды Kona	kona-mountain-bikes	t			2012-06-27 02:18:17.773+04	2012-06-27 04:34:41.163+04	12	3	4	2	2
11	Шоссейные велосипеды Kona	kona-road-bikes	t			2012-06-27 02:18:52.957+04	2012-06-27 04:34:26.889+04	12	5	6	2	2
12	Kona	kona-bikes	t			2012-06-27 02:20:36.877+04	2012-06-27 02:20:36.877+04	9	2	7	2	1
13	Trek	trek-bikes	t			2012-06-27 02:21:43.316+04	2012-06-27 02:21:43.316+04	9	8	13	2	1
14	Горные велосипеды Trek	trek-mountain-bikes	t			2012-06-27 02:22:22.759+04	2012-06-27 02:23:09.371+04	13	9	10	2	2
15	Шоссейные велосипеды Trek	trek-road-bikes	t			2012-06-27 02:22:53.059+04	2012-06-27 02:22:53.059+04	13	11	12	2	2
16	Giant	giant-bikes	t			2012-06-27 02:25:35.054+04	2012-06-27 02:25:35.054+04	9	14	19	2	1
17	Горные велосипеды Giant	giant-mountain-bikes	t			2012-06-27 02:26:01.011+04	2012-06-27 02:26:01.012+04	16	15	16	2	2
18	Шоссейные велосипеды Giant	giant-road-bikes	t			2012-06-27 02:26:21.499+04	2012-06-27 02:26:21.499+04	16	17	18	2	2
19	Электроника	electronics	t			2012-06-27 02:28:13.241+04	2012-06-27 02:28:13.241+04	\N	1	2	4	0
20	Ноутбуки	notebooks	t			2012-06-27 02:31:16.505+04	2012-06-27 08:17:41.027+04	\N	1	8	3	0
21	Ноутбуки 15.6"	notebooks-15-6-inch	t			2012-06-27 02:32:02.009+04	2012-06-27 02:35:59.669+04	20	2	3	3	1
22	Ноутбуки 14"	notebooks-14-inch	t			2012-06-27 02:32:39.437+04	2012-06-27 02:36:06.13+04	20	4	5	3	1
23	Ноутбуки 17.3"	notebooks-17-3-inch	t			2012-06-27 02:35:44.236+04	2012-06-27 02:35:44.236+04	20	6	7	3	1
\.


--
-- Data for Name: categories_attributes; Type: TABLE DATA; Schema: public; Owner: himitsu
--

COPY categories_attributes (id, category_id, attribute_id) FROM stdin;
293	1	1
294	1	3
295	1	2
296	1	5
297	1	4
298	1	7
299	1	6
300	2	1
301	2	3
302	2	2
303	2	5
304	2	4
305	2	7
306	2	6
307	3	1
308	3	3
309	3	2
310	3	5
311	3	4
312	3	7
313	3	6
314	4	1
315	4	3
316	4	2
317	4	5
318	4	4
319	4	7
320	4	6
321	5	1
322	5	3
323	5	2
324	5	5
325	5	4
326	5	7
327	5	6
328	6	1
329	6	3
330	6	2
331	6	5
332	6	4
333	6	7
334	6	6
335	7	1
336	7	3
337	7	2
338	7	5
339	7	4
340	7	7
341	7	6
342	8	1
343	8	3
344	8	2
345	8	5
346	8	4
347	8	7
348	8	6
349	9	11
350	9	10
351	9	13
352	9	12
353	9	14
354	9	9
355	9	8
356	10	11
357	10	10
358	10	13
359	10	12
360	10	14
361	10	9
362	10	8
363	11	11
364	11	10
365	11	13
366	11	12
367	11	14
368	11	9
369	11	8
370	12	11
371	12	10
372	12	13
373	12	12
374	12	14
375	12	9
376	12	8
377	13	11
378	13	10
379	13	13
380	13	12
381	13	14
382	13	9
383	13	8
384	14	11
385	14	10
386	14	13
387	14	12
388	14	14
389	14	9
390	14	8
391	15	11
392	15	10
393	15	13
394	15	12
395	15	14
396	15	9
397	15	8
398	16	11
399	16	10
400	16	13
401	16	12
402	16	14
403	16	9
404	16	8
405	17	11
406	17	10
407	17	13
408	17	12
409	17	14
410	17	9
411	17	8
412	18	11
413	18	10
414	18	13
415	18	12
416	18	14
417	18	9
418	18	8
419	20	19
420	20	18
421	20	15
422	20	17
423	20	16
424	21	19
425	21	18
426	21	15
427	21	17
428	21	16
429	22	19
430	22	18
431	22	15
432	22	17
433	22	16
434	23	19
435	23	18
436	23	15
437	23	17
438	23	16
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: himitsu
--

COPY django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) FROM stdin;
137	2012-06-27 08:31:57.849+04	1	10	53	Ноутбук 9	1	
136	2012-06-27 08:30:19.426+04	1	10	52	Ноутбук 8	1	
135	2012-06-27 08:29:37.194+04	1	10	51	Ноутбук 7	1	
134	2012-06-27 08:28:37.997+04	1	10	50	Ноутбук 6	1	
133	2012-06-27 08:27:39.175+04	1	10	49	Ноутбук 5	1	
132	2012-06-27 08:26:47.969+04	1	10	48	Ноутбук 4	1	
131	2012-06-27 08:25:43.826+04	1	10	47	Ноутбук 3	1	
130	2012-06-27 08:24:14.775+04	1	10	45	Ноутбук 1	2	Изменен description. Изменены value для Характеристика "ProductAttributeValue object".
129	2012-06-27 08:23:58.65+04	1	10	46	Ноутбук 2	1	
128	2012-06-27 08:20:44.945+04	1	10	45	Ноутбук 1	1	
127	2012-06-27 08:11:02.261+04	1	10	44	Велосипед 21	1	
126	2012-06-27 08:10:07.676+04	1	10	43	Велосипед 20	1	
125	2012-06-27 08:09:27.286+04	1	10	42	Велосипед 19	1	
124	2012-06-27 08:08:26.573+04	1	10	41	Велосипед 18	2	Изменен category.
123	2012-06-27 08:07:58.867+04	1	10	41	Велосипед 18	1	
122	2012-06-27 08:07:24.094+04	1	10	40	Велосипед 17	1	
121	2012-06-27 08:06:49.53+04	1	10	39	Велосипед 16	1	
120	2012-06-27 08:05:56.614+04	1	10	38	Велосипед 15	1	
119	2012-06-27 08:04:58.476+04	1	10	37	Велосипед 14	1	
118	2012-06-27 08:04:21.114+04	1	10	36	Велосипед 13	1	
117	2012-06-27 08:02:05.55+04	1	10	35	Велосипед 12	1	
116	2012-06-27 08:01:24.879+04	1	10	34	Велосипед 11	1	
115	2012-06-27 08:00:39.705+04	1	10	33	Велосипед 10	1	
114	2012-06-27 07:59:50.524+04	1	10	32	Велосипед 9	1	
113	2012-06-27 07:57:14.701+04	1	10	31	Велосипед 8	1	
112	2012-06-27 07:56:30.724+04	1	10	30	Велосипед 7	1	
111	2012-06-27 07:55:51.675+04	1	10	29	Велосипед 6	1	
110	2012-06-27 07:55:13.666+04	1	10	28	Велосипед 5	1	
109	2012-06-27 07:53:39.821+04	1	10	27	Велосипед 4	1	
108	2012-06-27 07:53:04.102+04	1	10	26	Велосипед 3	1	
107	2012-06-27 07:50:11.385+04	1	10	25	Велосипед 2	1	
106	2012-06-27 07:48:47.914+04	1	10	24	Велосипед 1	2	Изменен description.
105	2012-06-27 07:48:10.598+04	1	8	12	Вес, кг.	2	Изменен name.
104	2012-06-27 07:45:26.331+04	1	10	24	Велосипед 1	1	
103	2012-06-27 07:32:41.914+04	1	10	23	Книга 23	1	
102	2012-06-27 07:30:51.774+04	1	10	22	Книга 22	1	
101	2012-06-27 07:29:58.977+04	1	10	21	Книга 21	1	
100	2012-06-27 07:28:41.342+04	1	10	20	Книга 20	1	
99	2012-06-27 07:27:56.994+04	1	10	19	Книга 19	1	
98	2012-06-27 07:27:21.198+04	1	10	18	Книга 18	1	
97	2012-06-27 07:26:40.538+04	1	10	17	Книга 17	1	
96	2012-06-27 07:24:12.037+04	1	10	16	Книга 16	1	
95	2012-06-27 07:21:44.706+04	1	10	15	Книга 15	1	
94	2012-06-27 07:21:12.074+04	1	10	14	Книга 14	1	
93	2012-06-27 07:20:29.816+04	1	10	13	Книга 13	1	
92	2012-06-27 07:19:42.276+04	1	10	12	Книга 12	1	
91	2012-06-27 07:18:34.615+04	1	10	11	Книга 11	1	
90	2012-06-27 07:18:01.454+04	1	10	10	Книга 10	1	
89	2012-06-27 07:17:14.052+04	1	10	9	Книга 9	1	
88	2012-06-27 07:16:08.152+04	1	10	8	Книга 8	1	
87	2012-06-27 07:15:31.978+04	1	10	7	Книга 7	1	
86	2012-06-27 07:13:58.088+04	1	10	6	Книга 6	1	
85	2012-06-27 07:13:05.816+04	1	10	5	Книга 5	1	
84	2012-06-27 07:12:06.759+04	1	10	4	Книга 4	1	
83	2012-06-27 07:11:22.685+04	1	10	3	Книга 3	1	
82	2012-06-27 07:09:56.631+04	1	10	2	Книга 2	2	Изменен description.
81	2012-06-27 07:09:46.805+04	1	10	2	Книга 2	2	Изменен name и slug. Изменены value для Характеристика "ProductAttributeValue object". Изменены value для Характеристика "ProductAttributeValue object".
80	2012-06-27 07:09:15.037+04	1	10	1	Книга 1	2	Изменен name,slug и description.
79	2012-06-27 07:06:53.251+04	1	10	2	Приключения Алисы. Конец Атлантиды	1	
78	2012-06-27 07:04:51.782+04	1	10	1	Приключения Алисы. Путешествие Алисы	2	Изменен name и slug.
77	2012-06-27 07:04:17.769+04	1	10	1	Книга 1	1	
76	2012-06-27 07:00:17.697+04	1	10	1	Лед и пламя	3	
75	2012-06-27 07:00:17.579+04	1	10	2	Галактическая полиция. Книга 1	3	
74	2012-06-27 06:49:56.7+04	1	10	1	Лед и пламя	2	Изменен description.
73	2012-06-27 06:49:04.851+04	1	10	1	Лед и пламя	2	Изменен category.
72	2012-06-27 06:48:53.12+04	1	10	2	Галактическая полиция. Книга 1	1	
71	2012-06-27 06:43:53.721+04	1	10	1	Лед и пламя	1	
70	2012-06-27 04:26:25.743+04	1	10	1	qwe	3	
69	2012-06-27 04:26:04.548+04	1	10	1	qwe	2	Удален Характеристика "ProductAttributeValue object".
68	2012-06-27 04:25:30.469+04	1	10	1	qwe	1	
67	2012-06-27 04:13:40.528+04	1	10	1	Product 1	2	Изменен name,price,slug и image. Добавлен Характеристика "ProductAttributeValue object".
66	2012-06-27 04:02:00.348+04	1	10	2	ewrwer	1	
65	2012-06-27 04:01:45.354+04	1	10	1	qweqeqwe	1	
64	2012-06-27 04:01:23.934+04	1	10	1	qwe	3	
63	2012-06-27 04:00:44.668+04	1	10	1	qwe	1	
62	2012-06-27 04:00:32.702+04	1	10	1	Product 1	3	
61	2012-06-27 04:00:02.915+04	1	10	1	Product 1	3	
60	2012-06-27 03:59:10.667+04	1	10	1	Product 1	3	
59	2012-06-27 03:56:23.769+04	1	10	1	Product 1	1	
58	2012-06-27 03:55:33.18+04	1	10	1	qwe	3	
57	2012-06-27 03:54:23.402+04	1	10	1	qwe	1	
56	2012-06-27 03:53:37.909+04	1	10	1	Product 1	3	
55	2012-06-27 03:41:02.717+04	1	10	1	Product 1	1	
54	2012-06-27 03:04:15.555+04	1	9	24	qwe	3	
53	2012-06-27 03:03:23.097+04	1	9	24	qwe	1	
52	2012-06-27 02:36:06.14+04	1	9	22	Ноутбуки 14"	2	Изменен slug.
51	2012-06-27 02:35:59.678+04	1	9	21	Ноутбуки 15.6"	2	Изменен slug.
50	2012-06-27 02:35:44.242+04	1	9	23	Ноутбуки 17.3"	1	
49	2012-06-27 02:32:39.443+04	1	9	22	Ноутбуки 14"	1	
48	2012-06-27 02:32:02.014+04	1	9	21	Ноутбуки 15.6"	1	
47	2012-06-27 02:31:16.51+04	1	9	20	Ноутбуки	1	
46	2012-06-27 02:30:48.559+04	1	8	19	Видеокарта	1	
45	2012-06-27 02:30:39.256+04	1	8	18	Процессор	1	
44	2012-06-27 02:30:33.031+04	1	8	17	Жесткий диск	1	
43	2012-06-27 02:30:13.56+04	1	8	16	Оперативная память	1	
42	2012-06-27 02:29:44.067+04	1	8	16	RAM	3	
41	2012-06-27 02:28:46.709+04	1	8	16	RAM	1	
40	2012-06-27 02:28:37.68+04	1	8	15	Диагональ экрана	1	
39	2012-06-27 02:28:13.244+04	1	9	19	Электроника	1	
38	2012-06-27 02:26:21.506+04	1	9	18	Шоссейные велосипеды Giant	1	
37	2012-06-27 02:26:01.018+04	1	9	17	Горные велосипеды Giant	1	
36	2012-06-27 02:25:35.06+04	1	9	16	Giant	1	
35	2012-06-27 02:23:09.381+04	1	9	14	Горные велосипеды Trek	2	Изменен attributes.
34	2012-06-27 02:22:53.066+04	1	9	15	Шоссейные велосипеды Trek	1	
33	2012-06-27 02:22:22.764+04	1	9	14	Горные велосипеды Trek	1	
32	2012-06-27 02:21:43.323+04	1	9	13	Trek	1	
31	2012-06-27 02:21:20.032+04	1	9	11	Шоссейные велосипеды Kona	2	Изменен name и slug.
30	2012-06-27 02:21:11.092+04	1	9	10	Горные велосипеды Kona	2	Изменен name и slug.
29	2012-06-27 02:20:36.883+04	1	9	12	Kona	1	
28	2012-06-27 02:18:52.963+04	1	9	11	Шоссейные велосипеды	1	
27	2012-06-27 02:18:17.778+04	1	9	10	Горные велосипеды	1	
26	2012-06-27 02:17:39.962+04	1	9	9	Велосипеды	2	Изменен attributes.
25	2012-06-27 02:17:14.232+04	1	9	9	Велосипеды	2	Изменен attributes.
24	2012-06-27 02:16:56.738+04	1	9	9	Велосипеды	1	
23	2012-06-27 02:16:44.54+04	1	8	14	Манетки	1	
22	2012-06-27 02:16:32.989+04	1	8	13	Тормоза	1	
21	2012-06-27 02:16:19.469+04	1	8	12	Вес	1	
20	2012-06-27 02:15:55.866+04	1	8	11	Рама	1	
19	2012-06-27 02:15:40.19+04	1	8	10	Задний переключатель	1	
18	2012-06-27 02:15:33.988+04	1	8	9	Передний переключатель	1	
17	2012-06-27 02:15:22.01+04	1	8	8	Тип велосипеда	1	
16	2012-06-27 02:13:11.617+04	1	9	8	Фантастика	2	Изменен name и slug.
15	2012-06-27 02:12:45.282+04	1	9	8	Отечественная фантастика	1	
14	2012-06-27 02:10:33.331+04	1	9	7	Базы данных	1	
13	2012-06-27 02:10:03.287+04	1	9	6	Разработка программного обеспечения	1	
12	2012-06-27 02:07:18.301+04	1	9	5	Приключенческие романы	1	
11	2012-06-27 02:04:00.731+04	1	9	4	Научная фантастика	1	
10	2012-06-27 02:03:46.858+04	1	9	3	Компьютерная литература	1	
9	2012-06-27 02:03:24.958+04	1	9	2	Художественная литература	1	
8	2012-06-27 02:03:06.289+04	1	9	1	Книги	1	
7	2012-06-27 02:03:01.656+04	1	8	7	Переплет	1	
6	2012-06-27 02:02:57.817+04	1	8	6	Издательство	1	
5	2012-06-27 02:02:44.468+04	1	8	5	ISBN	1	
4	2012-06-27 02:02:34.2+04	1	8	4	Год выпуска	1	
3	2012-06-27 02:02:31.304+04	1	8	3	Язык	1	
2	2012-06-27 02:02:28.243+04	1	8	2	Страниц	1	
1	2012-06-27 02:02:23.613+04	1	8	1	Автор	1	
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: himitsu
--

COPY django_content_type (id, name, app_label, model) FROM stdin;
4	content type	contenttypes	contenttype
2	group	auth	group
7	log entry	admin	logentry
1	permission	auth	permission
5	session	sessions	session
6	site	sites	site
3	user	auth	user
8	Атрибут	catalog	attribute
9	Категория товаров	catalog	category
10	Товар	catalog	product
11	Характеристика	catalog	productattributevalue
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: himitsu
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
e0c1b7e7c84b15b0f48e711cfa52dec3	OTA3ZmM2MDJjZGU4YmRhNzM5ZTNmNWEyNzM2MWI5YmMxMzQ0ZDZmMjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQRLAXUu\n	2012-07-11 02:02:06.695+04
e75f6effdc0d614636b01f45ced6b77e	OTA3ZmM2MDJjZGU4YmRhNzM5ZTNmNWEyNzM2MWI5YmMxMzQ0ZDZmMjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQRLAXUu\n	2012-07-24 09:57:45.263+04
\.


--
-- Data for Name: django_site; Type: TABLE DATA; Schema: public; Owner: himitsu
--

COPY django_site (id, domain, name) FROM stdin;
1	example.com	example.com
\.


--
-- Data for Name: product_attribute_value; Type: TABLE DATA; Schema: public; Owner: himitsu
--

COPY product_attribute_value (id, product_id, attribute_id, value) FROM stdin;
4	1	5	5-7158-0022-6; 1991 г.
10	2	5	5-7158-0022-6; 1991 г.
16	3	5	5-7158-0022-6; 1991 г.
22	4	5	5-7158-0022-6; 1991 г.
28	5	5	5-7158-0022-6; 1991 г.
34	6	5	5-7158-0022-6; 1991 г.
40	7	5	5-7158-0022-6; 1991 г.
46	8	5	5-7158-0022-6; 1991 г.
52	9	5	5-7158-0022-6; 1991 г.
58	10	5	5-7158-0022-6; 1991 г.
64	11	5	5-7158-0022-6; 1991 г.
70	12	5	5-7158-0022-6; 1991 г.
76	13	5	5-7158-0022-6; 1991 г.
82	14	5	5-7158-0022-6; 1991 г.
88	15	5	5-7158-0022-6; 1991 г.
94	16	5	5-7158-0022-6; 1991 г.
100	17	5	5-7158-0022-6; 1991 г.
106	18	5	5-7158-0022-6; 1991 г.
112	19	5	5-7158-0022-6; 1991 г.
118	20	5	5-7158-0022-6; 1991 г.
124	21	5	5-7158-0022-6; 1991 г.
130	22	5	5-7158-0022-6; 1991 г.
136	23	5	5-7158-0022-6; 1991 г.
1	1	1	Кир Булычев
7	2	1	Кир Булычев
13	3	1	Кир Булычев
19	4	1	Кир Булычев
25	5	1	Кир Булычев
31	6	1	Кир Булычев
37	7	1	Кир Булычев
43	8	1	Кир Булычев
49	9	1	Кир Булычев
55	10	1	Кир Булычев
61	11	1	Кир Булычев
67	12	1	Кир Булычев
73	13	1	Кир Булычев
79	14	1	Кир Булычев
85	15	1	Кир Булычев
91	16	1	Кир Булычев
97	17	1	Кир Булычев
103	18	1	Кир Булычев
109	19	1	Кир Булычев
115	20	1	Кир Булычев
121	21	1	Кир Булычев
127	22	1	Кир Булычев
133	23	1	Кир Булычев
143	24	12	8
149	25	12	8
155	26	12	8
161	27	12	8
167	28	12	8
173	29	12	8
179	30	12	8
185	31	12	8
191	32	12	8
197	33	12	8
203	34	12	8
209	35	12	8
215	36	12	8
221	37	12	8
227	38	12	8
233	39	12	8
239	40	12	8
245	41	12	8
251	42	12	8
257	43	12	8
263	44	12	8
269	45	19	Intel GMA 4500MHD
274	46	19	Intel GMA 4500MHD
279	47	19	Inte GMA 4500MHD
284	48	19	Intel GMA 4500MHD
289	49	19	intel GMA 4500MHD
294	50	19	Intel GMA 4500MHD
299	51	19	Intel GMA 4500MHD
304	52	19	Intel GMA 4500MHD
309	53	19	Inrel GMA 4500MHD
265	45	15	14
270	46	15	14
275	47	15	14
280	48	15	14
285	49	15	14
290	50	15	14
295	51	15	14
300	52	15	14
305	53	15	14
267	45	17	1Tb
272	46	17	1Tb
277	47	17	1Tb
282	48	17	1Tb
287	49	17	1Tb
292	50	17	1Tb
297	51	17	1Tb
302	52	17	1Tb
307	53	17	1Tb
141	24	10	Tiagra
147	25	10	Tiagra
153	26	10	Tiagra
159	27	10	Tiagra
165	28	10	Tiagra
171	29	10	Tiagra
177	30	10	Tiagra
183	31	10	Tiagra
189	32	10	Tiagra
195	33	10	Tiagra
201	34	10	Tiagra
207	35	10	Tiagra
213	36	10	Tiagra
219	37	10	Tiagra
225	38	10	Tiagra
231	39	10	Tiagra
237	40	10	Tiagra
243	41	10	Tiagra
249	42	10	Tiagra
255	43	10	Tiagra
261	44	10	Tiagra
5	1	6	Культура
11	2	6	Культура
17	3	6	Культура
23	4	6	Культура
29	5	6	Культура
35	6	6	Культура
41	7	6	Культура
47	8	6	Культура
53	9	6	Культура
59	10	6	Культура
65	11	6	Культура
71	12	6	Культура
77	13	6	Культура
83	14	6	Культура
89	15	6	Культура
95	16	6	Культура
101	17	6	Культура
107	18	6	Культура
113	19	6	Культура
119	20	6	Культура
125	21	6	Культура
131	22	6	Культура
137	23	6	Культура
144	24	14	Ultegra
150	25	14	Ultegra
156	26	14	Ultegra
162	27	14	Ultegra
168	28	14	Ultegra
174	29	14	Ultegra
180	30	14	Ultegra
186	31	14	Ultegra
192	32	14	Ultegra
198	33	14	Ultegra
204	34	14	Ultegra
210	35	14	Ultegra
216	36	14	Ultegra
222	37	14	Ultegra
228	38	14	Ultegra
234	39	14	Ultegra
240	40	14	Ultegra
246	41	14	Ultegra
252	42	14	Ultegra
258	43	14	Ultegra
264	44	14	Ultegra
266	45	16	4Gb
271	46	16	4Gb
276	47	16	4Gb
281	48	16	4Gb
286	49	16	4Gb
291	50	16	4Gb
296	51	16	4Gb
301	52	16	4Gb
306	53	16	4Gb
140	24	9	Tiagra
146	25	9	Tiagra
152	26	9	Tiagra
158	27	9	Tiagra
164	28	9	Tiagra
170	29	9	Tiagra
176	30	9	Tiagra
182	31	9	Tiagra
188	32	9	Tiagra
194	33	9	Tiagra
200	34	9	Tiagra
206	35	9	Tiagra
212	36	9	Tiagra
218	37	9	Tiagra
224	38	9	Tiagra
230	39	9	Tiagra
236	40	9	Tiagra
242	41	9	Tiagra
248	42	9	Tiagra
254	43	9	Tiagra
260	44	9	Tiagra
6	1	7	Твердый
12	2	7	Твердый
18	3	7	Твердый
24	4	7	Твердый
30	5	7	Твердый
36	6	7	Твердый
42	7	7	Твердый
48	8	7	Твердый
54	9	7	Твердый
60	10	7	Твердый
66	11	7	Твердый
72	12	7	Твердый
78	13	7	Твердый
84	14	7	Твердый
90	15	7	Твердый
96	16	7	Твердый
102	17	7	Твердый
108	18	7	Твердый
114	19	7	Твердый
120	20	7	Твердый
126	21	7	Твердый
132	22	7	Твердый
138	23	7	Твердый
268	45	18	Intel Core i7
273	46	18	Intel Core i7
278	47	18	Intel Core i7
283	48	18	Intel Core i7
288	49	18	Intel Core i7
293	50	18	Intel Core i7
298	51	18	Intel Core i7
303	52	18	Intel Core i7
308	53	18	Intel Core i7
142	24	11	6061
148	25	11	6061
154	26	11	6061
160	27	11	6061
166	28	11	6061
172	29	11	6061
178	30	11	6061
184	31	11	6061
190	32	11	6061
196	33	11	6061
202	34	11	6061
208	35	11	6061
214	36	11	6061
220	37	11	6061
226	38	11	6061
232	39	11	6061
238	40	11	6061
244	41	11	6061
250	42	11	6061
256	43	11	6061
262	44	11	6061
2	1	2	368
8	2	2	368
14	3	2	368
20	4	2	386
26	5	2	368
32	6	2	368
38	7	2	368
44	8	2	368
50	9	2	368
56	10	2	368
62	11	2	368
68	12	2	368
74	13	2	368
80	14	2	368
86	15	2	368
92	16	2	368
98	17	2	368
104	18	2	368
110	19	2	368
116	20	2	368
122	21	2	368
128	22	2	368
134	23	2	368
139	24	8	Шоссейный
145	25	8	Шоссейный
151	26	8	Шоссейный
157	27	8	Шоссейный
163	28	8	Шоссейный
169	29	8	Шоссейный
175	30	8	Шоссейный
181	31	8	Шоссейный
187	32	8	Шоссейный
193	33	8	Шоссейный
199	34	8	Шоссейный
205	35	8	Шоссейный
211	36	8	Шоссейный
217	37	8	Шоссейный
223	38	8	Шоссейный
229	39	8	Шоссейный
235	40	8	Шоссейный
241	41	8	Шоссейный
247	42	8	Шоссейный
253	43	8	Шоссейный
259	44	8	Шоссейный
3	1	3	Русский
9	2	3	Русский
15	3	3	Русский
21	4	3	Русский
27	5	3	Русский
33	6	3	Русский
39	7	3	Русский
45	8	3	Русский
51	9	3	Русский
57	10	3	Русский
63	11	3	Русский
69	12	3	Русский
75	13	3	Русский
81	14	3	Русский
87	15	3	Русский
93	16	3	Русский
99	17	3	Русский
105	18	3	Русский
111	19	3	Русский
117	20	3	Русский
123	21	3	Русский
129	22	3	Русский
135	23	3	Русский
\.


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: himitsu
--

COPY products (id, name, is_active, price, slug, brand_url, image, description, category_id, meta_keywords, meta_description, created_at, updated_at) FROM stdin;
53	Ноутбук 9	t	40000.00	noutbuk-9	example.com	images/products/lenovo-thinkpad-t400s_4_2.jpg	Morbi ornare mollis lorem, non porta eros venenatis sit amet. Aliquam mi mi, laoreet quis feugiat nec, rhoncus at odio. Quisque sagittis quam vitae mauris vehicula aliquam. Donec molestie sapien vitae sem pharetra molestie sollicitudin urna placerat. Sed sed scelerisque est.	23			2012-06-27 08:31:57.839+04	2012-06-27 08:31:57.839+04
52	Ноутбук 8	t	40000.00	noutbuk-8	example.com	images/products/lenovo_thinkpad_701c_butterfly_keyboard_2.jpg	Morbi ornare mollis lorem, non porta eros venenatis sit amet. Aliquam mi mi, laoreet quis feugiat nec, rhoncus at odio. Quisque sagittis quam vitae mauris vehicula aliquam. Donec molestie sapien vitae sem pharetra molestie sollicitudin urna placerat. Sed sed scelerisque est.	22			2012-06-27 08:30:19.416+04	2012-06-27 08:30:19.416+04
51	Ноутбук 7	t	40000.00	noutbuk-7	example.com	images/products/440d7069fc1f3bcaeb118c119f471413_2.jpg	Morbi ornare mollis lorem, non porta eros venenatis sit amet. Aliquam mi mi, laoreet quis feugiat nec, rhoncus at odio. Quisque sagittis quam vitae mauris vehicula aliquam. Donec molestie sapien vitae sem pharetra molestie sollicitudin urna placerat. Sed sed scelerisque est.	21			2012-06-27 08:29:37.183+04	2012-06-27 08:29:37.183+04
50	Ноутбук 6	t	40000.00	noutbuk-6	example.com	images/products/lenovo-thinkpad-t400s_4_1.jpg	Morbi ornare mollis lorem, non porta eros venenatis sit amet. Aliquam mi mi, laoreet quis feugiat nec, rhoncus at odio. Quisque sagittis quam vitae mauris vehicula aliquam. Donec molestie sapien vitae sem pharetra molestie sollicitudin urna placerat. Sed sed scelerisque est.	20			2012-06-27 08:28:37.974+04	2012-06-27 08:28:37.974+04
49	Ноутбук 5	t	40000.00	noutbuk-5	example.com	images/products/lenovo_thinkpad_701c_butterfly_keyboard_1.jpg	Morbi ornare mollis lorem, non porta eros venenatis sit amet. Aliquam mi mi, laoreet quis feugiat nec, rhoncus at odio. Quisque sagittis quam vitae mauris vehicula aliquam. Donec molestie sapien vitae sem pharetra molestie sollicitudin urna placerat. Sed sed scelerisque est.	20			2012-06-27 08:27:39.165+04	2012-06-27 08:27:39.165+04
48	Ноутбук 4	t	40000.00	noutbuk-4	example.com	images/products/440d7069fc1f3bcaeb118c119f471413_1.jpg	Morbi ornare mollis lorem, non porta eros venenatis sit amet. Aliquam mi mi, laoreet quis feugiat nec, rhoncus at odio. Quisque sagittis quam vitae mauris vehicula aliquam. Donec molestie sapien vitae sem pharetra molestie sollicitudin urna placerat. Sed sed scelerisque est.	20			2012-06-27 08:26:47.96+04	2012-06-27 08:26:47.96+04
47	Ноутбук 3	t	40000.00	noutbuk-3	example.com	images/products/lenovo-thinkpad-t400s_4.jpg	Morbi ornare mollis lorem, non porta eros venenatis sit amet. Aliquam mi mi, laoreet quis feugiat nec, rhoncus at odio. Quisque sagittis quam vitae mauris vehicula aliquam. Donec molestie sapien vitae sem pharetra molestie sollicitudin urna placerat. Sed sed scelerisque est.	20			2012-06-27 08:25:43.814+04	2012-06-27 08:25:43.814+04
46	Ноутбук 2	t	40000.00	noutbuk-2	example.com	images/products/lenovo_thinkpad_701c_butterfly_keyboard.jpg	Morbi ornare mollis lorem, non porta eros venenatis sit amet. Aliquam mi mi, laoreet quis feugiat nec, rhoncus at odio. Quisque sagittis quam vitae mauris vehicula aliquam. Donec molestie sapien vitae sem pharetra molestie sollicitudin urna placerat. Sed sed scelerisque est.	20			2012-06-27 08:23:58.641+04	2012-06-27 08:23:58.641+04
45	Ноутбук 1	t	40000.00	noutbuk-1	example.com	images/products/440d7069fc1f3bcaeb118c119f471413.jpg	Morbi ornare mollis lorem, non porta eros venenatis sit amet. Aliquam mi mi, laoreet quis feugiat nec, rhoncus at odio. Quisque sagittis quam vitae mauris vehicula aliquam. Donec molestie sapien vitae sem pharetra molestie sollicitudin urna placerat. Sed sed scelerisque est.	20			2012-06-27 08:20:44.934+04	2012-06-27 08:24:14.758+04
44	Велосипед 21	t	29000.00	velosiped-21	example.com	images/products/trek2037_7.jpg	Aliquam erat volutpat. In vitae enim odio. Etiam vitae nisi diam. Phasellus a sapien ut nulla facilisis dictum. Morbi leo lacus, rutrum quis ullamcorper vitae, pulvinar eget massa. Sed sit amet enim leo, et sodales orci. Phasellus gravida egestas erat non vulputate. Praesent congue ornare ligula ac aliquam.	18			2012-06-27 08:11:02.24+04	2012-06-27 08:11:02.24+04
43	Велосипед 20	t	29000.00	velosiped-20	example.com	images/products/trek2040_6.jpg	Aliquam erat volutpat. In vitae enim odio. Etiam vitae nisi diam. Phasellus a sapien ut nulla facilisis dictum. Morbi leo lacus, rutrum quis ullamcorper vitae, pulvinar eget massa. Sed sit amet enim leo, et sodales orci. Phasellus gravida egestas erat non vulputate. Praesent congue ornare ligula ac aliquam.	17			2012-06-27 08:10:07.663+04	2012-06-27 08:10:07.663+04
42	Велосипед 19	t	29000.00	velosiped-19	example.com	images/products/trek2207_5.jpg	Aliquam erat volutpat. In vitae enim odio. Etiam vitae nisi diam. Phasellus a sapien ut nulla facilisis dictum. Morbi leo lacus, rutrum quis ullamcorper vitae, pulvinar eget massa. Sed sit amet enim leo, et sodales orci. Phasellus gravida egestas erat non vulputate. Praesent congue ornare ligula ac aliquam.	16			2012-06-27 08:09:27.274+04	2012-06-27 08:09:27.274+04
41	Велосипед 18	t	29000.00	velosiped-18	example.com	images/products/trek2037_6.jpg	Aliquam erat volutpat. In vitae enim odio. Etiam vitae nisi diam. Phasellus a sapien ut nulla facilisis dictum. Morbi leo lacus, rutrum quis ullamcorper vitae, pulvinar eget massa. Sed sit amet enim leo, et sodales orci. Phasellus gravida egestas erat non vulputate. Praesent congue ornare ligula ac aliquam.	15			2012-06-27 08:07:58.855+04	2012-06-27 08:08:26.442+04
40	Велосипед 17	t	29000.00	velosiped-17	example.com	images/products/trek2037_5.jpg	Aliquam erat volutpat. In vitae enim odio. Etiam vitae nisi diam. Phasellus a sapien ut nulla facilisis dictum. Morbi leo lacus, rutrum quis ullamcorper vitae, pulvinar eget massa. Sed sit amet enim leo, et sodales orci. Phasellus gravida egestas erat non vulputate. Praesent congue ornare ligula ac aliquam.	14			2012-06-27 08:07:24.08+04	2012-06-27 08:07:24.08+04
39	Велосипед 16	t	29000.00	velosiped-16	example.com	images/products/trek2040_5.jpg	Aliquam erat volutpat. In vitae enim odio. Etiam vitae nisi diam. Phasellus a sapien ut nulla facilisis dictum. Morbi leo lacus, rutrum quis ullamcorper vitae, pulvinar eget massa. Sed sit amet enim leo, et sodales orci. Phasellus gravida egestas erat non vulputate. Praesent congue ornare ligula ac aliquam.	13			2012-06-27 08:06:49.517+04	2012-06-27 08:06:49.517+04
38	Велосипед 15	t	29000.00	velosiped-15	example.com	images/products/trek2207_4.jpg	Aliquam erat volutpat. In vitae enim odio. Etiam vitae nisi diam. Phasellus a sapien ut nulla facilisis dictum. Morbi leo lacus, rutrum quis ullamcorper vitae, pulvinar eget massa. Sed sit amet enim leo, et sodales orci. Phasellus gravida egestas erat non vulputate. Praesent congue ornare ligula ac aliquam.	12			2012-06-27 08:05:56.601+04	2012-06-27 08:05:56.601+04
37	Велосипед 14	t	29000.00	velosiped-14	example.com	images/products/trek2037_4.jpg	Aliquam erat volutpat. In vitae enim odio. Etiam vitae nisi diam. Phasellus a sapien ut nulla facilisis dictum. Morbi leo lacus, rutrum quis ullamcorper vitae, pulvinar eget massa. Sed sit amet enim leo, et sodales orci. Phasellus gravida egestas erat non vulputate. Praesent congue ornare ligula ac aliquam.	11			2012-06-27 08:04:58.465+04	2012-06-27 08:04:58.465+04
36	Велосипед 13	t	29000.00	velosiped-13	example.com	images/products/trek2040_4.jpg	Aliquam erat volutpat. In vitae enim odio. Etiam vitae nisi diam. Phasellus a sapien ut nulla facilisis dictum. Morbi leo lacus, rutrum quis ullamcorper vitae, pulvinar eget massa. Sed sit amet enim leo, et sodales orci. Phasellus gravida egestas erat non vulputate. Praesent congue ornare ligula ac aliquam.	10			2012-06-27 08:04:21.102+04	2012-06-27 08:04:21.102+04
35	Велосипед 12	t	29000.00	velosiped-12	example.com	images/products/trek2207_3.jpg	Aliquam erat volutpat. In vitae enim odio. Etiam vitae nisi diam. Phasellus a sapien ut nulla facilisis dictum. Morbi leo lacus, rutrum quis ullamcorper vitae, pulvinar eget massa. Sed sit amet enim leo, et sodales orci. Phasellus gravida egestas erat non vulputate. Praesent congue ornare ligula ac aliquam.	9			2012-06-27 08:02:05.536+04	2012-06-27 08:02:05.537+04
34	Велосипед 11	t	29000.00	velosiped-11	example.com	images/products/trek2037_3.jpg	Aliquam erat volutpat. In vitae enim odio. Etiam vitae nisi diam. Phasellus a sapien ut nulla facilisis dictum. Morbi leo lacus, rutrum quis ullamcorper vitae, pulvinar eget massa. Sed sit amet enim leo, et sodales orci. Phasellus gravida egestas erat non vulputate. Praesent congue ornare ligula ac aliquam.	9			2012-06-27 08:01:24.865+04	2012-06-27 08:01:24.865+04
33	Велосипед 10	t	29000.00	velosiped-10	example.com	images/products/trek2040_3.jpg	Aliquam erat volutpat. In vitae enim odio. Etiam vitae nisi diam. Phasellus a sapien ut nulla facilisis dictum. Morbi leo lacus, rutrum quis ullamcorper vitae, pulvinar eget massa. Sed sit amet enim leo, et sodales orci. Phasellus gravida egestas erat non vulputate. Praesent congue ornare ligula ac aliquam.	9			2012-06-27 08:00:39.692+04	2012-06-27 08:00:39.692+04
32	Велосипед 9	t	29000.00	velosiped-9	example.com	images/products/trek2207_2.jpg	Aliquam erat volutpat. In vitae enim odio. Etiam vitae nisi diam. Phasellus a sapien ut nulla facilisis dictum. Morbi leo lacus, rutrum quis ullamcorper vitae, pulvinar eget massa. Sed sit amet enim leo, et sodales orci. Phasellus gravida egestas erat non vulputate. Praesent congue ornare ligula ac aliquam.	9			2012-06-27 07:59:50.51+04	2012-06-27 07:59:50.51+04
31	Велосипед 8	t	29000.00	velosiped-8	example.com	images/products/trek2037_2.jpg	Aliquam erat volutpat. In vitae enim odio. Etiam vitae nisi diam. Phasellus a sapien ut nulla facilisis dictum. Morbi leo lacus, rutrum quis ullamcorper vitae, pulvinar eget massa. Sed sit amet enim leo, et sodales orci. Phasellus gravida egestas erat non vulputate. Praesent congue ornare ligula ac aliquam.	9			2012-06-27 07:57:14.687+04	2012-06-27 07:57:14.687+04
30	Велосипед 7	t	29000.00	velosiped-7	example.com	images/products/trek2040_2.jpg	Aliquam erat volutpat. In vitae enim odio. Etiam vitae nisi diam. Phasellus a sapien ut nulla facilisis dictum. Morbi leo lacus, rutrum quis ullamcorper vitae, pulvinar eget massa. Sed sit amet enim leo, et sodales orci. Phasellus gravida egestas erat non vulputate. Praesent congue ornare ligula ac aliquam.	9			2012-06-27 07:56:30.71+04	2012-06-27 07:56:30.71+04
29	Велосипед 6	t	29000.00	velosiped-6	example.com	images/products/trek2207_1.jpg	Aliquam erat volutpat. In vitae enim odio. Etiam vitae nisi diam. Phasellus a sapien ut nulla facilisis dictum. Morbi leo lacus, rutrum quis ullamcorper vitae, pulvinar eget massa. Sed sit amet enim leo, et sodales orci. Phasellus gravida egestas erat non vulputate. Praesent congue ornare ligula ac aliquam.	9			2012-06-27 07:55:51.663+04	2012-06-27 07:55:51.663+04
28	Велосипед 5	t	29000.00	velosiped-5	example.com	images/products/trek2037_1.jpg	Aliquam erat volutpat. In vitae enim odio. Etiam vitae nisi diam. Phasellus a sapien ut nulla facilisis dictum. Morbi leo lacus, rutrum quis ullamcorper vitae, pulvinar eget massa. Sed sit amet enim leo, et sodales orci. Phasellus gravida egestas erat non vulputate. Praesent congue ornare ligula ac aliquam.	9			2012-06-27 07:55:13.653+04	2012-06-27 07:55:13.653+04
27	Велосипед 4	t	29000.00	velosiped-4	example.com	images/products/trek2040_1.jpg	Aliquam erat volutpat. In vitae enim odio. Etiam vitae nisi diam. Phasellus a sapien ut nulla facilisis dictum. Morbi leo lacus, rutrum quis ullamcorper vitae, pulvinar eget massa. Sed sit amet enim leo, et sodales orci. Phasellus gravida egestas erat non vulputate. Praesent congue ornare ligula ac aliquam.	9			2012-06-27 07:53:39.808+04	2012-06-27 07:53:39.808+04
26	Велосипед 3	t	29000.00	velosiped-3	example.com	images/products/trek2207.jpg	Aliquam erat volutpat. In vitae enim odio. Etiam vitae nisi diam. Phasellus a sapien ut nulla facilisis dictum. Morbi leo lacus, rutrum quis ullamcorper vitae, pulvinar eget massa. Sed sit amet enim leo, et sodales orci. Phasellus gravida egestas erat non vulputate. Praesent congue ornare ligula ac aliquam.	9			2012-06-27 07:53:04.09+04	2012-06-27 07:53:04.09+04
25	Велосипед 2	t	29000.00	velosiped-2	brand.com	images/products/trek2037.jpg	Aliquam erat volutpat. In vitae enim odio. Etiam vitae nisi diam. Phasellus a sapien ut nulla facilisis dictum. Morbi leo lacus, rutrum quis ullamcorper vitae, pulvinar eget massa. Sed sit amet enim leo, et sodales orci. Phasellus gravida egestas erat non vulputate. Praesent congue ornare ligula ac aliquam.	9			2012-06-27 07:50:11.372+04	2012-06-27 07:50:11.372+04
24	Велосипед 1	t	29000.00	velosiped-1	example.com	images/products/trek2040.jpg	Aliquam erat volutpat. In vitae enim odio. Etiam vitae nisi diam. Phasellus a sapien ut nulla facilisis dictum. Morbi leo lacus, rutrum quis ullamcorper vitae, pulvinar eget massa. Sed sit amet enim leo, et sodales orci. Phasellus gravida egestas erat non vulputate. Praesent congue ornare ligula ac aliquam.	9			2012-06-27 07:45:26.319+04	2012-06-27 07:48:47.902+04
23	Книга 23	t	299.00	kniga-23	example.com	images/products/1000060243_8.jpg	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed lacinia placerat quam, vel commodo mauris egestas sagittis. Proin risus erat, mattis vel condimentum sed, placerat vel urna. Praesent pretium condimentum est vel egestas. Nulla adipiscing massa ut lectus dapibus a ornare orci molestie. In placerat, turpis in luctus egestas, ipsum diam rutrum quam, quis laoreet tortor ipsum quis arcu. Ut neque eros, congue ac ultrices ac, pulvinar at nisl. Morbi nec malesuada leo. Praesent ac mauris diam. Curabitur fringilla faucibus leo, suscipit feugiat lacus laoreet vel.	8			2012-06-27 07:32:41.903+04	2012-06-27 07:32:41.903+04
22	Книга 22	t	299.00	kniga-22	example.com	images/products/1000060248_6.jpg	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed lacinia placerat quam, vel commodo mauris egestas sagittis. Proin risus erat, mattis vel condimentum sed, placerat vel urna. Praesent pretium condimentum est vel egestas. Nulla adipiscing massa ut lectus dapibus a ornare orci molestie. In placerat, turpis in luctus egestas, ipsum diam rutrum quam, quis laoreet tortor ipsum quis arcu. Ut neque eros, congue ac ultrices ac, pulvinar at nisl. Morbi nec malesuada leo. Praesent ac mauris diam. Curabitur fringilla faucibus leo, suscipit feugiat lacus laoreet vel.	7			2012-06-27 07:30:51.763+04	2012-06-27 07:30:51.763+04
21	Книга 21	t	299.00	kniga-21	example.com	images/products/1000060249_6.jpg	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed lacinia placerat quam, vel commodo mauris egestas sagittis. Proin risus erat, mattis vel condimentum sed, placerat vel urna. Praesent pretium condimentum est vel egestas. Nulla adipiscing massa ut lectus dapibus a ornare orci molestie. In placerat, turpis in luctus egestas, ipsum diam rutrum quam, quis laoreet tortor ipsum quis arcu. Ut neque eros, congue ac ultrices ac, pulvinar at nisl. Morbi nec malesuada leo. Praesent ac mauris diam. Curabitur fringilla faucibus leo, suscipit feugiat lacus laoreet vel.	6			2012-06-27 07:29:58.965+04	2012-06-27 07:29:58.965+04
20	Книга 20	t	299.00	kniga-20	example.com	images/products/1000060243_7.jpg	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed lacinia placerat quam, vel commodo mauris egestas sagittis. Proin risus erat, mattis vel condimentum sed, placerat vel urna. Praesent pretium condimentum est vel egestas. Nulla adipiscing massa ut lectus dapibus a ornare orci molestie. In placerat, turpis in luctus egestas, ipsum diam rutrum quam, quis laoreet tortor ipsum quis arcu. Ut neque eros, congue ac ultrices ac, pulvinar at nisl. Morbi nec malesuada leo. Praesent ac mauris diam. Curabitur fringilla faucibus leo, suscipit feugiat lacus laoreet vel.	5			2012-06-27 07:28:41.328+04	2012-06-27 07:28:41.328+04
19	Книга 19	t	299.00	kniga-19	example.com	images/products/1000060248_5.jpg	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed lacinia placerat quam, vel commodo mauris egestas sagittis. Proin risus erat, mattis vel condimentum sed, placerat vel urna. Praesent pretium condimentum est vel egestas. Nulla adipiscing massa ut lectus dapibus a ornare orci molestie. In placerat, turpis in luctus egestas, ipsum diam rutrum quam, quis laoreet tortor ipsum quis arcu. Ut neque eros, congue ac ultrices ac, pulvinar at nisl. Morbi nec malesuada leo. Praesent ac mauris diam. Curabitur fringilla faucibus leo, suscipit feugiat lacus laoreet vel.	4			2012-06-27 07:27:56.981+04	2012-06-27 07:27:56.981+04
18	Книга 18	t	299.00	kniga-18	example.com	images/products/1000060249_5.jpg	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed lacinia placerat quam, vel commodo mauris egestas sagittis. Proin risus erat, mattis vel condimentum sed, placerat vel urna. Praesent pretium condimentum est vel egestas. Nulla adipiscing massa ut lectus dapibus a ornare orci molestie. In placerat, turpis in luctus egestas, ipsum diam rutrum quam, quis laoreet tortor ipsum quis arcu. Ut neque eros, congue ac ultrices ac, pulvinar at nisl. Morbi nec malesuada leo. Praesent ac mauris diam. Curabitur fringilla faucibus leo, suscipit feugiat lacus laoreet vel.	3			2012-06-27 07:27:21.182+04	2012-06-27 07:27:21.182+04
17	Книга 17	t	299.00	kniga-17	example.com	images/products/1000060243_6.jpg	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed lacinia placerat quam, vel commodo mauris egestas sagittis. Proin risus erat, mattis vel condimentum sed, placerat vel urna. Praesent pretium condimentum est vel egestas. Nulla adipiscing massa ut lectus dapibus a ornare orci molestie. In placerat, turpis in luctus egestas, ipsum diam rutrum quam, quis laoreet tortor ipsum quis arcu. Ut neque eros, congue ac ultrices ac, pulvinar at nisl. Morbi nec malesuada leo. Praesent ac mauris diam. Curabitur fringilla faucibus leo, suscipit feugiat lacus laoreet vel.	2			2012-06-27 07:26:40.525+04	2012-06-27 07:26:40.525+04
16	Книга 16	t	299.00	kniga-16	example.com	images/products/1000060243_5.jpg	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed lacinia placerat quam, vel commodo mauris egestas sagittis. Proin risus erat, mattis vel condimentum sed, placerat vel urna. Praesent pretium condimentum est vel egestas. Nulla adipiscing massa ut lectus dapibus a ornare orci molestie. In placerat, turpis in luctus egestas, ipsum diam rutrum quam, quis laoreet tortor ipsum quis arcu. Ut neque eros, congue ac ultrices ac, pulvinar at nisl. Morbi nec malesuada leo. Praesent ac mauris diam. Curabitur fringilla faucibus leo, suscipit feugiat lacus laoreet vel.	1			2012-06-27 07:24:12.025+04	2012-06-27 07:24:12.025+04
15	Книга 15	t	299.00	kniga-15	example.com	images/products/1000060248_4.jpg	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed lacinia placerat quam, vel commodo mauris egestas sagittis. Proin risus erat, mattis vel condimentum sed, placerat vel urna. Praesent pretium condimentum est vel egestas. Nulla adipiscing massa ut lectus dapibus a ornare orci molestie. In placerat, turpis in luctus egestas, ipsum diam rutrum quam, quis laoreet tortor ipsum quis arcu. Ut neque eros, congue ac ultrices ac, pulvinar at nisl. Morbi nec malesuada leo. Praesent ac mauris diam. Curabitur fringilla faucibus leo, suscipit feugiat lacus laoreet vel.	1			2012-06-27 07:21:44.687+04	2012-06-27 07:21:44.687+04
14	Книга 14	t	299.00	kniga-14	example.com	images/products/1000060249_4.jpg	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed lacinia placerat quam, vel commodo mauris egestas sagittis. Proin risus erat, mattis vel condimentum sed, placerat vel urna. Praesent pretium condimentum est vel egestas. Nulla adipiscing massa ut lectus dapibus a ornare orci molestie. In placerat, turpis in luctus egestas, ipsum diam rutrum quam, quis laoreet tortor ipsum quis arcu. Ut neque eros, congue ac ultrices ac, pulvinar at nisl. Morbi nec malesuada leo. Praesent ac mauris diam. Curabitur fringilla faucibus leo, suscipit feugiat lacus laoreet vel.	1			2012-06-27 07:21:12.06+04	2012-06-27 07:21:12.06+04
13	Книга 13	t	299.00	kniga-13	example.com	images/products/1000060243_4.jpg	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed lacinia placerat quam, vel commodo mauris egestas sagittis. Proin risus erat, mattis vel condimentum sed, placerat vel urna. Praesent pretium condimentum est vel egestas. Nulla adipiscing massa ut lectus dapibus a ornare orci molestie. In placerat, turpis in luctus egestas, ipsum diam rutrum quam, quis laoreet tortor ipsum quis arcu. Ut neque eros, congue ac ultrices ac, pulvinar at nisl. Morbi nec malesuada leo. Praesent ac mauris diam. Curabitur fringilla faucibus leo, suscipit feugiat lacus laoreet vel.	1			2012-06-27 07:20:29.805+04	2012-06-27 07:20:29.805+04
12	Книга 12	t	299.00	kniga-12	example.com	images/products/1000060248_3.jpg	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed lacinia placerat quam, vel commodo mauris egestas sagittis. Proin risus erat, mattis vel condimentum sed, placerat vel urna. Praesent pretium condimentum est vel egestas. Nulla adipiscing massa ut lectus dapibus a ornare orci molestie. In placerat, turpis in luctus egestas, ipsum diam rutrum quam, quis laoreet tortor ipsum quis arcu. Ut neque eros, congue ac ultrices ac, pulvinar at nisl. Morbi nec malesuada leo. Praesent ac mauris diam. Curabitur fringilla faucibus leo, suscipit feugiat lacus laoreet vel.	1			2012-06-27 07:19:42.261+04	2012-06-27 07:19:42.261+04
11	Книга 11	t	299.00	kniga-11	example.com	images/products/1000060249_3.jpg	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed lacinia placerat quam, vel commodo mauris egestas sagittis. Proin risus erat, mattis vel condimentum sed, placerat vel urna. Praesent pretium condimentum est vel egestas. Nulla adipiscing massa ut lectus dapibus a ornare orci molestie. In placerat, turpis in luctus egestas, ipsum diam rutrum quam, quis laoreet tortor ipsum quis arcu. Ut neque eros, congue ac ultrices ac, pulvinar at nisl. Morbi nec malesuada leo. Praesent ac mauris diam. Curabitur fringilla faucibus leo, suscipit feugiat lacus laoreet vel.	1			2012-06-27 07:18:34.601+04	2012-06-27 07:18:34.601+04
10	Книга 10	t	299.00	kniga-10	example.com	images/products/1000060243_3.jpg	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed lacinia placerat quam, vel commodo mauris egestas sagittis. Proin risus erat, mattis vel condimentum sed, placerat vel urna. Praesent pretium condimentum est vel egestas. Nulla adipiscing massa ut lectus dapibus a ornare orci molestie. In placerat, turpis in luctus egestas, ipsum diam rutrum quam, quis laoreet tortor ipsum quis arcu. Ut neque eros, congue ac ultrices ac, pulvinar at nisl. Morbi nec malesuada leo. Praesent ac mauris diam. Curabitur fringilla faucibus leo, suscipit feugiat lacus laoreet vel.	1			2012-06-27 07:18:01.441+04	2012-06-27 07:18:01.441+04
9	Книга 9	t	299.00	kniga-9	example.com	images/products/1000060248_2.jpg	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed lacinia placerat quam, vel commodo mauris egestas sagittis. Proin risus erat, mattis vel condimentum sed, placerat vel urna. Praesent pretium condimentum est vel egestas. Nulla adipiscing massa ut lectus dapibus a ornare orci molestie. In placerat, turpis in luctus egestas, ipsum diam rutrum quam, quis laoreet tortor ipsum quis arcu. Ut neque eros, congue ac ultrices ac, pulvinar at nisl. Morbi nec malesuada leo. Praesent ac mauris diam. Curabitur fringilla faucibus leo, suscipit feugiat lacus laoreet vel.	1			2012-06-27 07:17:14.04+04	2012-06-27 07:17:14.04+04
8	Книга 8	t	299.00	kniga-8	example.com	images/products/1000060249_2.jpg	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed lacinia placerat quam, vel commodo mauris egestas sagittis. Proin risus erat, mattis vel condimentum sed, placerat vel urna. Praesent pretium condimentum est vel egestas. Nulla adipiscing massa ut lectus dapibus a ornare orci molestie. In placerat, turpis in luctus egestas, ipsum diam rutrum quam, quis laoreet tortor ipsum quis arcu. Ut neque eros, congue ac ultrices ac, pulvinar at nisl. Morbi nec malesuada leo. Praesent ac mauris diam. Curabitur fringilla faucibus leo, suscipit feugiat lacus laoreet vel.	1			2012-06-27 07:16:08.138+04	2012-06-27 07:16:08.138+04
7	Книга 7	t	299.00	kniga-7	example.com	images/products/1000060243_2.jpg	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed lacinia placerat quam, vel commodo mauris egestas sagittis. Proin risus erat, mattis vel condimentum sed, placerat vel urna. Praesent pretium condimentum est vel egestas. Nulla adipiscing massa ut lectus dapibus a ornare orci molestie. In placerat, turpis in luctus egestas, ipsum diam rutrum quam, quis laoreet tortor ipsum quis arcu. Ut neque eros, congue ac ultrices ac, pulvinar at nisl. Morbi nec malesuada leo. Praesent ac mauris diam. Curabitur fringilla faucibus leo, suscipit feugiat lacus laoreet vel.	1			2012-06-27 07:15:31.964+04	2012-06-27 07:15:31.964+04
6	Книга 6	t	299.00	kniga-6	example.com	images/products/1000060248_1.jpg	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed lacinia placerat quam, vel commodo mauris egestas sagittis. Proin risus erat, mattis vel condimentum sed, placerat vel urna. Praesent pretium condimentum est vel egestas. Nulla adipiscing massa ut lectus dapibus a ornare orci molestie. In placerat, turpis in luctus egestas, ipsum diam rutrum quam, quis laoreet tortor ipsum quis arcu. Ut neque eros, congue ac ultrices ac, pulvinar at nisl. Morbi nec malesuada leo. Praesent ac mauris diam. Curabitur fringilla faucibus leo, suscipit feugiat lacus laoreet vel.	1			2012-06-27 07:13:58.076+04	2012-06-27 07:13:58.076+04
5	Книга 5	t	299.00	kniga-5	example.com	images/products/1000060249_1.jpg	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed lacinia placerat quam, vel commodo mauris egestas sagittis. Proin risus erat, mattis vel condimentum sed, placerat vel urna. Praesent pretium condimentum est vel egestas. Nulla adipiscing massa ut lectus dapibus a ornare orci molestie. In placerat, turpis in luctus egestas, ipsum diam rutrum quam, quis laoreet tortor ipsum quis arcu. Ut neque eros, congue ac ultrices ac, pulvinar at nisl. Morbi nec malesuada leo. Praesent ac mauris diam. Curabitur fringilla faucibus leo, suscipit feugiat lacus laoreet vel.	1			2012-06-27 07:13:05.803+04	2012-06-27 07:13:05.803+04
4	Книга 4	t	299.00	kniga-4	example.com	images/products/1000060243_1.jpg	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed lacinia placerat quam, vel commodo mauris egestas sagittis. Proin risus erat, mattis vel condimentum sed, placerat vel urna. Praesent pretium condimentum est vel egestas. Nulla adipiscing massa ut lectus dapibus a ornare orci molestie. In placerat, turpis in luctus egestas, ipsum diam rutrum quam, quis laoreet tortor ipsum quis arcu. Ut neque eros, congue ac ultrices ac, pulvinar at nisl. Morbi nec malesuada leo. Praesent ac mauris diam. Curabitur fringilla faucibus leo, suscipit feugiat lacus laoreet vel.	1			2012-06-27 07:12:06.744+04	2012-06-27 07:12:06.744+04
3	Книга 3	t	299.00	kniga-3	example.com	images/products/1000060248.jpg	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed lacinia placerat quam, vel commodo mauris egestas sagittis. Proin risus erat, mattis vel condimentum sed, placerat vel urna. Praesent pretium condimentum est vel egestas. Nulla adipiscing massa ut lectus dapibus a ornare orci molestie. In placerat, turpis in luctus egestas, ipsum diam rutrum quam, quis laoreet tortor ipsum quis arcu. Ut neque eros, congue ac ultrices ac, pulvinar at nisl. Morbi nec malesuada leo. Praesent ac mauris diam. Curabitur fringilla faucibus leo, suscipit feugiat lacus laoreet vel.	1			2012-06-27 07:11:22.672+04	2012-06-27 07:11:22.672+04
2	Книга 2	t	299.00	kniga-2	example.com	images/products/1000060249.jpg	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed lacinia placerat quam, vel commodo mauris egestas sagittis. Proin risus erat, mattis vel condimentum sed, placerat vel urna. Praesent pretium condimentum est vel egestas. Nulla adipiscing massa ut lectus dapibus a ornare orci molestie. In placerat, turpis in luctus egestas, ipsum diam rutrum quam, quis laoreet tortor ipsum quis arcu. Ut neque eros, congue ac ultrices ac, pulvinar at nisl. Morbi nec malesuada leo. Praesent ac mauris diam. Curabitur fringilla faucibus leo, suscipit feugiat lacus laoreet vel.	1			2012-06-27 07:06:53.239+04	2012-06-27 07:09:56.619+04
1	Книга 1	t	299.00	kniga-1	example.com	images/products/1000060243.jpg	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed lacinia placerat quam, vel commodo mauris egestas sagittis. Proin risus erat, mattis vel condimentum sed, placerat vel urna. Praesent pretium condimentum est vel egestas. Nulla adipiscing massa ut lectus dapibus a ornare orci molestie. In placerat, turpis in luctus egestas, ipsum diam rutrum quam, quis laoreet tortor ipsum quis arcu. Ut neque eros, congue ac ultrices ac, pulvinar at nisl. Morbi nec malesuada leo. Praesent ac mauris diam. Curabitur fringilla faucibus leo, suscipit feugiat lacus laoreet vel.	1			2012-06-27 07:04:17.753+04	2012-06-27 07:09:15.025+04
\.


--
-- Name: attributes_name_key; Type: CONSTRAINT; Schema: public; Owner: himitsu; Tablespace: 
--

ALTER TABLE ONLY attributes
    ADD CONSTRAINT attributes_name_key UNIQUE (name);


--
-- Name: attributes_pkey; Type: CONSTRAINT; Schema: public; Owner: himitsu; Tablespace: 
--

ALTER TABLE ONLY attributes
    ADD CONSTRAINT attributes_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: himitsu; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions_group_id_permission_id_key; Type: CONSTRAINT; Schema: public; Owner: himitsu; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_key UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: himitsu; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: himitsu; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission_content_type_id_codename_key; Type: CONSTRAINT; Schema: public; Owner: himitsu; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_key UNIQUE (content_type_id, codename);


--
-- Name: auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: himitsu; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: himitsu; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_user_id_group_id_key; Type: CONSTRAINT; Schema: public; Owner: himitsu; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_key UNIQUE (user_id, group_id);


--
-- Name: auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: himitsu; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: himitsu; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_user_id_permission_id_key; Type: CONSTRAINT; Schema: public; Owner: himitsu; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_key UNIQUE (user_id, permission_id);


--
-- Name: auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: himitsu; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: categories_attributes_category_id_attribute_id_key; Type: CONSTRAINT; Schema: public; Owner: himitsu; Tablespace: 
--

ALTER TABLE ONLY categories_attributes
    ADD CONSTRAINT categories_attributes_category_id_attribute_id_key UNIQUE (category_id, attribute_id);


--
-- Name: categories_attributes_pkey; Type: CONSTRAINT; Schema: public; Owner: himitsu; Tablespace: 
--

ALTER TABLE ONLY categories_attributes
    ADD CONSTRAINT categories_attributes_pkey PRIMARY KEY (id);


--
-- Name: categories_name_key; Type: CONSTRAINT; Schema: public; Owner: himitsu; Tablespace: 
--

ALTER TABLE ONLY categories
    ADD CONSTRAINT categories_name_key UNIQUE (name);


--
-- Name: categories_pkey; Type: CONSTRAINT; Schema: public; Owner: himitsu; Tablespace: 
--

ALTER TABLE ONLY categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);


--
-- Name: categories_slug_key; Type: CONSTRAINT; Schema: public; Owner: himitsu; Tablespace: 
--

ALTER TABLE ONLY categories
    ADD CONSTRAINT categories_slug_key UNIQUE (slug);


--
-- Name: django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: himitsu; Tablespace: 
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type_app_label_model_key; Type: CONSTRAINT; Schema: public; Owner: himitsu; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_key UNIQUE (app_label, model);


--
-- Name: django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: himitsu; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: himitsu; Tablespace: 
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: django_site_pkey; Type: CONSTRAINT; Schema: public; Owner: himitsu; Tablespace: 
--

ALTER TABLE ONLY django_site
    ADD CONSTRAINT django_site_pkey PRIMARY KEY (id);


--
-- Name: product_attribute_value_pkey; Type: CONSTRAINT; Schema: public; Owner: himitsu; Tablespace: 
--

ALTER TABLE ONLY product_attribute_value
    ADD CONSTRAINT product_attribute_value_pkey PRIMARY KEY (id);


--
-- Name: products_name_key; Type: CONSTRAINT; Schema: public; Owner: himitsu; Tablespace: 
--

ALTER TABLE ONLY products
    ADD CONSTRAINT products_name_key UNIQUE (name);


--
-- Name: products_pkey; Type: CONSTRAINT; Schema: public; Owner: himitsu; Tablespace: 
--

ALTER TABLE ONLY products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);


--
-- Name: products_slug_key; Type: CONSTRAINT; Schema: public; Owner: himitsu; Tablespace: 
--

ALTER TABLE ONLY products
    ADD CONSTRAINT products_slug_key UNIQUE (slug);


--
-- Name: auth_group_permissions_group_id; Type: INDEX; Schema: public; Owner: himitsu; Tablespace: 
--

CREATE INDEX auth_group_permissions_group_id ON auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id; Type: INDEX; Schema: public; Owner: himitsu; Tablespace: 
--

CREATE INDEX auth_group_permissions_permission_id ON auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id; Type: INDEX; Schema: public; Owner: himitsu; Tablespace: 
--

CREATE INDEX auth_permission_content_type_id ON auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id; Type: INDEX; Schema: public; Owner: himitsu; Tablespace: 
--

CREATE INDEX auth_user_groups_group_id ON auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id; Type: INDEX; Schema: public; Owner: himitsu; Tablespace: 
--

CREATE INDEX auth_user_groups_user_id ON auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id; Type: INDEX; Schema: public; Owner: himitsu; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_permission_id ON auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id; Type: INDEX; Schema: public; Owner: himitsu; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_user_id ON auth_user_user_permissions USING btree (user_id);


--
-- Name: categories_attributes_attribute_id; Type: INDEX; Schema: public; Owner: himitsu; Tablespace: 
--

CREATE INDEX categories_attributes_attribute_id ON categories_attributes USING btree (attribute_id);


--
-- Name: categories_attributes_category_id; Type: INDEX; Schema: public; Owner: himitsu; Tablespace: 
--

CREATE INDEX categories_attributes_category_id ON categories_attributes USING btree (category_id);


--
-- Name: categories_level; Type: INDEX; Schema: public; Owner: himitsu; Tablespace: 
--

CREATE INDEX categories_level ON categories USING btree (level);


--
-- Name: categories_lft; Type: INDEX; Schema: public; Owner: himitsu; Tablespace: 
--

CREATE INDEX categories_lft ON categories USING btree (lft);


--
-- Name: categories_parent_id; Type: INDEX; Schema: public; Owner: himitsu; Tablespace: 
--

CREATE INDEX categories_parent_id ON categories USING btree (parent_id);


--
-- Name: categories_rght; Type: INDEX; Schema: public; Owner: himitsu; Tablespace: 
--

CREATE INDEX categories_rght ON categories USING btree (rght);


--
-- Name: categories_tree_id; Type: INDEX; Schema: public; Owner: himitsu; Tablespace: 
--

CREATE INDEX categories_tree_id ON categories USING btree (tree_id);


--
-- Name: django_admin_log_content_type_id; Type: INDEX; Schema: public; Owner: himitsu; Tablespace: 
--

CREATE INDEX django_admin_log_content_type_id ON django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id; Type: INDEX; Schema: public; Owner: himitsu; Tablespace: 
--

CREATE INDEX django_admin_log_user_id ON django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date; Type: INDEX; Schema: public; Owner: himitsu; Tablespace: 
--

CREATE INDEX django_session_expire_date ON django_session USING btree (expire_date);


--
-- Name: product_attribute_value_attribute_id; Type: INDEX; Schema: public; Owner: himitsu; Tablespace: 
--

CREATE INDEX product_attribute_value_attribute_id ON product_attribute_value USING btree (attribute_id);


--
-- Name: product_attribute_value_product_id; Type: INDEX; Schema: public; Owner: himitsu; Tablespace: 
--

CREATE INDEX product_attribute_value_product_id ON product_attribute_value USING btree (product_id);


--
-- Name: products_category_id; Type: INDEX; Schema: public; Owner: himitsu; Tablespace: 
--

CREATE INDEX products_category_id ON products USING btree (category_id);


--
-- Name: auth_group_permissions_permission_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: himitsu
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_permission_id_fkey FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: himitsu
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_fkey FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions_permission_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: himitsu
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_permission_id_fkey FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: categories_attributes_attribute_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: himitsu
--

ALTER TABLE ONLY categories_attributes
    ADD CONSTRAINT categories_attributes_attribute_id_fkey FOREIGN KEY (attribute_id) REFERENCES attributes(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: category_id_refs_id_3bb81250; Type: FK CONSTRAINT; Schema: public; Owner: himitsu
--

ALTER TABLE ONLY categories_attributes
    ADD CONSTRAINT category_id_refs_id_3bb81250 FOREIGN KEY (category_id) REFERENCES categories(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: content_type_id_refs_id_728de91f; Type: FK CONSTRAINT; Schema: public; Owner: himitsu
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT content_type_id_refs_id_728de91f FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log_content_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: himitsu
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_fkey FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: himitsu
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_fkey FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: group_id_refs_id_3cea63fe; Type: FK CONSTRAINT; Schema: public; Owner: himitsu
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT group_id_refs_id_3cea63fe FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: parent_id_refs_id_2d747e89; Type: FK CONSTRAINT; Schema: public; Owner: himitsu
--

ALTER TABLE ONLY categories
    ADD CONSTRAINT parent_id_refs_id_2d747e89 FOREIGN KEY (parent_id) REFERENCES categories(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: product_attribute_value_attribute_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: himitsu
--

ALTER TABLE ONLY product_attribute_value
    ADD CONSTRAINT product_attribute_value_attribute_id_fkey FOREIGN KEY (attribute_id) REFERENCES attributes(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: product_attribute_value_product_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: himitsu
--

ALTER TABLE ONLY product_attribute_value
    ADD CONSTRAINT product_attribute_value_product_id_fkey FOREIGN KEY (product_id) REFERENCES products(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: products_category_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: himitsu
--

ALTER TABLE ONLY products
    ADD CONSTRAINT products_category_id_fkey FOREIGN KEY (category_id) REFERENCES categories(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_id_refs_id_7ceef80f; Type: FK CONSTRAINT; Schema: public; Owner: himitsu
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT user_id_refs_id_7ceef80f FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_id_refs_id_dfbab7d; Type: FK CONSTRAINT; Schema: public; Owner: himitsu
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT user_id_refs_id_dfbab7d FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

