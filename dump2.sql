--
-- PostgreSQL database dump
--

-- Dumped from database version 14.0
-- Dumped by pg_dump version 14.0

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
-- Name: employees; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employees (
    id integer NOT NULL,
    lname character(50),
    fname character(50),
    mname character(50)
);


ALTER TABLE public.employees OWNER TO postgres;

--
-- Name: installs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.installs (
    pc_id integer NOT NULL,
    soft_id integer NOT NULL
);


ALTER TABLE public.installs OWNER TO postgres;

--
-- Name: pcs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pcs (
    id integer NOT NULL,
    room_id integer,
    note character(50),
    ip_addr character(15),
    mac_addr character(17)
);


ALTER TABLE public.pcs OWNER TO postgres;

--
-- Name: rooms; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rooms (
    id integer NOT NULL,
    num integer NOT NULL,
    emp_id integer
);


ALTER TABLE public.rooms OWNER TO postgres;

--
-- Name: rooms_num_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.rooms ALTER COLUMN num ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.rooms_num_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: soft; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.soft (
    id integer NOT NULL,
    sname character(50),
    ver integer,
    quant integer DEFAULT 0
);


ALTER TABLE public.soft OWNER TO postgres;

--
-- Data for Name: employees; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.employees (id, lname, fname, mname) FROM stdin;
250	Ivanov                                            	Petr                                              	Andreevich                                        
251	Markova                                           	Amina                                             	Danilova                                          
252	Ivanov                                            	Yaroslav                                          	Markovich                                         
253	Korneev                                           	Gleb                                              	Fedorovich                                        
254	Anisimov                                          	Victor                                            	Rodionovich                                       
255	Tsvetkov                                          	Vladislav                                         	Ivanovich                                         
256	Kazakov                                           	Konstantin                                        	Ilich                                             
257	Ustinov                                           	Timur                                             	Maximovich                                        
258	Balashov                                          	Vyacheslav                                        	Pavlovich                                         
259	Melnikov                                          	Fedor                                             	Aleksandeovich                                    
260	Kulakova                                          	Viktoria                                          	Viktorovna                                        
261	Sokolov                                           	Maxim                                             	Danilov                                           
262	Nikolaev                                          	Lev                                               	Dmitrievich                                       
263	Tarasov                                           	Alexey                                            	Danilovich                                        
264	Goncharov                                         	Robert                                            	Arturovich                                        
265	Basov                                             	Petr                                              	Kirovich                                          
\.


--
-- Data for Name: installs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.installs (pc_id, soft_id) FROM stdin;
111	16
121	17
131	18
142	19
153	20
163	21
174	22
184	23
195	24
128	26
201	27
202	28
203	29
204	30
206	31
274	32
998	33
997	35
301	36
302	37
303	38
304	39
205	40
999	41
207	42
208	43
209	44
220	45
245	46
250	47
250	48
250	49
250	50
250	51
250	52
250	53
250	54
250	55
250	56
250	57
250	58
250	59
250	60
250	61
250	62
250	63
250	64
250	65
250	66
250	67
250	68
250	69
250	70
250	71
250	72
250	73
250	74
250	75
250	76
250	77
250	78
250	999
250	43
\.


--
-- Data for Name: pcs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.pcs (id, room_id, note, ip_addr, mac_addr) FROM stdin;
111	12	?                                                 	192.168.1.1    	08:B4:98:1B:38:FE
121	13	?                                                 	192.168.1.1    	19:B8:65:1F:48:FE
131	14	?                                                 	192.168.1.1    	00:0E:98:2C:58:DF
142	15	?                                                 	192.168.1.1    	07:C8:47:1F:76:DE
153	16	?                                                 	192.168.1.1    	14:B6:46:6E:68:EF
163	17	?                                                 	192.168.1.1    	24:E7:78:F5:58:FF
174	18	?                                                 	192.168.1.1    	27:C4:86:4E:86:FF
184	19	?                                                 	192.168.1.1    	14:F9:86:1B:67:FF
195	20	?                                                 	192.168.1.1    	17:D0:68:2B:97:DF
128	21	?                                                 	192.168.1.1    	21:F8:86:1C:87:EF
201	22	?                                                 	192.168.1.1    	07:E7:75:8C:68:FF
202	23	?                                                 	192.168.1.1    	07:E7:E3:8C:68:FF
203	24	?                                                 	192.168.1.1    	17:D7:96:3C:36:EE
204	25	?                                                 	192.168.1.1    	27:C1:45:7C:47:DF
206	26	?                                                 	192.168.1.1    	11:A4:59:1D:98:FF
274	27	?                                                 	192.168.1.1    	04:C0:66:4C:57:DF
998	27	?                                                 	192.168.1.1    	22:B1:45:1B:35:DE
997	27	?                                                 	192.168.1.1    	16:C7:87:4D:86:DF
301	27	?                                                 	192.168.1.1    	01:C6:67:1B:97:DE
302	27	?                                                 	192.168.1.1    	00:C8:46:5C:37:EF
303	27	?                                                 	192.168.1.1    	10:D6:65:5F:95:FF
304	27	?                                                 	192.168.1.1    	15:E8:85:4B:55:EF
205	27	?                                                 	192.168.1.1    	09:D7:67:1D:56:FE
999	27	?                                                 	192.168.1.1    	16:F0:49:7F:35:EE
207	27	?                                                 	192.168.1.1    	01:E8:76:7B:98:FF
208	27	?                                                 	192.168.1.1    	11:D6:68:5E:98:EF
209	27	?                                                 	192.168.1.1    	08:A1:46:7D:75:EF
220	27	?                                                 	192.168.1.1    	01:E6:87:8F:FF:RE
245	27	?                                                 	192.168.1.1    	10:A8:88:6C:38:EE
250	27	?                                                 	192.168.1.1    	17:C7:89:1D:95:DF
\.


--
-- Data for Name: rooms; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rooms (id, num, emp_id) FROM stdin;
12	1	250
13	2	251
14	3	252
15	4	253
16	5	254
17	6	255
18	7	256
19	8	257
20	9	258
21	10	259
22	11	260
23	12	261
24	13	262
25	14	263
26	15	264
27	16	265
\.


--
-- Data for Name: soft; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.soft (id, sname, ver, quant) FROM stdin;
16	Word                                              	2019	0
17	Word                                              	2019	0
18	Word                                              	2019	0
19	Word                                              	2019	0
20	Word                                              	2019	0
21	Word                                              	2019	0
22	Word                                              	2019	0
23	Word                                              	2019	0
24	1c                                                	8	0
25	1c                                                	8	0
26	1c                                                	8	0
27	1c                                                	8	0
28	Exel                                              	2019	0
29	Exel                                              	2019	0
30	Exel                                              	2019	0
31	Exel                                              	2019	0
32	Exel                                              	2019	0
33	Exel                                              	2019	0
34	Exel                                              	2019	0
35	Exel                                              	2019	0
36	Exel                                              	2019	0
37	Exel                                              	2019	0
38	Exel                                              	2019	0
78	Exel                                              	2019	0
39	Exel                                              	2019	0
40	Exel                                              	2019	0
41	Exel                                              	2019	0
42	Exel                                              	2019	0
43	Exel                                              	2019	0
44	Exel                                              	2019	0
45	Exel                                              	2019	0
46	Exel                                              	2019	0
47	Exel                                              	2019	0
48	Exel                                              	2019	0
49	Exel                                              	2019	0
50	Exel                                              	2019	0
51	Exel                                              	2019	0
52	Exel                                              	2019	0
53	Exel                                              	2019	0
54	Exel                                              	2019	0
55	Exel                                              	2019	0
56	Exel                                              	2019	0
57	Exel                                              	2019	0
58	Exel                                              	2019	0
59	Exel                                              	2019	0
60	Exel                                              	2019	0
61	Exel                                              	2019	0
73	Exel                                              	2019	0
62	Exel                                              	2019	0
63	Photoshop                                         	2021	0
64	Photoshop                                         	2021	0
65	Photoshop                                         	2021	0
66	Photoshop                                         	2021	0
67	Photoshop                                         	2021	0
68	Photoshop                                         	2021	0
69	Photoshop                                         	2021	0
70	Photoshop                                         	2021	0
71	Photoshop                                         	2021	0
72	Photoshop                                         	2021	0
74	Photoshop                                         	2021	0
75	Photoshop                                         	2021	0
76	Photoshop                                         	2021	0
999	Photoshop                                         	2021	0
77	Photoshop                                         	2021	0
\.


--
-- Name: rooms_num_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rooms_num_seq', 16, true);


--
-- Name: employees employees_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (id);


--
-- Name: installs installs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.installs
    ADD CONSTRAINT installs_pkey PRIMARY KEY (pc_id, soft_id);


--
-- Name: pcs pcs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pcs
    ADD CONSTRAINT pcs_pkey PRIMARY KEY (id);


--
-- Name: rooms rooms_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rooms
    ADD CONSTRAINT rooms_pkey PRIMARY KEY (id);


--
-- Name: soft soft_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.soft
    ADD CONSTRAINT soft_pkey PRIMARY KEY (id);


--
-- Name: installs ins_pcs; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.installs
    ADD CONSTRAINT ins_pcs FOREIGN KEY (pc_id) REFERENCES public.pcs(id);


--
-- Name: installs ins_soft; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.installs
    ADD CONSTRAINT ins_soft FOREIGN KEY (soft_id) REFERENCES public.soft(id);


--
-- Name: pcs pcs_rooms; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pcs
    ADD CONSTRAINT pcs_rooms FOREIGN KEY (room_id) REFERENCES public.rooms(id);


--
-- Name: rooms rooms_employees; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rooms
    ADD CONSTRAINT rooms_employees FOREIGN KEY (emp_id) REFERENCES public.employees(id);


--
-- PostgreSQL database dump complete
--

