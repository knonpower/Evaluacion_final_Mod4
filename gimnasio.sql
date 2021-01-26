--
-- PostgreSQL database dump
--

-- Dumped from database version 13.1
-- Dumped by pg_dump version 13.1

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
-- Name: categoria_pase_diario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categoria_pase_diario (
    id bigint NOT NULL,
    nombre character varying(25),
    valor integer
);


ALTER TABLE public.categoria_pase_diario OWNER TO postgres;

--
-- Name: categoria_pase_diario_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.categoria_pase_diario_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categoria_pase_diario_id_seq OWNER TO postgres;

--
-- Name: categoria_pase_diario_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.categoria_pase_diario_id_seq OWNED BY public.categoria_pase_diario.id;


--
-- Name: cliente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cliente (
    id bigint NOT NULL,
    nombre character varying(25),
    apellido character varying(25),
    telefono numeric,
    email character varying(25),
    fecha_de_pago date,
    id_suscripcion integer
);


ALTER TABLE public.cliente OWNER TO postgres;

--
-- Name: cliente_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cliente_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cliente_id_seq OWNER TO postgres;

--
-- Name: cliente_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cliente_id_seq OWNED BY public.cliente.id;


--
-- Name: linea_transaccion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.linea_transaccion (
    id bigint NOT NULL,
    id_transaccion integer,
    id_producto integer,
    cantidad integer,
    total integer
);


ALTER TABLE public.linea_transaccion OWNER TO postgres;

--
-- Name: linea_transaccion_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.linea_transaccion_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.linea_transaccion_id_seq OWNER TO postgres;

--
-- Name: linea_transaccion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.linea_transaccion_id_seq OWNED BY public.linea_transaccion.id;


--
-- Name: pase_diario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pase_diario (
    id bigint NOT NULL,
    id_categoria integer,
    id_cliente integer,
    fecha date
);


ALTER TABLE public.pase_diario OWNER TO postgres;

--
-- Name: pase_diario_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pase_diario_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pase_diario_id_seq OWNER TO postgres;

--
-- Name: pase_diario_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pase_diario_id_seq OWNED BY public.pase_diario.id;


--
-- Name: productos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.productos (
    id bigint NOT NULL,
    nombre character varying(50),
    precio integer
);


ALTER TABLE public.productos OWNER TO postgres;

--
-- Name: productos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.productos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.productos_id_seq OWNER TO postgres;

--
-- Name: productos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.productos_id_seq OWNED BY public.productos.id;


--
-- Name: suscripcion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.suscripcion (
    id bigint NOT NULL,
    tipo_suscripcion character varying(25),
    valor numeric
);


ALTER TABLE public.suscripcion OWNER TO postgres;

--
-- Name: suscripcion_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.suscripcion_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.suscripcion_id_seq OWNER TO postgres;

--
-- Name: suscripcion_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.suscripcion_id_seq OWNED BY public.suscripcion.id;


--
-- Name: transaccion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.transaccion (
    id_transaccion bigint NOT NULL,
    id_cliente integer
);


ALTER TABLE public.transaccion OWNER TO postgres;

--
-- Name: transaccion_id_transaccion_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.transaccion_id_transaccion_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.transaccion_id_transaccion_seq OWNER TO postgres;

--
-- Name: transaccion_id_transaccion_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.transaccion_id_transaccion_seq OWNED BY public.transaccion.id_transaccion;


--
-- Name: categoria_pase_diario id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categoria_pase_diario ALTER COLUMN id SET DEFAULT nextval('public.categoria_pase_diario_id_seq'::regclass);


--
-- Name: cliente id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente ALTER COLUMN id SET DEFAULT nextval('public.cliente_id_seq'::regclass);


--
-- Name: linea_transaccion id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.linea_transaccion ALTER COLUMN id SET DEFAULT nextval('public.linea_transaccion_id_seq'::regclass);


--
-- Name: pase_diario id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pase_diario ALTER COLUMN id SET DEFAULT nextval('public.pase_diario_id_seq'::regclass);


--
-- Name: productos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.productos ALTER COLUMN id SET DEFAULT nextval('public.productos_id_seq'::regclass);


--
-- Name: suscripcion id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.suscripcion ALTER COLUMN id SET DEFAULT nextval('public.suscripcion_id_seq'::regclass);


--
-- Name: transaccion id_transaccion; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transaccion ALTER COLUMN id_transaccion SET DEFAULT nextval('public.transaccion_id_transaccion_seq'::regclass);


--
-- Data for Name: categoria_pase_diario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.categoria_pase_diario (id, nombre, valor) FROM stdin;
\.


--
-- Data for Name: cliente; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cliente (id, nombre, apellido, telefono, email, fecha_de_pago, id_suscripcion) FROM stdin;
\.


--
-- Data for Name: linea_transaccion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.linea_transaccion (id, id_transaccion, id_producto, cantidad, total) FROM stdin;
\.


--
-- Data for Name: pase_diario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pase_diario (id, id_categoria, id_cliente, fecha) FROM stdin;
\.


--
-- Data for Name: productos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.productos (id, nombre, precio) FROM stdin;
\.


--
-- Data for Name: suscripcion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.suscripcion (id, tipo_suscripcion, valor) FROM stdin;
\.


--
-- Data for Name: transaccion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.transaccion (id_transaccion, id_cliente) FROM stdin;
\.


--
-- Name: categoria_pase_diario_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categoria_pase_diario_id_seq', 1, false);


--
-- Name: cliente_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cliente_id_seq', 1, false);


--
-- Name: linea_transaccion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.linea_transaccion_id_seq', 1, false);


--
-- Name: pase_diario_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pase_diario_id_seq', 1, false);


--
-- Name: productos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.productos_id_seq', 1, false);


--
-- Name: suscripcion_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.suscripcion_id_seq', 1, false);


--
-- Name: transaccion_id_transaccion_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.transaccion_id_transaccion_seq', 1, false);


--
-- Name: categoria_pase_diario categoria_pase_diario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categoria_pase_diario
    ADD CONSTRAINT categoria_pase_diario_pkey PRIMARY KEY (id);


--
-- Name: linea_transaccion linea_transaccion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.linea_transaccion
    ADD CONSTRAINT linea_transaccion_pkey PRIMARY KEY (id);


--
-- Name: pase_diario pase_diario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pase_diario
    ADD CONSTRAINT pase_diario_pkey PRIMARY KEY (id);


--
-- Name: cliente pk_id_cliente; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT pk_id_cliente PRIMARY KEY (id);


--
-- Name: productos productos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.productos
    ADD CONSTRAINT productos_pkey PRIMARY KEY (id);


--
-- Name: suscripcion suscripcion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.suscripcion
    ADD CONSTRAINT suscripcion_pkey PRIMARY KEY (id);


--
-- Name: transaccion transaccion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transaccion
    ADD CONSTRAINT transaccion_pkey PRIMARY KEY (id_transaccion);


--
-- Name: pase_diario fk_id_categoria; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pase_diario
    ADD CONSTRAINT fk_id_categoria FOREIGN KEY (id_categoria) REFERENCES public.categoria_pase_diario(id);


--
-- Name: pase_diario fk_id_cliente; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pase_diario
    ADD CONSTRAINT fk_id_cliente FOREIGN KEY (id_cliente) REFERENCES public.cliente(id);


--
-- Name: transaccion fk_id_cliente; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.transaccion
    ADD CONSTRAINT fk_id_cliente FOREIGN KEY (id_cliente) REFERENCES public.cliente(id);


--
-- Name: linea_transaccion fk_id_producto; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.linea_transaccion
    ADD CONSTRAINT fk_id_producto FOREIGN KEY (id_producto) REFERENCES public.productos(id);


--
-- Name: cliente fk_id_suscripcion; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT fk_id_suscripcion FOREIGN KEY (id_suscripcion) REFERENCES public.suscripcion(id);


--
-- Name: linea_transaccion fk_id_transaccion; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.linea_transaccion
    ADD CONSTRAINT fk_id_transaccion FOREIGN KEY (id_transaccion) REFERENCES public.transaccion(id_transaccion);


--
-- PostgreSQL database dump complete
--

