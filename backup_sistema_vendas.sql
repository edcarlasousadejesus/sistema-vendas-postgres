--
-- PostgreSQL database dump
--

\restrict SeBWNqMOT5YaOFtuiZKI1tkyE8J6n0WWrf0fTfM5UdkDRQmRY6oo9beIcb1JYi9

-- Dumped from database version 18.6
-- Dumped by pg_dump version 18.6

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'WIN1252';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: categorias; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.categorias (
    categoria_id integer NOT NULL,
    nome character varying(50) NOT NULL
);


ALTER TABLE public.categorias OWNER TO postgres;

--
-- Name: categorias_categoria_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.categorias_categoria_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.categorias_categoria_id_seq OWNER TO postgres;

--
-- Name: categorias_categoria_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.categorias_categoria_id_seq OWNED BY public.categorias.categoria_id;


--
-- Name: clientes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.clientes (
    cliente_id integer NOT NULL,
    nome character varying(100) NOT NULL,
    email character varying(100) NOT NULL,
    data_cadastro date DEFAULT CURRENT_DATE
);


ALTER TABLE public.clientes OWNER TO postgres;

--
-- Name: clientes_cliente_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.clientes_cliente_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.clientes_cliente_id_seq OWNER TO postgres;

--
-- Name: clientes_cliente_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.clientes_cliente_id_seq OWNED BY public.clientes.cliente_id;


--
-- Name: itens_pedido; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.itens_pedido (
    item_id integer NOT NULL,
    pedido_id integer,
    produto_id integer,
    quantidade integer NOT NULL,
    preco_unitario numeric(10,2) NOT NULL
);


ALTER TABLE public.itens_pedido OWNER TO postgres;

--
-- Name: itens_pedido_item_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.itens_pedido_item_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.itens_pedido_item_id_seq OWNER TO postgres;

--
-- Name: itens_pedido_item_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.itens_pedido_item_id_seq OWNED BY public.itens_pedido.item_id;


--
-- Name: pedidos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pedidos (
    pedido_id integer NOT NULL,
    cliente_id integer,
    data_pedido timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    status character varying(20) DEFAULT 'Pendente'::character varying
);


ALTER TABLE public.pedidos OWNER TO postgres;

--
-- Name: pedidos_pedido_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pedidos_pedido_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.pedidos_pedido_id_seq OWNER TO postgres;

--
-- Name: pedidos_pedido_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pedidos_pedido_id_seq OWNED BY public.pedidos.pedido_id;


--
-- Name: produtos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.produtos (
    produto_id integer NOT NULL,
    nome character varying(100) NOT NULL,
    preco numeric(10,2) NOT NULL,
    estoque integer DEFAULT 0 NOT NULL,
    categoria_id integer
);


ALTER TABLE public.produtos OWNER TO postgres;

--
-- Name: produtos_produto_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.produtos_produto_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.produtos_produto_id_seq OWNER TO postgres;

--
-- Name: produtos_produto_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.produtos_produto_id_seq OWNED BY public.produtos.produto_id;


--
-- Name: categorias categoria_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categorias ALTER COLUMN categoria_id SET DEFAULT nextval('public.categorias_categoria_id_seq'::regclass);


--
-- Name: clientes cliente_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clientes ALTER COLUMN cliente_id SET DEFAULT nextval('public.clientes_cliente_id_seq'::regclass);


--
-- Name: itens_pedido item_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.itens_pedido ALTER COLUMN item_id SET DEFAULT nextval('public.itens_pedido_item_id_seq'::regclass);


--
-- Name: pedidos pedido_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pedidos ALTER COLUMN pedido_id SET DEFAULT nextval('public.pedidos_pedido_id_seq'::regclass);


--
-- Name: produtos produto_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produtos ALTER COLUMN produto_id SET DEFAULT nextval('public.produtos_produto_id_seq'::regclass);


--
-- Data for Name: categorias; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.categorias (categoria_id, nome) FROM stdin;
1	Eletr“nicos
2	Livros
3	Roupas
\.


--
-- Data for Name: clientes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.clientes (cliente_id, nome, email, data_cadastro) FROM stdin;
1	Ana Silva	ana.silva@email.com	2026-01-15
2	Bruno Alves	bruno.alves@email.com	2026-02-10
\.


--
-- Data for Name: itens_pedido; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.itens_pedido (item_id, pedido_id, produto_id, quantidade, preco_unitario) FROM stdin;
1	1	1	1	1999.90
2	1	3	2	49.90
\.


--
-- Data for Name: pedidos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pedidos (pedido_id, cliente_id, data_pedido, status) FROM stdin;
1	1	2026-10-09 09:34:53.87263	Conclu¡do
\.


--
-- Data for Name: produtos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.produtos (produto_id, nome, preco, estoque, categoria_id) FROM stdin;
1	Smartphone XYZ	1999.90	15	1
2	Notebook Pro	4500.00	8	1
3	Aventuras no Espa‡o	49.90	50	2
\.


--
-- Name: categorias_categoria_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categorias_categoria_id_seq', 3, true);


--
-- Name: clientes_cliente_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.clientes_cliente_id_seq', 2, true);


--
-- Name: itens_pedido_item_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.itens_pedido_item_id_seq', 2, true);


--
-- Name: pedidos_pedido_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pedidos_pedido_id_seq', 1, true);


--
-- Name: produtos_produto_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.produtos_produto_id_seq', 3, true);


--
-- Name: categorias categorias_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categorias
    ADD CONSTRAINT categorias_pkey PRIMARY KEY (categoria_id);


--
-- Name: clientes clientes_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT clientes_email_key UNIQUE (email);


--
-- Name: clientes clientes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT clientes_pkey PRIMARY KEY (cliente_id);


--
-- Name: itens_pedido itens_pedido_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.itens_pedido
    ADD CONSTRAINT itens_pedido_pkey PRIMARY KEY (item_id);


--
-- Name: pedidos pedidos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pedidos
    ADD CONSTRAINT pedidos_pkey PRIMARY KEY (pedido_id);


--
-- Name: produtos produtos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produtos
    ADD CONSTRAINT produtos_pkey PRIMARY KEY (produto_id);


--
-- Name: itens_pedido itens_pedido_pedido_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.itens_pedido
    ADD CONSTRAINT itens_pedido_pedido_id_fkey FOREIGN KEY (pedido_id) REFERENCES public.pedidos(pedido_id);


--
-- Name: itens_pedido itens_pedido_produto_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.itens_pedido
    ADD CONSTRAINT itens_pedido_produto_id_fkey FOREIGN KEY (produto_id) REFERENCES public.produtos(produto_id);


--
-- Name: pedidos pedidos_cliente_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pedidos
    ADD CONSTRAINT pedidos_cliente_id_fkey FOREIGN KEY (cliente_id) REFERENCES public.clientes(cliente_id);


--
-- Name: produtos produtos_categoria_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.produtos
    ADD CONSTRAINT produtos_categoria_id_fkey FOREIGN KEY (categoria_id) REFERENCES public.categorias(categoria_id);


--
-- PostgreSQL database dump complete
--

\unrestrict SeBWNqMOT5YaOFtuiZKI1tkyE8J6n0WWrf0fTfM5UdkDRQmRY6oo9beIcb1JYi9

