--
-- PostgreSQL database dump
--

-- Dumped from database version 14.2 (Debian 14.2-1.pgdg110+1)
-- Dumped by pg_dump version 14.2 (Debian 14.2-1.pgdg110+1)

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
-- Name: codigo_postal_sec; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.codigo_postal_sec
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.codigo_postal_sec OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: codigo_postal; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.codigo_postal (
    id_codigo_postal bigint DEFAULT nextval('public.codigo_postal_sec'::regclass) NOT NULL,
    colonia character varying(255) NOT NULL,
    ciudad character varying(255) NOT NULL,
    municipio_id bigint NOT NULL,
    asentamiento character varying(255) NOT NULL,
    codigo_postal character varying(5) NOT NULL
);


ALTER TABLE public.codigo_postal OWNER TO postgres;

--
-- Name: estado; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.estado (
    id_estado bigint NOT NULL,
    version bigint NOT NULL,
    nombre character varying(255) NOT NULL,
    siglasrenapo character varying(255) NOT NULL,
    numero_oficial integer
);


ALTER TABLE public.estado OWNER TO postgres;

--
-- Name: municipio_sec; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.municipio_sec
    START WITH 11
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.municipio_sec OWNER TO postgres;

--
-- Name: municipio; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.municipio (
    id_municipio bigint DEFAULT nextval('public.municipio_sec'::regclass) NOT NULL,
    nombre character varying(255) NOT NULL,
    estado_id bigint NOT NULL
);


ALTER TABLE public.municipio OWNER TO postgres;

--
-- Data for Name: codigo_postal; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.codigo_postal (id_codigo_postal, colonia, ciudad, municipio_id, asentamiento, codigo_postal) FROM stdin;
2751	Centro Cívico	Mexicali	13	Colonia	21000
11382	San Ángel	Ciudad de México	20	Colonia	01000
11383	Los Alpes	Ciudad de México	20	Colonia	01010
11384	Guadalupe Inn	Ciudad de México	20	Colonia	01020
11385	Axotla	Ciudad de México	20	Pueblo	01030
11386	Florida	Ciudad de México	20	Colonia	01030
11387	Campestre	Ciudad de México	20	Colonia	01040
11388	Tlacopac	Ciudad de México	20	Pueblo	01049
11389	Ex-Hacienda de Guadalupe Chimalistac	Ciudad de México	20	Colonia	01050
11390	Altavista	Ciudad de México	20	Colonia	01060
11391	San Ángel Inn	Ciudad de México	20	Colonia	01060
11392	Chimalistac	Ciudad de México	20	Colonia	01070
11393	Progreso Tizapan	Ciudad de México	20	Colonia	01080
11394	Ermita Tizapan	Ciudad de México	20	Colonia	01089
11395	La Otra Banda	Ciudad de México	20	Barrio	01090
11396	Loreto	Ciudad de México	20	Barrio	01090
11397	Tizapan	Ciudad de México	20	Pueblo	01090
11398	Pólvora	Ciudad de México	20	Colonia	01100
11399	La Conchita	Ciudad de México	20	Colonia	01109
11400	Belém de las Flores	Ciudad de México	20	Colonia	01110
11401	El Capulín	Ciudad de México	20	Colonia	01110
11402	Ampliación El Capulín	Ciudad de México	20	Colonia	01110
11403	Liberales de 1857	Ciudad de México	20	Colonia	01110
11404	Acueducto	Ciudad de México	20	Colonia	01120
11405	Cove	Ciudad de México	20	Colonia	01120
11406	Hidalgo	Ciudad de México	20	Colonia	01120
11407	Las Américas	Ciudad de México	20	Colonia	01120
11408	Ampliación Acueducto	Ciudad de México	20	Colonia	01125
11409	Paraíso	Ciudad de México	20	Colonia	01130
11410	Molino de Santo Domingo	Ciudad de México	20	Colonia	01130
11411	Real del Monte	Ciudad de México	20	Colonia	01130
11412	Reacomodo Pino Suárez	Ciudad de México	20	Colonia	01139
11413	Bellavista	Ciudad de México	20	Colonia	01140
11414	José Maria Pino Suárez	Ciudad de México	20	Colonia	01140
11415	Cristo Rey	Ciudad de México	20	Colonia	01150
11416	Tolteca	Ciudad de México	20	Colonia	01150
11417	Bosque	Ciudad de México	20	Colonia	01160
11418	Isidro Fabela	Ciudad de México	20	Colonia	01160
11419	Maria G. de García Ruiz	Ciudad de México	20	Colonia	01160
11420	1a Victoria	Ciudad de México	20	Colonia	01160
11421	Abraham M. González	Ciudad de México	20	Colonia	01170
11422	Carola	Ciudad de México	20	Colonia	01180
11423	8 de Agosto	Ciudad de México	20	Colonia	01180
11424	San Pedro de los Pinos	Ciudad de México	20	Colonia	01180
11425	Arturo Martínez	Ciudad de México	20	Colonia	01200
11426	Santa Fe	Ciudad de México	20	Pueblo	01210
11427	Lomas de Santa Fe	Ciudad de México	20	Colonia	01219
11428	Bonanza	Ciudad de México	20	Colonia	01220
11429	Cuevitas	Ciudad de México	20	Colonia	01220
11430	El Cuernito	Ciudad de México	20	Colonia	01220
11431	Mártires de Tacubaya	Ciudad de México	20	Colonia	01220
11432	Zenón Delgado	Ciudad de México	20	Colonia	01220
11433	La Estrella	Ciudad de México	20	Colonia	01220
11434	Campo de Tiro los Gamitos	Ciudad de México	20	Colonia	01230
11435	Los Gamitos	Ciudad de México	20	Colonia	01230
11436	Tlapechico	Ciudad de México	20	Colonia	01230
11437	El Piru Santa Fe	Ciudad de México	20	Colonia	01230
11438	El Piru 2a Ampliación	Ciudad de México	20	Colonia	01230
11439	La Huerta	Ciudad de México	20	Colonia	01239
11440	Pueblo Nuevo	Ciudad de México	20	Colonia	01240
11441	El Árbol	Ciudad de México	20	Colonia	01250
11442	Ladera	Ciudad de México	20	Colonia	01250
11443	Lomas de Nuevo México	Ciudad de México	20	Colonia	01250
11444	Margarita Maza de Juárez	Ciudad de México	20	Colonia	01250
11445	Tecolalco	Ciudad de México	20	Colonia	01250
11446	Ampliación La Cebada	Ciudad de México	20	Colonia	01259
11447	La Mexicana 2a Ampliación	Ciudad de México	20	Colonia	01259
11448	Calzada Jalalpa	Ciudad de México	20	Colonia	01260
11449	La Mexicana	Ciudad de México	20	Colonia	01260
11450	Ampliación La Mexicana	Ciudad de México	20	Colonia	01260
11451	La Palmita	Ciudad de México	20	Colonia	01260
11452	Liberación Proletaria	Ciudad de México	20	Colonia	01260
11453	1a Sección Cañada	Ciudad de México	20	Colonia	01269
11454	2a Sección Cañada	Ciudad de México	20	Colonia	01269
11455	El Tejocote	Ciudad de México	20	Colonia	01270
11456	La Presa	Ciudad de México	20	Colonia	01270
11457	Golondrinas	Ciudad de México	20	Colonia	01270
11458	Golondrinas 1a Sección	Ciudad de México	20	Colonia	01270
11459	Golondrinas 2a Sección	Ciudad de México	20	Colonia	01270
11460	Lomas de Capula	Ciudad de México	20	Colonia	01270
11461	Villa Solidaridad	Ciudad de México	20	Colonia	01275
11462	El Pirul	Ciudad de México	20	Colonia	01276
2870	Gasca	Mexicali	13	Colonia	21160
11463	Desarrollo Urbano	Ciudad de México	20	Colonia	01278
11464	Lomas de Becerra	Ciudad de México	20	Colonia	01279
11465	Arvide	Ciudad de México	20	Colonia	01280
11466	El Pocito	Ciudad de México	20	Colonia	01280
11467	Francisco Villa	Ciudad de México	20	Colonia	01280
11468	La Joya	Ciudad de México	20	Colonia	01280
11469	El Rodeo	Ciudad de México	20	Colonia	01285
11470	Reacomodo El Cuernito	Ciudad de México	20	Colonia	01289
11471	Piloto Adolfo López Mateos	Ciudad de México	20	Colonia	01290
11472	Presidentes	Ciudad de México	20	Colonia	01290
11473	Jalalpa Tepito 2a Ampliación	Ciudad de México	20	Colonia	01296
11474	Ampliación Jalalpa	Ciudad de México	20	Colonia	01296
11475	Jalalpa Tepito	Ciudad de México	20	Colonia	01296
11476	Ampliación Piloto Adolfo López Mateos	Ciudad de México	20	Colonia	01298
11477	1a Ampliación Presidentes	Ciudad de México	20	Colonia	01299
11478	2a Ampliación Presidentes	Ciudad de México	20	Colonia	01299
11479	San Gabriel	Ciudad de México	20	Colonia	01310
11480	Carlos A. Madrazo	Ciudad de México	20	Colonia	01320
11481	Paseo de las Lomas	Ciudad de México	20	Colonia	01330
11482	Bejero del Pueblo Santa Fe	Ciudad de México	20	Colonia	01340
11483	Santa Fe	Ciudad de México	20	Colonia	01376
11484	Santa Fe Peña Blanca	Ciudad de México	20	Colonia	01376
11485	Santa Fe La Loma	Ciudad de México	20	Colonia	01376
11486	Santa Fe Centro Ciudad	Ciudad de México	20	Colonia	01376
11487	Jalalpa El Grande	Ciudad de México	20	Colonia	01377
11488	Santa Fe Tlayapaca	Ciudad de México	20	Colonia	01389
11489	Olivar del Conde 1a Sección	Ciudad de México	20	Colonia	01400
11490	Preconcreto	Ciudad de México	20	Colonia	01400
11491	Galeana	Ciudad de México	20	Colonia	01407
11492	Olivar del Conde 2a Sección	Ciudad de México	20	Colonia	01408
11493	Barrio Norte	Ciudad de México	20	Colonia	01410
11494	Palmas	Ciudad de México	20	Colonia	01410
11495	Minas Cristo Rey	Ciudad de México	20	Colonia	01419
11496	Sacramento	Ciudad de México	20	Colonia	01420
11497	Santa María Nonoalco	Ciudad de México	20	Barrio	01420
11498	Colina del Sur	Ciudad de México	20	Colonia	01430
11499	Hogar y Redención	Ciudad de México	20	Colonia	01450
11500	Alfonso XIII	Ciudad de México	20	Colonia	01460
11501	Alfalfar	Ciudad de México	20	Barrio	01470
11502	Molino de Rosas	Ciudad de México	20	Colonia	01470
11503	Lomas de Plateros	Ciudad de México	20	Colonia	01480
11504	La Cascada	Ciudad de México	20	Colonia	01490
11505	Santa Lucía	Ciudad de México	20	Pueblo	01500
11506	Miguel Gaona Armenta	Ciudad de México	20	Colonia	01500
11507	Santa Lucía Chantepec	Ciudad de México	20	Pueblo	01509
11508	Garcimarrero	Ciudad de México	20	Colonia	01510
11509	La Araña	Ciudad de México	20	Colonia	01510
11510	Los Cedros	Ciudad de México	20	Colonia	01510
11511	Ampliación Los Pirules	Ciudad de México	20	Colonia	01520
11512	Estado de Hidalgo	Ciudad de México	20	Colonia	01520
11513	Ampliación Estado de Hidalgo	Ciudad de México	20	Colonia	01520
11514	Piru Santa Lucía	Ciudad de México	20	Colonia	01520
11515	El Politoco	Ciudad de México	20	Colonia	01520
11516	Corpus Christy	Ciudad de México	20	Colonia	01530
11517	Tepopotla	Ciudad de México	20	Colonia	01538
11518	Acuilotla	Ciudad de México	20	Colonia	01539
11519	Cooperativa Unión Olivos	Ciudad de México	20	Colonia	01539
11520	Balcones de Cehuayo	Ciudad de México	20	Colonia	01540
11521	Cehuaya	Ciudad de México	20	Colonia	01540
11522	Llano Redondo	Ciudad de México	20	Colonia	01540
11523	Punta de Cehuaya	Ciudad de México	20	Colonia	01540
11524	Villa Progresista	Ciudad de México	20	Colonia	01548
11525	Dos Ríos del Pueblo Santa Lucía	Ciudad de México	20	Colonia	01549
11526	Tepeaca	Ciudad de México	20	Colonia	01550
11527	Ampliación Tepeaca	Ciudad de México	20	Colonia	01550
11528	Rinconada Las Cuevitas	Ciudad de México	20	Colonia	01550
11529	Ave Real	Ciudad de México	20	Colonia	01560
11530	Canutillo	Ciudad de México	20	Colonia	01560
11531	Canutillo 3a Sección	Ciudad de México	20	Colonia	01560
11532	Canutillo 2a Sección	Ciudad de México	20	Colonia	01560
11533	Hueytlale	Ciudad de México	20	Colonia	01566
11534	Reacomodo Valentín Gómez Farías	Ciudad de México	20	Colonia	01569
11535	Tarango	Ciudad de México	20	Colonia	01588
11536	El Rincón	Ciudad de México	20	Colonia	01590
11537	Merced Gómez	Ciudad de México	20	Colonia	01600
11538	Colinas de Tarango	Ciudad de México	20	Colonia	01610
11539	Profesor J. Arturo López Martínez	Ciudad de México	20	Colonia	01610
11540	Arcos Centenario	Ciudad de México	20	Colonia	01618
11541	Ex-Hacienda de Tarango	Ciudad de México	20	Colonia	01618
11542	La Martinica	Ciudad de México	20	Colonia	01619
11543	Rinconada de Tarango	Ciudad de México	20	Colonia	01619
11544	Lomas de Tarango	Ciudad de México	20	Colonia	01620
11545	Lomas de Puerta Grande	Ciudad de México	20	Colonia	01630
11546	Puerta Grande	Ciudad de México	20	Colonia	01630
11547	Los Juristas	Ciudad de México	20	Colonia	01630
11548	Herón Proal	Ciudad de México	20	Colonia	01640
11549	Ponciano Arriaga	Ciudad de México	20	Colonia	01645
11550	La Milagrosa	Ciudad de México	20	Colonia	01650
11551	Palmas Axotitla	Ciudad de México	20	Colonia	01650
11552	Tlacuitlapa	Ciudad de México	20	Colonia	01650
11553	Ampliación Tlacuitlapa	Ciudad de México	20	Colonia	01650
11554	2o Reacomodo Tlacuitlapa	Ciudad de México	20	Colonia	01650
11555	El Ruedo	Ciudad de México	20	Colonia	01650
11556	Santa Lucía Chantepec	Ciudad de México	20	Colonia	01650
11557	La Joyita del Pueblo Tetelpan	Ciudad de México	20	Colonia	01700
11558	Ocotillos del Pueblo Tetelpan	Ciudad de México	20	Colonia	01700
11559	San Agustín del Pueblo Tetelpan	Ciudad de México	20	Colonia	01700
11560	2a Del Moral del Pueblo Tetelpan	Ciudad de México	20	Colonia	01700
11561	Tecalcapa del Pueblo Tetelpan	Ciudad de México	20	Colonia	01700
11562	Tetelpan	Ciudad de México	20	Pueblo	01700
11563	El Encino del Pueblo Tetelpan	Ciudad de México	20	Colonia	01708
11564	El Mirador del Pueblo Tetelpan	Ciudad de México	20	Colonia	01708
11565	Las Águilas	Ciudad de México	20	Colonia	01710
11566	Ampliación Alpes	Ciudad de México	20	Colonia	01710
11567	Lomas de Guadalupe	Ciudad de México	20	Colonia	01720
11568	Alcantarilla	Ciudad de México	20	Colonia	01729
11569	Lomas de las Águilas	Ciudad de México	20	Colonia	01730
11570	Puente Colorado	Ciudad de México	20	Colonia	01730
11571	La Peñita del Pueblo Tetelpan	Ciudad de México	20	Colonia	01740
11572	San Clemente Norte	Ciudad de México	20	Colonia	01740
11573	San Clemente Sur	Ciudad de México	20	Colonia	01740
11574	Las Águilas 1a Sección	Ciudad de México	20	Colonia	01750
11575	Las Águilas 2o Parque	Ciudad de México	20	Colonia	01750
11576	Las Águilas 3er Parque	Ciudad de México	20	Colonia	01750
11577	Ampliación Las Águilas	Ciudad de México	20	Colonia	01759
11578	Atlamaya	Ciudad de México	20	Colonia	01760
11579	Flor de María	Ciudad de México	20	Colonia	01760
11580	La Herradura del Pueblo Tetelpan	Ciudad de México	20	Colonia	01760
11581	La Angostura	Ciudad de México	20	Colonia	01770
11582	San José del Olivar	Ciudad de México	20	Colonia	01770
11583	Olivar de los Padres	Ciudad de México	20	Colonia	01780
11584	Tizampampano del Pueblo Tetelpan	Ciudad de México	20	Colonia	01780
11585	Miguel Hidalgo	Ciudad de México	20	Colonia	01789
11586	Lomas de los Ángeles del Pueblo Tetelpan	Ciudad de México	20	Colonia	01790
11587	Lomas de San Ángel Inn	Ciudad de México	20	Colonia	01790
11588	San Bartolo Ameyalco	Ciudad de México	20	Pueblo	01800
11589	Rancho San Francisco Pueblo San Bartolo Ameyalco	Ciudad de México	20	Colonia	01807
11590	Villa Verdún	Ciudad de México	20	Colonia	01810
11591	Lomas Axomiatla	Ciudad de México	20	Colonia	01820
11592	Ejido San Mateo	Ciudad de México	20	Colonia	01820
11593	Santa Rosa Xochiac	Ciudad de México	20	Pueblo	01830
11594	Torres de Potrero	Ciudad de México	20	Colonia	01840
11595	Rincón de la Bolsa	Ciudad de México	20	Colonia	01849
11596	Rancho del Carmen del Pueblo San Bartolo Ameyalco	Ciudad de México	20	Colonia	01849
11597	Lomas de Chamontoya	Ciudad de México	20	Colonia	01857
11598	Tlacoyaque	Ciudad de México	20	Colonia	01859
11599	Lomas de La Era	Ciudad de México	20	Colonia	01860
11600	Lomas del Capulín	Ciudad de México	20	Colonia	01863
11601	Lomas de los Cedros	Ciudad de México	20	Colonia	01870
11602	Jardines del Pedregal	Ciudad de México	20	Colonia	01900
11603	San Jerónimo Aculco	Ciudad de México	20	Colonia	01904
11604	Centro de Azcapotzalco	Ciudad de México	21	Colonia	02000
11605	Los Reyes	Ciudad de México	21	Barrio	02010
11606	San Rafael	Ciudad de México	21	Colonia	02010
11607	Nuevo Barrio San Rafael	Ciudad de México	21	Barrio	02010
11608	San Marcos	Ciudad de México	21	Barrio	02020
11609	Santo Tomás	Ciudad de México	21	Colonia	02020
11610	Del Maestro	Ciudad de México	21	Colonia	02040
11611	San Sebastián	Ciudad de México	21	Colonia	02040
11612	Libertad	Ciudad de México	21	Colonia	02050
11613	Santa María Malinalco	Ciudad de México	21	Pueblo	02050
11614	Sindicato Mexicano de Electricistas	Ciudad de México	21	Colonia	02060
11615	Un Hogar Para Cada Trabajador	Ciudad de México	21	Colonia	02060
11616	Del Recreo	Ciudad de México	21	Colonia	02070
11617	Nextengo	Ciudad de México	21	Barrio	02070
11618	Clavería	Ciudad de México	21	Colonia	02080
11619	Sector Naval	Ciudad de México	21	Colonia	02080
11620	San Álvaro	Ciudad de México	21	Colonia	02090
11621	Ángel Zimbrón	Ciudad de México	21	Colonia	02099
11622	El Rosario	Ciudad de México	21	Colonia	02100
11623	San Martín Xochinahuac	Ciudad de México	21	Pueblo	02120
11624	Nueva El Rosario	Ciudad de México	21	Colonia	02128
2873	Santa Bárbara	Mexicali	13	Fraccionamiento	21160
11625	Nueva España	Ciudad de México	21	Colonia	02129
11626	Tierra Nueva	Ciudad de México	21	Colonia	02130
11627	Santa Inés	Ciudad de México	21	Colonia	02140
11628	Pasteros	Ciudad de México	21	Colonia	02150
11629	Santo Domingo	Ciudad de México	21	Pueblo	02160
11630	Reynosa Tamaulipas	Ciudad de México	21	Colonia	02200
11631	Santa Bárbara	Ciudad de México	21	Pueblo	02230
11632	San Andrés	Ciudad de México	21	Barrio	02240
11633	San Andrés	Ciudad de México	21	Pueblo	02240
11634	Santa Catarina	Ciudad de México	21	Pueblo	02250
11635	Industrial Vallejo	Ciudad de México	21	Colonia	02300
11636	Ferrería	Ciudad de México	21	Colonia	02310
11637	San Andrés de las Salinas	Ciudad de México	21	Pueblo	02320
11638	Huautla de las Salinas	Ciudad de México	21	Barrio	02330
11639	Santa Cruz de las Salinas	Ciudad de México	21	Colonia	02340
11640	Las Salinas	Ciudad de México	21	Colonia	02360
11641	San Juan Tlihuaca	Ciudad de México	21	Pueblo	02400
11642	Prados del Rosario	Ciudad de México	21	Colonia	02410
11643	Ex-Hacienda El Rosario	Ciudad de México	21	Colonia	02420
11644	Providencia	Ciudad de México	21	Colonia	02440
11645	Tezozomoc	Ciudad de México	21	Colonia	02459
11646	La Preciosa	Ciudad de México	21	Colonia	02460
11647	Ampliación Petrolera	Ciudad de México	21	Colonia	02470
11648	Petrolera	Ciudad de México	21	Colonia	02480
11649	San Mateo	Ciudad de México	21	Barrio	02490
11650	Unidad Cuitláhuac	Ciudad de México	21	Colonia	02500
11651	El Jagüey	Ciudad de México	21	Colonia	02519
11652	Estación Pantaco	Ciudad de México	21	Equipamiento	02520
11653	Jardín Azpeitia	Ciudad de México	21	Colonia	02530
11654	Pro-Hogar	Ciudad de México	21	Colonia	02600
11655	Coltongo	Ciudad de México	21	Barrio	02630
11656	Coltongo	Ciudad de México	21	Colonia	02630
11657	Monte Alto	Ciudad de México	21	Colonia	02640
11658	Trabajadores de Hierro	Ciudad de México	21	Colonia	02650
11659	Euzkadi	Ciudad de México	21	Colonia	02660
11660	Cosmopolita	Ciudad de México	21	Colonia	02670
11661	Potrero del Llano	Ciudad de México	21	Colonia	02680
11662	San Miguel Amantla	Ciudad de México	21	Pueblo	02700
11663	San Pedro Xalpa	Ciudad de México	21	Pueblo	02710
11664	Ampliación San Pedro Xalpa	Ciudad de México	21	Colonia	02719
11665	San Antonio	Ciudad de México	21	Colonia	02720
11666	San Bartolo Cahualtongo	Ciudad de México	21	Pueblo	02720
11667	San Francisco Tetecala	Ciudad de México	21	Pueblo	02730
11668	Santiago Ahuizotla	Ciudad de México	21	Pueblo	02750
11669	Industrial San Antonio	Ciudad de México	21	Colonia	02760
11670	Santa Lucía	Ciudad de México	21	Barrio	02760
11671	Santa Cruz Acayucan	Ciudad de México	21	Pueblo	02770
11672	Plenitud	Ciudad de México	21	Colonia	02780
11673	Santa Apolonia	Ciudad de México	21	Barrio	02790
11674	Nueva Santa María	Ciudad de México	21	Colonia	02800
11675	Ignacio Allende	Ciudad de México	21	Colonia	02810
11676	Victoria de las Democracias	Ciudad de México	21	Colonia	02810
11677	San Bernabé	Ciudad de México	21	Barrio	02830
11678	Obrero Popular	Ciudad de México	21	Colonia	02840
11679	Tlatilco	Ciudad de México	21	Colonia	02860
11680	San Salvador Xochimanca	Ciudad de México	21	Colonia	02870
11681	Aguilera	Ciudad de México	21	Colonia	02900
11682	Aldana	Ciudad de México	21	Colonia	02910
11683	Ampliación Cosmopolita	Ciudad de México	21	Colonia	02920
11684	Liberación	Ciudad de México	21	Colonia	02930
11685	Porvenir	Ciudad de México	21	Colonia	02940
11686	Del Gas	Ciudad de México	21	Colonia	02950
11687	San Francisco Xocotitla	Ciudad de México	21	Pueblo	02960
11688	Ampliación Del Gas	Ciudad de México	21	Colonia	02970
11689	Arenal	Ciudad de México	21	Colonia	02980
11690	Patrimonio Familiar	Ciudad de México	21	Colonia	02980
11691	La Raza	Ciudad de México	21	Colonia	02990
11692	Piedad Narvarte	Ciudad de México	22	Colonia	03000
11693	Atenor Salas	Ciudad de México	22	Colonia	03010
11694	Narvarte Poniente	Ciudad de México	22	Colonia	03020
11695	Narvarte Oriente	Ciudad de México	22	Colonia	03023
11696	Del Valle Centro	Ciudad de México	22	Colonia	03100
11697	Insurgentes San Borja	Ciudad de México	22	Colonia	03100
11698	Del Valle Norte	Ciudad de México	22	Colonia	03103
11699	Del Valle Sur	Ciudad de México	22	Colonia	03104
11700	Tlacoquemécatl	Ciudad de México	22	Colonia	03200
11701	Actipan	Ciudad de México	22	Colonia	03230
11702	Acacias	Ciudad de México	22	Colonia	03240
11703	Portales Sur	Ciudad de México	22	Colonia	03300
11704	Portales Norte	Ciudad de México	22	Colonia	03303
11705	Santa Cruz Atoyac	Ciudad de México	22	Colonia	03310
11706	Residencial Emperadores	Ciudad de México	22	Colonia	03320
11707	Xoco	Ciudad de México	22	Colonia	03330
11708	General Pedro María Anaya	Ciudad de México	22	Colonia	03340
11709	Álamos	Ciudad de México	22	Colonia	03400
11710	Postal	Ciudad de México	22	Colonia	03410
11711	Miguel Alemán	Ciudad de México	22	Colonia	03420
11712	Josefa Ortiz de Domínguez	Ciudad de México	22	Colonia	03430
11713	Niños Héroes	Ciudad de México	22	Colonia	03440
11714	Nativitas	Ciudad de México	22	Colonia	03500
11715	Moderna	Ciudad de México	22	Colonia	03510
11716	Iztaccihuatl	Ciudad de México	22	Colonia	03520
11717	Villa de Cortes	Ciudad de México	22	Colonia	03530
11718	Del Carmen	Ciudad de México	22	Colonia	03540
11719	Zacahuitzco	Ciudad de México	22	Colonia	03550
11720	Albert	Ciudad de México	22	Colonia	03560
11721	Portales Oriente	Ciudad de México	22	Colonia	03570
11722	Miravalle	Ciudad de México	22	Colonia	03580
11723	Ermita	Ciudad de México	22	Colonia	03590
11724	Vértiz Narvarte	Ciudad de México	22	Colonia	03600
11725	Américas Unidas	Ciudad de México	22	Colonia	03610
11726	Periodista	Ciudad de México	22	Colonia	03620
11727	Independencia	Ciudad de México	22	Colonia	03630
11728	Del Lago	Ciudad de México	22	Colonia	03640
11729	Letrán Valle	Ciudad de México	22	Colonia	03650
11730	San Simón Ticumac	Ciudad de México	22	Colonia	03660
11731	Santa María Nonoalco	Ciudad de México	22	Colonia	03700
11732	Ciudad de los Deportes	Ciudad de México	22	Colonia	03710
11733	Nochebuena	Ciudad de México	22	Colonia	03720
11734	San Juan	Ciudad de México	22	Colonia	03730
11735	Extremadura Insurgentes	Ciudad de México	22	Colonia	03740
11736	San Pedro de los Pinos	Ciudad de México	22	Colonia	03800
11737	Nápoles	Ciudad de México	22	Colonia	03810
11738	8 de Agosto	Ciudad de México	22	Colonia	03820
11739	Ampliación Nápoles	Ciudad de México	22	Colonia	03840
11740	San José Insurgentes	Ciudad de México	22	Colonia	03900
11741	Mixcoac	Ciudad de México	22	Colonia	03910
11742	Insurgentes Mixcoac	Ciudad de México	22	Colonia	03920
11743	Merced Gómez	Ciudad de México	22	Colonia	03930
11744	Crédito Constructor	Ciudad de México	22	Colonia	03940
11745	Villa Coyoacán	Ciudad de México	23	Colonia	04000
11746	Santa Catarina	Ciudad de México	23	Barrio	04010
11747	La Concepción	Ciudad de México	23	Barrio	04020
11748	San Lucas	Ciudad de México	23	Barrio	04030
11749	Parque San Andrés	Ciudad de México	23	Colonia	04040
11750	Del Carmen	Ciudad de México	23	Colonia	04100
11751	San Diego Churubusco	Ciudad de México	23	Colonia	04120
11752	San Mateo	Ciudad de México	23	Colonia	04120
11753	Campestre Churubusco	Ciudad de México	23	Colonia	04200
11754	Churubusco Country Club	Ciudad de México	23	Colonia	04210
11755	Prado Churubusco	Ciudad de México	23	Colonia	04230
11756	Hermosillo	Ciudad de México	23	Colonia	04240
11757	Paseos de Taxqueña	Ciudad de México	23	Colonia	04250
11758	San Francisco Culhuacán Barrio de San Francisco	Ciudad de México	23	Barrio	04260
11759	San Francisco Culhuacán Barrio de La Magdalena	Ciudad de México	23	Barrio	04260
11760	San Francisco Culhuacán Barrio de Santa Ana	Ciudad de México	23	Barrio	04260
11761	San Francisco Culhuacán Barrio de San Juan	Ciudad de México	23	Barrio	04260
11762	Ajusco	Ciudad de México	23	Colonia	04300
11763	Romero de Terreros	Ciudad de México	23	Colonia	04310
11764	Oxtopulco Universidad	Ciudad de México	23	Barrio	04318
11765	Cuadrante de San Francisco	Ciudad de México	23	Colonia	04320
11766	Pedregal de San Francisco	Ciudad de México	23	Colonia	04320
11767	El Rosedal	Ciudad de México	23	Colonia	04330
11768	Los Reyes	Ciudad de México	23	Pueblo	04330
11769	Del Niño Jesús	Ciudad de México	23	Barrio	04330
11770	Copilco El Bajo	Ciudad de México	23	Colonia	04340
11771	Copilco El Alto	Ciudad de México	23	Colonia	04360
11772	Copilco Universidad	Ciudad de México	23	Colonia	04360
11773	Pedregal de Santo Domingo	Ciudad de México	23	Colonia	04369
11774	Atlántida	Ciudad de México	23	Colonia	04370
11775	Ciudad Jardín	Ciudad de México	23	Colonia	04370
11776	El Rosario	Ciudad de México	23	Colonia	04380
11777	La Candelaria	Ciudad de México	23	Pueblo	04380
11778	Huayamilpas	Ciudad de México	23	Colonia	04390
11779	Nueva Díaz Ordaz	Ciudad de México	23	Colonia	04390
11780	Educación	Ciudad de México	23	Colonia	04400
11781	Petrolera Taxqueña	Ciudad de México	23	Colonia	04410
11782	Ex-Ejido de San Francisco Culhuacán	Ciudad de México	23	Colonia	04420
11783	Culhuacán CTM Sección V	Ciudad de México	23	Colonia	04440
11784	Culhuacán CTM Sección II	Ciudad de México	23	Colonia	04440
11785	Culhuacán CTM Sección I	Ciudad de México	23	Colonia	04440
11786	El Centinela	Ciudad de México	23	Colonia	04450
11787	Avante	Ciudad de México	23	Colonia	04460
11788	Presidentes Ejidales 1a Sección	Ciudad de México	23	Colonia	04470
11789	Presidentes Ejidales 2a Sección	Ciudad de México	23	Colonia	04470
11790	Culhuacán CTM Sección VI	Ciudad de México	23	Colonia	04480
11791	Culhuacán CTM Sección III	Ciudad de México	23	Colonia	04480
11792	Culhuacán CTM CROC	Ciudad de México	23	Colonia	04480
11793	Culhuacán CTM Sección X-A	Ciudad de México	23	Colonia	04480
11794	Culhuacán CTM Sección VII	Ciudad de México	23	Colonia	04489
11795	Culhuacán CTM Sección Piloto	Ciudad de México	23	Colonia	04490
11796	Culhuacán CTM Canal Nacional	Ciudad de México	23	Colonia	04490
11797	Jardines del Pedregal de San Ángel	Ciudad de México	23	Colonia	04500
11798	Universidad Nacional Autónoma de México	Ciudad de México	23	Equipamiento	04510
11799	La Otra Banda	Ciudad de México	23	Colonia	04519
11800	Insurgentes Cuicuilco	Ciudad de México	23	Colonia	04530
11801	Pedregal de Santa Úrsula	Ciudad de México	23	Colonia	04600
11802	Xotepingo	Ciudad de México	23	Colonia	04610
11803	San Pablo Tepetlapa	Ciudad de México	23	Pueblo	04620
11804	Adolfo Ruiz Cortínes	Ciudad de México	23	Colonia	04630
11805	El Reloj	Ciudad de México	23	Colonia	04640
11806	Santa Úrsula Coapa	Ciudad de México	23	Pueblo	04650
11807	Joyas del Pedregal	Ciudad de México	23	Colonia	04660
11808	Pedregal de Carrasco	Ciudad de México	23	Colonia	04700
11809	Olímpica	Ciudad de México	23	Colonia	04710
11810	Cantil del Pedregal	Ciudad de México	23	Colonia	04730
11811	Bosques de Tetlameya	Ciudad de México	23	Colonia	04730
11812	El Caracol	Ciudad de México	23	Colonia	04739
11813	Alianza Popular Revolucionaria	Ciudad de México	23	Colonia	04800
11814	Los Cedros	Ciudad de México	23	Colonia	04800
11815	Prados de Coyoacán	Ciudad de México	23	Colonia	04810
11816	Emiliano Zapata	Ciudad de México	23	Colonia	04815
11817	Los Cipreses	Ciudad de México	23	Colonia	04830
11818	Ex-Ejido de San Pablo Tepetlapa	Ciudad de México	23	Colonia	04840
11819	Espartaco	Ciudad de México	23	Colonia	04870
11820	Jardines de Coyoacán	Ciudad de México	23	Colonia	04890
11821	Los Olivos	Ciudad de México	23	Colonia	04890
11822	El Parque de Coyoacán	Ciudad de México	23	Colonia	04899
11823	Culhuacán CTM Sección VIII	Ciudad de México	23	Colonia	04909
11824	Culhuacán CTM Sección IX-A	Ciudad de México	23	Colonia	04909
11825	Culhuacán CTM Sección IX-B	Ciudad de México	23	Colonia	04909
11826	Carmen Serdán	Ciudad de México	23	Colonia	04910
11827	Cafetales	Ciudad de México	23	Colonia	04918
11828	Emiliano Zapata Fraccionamiento Popular	Ciudad de México	23	Colonia	04919
11829	Los Girasoles	Ciudad de México	23	Colonia	04920
11830	Las Campanas	Ciudad de México	23	Colonia	04929
11831	Santa Cecilia	Ciudad de México	23	Colonia	04930
11832	Campestre Coyoacán	Ciudad de México	23	Colonia	04938
11833	Culhuacán CTM Sección X	Ciudad de México	23	Colonia	04939
11834	Los Sauces	Ciudad de México	23	Colonia	04940
11835	El Mirador	Ciudad de México	23	Colonia	04950
11836	Villa Quietud	Ciudad de México	23	Colonia	04960
11837	Haciendas de Coyoacán	Ciudad de México	23	Colonia	04970
11838	Ex-Ejido de Santa Úrsula Coapa	Ciudad de México	23	Colonia	04980
11839	Ex-Hacienda Coapa	Ciudad de México	23	Colonia	04980
11840	Viejo Ejido de Santa Úrsula Coapa	Ciudad de México	23	Colonia	04980
11841	Cuajimalpa	Ciudad de México	24	Colonia	05000
11842	Zentlapatl	Ciudad de México	24	Colonia	05010
11843	Loma del Padre	Ciudad de México	24	Colonia	05020
11844	San Pedro	Ciudad de México	24	Colonia	05030
11845	La Manzanita	Ciudad de México	24	Colonia	05030
11846	San Pablo Chimalpa	Ciudad de México	24	Pueblo	05050
11847	Lomas de Vista Hermosa	Ciudad de México	24	Colonia	05100
11848	Cooperativa Palo Alto	Ciudad de México	24	Colonia	05110
11849	Granjas Palo Alto	Ciudad de México	24	Colonia	05118
11850	Campestre Palo Alto	Ciudad de México	24	Colonia	05119
11851	Bosques de las Lomas	Ciudad de México	24	Colonia	05120
11852	Lomas del Chamizal	Ciudad de México	24	Colonia	05129
11853	San José de los Cedros	Ciudad de México	24	Colonia	05200
11854	Granjas Navidad	Ciudad de México	24	Colonia	05219
11855	Tepetongo	Ciudad de México	24	Colonia	05220
11856	El Ébano	Ciudad de México	24	Colonia	05230
11857	El Molino	Ciudad de México	24	Colonia	05240
11858	Jesús del Monte	Ciudad de México	24	Colonia	05260
11859	Amado Nervo	Ciudad de México	24	Colonia	05269
11860	Manzanastitla	Ciudad de México	24	Colonia	05270
11861	Adolfo López Mateos	Ciudad de México	24	Colonia	05280
11862	El Molinito	Ciudad de México	24	Colonia	05310
11863	El Yaqui	Ciudad de México	24	Colonia	05320
11864	Lomas de Memetla	Ciudad de México	24	Colonia	05330
11865	Memetla	Ciudad de México	24	Colonia	05330
11866	Ampliación Memetla	Ciudad de México	24	Colonia	05330
11867	Ampliación el Yaqui	Ciudad de México	24	Colonia	05330
11868	Santa Fe Cuajimalpa	Ciudad de México	24	Colonia	05348
11869	Locaxco	Ciudad de México	24	Colonia	05360
11870	Las Tinajas	Ciudad de México	24	Colonia	05370
11871	Lomas de San Pedro	Ciudad de México	24	Colonia	05379
11872	El Tianguillo	Ciudad de México	24	Colonia	05400
11873	San Lorenzo Acopilco	Ciudad de México	24	Pueblo	05410
11874	1° de Mayo	Ciudad de México	24	Colonia	05410
11875	Contadero	Ciudad de México	24	Colonia	05500
11876	La Venta	Ciudad de México	24	Colonia	05520
11877	Abdías García Soto	Ciudad de México	24	Colonia	05530
11878	San Mateo Tlaltenango	Ciudad de México	24	Pueblo	05600
11879	Santa Rosa Xochiac	Ciudad de México	24	Pueblo	05610
11880	Cruz Blanca	Ciudad de México	24	Colonia	05700
11881	Las Maromas	Ciudad de México	24	Colonia	05710
11882	Xalpa	Ciudad de México	24	Colonia	05730
11883	La Pila	Ciudad de México	24	Colonia	05750
11884	Las Lajas	Ciudad de México	24	Colonia	05760
11885	Agua Bendita	Ciudad de México	24	Colonia	05780
11886	Centro (Área 1)	Ciudad de México	25	Colonia	06000
11887	Centro (Área 2)	Ciudad de México	25	Colonia	06010
11888	Centro (Área 3)	Ciudad de México	25	Colonia	06020
11889	Tabacalera	Ciudad de México	25	Colonia	06030
11890	Centro (Área 4)	Ciudad de México	25	Colonia	06040
11891	Centro (Área 5)	Ciudad de México	25	Colonia	06050
11892	Centro (Área 6)	Ciudad de México	25	Colonia	06060
11893	Centro (Área 7)	Ciudad de México	25	Colonia	06070
11894	Centro (Área 8)	Ciudad de México	25	Colonia	06080
11895	Centro (Área 9)	Ciudad de México	25	Colonia	06090
11896	Hipódromo	Ciudad de México	25	Colonia	06100
11897	Condesa	Ciudad de México	25	Colonia	06140
11898	Hipódromo Condesa	Ciudad de México	25	Colonia	06170
11899	Morelos	Ciudad de México	25	Colonia	06200
11900	Peralvillo	Ciudad de México	25	Colonia	06220
11901	Valle Gómez	Ciudad de México	25	Colonia	06240
11902	Ex-Hipódromo de Peralvillo	Ciudad de México	25	Colonia	06250
11903	Maza	Ciudad de México	25	Colonia	06270
11904	Felipe Pescador	Ciudad de México	25	Colonia	06280
11905	Guerrero	Ciudad de México	25	Colonia	06300
11906	Buenavista	Ciudad de México	25	Colonia	06350
11907	Santa María la Ribera	Ciudad de México	25	Colonia	06400
11908	Santa María Insurgentes	Ciudad de México	25	Colonia	06430
11909	Atlampa	Ciudad de México	25	Colonia	06450
11910	San Rafael	Ciudad de México	25	Colonia	06470
11911	Cuauhtémoc	Ciudad de México	25	Colonia	06500
11912	Juárez	Ciudad de México	25	Colonia	06600
11913	Roma Norte	Ciudad de México	25	Colonia	06700
11914	Doctores	Ciudad de México	25	Colonia	06720
11915	Roma Sur	Ciudad de México	25	Colonia	06760
11916	Buenos Aires	Ciudad de México	25	Colonia	06780
11917	Obrera	Ciudad de México	25	Colonia	06800
11918	Tránsito	Ciudad de México	25	Colonia	06820
11919	Esperanza	Ciudad de México	25	Colonia	06840
11920	Asturias	Ciudad de México	25	Colonia	06850
11921	Vista Alegre	Ciudad de México	25	Colonia	06860
11922	Paulino Navarro	Ciudad de México	25	Colonia	06870
11923	Algarin	Ciudad de México	25	Colonia	06880
11924	Ampliación Asturias	Ciudad de México	25	Colonia	06890
11925	Nonoalco Tlatelolco	Ciudad de México	25	Colonia	06900
11926	San Simón Tolnáhuac	Ciudad de México	25	Colonia	06920
11927	Aragón la Villa	Ciudad de México	26	Colonia	07000
11928	Rosas del Tepeyac	Ciudad de México	26	Colonia	07010
11929	Santa Isabel Tola	Ciudad de México	26	Colonia	07010
11930	Tepetates	Ciudad de México	26	Colonia	07010
11931	Tepeyac Insurgentes	Ciudad de México	26	Colonia	07020
11932	Santiago Atzacoalco	Ciudad de México	26	Pueblo	07040
11933	Villa Gustavo A. Madero	Ciudad de México	26	Colonia	07050
11934	15 de Agosto	Ciudad de México	26	Colonia	07058
11935	Estanzuela	Ciudad de México	26	Colonia	07060
11936	Triunfo de La República	Ciudad de México	26	Colonia	07069
11937	La Cruz	Ciudad de México	26	Colonia	07070
11938	Dinamita	Ciudad de México	26	Colonia	07070
11939	Martín Carrera	Ciudad de México	26	Colonia	07070
11940	Gabriel Hernández	Ciudad de México	26	Colonia	07080
11941	Ampliación Gabriel Hernández	Ciudad de México	26	Colonia	07089
11942	C.T.M. Atzacoalco	Ciudad de México	26	Colonia	07090
11943	C.T.M. El Risco	Ciudad de México	26	Colonia	07090
11944	Cuautepec Barrio Alto	Ciudad de México	26	Colonia	07100
11945	San Miguel	Ciudad de México	26	Colonia	07100
11946	San Antonio	Ciudad de México	26	Colonia	07109
11947	Lomas de Cuautepec	Ciudad de México	26	Colonia	07110
11948	Malacates	Ciudad de México	26	Colonia	07119
11949	Ampliación Malacates	Ciudad de México	26	Colonia	07119
11950	Compositores Mexicanos	Ciudad de México	26	Colonia	07130
11951	El Tepetatal	Ciudad de México	26	Colonia	07130
11952	Arboledas	Ciudad de México	26	Colonia	07140
11953	Ampliación Arboledas	Ciudad de México	26	Colonia	07140
11954	Forestal	Ciudad de México	26	Colonia	07140
11955	Forestal I	Ciudad de México	26	Colonia	07140
11956	Forestal II	Ciudad de México	26	Colonia	07144
11957	La Lengüeta	Ciudad de México	26	Colonia	07144
11958	Parque Metropolitano	Ciudad de México	26	Colonia	07149
11959	Juventino Rosas	Ciudad de México	26	Colonia	07150
11960	La Casilda	Ciudad de México	26	Colonia	07150
11961	Loma La Palma	Ciudad de México	26	Colonia	07160
11962	Luis Donaldo Colosio	Ciudad de México	26	Colonia	07164
11963	Tlacaélel	Ciudad de México	26	Colonia	07164
11964	Graciano Sánchez	Ciudad de México	26	Colonia	07164
11965	Prados de Cuautepec	Ciudad de México	26	Colonia	07164
11966	Palmatitla	Ciudad de México	26	Colonia	07170
11967	Cocoyotes	Ciudad de México	26	Colonia	07180
11968	General Felipe Berriozabal	Ciudad de México	26	Colonia	07180
11969	Ampliación Cocoyotes	Ciudad de México	26	Colonia	07180
11970	6 de Junio	Ciudad de México	26	Colonia	07183
11971	Vista Hermosa	Ciudad de México	26	Colonia	07187
11972	Tlalpexco	Ciudad de México	26	Colonia	07188
11973	Ahuehuetes	Ciudad de México	26	Colonia	07189
11974	Valle de Madero	Ciudad de México	26	Colonia	07190
11975	Del Carmen	Ciudad de México	26	Colonia	07199
11976	Cuautepec de Madero	Ciudad de México	26	Colonia	07200
11977	Del Bosque	Ciudad de México	26	Colonia	07207
11978	Guadalupe Victoria Cuautepec	Ciudad de México	26	Colonia	07209
11979	Chalma de Guadalupe	Ciudad de México	26	Colonia	07210
11980	Ampliación Chalma de Guadalupe	Ciudad de México	26	Colonia	07214
11981	Castillo Chico	Ciudad de México	26	Colonia	07220
11982	Castillo Grande	Ciudad de México	26	Colonia	07220
11983	Ampliación Castillo Grande	Ciudad de México	26	Colonia	07224
11984	Zona Escolar	Ciudad de México	26	Colonia	07230
11985	Zona Escolar Oriente	Ciudad de México	26	Colonia	07239
11986	El Arbolillo	Ciudad de México	26	Colonia	07240
11987	Benito Juárez	Ciudad de México	26	Colonia	07250
11988	Ampliación Benito Juárez	Ciudad de México	26	Colonia	07259
11989	Solidaridad Nacional	Ciudad de México	26	Colonia	07268
11990	Residencial Acueducto de Guadalupe	Ciudad de México	26	Colonia	07270
11991	Acueducto de Guadalupe	Ciudad de México	26	Colonia	07279
11992	Jorge Negrete	Ciudad de México	26	Colonia	07280
11993	La Pastora	Ciudad de México	26	Colonia	07290
11994	Lindavista Norte	Ciudad de México	26	Colonia	07300
11995	Lindavista Sur	Ciudad de México	26	Colonia	07300
11996	Candelaria Ticomán	Ciudad de México	26	Barrio	07310
11997	La Purísima Ticomán	Ciudad de México	26	Barrio	07320
11998	Residencial la Escalera	Ciudad de México	26	Colonia	07320
11999	Santa María Ticomán	Ciudad de México	26	Colonia	07330
12000	La Laguna Ticomán	Ciudad de México	26	Barrio	07340
12001	San José Ticomán	Ciudad de México	26	Colonia	07340
12002	Guadalupe Ticomán	Ciudad de México	26	Barrio	07350
12003	San Juan y Guadalupe Ticomán	Ciudad de México	26	Barrio	07350
12004	San Rafael Ticomán	Ciudad de México	26	Barrio	07359
12005	San Pedro Zacatenco	Ciudad de México	26	Colonia	07360
12006	Residencial Zacatenco	Ciudad de México	26	Colonia	07369
12007	Capultitlan	Ciudad de México	26	Colonia	07370
12008	Maximino Ávila Camacho	Ciudad de México	26	Colonia	07380
12009	Tlacamaca	Ciudad de México	26	Colonia	07380
12010	Salvador Díaz Mirón	Ciudad de México	26	Colonia	07400
12011	Juan González Romero	Ciudad de México	26	Colonia	07410
12012	Villa Hermosa	Ciudad de México	26	Colonia	07410
12013	El Coyol	Ciudad de México	26	Colonia	07420
12014	Nueva Atzacoalco	Ciudad de México	26	Colonia	07420
12015	Del Obrero	Ciudad de México	26	Colonia	07430
12016	Vasco de Quiroga	Ciudad de México	26	Colonia	07440
12017	DM Nacional	Ciudad de México	26	Colonia	07450
12018	Ferrocarrilera	Ciudad de México	26	Colonia	07455
12019	LI Legislatura	Ciudad de México	26	Colonia	07456
12020	Granjas Modernas	Ciudad de México	26	Colonia	07460
12021	Constitución de la República	Ciudad de México	26	Colonia	07469
12022	Ampliación San Juan de Aragón	Ciudad de México	26	Colonia	07470
12023	San Pedro El Chico	Ciudad de México	26	Colonia	07480
12024	La Pradera	Ciudad de México	26	Colonia	07500
12025	Pradera II Sección	Ciudad de México	26	Colonia	07509
12026	San Felipe de Jesús	Ciudad de México	26	Colonia	07510
12027	25 de Julio	Ciudad de México	26	Colonia	07520
12028	Campestre Aragón	Ciudad de México	26	Colonia	07530
12029	La Esmeralda	Ciudad de México	26	Colonia	07540
12030	Providencia	Ciudad de México	26	Colonia	07550
12031	Ampliación Providencia	Ciudad de México	26	Colonia	07560
12032	Villa de Aragón	Ciudad de México	26	Colonia	07570
12033	Ampliación Casas Alemán	Ciudad de México	26	Colonia	07580
12034	Progreso Nacional	Ciudad de México	26	Colonia	07600
12035	Santa Rosa	Ciudad de México	26	Colonia	07620
12036	San José de la Escalera	Ciudad de México	26	Colonia	07630
12037	Santiago Atepetlac	Ciudad de México	26	Colonia	07640
12038	Ampliación Progreso Nacional	Ciudad de México	26	Colonia	07650
12039	Guadalupe Proletaria	Ciudad de México	26	Colonia	07670
12040	Ampliación Guadalupe Proletaria	Ciudad de México	26	Colonia	07680
12041	Nueva Industrial Vallejo	Ciudad de México	26	Colonia	07700
12042	Siete Maravillas	Ciudad de México	26	Colonia	07707
12043	Torres Lindavista	Ciudad de México	26	Colonia	07708
12044	Lindavista Vallejo I Sección	Ciudad de México	26	Colonia	07720
12045	Churubusco Tepeyac	Ciudad de México	26	Colonia	07730
12046	Montevideo	Ciudad de México	26	Colonia	07730
12047	San Bartolo Atepehuacan	Ciudad de México	26	Colonia	07730
12048	Planetario Lindavista	Ciudad de México	26	Colonia	07739
12049	Valle del Tepeyac	Ciudad de México	26	Colonia	07740
12050	Nueva Vallejo	Ciudad de México	26	Colonia	07750
12051	Lindavista Vallejo III Sección	Ciudad de México	26	Colonia	07754
12052	Lindavista Vallejo II Sección	Ciudad de México	26	Colonia	07755
12053	Magdalena de las Salinas	Ciudad de México	26	Colonia	07760
12054	Panamericana	Ciudad de México	26	Colonia	07770
12055	Ampliación Panamericana	Ciudad de México	26	Colonia	07770
12056	Defensores de La República	Ciudad de México	26	Colonia	07780
12057	Héroe de Nacozari	Ciudad de México	26	Colonia	07780
12058	Guadalupe Victoria	Ciudad de México	26	Colonia	07790
12059	Vallejo Poniente	Ciudad de México	26	Colonia	07790
12060	Industrial	Ciudad de México	26	Colonia	07800
12061	Estrella	Ciudad de México	26	Colonia	07810
12062	Aragón Inguarán	Ciudad de México	26	Colonia	07820
12063	Tres Estrellas	Ciudad de México	26	Colonia	07820
12064	Gertrudis Sánchez 1a Sección	Ciudad de México	26	Colonia	07830
12065	Gertrudis Sánchez 3a Sección	Ciudad de México	26	Colonia	07838
12066	Gertrudis Sánchez 2a Sección	Ciudad de México	26	Colonia	07839
12067	Guadalupe Tepeyac	Ciudad de México	26	Colonia	07840
12068	7 de Noviembre	Ciudad de México	26	Colonia	07840
12069	Bondojito	Ciudad de México	26	Colonia	07850
12070	Faja de Oro	Ciudad de México	26	Colonia	07850
12071	Ampliación Emiliano Zapata	Ciudad de México	26	Colonia	07858
12072	Ampliación Mártires de Río Blanco	Ciudad de México	26	Colonia	07859
12073	La Joyita	Ciudad de México	26	Colonia	07860
12074	Tablas de San Agustín	Ciudad de México	26	Colonia	07860
12075	Belisario Domínguez	Ciudad de México	26	Colonia	07869
12076	Guadalupe Insurgentes	Ciudad de México	26	Colonia	07870
12077	Vallejo	Ciudad de México	26	Colonia	07870
12078	Mártires de Río Blanco	Ciudad de México	26	Colonia	07880
12079	Emiliano Zapata	Ciudad de México	26	Colonia	07889
12080	Nueva Tenochtitlán	Ciudad de México	26	Colonia	07890
12081	Cuchilla La Joya	Ciudad de México	26	Colonia	07890
12082	La Joya	Ciudad de México	26	Colonia	07890
12083	La Malinche	Ciudad de México	26	Colonia	07899
12084	Cuchilla del Tesoro	Ciudad de México	26	Colonia	07900
12085	San Juan de Aragón VII Sección	Ciudad de México	26	Colonia	07910
12086	San Juan de Aragón VI Sección	Ciudad de México	26	Colonia	07918
12087	Ex Ejido San Juan de Aragón Sector 32	Ciudad de México	26	Colonia	07919
12088	El Olivo	Ciudad de México	26	Colonia	07920
12089	San Juan de Aragón	Ciudad de México	26	Colonia	07920
12090	Indeco	Ciudad de México	26	Colonia	07930
12091	Héroes de Chapultepec	Ciudad de México	26	Colonia	07939
12092	Ex Ejido San Juan de Aragón Sector 33	Ciudad de México	26	Colonia	07940
12093	San Juan de Aragón	Ciudad de México	26	Pueblo	07950
12094	Héroes de Cerro Prieto	Ciudad de México	26	Colonia	07960
12095	Ex Escuela de Tiro	Ciudad de México	26	Colonia	07960
12096	Fernando Casas Alemán	Ciudad de México	26	Colonia	07960
12097	San Juan de Aragón I Sección	Ciudad de México	26	Colonia	07969
12098	San Juan de Aragón II Sección	Ciudad de México	26	Colonia	07969
12099	San Juan de Aragón III Sección	Ciudad de México	26	Colonia	07970
12100	San Juan de Aragón IV Sección	Ciudad de México	26	Colonia	07979
12101	San Juan de Aragón V Sección	Ciudad de México	26	Colonia	07979
12102	Narciso Bassols	Ciudad de México	26	Colonia	07980
12103	C.T.M. Aragón	Ciudad de México	26	Colonia	07990
12104	Gabriel Ramos Millán Sección Bramadero	Ciudad de México	27	Colonia	08000
12105	Ex-Ejido de La Magdalena Mixiuhca	Ciudad de México	27	Colonia	08010
12106	Ampliación Gabriel Ramos Millán	Ciudad de México	27	Colonia	08020
12107	Gabriel Ramos Millán Sección Cuchilla	Ciudad de México	27	Colonia	08030
12108	Carlos Zapata Vela	Ciudad de México	27	Colonia	08040
12109	Agrícola Pantitlán	Ciudad de México	27	Colonia	08100
12110	Viaducto Piedad	Ciudad de México	27	Colonia	08200
12111	Nueva Santa Anita	Ciudad de México	27	Colonia	08210
12112	San Pedro	Ciudad de México	27	Barrio	08220
12113	San Francisco Xicaltongo	Ciudad de México	27	Barrio	08230
12114	Santiago Norte	Ciudad de México	27	Barrio	08240
12115	Santa Anita	Ciudad de México	27	Colonia	08300
12116	La Cruz	Ciudad de México	27	Colonia	08310
12117	Fraccionamiento Coyuya	Ciudad de México	27	Colonia	08320
12118	Granjas México	Ciudad de México	27	Colonia	08400
12119	Cuchilla Agrícola Oriental	Ciudad de México	27	Colonia	08420
12120	Agrícola Oriental	Ciudad de México	27	Colonia	08500
12121	El Rodeo	Ciudad de México	27	Colonia	08510
12122	La Asunción	Ciudad de México	27	Barrio	08600
12123	Zapotla	Ciudad de México	27	Barrio	08610
12124	Los Reyes	Ciudad de México	27	Barrio	08620
12125	San Miguel	Ciudad de México	27	Barrio	08650
12126	Juventino Rosas	Ciudad de México	27	Colonia	08700
12127	Tlazintla	Ciudad de México	27	Colonia	08710
12128	Gabriel Ramos Millán Sección Tlacotal	Ciudad de México	27	Colonia	08720
12129	Gabriel Ramos Millán	Ciudad de México	27	Colonia	08730
12130	INPI Picos	Ciudad de México	27	Colonia	08760
12131	Los Picos de Iztacalco Sección 2A	Ciudad de México	27	Colonia	08760
12132	Los Picos de Iztacalco Sección 1B	Ciudad de México	27	Colonia	08760
12133	Los Picos de Iztacalco Sección 1A	Ciudad de México	27	Colonia	08770
12134	Santiago Sur	Ciudad de México	27	Barrio	08800
12135	Reforma Iztaccíhuatl Norte	Ciudad de México	27	Colonia	08810
12136	Militar Marte	Ciudad de México	27	Colonia	08830
12137	Reforma Iztaccíhuatl Sur	Ciudad de México	27	Colonia	08840
12138	INFONAVIT Iztacalco	Ciudad de México	27	Colonia	08900
12139	Santa Cruz	Ciudad de México	27	Barrio	08910
12140	Jardines Tecma	Ciudad de México	27	Colonia	08920
12141	Campamento 2 de Octubre	Ciudad de México	27	Colonia	08930
12142	La Asunción	Ciudad de México	28	Barrio	09000
12143	San Ignacio	Ciudad de México	28	Barrio	09000
12144	San José	Ciudad de México	28	Barrio	09000
12145	San Lucas	Ciudad de México	28	Barrio	09000
12146	San Pablo	Ciudad de México	28	Barrio	09000
12147	San Pedro	Ciudad de México	28	Barrio	09000
12148	Santa Bárbara	Ciudad de México	28	Barrio	09000
12149	Real del Moral	Ciudad de México	28	Colonia	09010
12150	Dr. Alfonso Ortiz Tirado	Ciudad de México	28	Colonia	09020
12151	Paseos de Churubusco	Ciudad de México	28	Colonia	09030
12152	Central de Abasto	Ciudad de México	28	Colonia	09040
12153	Escuadrón 201	Ciudad de México	28	Colonia	09060
12154	Sector Popular	Ciudad de México	28	Colonia	09060
12155	Granjas de San Antonio	Ciudad de México	28	Colonia	09070
12156	Cacama	Ciudad de México	28	Colonia	09080
12157	Unidad Modelo	Ciudad de México	28	Colonia	09089
12158	Héroes de Churubusco	Ciudad de México	28	Colonia	09090
12159	Mexicaltzingo	Ciudad de México	28	Pueblo	09099
12160	Juan Escutia	Ciudad de México	28	Colonia	09100
12161	San Lorenzo Xicotencatl	Ciudad de México	28	Pueblo	09130
12162	Santa Martha Acatitla Norte	Ciudad de México	28	Colonia	09140
12163	Ermita Zaragoza	Ciudad de México	28	Colonia	09180
12164	Unidad Vicente Guerrero	Ciudad de México	28	Colonia	09200
12165	Chinampac de Juárez	Ciudad de México	28	Colonia	09208
12166	Renovación	Ciudad de México	28	Colonia	09209
12167	Tepalcates	Ciudad de México	28	Colonia	09210
12168	Unidad Ejército Constitucionalista	Ciudad de México	28	Colonia	09220
12169	Álvaro Obregón	Ciudad de México	28	Colonia	09230
12170	Ejército de Oriente	Ciudad de México	28	Colonia	09230
12171	El Paraíso	Ciudad de México	28	Colonia	09230
12172	José María Morelos y Pavón	Ciudad de México	28	Colonia	09230
12173	Ejército de Oriente Zona Peñón	Ciudad de México	28	Colonia	09239
12174	Progresista	Ciudad de México	28	Colonia	09240
12175	La Regadera	Ciudad de México	28	Colonia	09250
12176	Constitución de 1917	Ciudad de México	28	Colonia	09260
12177	Colonial Iztapalapa	Ciudad de México	28	Colonia	09270
12178	Jacarandas	Ciudad de México	28	Colonia	09280
12179	Santa Cruz Meyehualco	Ciudad de México	28	Colonia	09290
12180	Guadalupe del Moral	Ciudad de México	28	Colonia	09300
12181	Leyes de Reforma 1a Sección	Ciudad de México	28	Colonia	09310
12182	Leyes de Reforma 2a Sección	Ciudad de México	28	Colonia	09310
12183	Leyes de Reforma 3a Sección	Ciudad de México	28	Colonia	09310
12184	Cuchilla del Moral	Ciudad de México	28	Colonia	09319
12185	Sideral	Ciudad de México	28	Colonia	09320
12186	Albarrada	Ciudad de México	28	Colonia	09350
12187	Eva Sámano de López Mateos	Ciudad de México	28	Colonia	09359
12188	San Miguel	Ciudad de México	28	Barrio	09360
12189	Ampliación San Miguel	Ciudad de México	28	Colonia	09360
12190	San Juanico Nextipac	Ciudad de México	28	Pueblo	09400
12191	El Sifón	Ciudad de México	28	Colonia	09400
12192	Aculco	Ciudad de México	28	Pueblo	09410
12193	Jardines de Churubusco	Ciudad de México	28	Colonia	09410
12194	Magdalena Atlazolpa	Ciudad de México	28	Pueblo	09410
12195	San José Aculco	Ciudad de México	28	Colonia	09410
12196	Los Picos VI-B	Ciudad de México	28	Colonia	09420
12197	Nueva Rosita	Ciudad de México	28	Colonia	09420
12198	Purísima Atlazolpa	Ciudad de México	28	Colonia	09429
12199	Apatlaco	Ciudad de México	28	Colonia	09430
12200	El Triunfo	Ciudad de México	28	Colonia	09430
12201	Ampliación El Triunfo	Ciudad de México	28	Colonia	09438
12202	El Retoño	Ciudad de México	28	Colonia	09440
12203	San Andrés Tetepilco	Ciudad de México	28	Colonia	09440
12204	Zacahuitzco	Ciudad de México	28	Colonia	09440
12205	Banjidal	Ciudad de México	28	Colonia	09450
12206	Justo Sierra	Ciudad de México	28	Colonia	09460
12207	Sinatel	Ciudad de México	28	Colonia	09470
12208	Ampliación Sinatel	Ciudad de México	28	Colonia	09479
12209	El Prado	Ciudad de México	28	Colonia	09480
12210	Santa María Aztahuacán	Ciudad de México	28	Pueblo	09500
12211	Santa María Aztahuacán Ampliación	Ciudad de México	28	Colonia	09500
12212	Santa Martha Acatitla	Ciudad de México	28	Pueblo	09510
12213	El Edén	Ciudad de México	28	Colonia	09520
12214	San Sebastián Tecoloxtitla	Ciudad de México	28	Pueblo	09520
12215	Santa Martha Acatitla Sur	Ciudad de México	28	Colonia	09530
12216	Monte Alban	Ciudad de México	28	Colonia	09550
12217	Paraje Zacatepec	Ciudad de México	28	Colonia	09560
12218	Santa María Aztahuacán	Ciudad de México	28	Colonia	09570
12219	Ejército de Agua Prieta	Ciudad de México	28	Colonia	09578
12220	Santiago Acahualtepec	Ciudad de México	28	Pueblo	09600
12221	Santiago Acahualtepec 1ra. Ampliación	Ciudad de México	28	Colonia	09608
12222	Santiago Acahualtepec 2a. Ampliación	Ciudad de México	28	Colonia	09609
12223	Lomas de Zaragoza	Ciudad de México	28	Colonia	09620
12224	San Miguel Teotongo Sección Corrales	Ciudad de México	28	Colonia	09630
12225	San Miguel Teotongo Sección Acorralado	Ciudad de México	28	Colonia	09630
12226	San Miguel Teotongo Sección Avisadero	Ciudad de México	28	Colonia	09630
12227	San Miguel Teotongo Sección Capilla	Ciudad de México	28	Colonia	09630
12228	San Miguel Teotongo Sección Guadalupe	Ciudad de México	28	Colonia	09630
12229	San Miguel Teotongo Sección Iztlahuaca	Ciudad de México	28	Colonia	09630
12230	San Miguel Teotongo Sección Jardines	Ciudad de México	28	Colonia	09630
12231	San Miguel Teotongo Sección La Cruz	Ciudad de México	28	Colonia	09630
12232	San Miguel Teotongo Sección Loma Alta	Ciudad de México	28	Colonia	09630
12233	San Miguel Teotongo Sección Mercedes	Ciudad de México	28	Colonia	09630
12234	San Miguel Teotongo Sección Palmitas	Ciudad de México	28	Colonia	09630
12235	San Miguel Teotongo Sección Puente	Ciudad de México	28	Colonia	09630
12236	San Miguel Teotongo Sección Ranchito	Ciudad de México	28	Colonia	09630
12237	San Miguel Teotongo Sección Rancho Bajo	Ciudad de México	28	Colonia	09630
12238	San Miguel Teotongo Sección Torres	Ciudad de México	28	Colonia	09630
12239	Campestre Potrero	Ciudad de México	28	Colonia	09637
12240	Ampliación Emiliano Zapata	Ciudad de México	28	Colonia	09638
12241	Lomas de la Estancia	Ciudad de México	28	Colonia	09640
12242	Xalpa	Ciudad de México	28	Colonia	09640
12243	San Pablo	Ciudad de México	28	Colonia	09648
12244	Citlalli	Ciudad de México	28	Colonia	09660
12245	Palmitas	Ciudad de México	28	Colonia	09670
12246	Tenorios	Ciudad de México	28	Colonia	09680
12247	Barranca de Guadalupe	Ciudad de México	28	Colonia	09689
12248	Iztlahuacán	Ciudad de México	28	Colonia	09690
12249	Miravalles	Ciudad de México	28	Colonia	09696
12250	Miguel de La Madrid Hurtado	Ciudad de México	28	Colonia	09698
12251	Buenavista	Ciudad de México	28	Colonia	09700
12252	Carlos Hank Gonzalez	Ciudad de México	28	Colonia	09700
12253	Desarrollo Urbano Quetzalcoatl	Ciudad de México	28	Colonia	09700
12254	Santa Cruz Meyehualco	Ciudad de México	28	Pueblo	09700
12255	Degollado	Ciudad de México	28	Colonia	09704
12256	Degollado - Mexicatlalli	Ciudad de México	28	Colonia	09705
12257	San José Buenavista	Ciudad de México	28	Colonia	09706
12258	Mixcoatl	Ciudad de México	28	Colonia	09708
12259	Lomas de Santa Cruz	Ciudad de México	28	Colonia	09709
12260	Los Ángeles Apanoaya	Ciudad de México	28	Colonia	09710
12261	Francisco Villa	Ciudad de México	28	Colonia	09720
12262	La Era	Ciudad de México	28	Colonia	09720
12263	Reforma Política	Ciudad de México	28	Colonia	09730
12264	Presidentes de México	Ciudad de México	28	Colonia	09740
12265	Insurgentes	Ciudad de México	28	Colonia	09750
12266	La Polvorilla	Ciudad de México	28	Colonia	09750
12267	Las Peñas	Ciudad de México	28	Colonia	09750
12268	Consejo Agrarista Mexicano	Ciudad de México	28	Colonia	09760
12269	El Triángulo	Ciudad de México	28	Colonia	09769
12270	Puente Blanco	Ciudad de México	28	Colonia	09770
12271	Año de Juárez	Ciudad de México	28	Colonia	09780
12272	Lomas de San Lorenzo	Ciudad de México	28	Colonia	09780
12273	San Lorenzo Tezonco	Ciudad de México	28	Pueblo	09790
12274	Culhuacán	Ciudad de México	28	Pueblo	09800
12275	El Mirador	Ciudad de México	28	Colonia	09800
12276	Estrella Culhuacán	Ciudad de México	28	Colonia	09800
12277	Fuego Nuevo	Ciudad de México	28	Colonia	09800
12278	San Antonio Culhuacán	Ciudad de México	28	Colonia	09800
12279	San Antonio Culhuacán	Ciudad de México	28	Barrio	09800
12280	San Simón Culhuacán	Ciudad de México	28	Barrio	09800
12281	Tula	Ciudad de México	28	Barrio	09800
12282	Valle de Luces	Ciudad de México	28	Colonia	09800
12283	Granjas Esmeralda	Ciudad de México	28	Colonia	09810
12284	Los Cipreses	Ciudad de México	28	Colonia	09810
12285	Minerva	Ciudad de México	28	Colonia	09810
12286	Progreso del Sur	Ciudad de México	28	Colonia	09810
12287	Valle del Sur	Ciudad de México	28	Colonia	09819
12288	El Santuario	Ciudad de México	28	Colonia	09820
12289	Estrella del Sur	Ciudad de México	28	Colonia	09820
12290	Ricardo Flores Magón	Ciudad de México	28	Colonia	09820
12291	Santa Isabel Industrial	Ciudad de México	28	Colonia	09820
12292	Ampliación Ricardo Flores Magón	Ciudad de México	28	Colonia	09828
12293	Ampliación El Santuario	Ciudad de México	28	Colonia	09829
12294	El Manto	Ciudad de México	28	Colonia	09830
12295	El Molino	Ciudad de México	28	Colonia	09830
12296	Lomas El Manto	Ciudad de México	28	Colonia	09830
12297	Los Ángeles	Ciudad de México	28	Colonia	09830
12298	Paraje San Juan	Ciudad de México	28	Colonia	09830
12299	San Miguel 8va. Ampliación	Ciudad de México	28	Colonia	09837
12300	Plan de Iguala	Ciudad de México	28	Colonia	09838
12301	Ampliación Paraje San Juan	Ciudad de México	28	Colonia	09839
12302	San Juan Joya	Ciudad de México	28	Colonia	09839
12303	Los Reyes Culhuacán	Ciudad de México	28	Pueblo	09840
12304	Ampliación Los Reyes	Ciudad de México	28	Colonia	09849
12305	San Juan Xalpa	Ciudad de México	28	Colonia	09850
12306	San Nicolás Tolentino	Ciudad de México	28	Colonia	09850
12307	Santa María del Monte	Ciudad de México	28	Colonia	09850
12308	Estado de Veracruz	Ciudad de México	28	Colonia	09856
12309	Ampliación Veracruzana	Ciudad de México	28	Colonia	09856
12310	Paraje San Juan Cerro	Ciudad de México	28	Colonia	09858
12311	Benito Juárez	Ciudad de México	28	Colonia	09859
12312	Bellavista	Ciudad de México	28	Colonia	09860
12313	Ampliación Bellavista	Ciudad de México	28	Colonia	09860
12314	Casa Blanca	Ciudad de México	28	Colonia	09860
12315	Cerro de La Estrella	Ciudad de México	28	Colonia	09860
12316	Parque Nacional Cerro  de la Estrella	Ciudad de México	28	Colonia	09860
12317	El Rodeo	Ciudad de México	28	Colonia	09860
12318	San Juan Estrella	Ciudad de México	28	Colonia	09868
12319	12 de Diciembre	Ciudad de México	28	Colonia	09870
12320	San Andrés Tomatlán	Ciudad de México	28	Colonia	09870
12321	San Andrés Tomatlán	Ciudad de México	28	Pueblo	09870
12322	Santa María Tomatlán	Ciudad de México	28	Pueblo	09870
12323	El Vergel	Ciudad de México	28	Colonia	09880
12324	Granjas Estrella	Ciudad de México	28	Colonia	09880
12325	Lomas Estrella	Ciudad de México	28	Colonia	09890
12326	Carlos Jonguitud Barrios	Ciudad de México	28	Colonia	09897
12327	Guadalupe	Ciudad de México	28	Barrio	09900
12328	San Antonio	Ciudad de México	28	Barrio	09900
12329	San Lorenzo	Ciudad de México	28	Barrio	09900
12330	La Esperanza	Ciudad de México	28	Colonia	09910
12331	José López Portillo	Ciudad de México	28	Colonia	09920
12332	El Rosario	Ciudad de México	28	Colonia	09930
12333	Jardines de San Lorenzo Tezonco	Ciudad de México	28	Colonia	09940
12334	Celoalliotli	Ciudad de México	28	Colonia	09960
12335	USCOVI	Ciudad de México	28	Colonia	09960
12336	El Molino Tezonco	Ciudad de México	28	Colonia	09960
12337	Allapetlalli	Ciudad de México	28	Colonia	09960
12338	La Planta	Ciudad de México	28	Colonia	09960
12339	Cananea	Ciudad de México	28	Colonia	09969
12340	Valle de San Lorenzo	Ciudad de México	28	Colonia	09970
12341	Lomas Quebradas	Ciudad de México	29	Colonia	10000
12342	La Malinche	Ciudad de México	29	Colonia	10010
12343	San Bartolo Ameyalco	Ciudad de México	29	Colonia	10010
12344	Cuauhtémoc	Ciudad de México	29	Colonia	10020
12345	El Maestro	Ciudad de México	29	Colonia	10130
12346	San Jerónimo Lídice	Ciudad de México	29	Colonia	10200
12347	San Bernabé Ocotepec	Ciudad de México	29	Pueblo	10300
12348	El Tanque	Ciudad de México	29	Colonia	10320
12349	Las Cruces	Ciudad de México	29	Colonia	10330
12350	Los Padres	Ciudad de México	29	Colonia	10340
12351	Lomas de San Bernabé	Ciudad de México	29	Colonia	10350
12352	Huayatla	Ciudad de México	29	Colonia	10360
12353	Ampliación Potrerillo	Ciudad de México	29	Colonia	10368
12354	Ampliación Lomas de San Bernabé	Ciudad de México	29	Colonia	10369
3811	Ceceña	Tijuana	16	Colonia	22105
12355	Tierra Unida	Ciudad de México	29	Colonia	10369
12356	Palmas	Ciudad de México	29	Colonia	10370
12357	Atacaxco	Ciudad de México	29	Colonia	10378
12358	Vista Hermosa	Ciudad de México	29	Colonia	10379
12359	Barros Sierra	Ciudad de México	29	Colonia	10380
12360	San Jerónimo Aculco	Ciudad de México	29	Colonia	10400
12361	Barrio San Francisco	Ciudad de México	29	Colonia	10500
12362	Barranca Seca	Ciudad de México	29	Colonia	10580
12363	El Rosal	Ciudad de México	29	Colonia	10600
12364	El Toro	Ciudad de México	29	Colonia	10610
12365	Potrerillo	Ciudad de México	29	Colonia	10620
6304	El Ocotal		29	Campamento	10630
12366	El Ocotal		29	Campamento	10630
12367	La Carbonera	Ciudad de México	29	Colonia	10640
12368	Pueblo Nuevo Alto	Ciudad de México	29	Colonia	10640
12369	Pueblo Nuevo Bajo	Ciudad de México	29	Colonia	10640
12370	El Ermitaño	Ciudad de México	29	Colonia	10660
12371	Héroes de Padierna	Ciudad de México	29	Colonia	10700
12372	Santa Teresa	Ciudad de México	29	Colonia	10710
12373	La Cruz	Ciudad de México	29	Colonia	10800
12374	San Francisco	Ciudad de México	29	Colonia	10810
12375	La Guadalupe	Ciudad de México	29	Colonia	10820
12376	La Concepción	Ciudad de México	29	Colonia	10830
12377	Las Calles	Ciudad de México	29	Barrio	10840
12378	Plazuela del Pedregal	Ciudad de México	29	Barrio	10840
12379	San Nicolás Totolapan	Ciudad de México	29	Pueblo	10900
12380	La Magdalena	Ciudad de México	29	Pueblo	10910
12381	Las Huertas	Ciudad de México	29	Colonia	10920
12382	Tierra Colorada	Ciudad de México	29	Campamento	10926
12383	Lomas de Chapultepec I Sección	Ciudad de México	30	Colonia	11000
12384	Lomas de Chapultepec VIII Sección	Ciudad de México	30	Colonia	11000
12385	Lomas de Chapultepec II Sección	Ciudad de México	30	Colonia	11000
12386	Lomas de Chapultepec III Sección	Ciudad de México	30	Colonia	11000
12387	Lomas de Chapultepec IV Sección	Ciudad de México	30	Colonia	11000
12388	Lomas de Chapultepec V Sección	Ciudad de México	30	Colonia	11000
12389	Lomas de Chapultepec VI Sección	Ciudad de México	30	Colonia	11000
12390	Lomas de Chapultepec VII Sección	Ciudad de México	30	Colonia	11000
12391	Molino del Rey	Ciudad de México	30	Colonia	11040
12392	Bosque de Chapultepec II Sección	Ciudad de México	30	Equipamiento	11100
12393	Bosque de Chapultepec III Sección	Ciudad de México	30	Equipamiento	11100
12394	Lomas Hermosa	Ciudad de México	30	Colonia	11200
12395	Lomas de Sotelo	Ciudad de México	30	Colonia	11200
12396	San Lorenzo Tlaltenango	Ciudad de México	30	Pueblo	11210
12397	Periodista	Ciudad de México	30	Colonia	11220
12398	Argentina Poniente	Ciudad de México	30	Colonia	11230
12399	Ignacio Manuel Altamirano	Ciudad de México	30	Colonia	11240
12400	10 de Abril	Ciudad de México	30	Colonia	11250
12401	México Nuevo	Ciudad de México	30	Colonia	11260
12402	San Joaquín	Ciudad de México	30	Colonia	11260
12403	Argentina Antigua	Ciudad de México	30	Colonia	11270
12404	Torre Blanca	Ciudad de México	30	Colonia	11280
12405	Ampliación Torre Blanca	Ciudad de México	30	Colonia	11289
12406	Huíchapan	Ciudad de México	30	Colonia	11290
12407	San Diego Ocoyoacac	Ciudad de México	30	Colonia	11290
12408	Verónica Anzures	Ciudad de México	30	Colonia	11300
12409	Mariano Escobedo	Ciudad de México	30	Colonia	11310
12410	Anáhuac I Sección	Ciudad de México	30	Colonia	11320
12411	Anáhuac II Sección	Ciudad de México	30	Colonia	11320
12412	Un Hogar Para Nosotros	Ciudad de México	30	Colonia	11330
12413	Santo Tomas	Ciudad de México	30	Colonia	11340
12414	Plutarco Elías Calles	Ciudad de México	30	Colonia	11350
12415	Agricultura	Ciudad de México	30	Colonia	11360
12416	Tlaxpana	Ciudad de México	30	Colonia	11370
12417	Popotla	Ciudad de México	30	Colonia	11400
12418	Legaria	Ciudad de México	30	Colonia	11410
12419	Tacuba	Ciudad de México	30	Pueblo	11410
12420	Nextitla	Ciudad de México	30	Colonia	11420
12421	Pensil Norte	Ciudad de México	30	Colonia	11430
12422	Ventura Pérez de Alva	Ciudad de México	30	Colonia	11430
12423	Reforma Pensil	Ciudad de México	30	Colonia	11440
12424	San Juanico	Ciudad de México	30	Colonia	11440
12425	Ahuehuetes Anáhuac	Ciudad de México	30	Colonia	11450
12426	Modelo Pensil	Ciudad de México	30	Colonia	11450
12427	Peralitos	Ciudad de México	30	Colonia	11450
12428	Dos Lagos	Ciudad de México	30	Colonia	11460
12429	Lago Norte	Ciudad de México	30	Colonia	11460
12430	Lago Sur	Ciudad de México	30	Colonia	11460
12431	Los Manzanos	Ciudad de México	30	Colonia	11460
12432	5 de Mayo	Ciudad de México	30	Colonia	11470
12433	Deportivo Pensil	Ciudad de México	30	Colonia	11470
12434	Francisco I Madero	Ciudad de México	30	Colonia	11480
12435	Popo	Ciudad de México	30	Colonia	11480
12436	Ampliación Popo	Ciudad de México	30	Colonia	11489
2874	Ejido Orizaba	Mexicali	13	Colonia	21160
12437	Cuauhtémoc Pensil	Ciudad de México	30	Colonia	11490
12438	Pensil Sur	Ciudad de México	30	Colonia	11490
12439	Irrigación	Ciudad de México	30	Colonia	11500
12440	Polanco I Sección	Ciudad de México	30	Colonia	11510
12441	Granada	Ciudad de México	30	Colonia	11520
12442	Ampliación Granada	Ciudad de México	30	Colonia	11529
12443	Polanco II Sección	Ciudad de México	30	Colonia	11530
12444	Polanco III Sección	Ciudad de México	30	Colonia	11540
12445	Polanco IV Sección	Ciudad de México	30	Colonia	11550
12446	Polanco V Sección	Ciudad de México	30	Colonia	11560
12447	Bosque de Chapultepec I Sección	Ciudad de México	30	Equipamiento	11580
12448	Anzures	Ciudad de México	30	Colonia	11590
12449	Residencial Militar	Ciudad de México	30	Colonia	11600
12450	Manuel Avila Camacho	Ciudad de México	30	Colonia	11610
12451	Campo Militar 1	Ciudad de México	30	Equipamiento	11619
12452	Reforma Social	Ciudad de México	30	Colonia	11650
12453	Bosque de las Lomas	Ciudad de México	30	Colonia	11700
12454	Escandón I Sección	Ciudad de México	30	Colonia	11800
12455	Escandón II Sección	Ciudad de México	30	Colonia	11800
12456	16 de Septiembre	Ciudad de México	30	Colonia	11810
12457	América	Ciudad de México	30	Colonia	11820
12458	Daniel Garza	Ciudad de México	30	Colonia	11830
12459	Ampliación Daniel Garza	Ciudad de México	30	Colonia	11840
12460	San Miguel Chapultepec I Sección	Ciudad de México	30	Colonia	11850
12461	San Miguel Chapultepec II Sección	Ciudad de México	30	Colonia	11850
12462	Observatorio	Ciudad de México	30	Colonia	11860
12463	Tacubaya	Ciudad de México	30	Colonia	11870
12464	Lomas de Bezares	Ciudad de México	30	Colonia	11910
12465	Real de las Lomas	Ciudad de México	30	Colonia	11920
12466	Lomas de Reforma	Ciudad de México	30	Colonia	11930
12467	Lomas Altas	Ciudad de México	30	Colonia	11950
12468	La Concepción	Ciudad de México	31	Barrio	12000
12469	La Luz	Ciudad de México	31	Barrio	12000
12470	Los Ángeles	Ciudad de México	31	Barrio	12000
12471	San Mateo	Ciudad de México	31	Barrio	12000
12472	Santa Cruz	Ciudad de México	31	Barrio	12000
12473	Santa Martha	Ciudad de México	31	Barrio	12000
12474	Villa Milpa Alta Centro	Ciudad de México	31	Colonia	12000
12475	San Agustin	Ciudad de México	31	Barrio	12070
12476	San Agustin Ohtenco	Ciudad de México	31	Pueblo	12080
12477	Cruztitla	Ciudad de México	31	Barrio	12100
12478	Tecaxtitla	Ciudad de México	31	Barrio	12100
12479	Tenantitla	Ciudad de México	31	Barrio	12100
12480	Xaltipac	Ciudad de México	31	Barrio	12100
12481	Xochitepec	Ciudad de México	31	Barrio	12100
12482	Emiliano Zapata	Ciudad de México	31	Colonia	12110
12483	La Conchita	Ciudad de México	31	Colonia	12110
12484	Nochtla	Ciudad de México	31	Barrio	12200
12485	Ocotitla	Ciudad de México	31	Barrio	12200
12486	Panchimalco	Ciudad de México	31	Barrio	12200
12487	Tula	Ciudad de México	31	Barrio	12200
12488	San Bartolomé Xicomulco	Ciudad de México	31	Pueblo	12250
12489	San Salvador Cuauhtenco	Ciudad de México	31	Pueblo	12300
12490	Centro	Ciudad de México	31	Barrio	12400
12491	San Juan	Ciudad de México	31	Barrio	12400
12492	San Miguel	Ciudad de México	31	Barrio	12400
12493	Chalmita	Ciudad de México	31	Barrio	12410
12494	San Lorenzo Tlacoyucan	Ciudad de México	31	Pueblo	12500
12495	San Jerónimo Miacatlán	Ciudad de México	31	Pueblo	12600
12496	San Francisco Tecoxpa	Ciudad de México	31	Pueblo	12700
12497	San Juan Tepenahuac	Ciudad de México	31	Pueblo	12800
12498	La Lupita Teticpac	Ciudad de México	31	Barrio	12910
12499	San Marcos	Ciudad de México	31	Barrio	12920
12500	San Miguel	Ciudad de México	31	Barrio	12930
12501	San José	Ciudad de México	31	Barrio	12940
12502	La Lupita Xolco	Ciudad de México	31	Barrio	12950
12503	La Asunción	Ciudad de México	32	Barrio	13000
12504	Santa Cecilia	Ciudad de México	32	Colonia	13010
12505	San José	Ciudad de México	32	Colonia	13020
12506	San Juan	Ciudad de México	32	Barrio	13030
12507	San Mateo	Ciudad de México	32	Barrio	13040
12508	La Habana	Ciudad de México	32	Colonia	13050
12509	La Guadalupe	Ciudad de México	32	Barrio	13060
12510	Santa Ana	Ciudad de México	32	Barrio	13060
12511	La Magdalena	Ciudad de México	32	Barrio	13070
12512	San Miguel	Ciudad de México	32	Barrio	13070
12513	Los Reyes	Ciudad de México	32	Barrio	13080
12514	Quiahuatla	Ciudad de México	32	Colonia	13090
12515	San Sebastián	Ciudad de México	32	Colonia	13093
12516	San Isidro	Ciudad de México	32	Colonia	13094
12517	San Andrés	Ciudad de México	32	Barrio	13099
12518	La Guadalupe	Ciudad de México	32	Barrio	13100
12519	Ampliación Santa Catarina	Ciudad de México	32	Colonia	13120
12520	Santiago	Ciudad de México	32	Barrio	13120
12521	La Concepción	Ciudad de México	32	Barrio	13150
12522	San Miguel	Ciudad de México	32	Barrio	13180
12523	Miguel Hidalgo	Ciudad de México	32	Colonia	13200
12524	Los Olivos	Ciudad de México	32	Colonia	13210
12525	Las Arboledas	Ciudad de México	32	Colonia	13219
12526	Ampliación Los Olivos	Ciudad de México	32	Colonia	13219
12527	La Nopalera	Ciudad de México	32	Colonia	13220
12528	Granjas Cabrera	Ciudad de México	32	Colonia	13230
12529	La Turba	Ciudad de México	32	Colonia	13250
12530	Del Mar	Ciudad de México	32	Colonia	13270
12531	La Draga	Ciudad de México	32	Colonia	13273
12532	Villa Centroamericana	Ciudad de México	32	Colonia	13278
12533	Agrícola Metropolitana	Ciudad de México	32	Colonia	13280
12534	Santa Ana Centro	Ciudad de México	32	Barrio	13300
12535	Santiago Centro	Ciudad de México	32	Barrio	13300
12536	Santa Ana Poniente	Ciudad de México	32	Barrio	13300
12537	Santa Ana Norte	Ciudad de México	32	Barrio	13300
12538	Santiago Norte	Ciudad de México	32	Barrio	13300
12539	Zapotitla	Ciudad de México	32	Colonia	13310
12540	Ampliación Zapotitla	Ciudad de México	32	Colonia	13315
12541	La Estación	Ciudad de México	32	Colonia	13319
12542	La Conchita Zapotitlán	Ciudad de México	32	Colonia	13360
12543	Santa Ana Sur	Ciudad de México	32	Barrio	13360
12544	Santiago Sur	Ciudad de México	32	Barrio	13360
12545	San Francisco Tlaltenco	Ciudad de México	32	Pueblo	13400
12546	López Portillo	Ciudad de México	32	Colonia	13410
12547	Ampliación José López Portillo	Ciudad de México	32	Colonia	13419
12548	Selene	Ciudad de México	32	Colonia	13420
12549	Ampliación Selene	Ciudad de México	32	Colonia	13430
12550	Zacatenco	Ciudad de México	32	Colonia	13440
12551	Guadalupe Tlaltenco	Ciudad de México	32	Colonia	13450
12552	Ojo de Agua	Ciudad de México	32	Colonia	13450
12553	El Triángulo	Ciudad de México	32	Colonia	13460
12554	San Agustín	Ciudad de México	32	Barrio	13508
12555	La Soledad	Ciudad de México	32	Barrio	13508
12556	La Concepción	Ciudad de México	32	Barrio	13509
12557	La Lupita	Ciudad de México	32	Colonia	13510
12558	Francisco Villa	Ciudad de México	32	Colonia	13520
12559	Jaime Torres Bodet	Ciudad de México	32	Colonia	13530
12560	La Asunción	Ciudad de México	32	Colonia	13530
12561	El Rosario	Ciudad de México	32	Colonia	13540
12562	Tierra Blanca	Ciudad de México	32	Colonia	13540
12563	Ampliación La Conchita	Ciudad de México	32	Colonia	13545
12564	Peña Alta	Ciudad de México	32	Colonia	13549
12565	Jardines del Llano	Ciudad de México	32	Colonia	13550
12566	Potrero del Llano	Ciudad de México	32	Colonia	13550
12567	San Bartolomé	Ciudad de México	32	Barrio	13600
12568	Los Reyes	Ciudad de México	32	Barrio	13610
12569	Santa Cruz	Ciudad de México	32	Barrio	13625
12570	San Agustín	Ciudad de México	32	Barrio	13630
12571	San Miguel	Ciudad de México	32	Barrio	13640
12572	San Nicolás Tetelco	Ciudad de México	32	Pueblo	13700
12573	Tepantitlamilco	Ciudad de México	32	Colonia	13700
12574	Tlalpan Centro	Ciudad de México	33	Colonia	14000
12575	Tlalpan	Ciudad de México	33	Colonia	14000
12576	Parque del Pedregal	Ciudad de México	33	Colonia	14010
12577	Villa Olímpica	Ciudad de México	33	Colonia	14020
12578	Isidro Fabela	Ciudad de México	33	Colonia	14030
12579	Ampliación Isidro Fabela	Ciudad de México	33	Colonia	14039
12580	Cantera Puente de Piedra	Ciudad de México	33	Colonia	14040
12581	Pueblo Quieto	Ciudad de México	33	Colonia	14040
12582	Comuneros de Santa Úrsula	Ciudad de México	33	Colonia	14049
12583	Toriello Guerra	Ciudad de México	33	Colonia	14050
12584	Peña Pobre	Ciudad de México	33	Colonia	14060
12585	Rómulo Sánchez Mireles	Ciudad de México	33	Colonia	14070
12586	San Fernando	Ciudad de México	33	Barrio	14070
12587	San Pedro Apóstol	Ciudad de México	33	Colonia	14070
12588	Belisario Domínguez Sección XVI	Ciudad de México	33	Colonia	14080
12589	Del Niño Jesús	Ciudad de México	33	Barrio	14080
12590	La Joya	Ciudad de México	33	Colonia	14090
12591	Pedregal de San Nicolás 1A Sección	Ciudad de México	33	Colonia	14100
12592	Pedregal de San Nicolás 2A Sección	Ciudad de México	33	Colonia	14100
12593	Pedregal de San Nicolás 3A Sección	Ciudad de México	33	Colonia	14100
12594	Pedregal de San Nicolás 4A Sección	Ciudad de México	33	Colonia	14100
12595	Pedregal de San Nicolás 5ª Sección	Ciudad de México	33	Colonia	14100
12596	Chichicaspatl	Ciudad de México	33	Colonia	14108
12597	Ampliación Fuentes del Pedregal	Ciudad de México	33	Colonia	14110
12598	Rincón del Pedregal	Ciudad de México	33	Colonia	14120
12599	Fuentes del Pedregal	Ciudad de México	33	Colonia	14140
12600	Lomas del Pedregal Framboyanes	Ciudad de México	33	Colonia	14150
12601	Popular Santa Teresa	Ciudad de México	33	Colonia	14160
12602	Héroes de Padierna	Ciudad de México	33	Colonia	14200
12603	Jardines del Ajusco	Ciudad de México	33	Colonia	14200
12604	Colinas del Ajusco	Ciudad de México	33	Colonia	14208
12605	Torres de Padierna	Ciudad de México	33	Colonia	14209
12606	Jardines en la Montaña	Ciudad de México	33	Colonia	14210
12607	Six Flags (Reino Aventura)	Ciudad de México	33	Equipamiento	14219
12608	Parque Nacional Bosque del Pedregal	Ciudad de México	33	Equipamiento	14219
12609	Cuchilla de Padierna	Ciudad de México	33	Colonia	14220
12610	Lomas del Pedregal	Ciudad de México	33	Colonia	14220
12611	Cultura Maya	Ciudad de México	33	Colonia	14230
12612	Los Encinos	Ciudad de México	33	Colonia	14239
12613	Lomas de Padierna	Ciudad de México	33	Colonia	14240
12614	Lomas Hidalgo	Ciudad de México	33	Colonia	14240
12615	Cruz del Farol	Ciudad de México	33	Colonia	14248
12616	Miguel Hidalgo 2A Sección	Ciudad de México	33	Colonia	14250
12617	Miguel Hidalgo 3A Sección	Ciudad de México	33	Colonia	14250
12618	Miguel Hidalgo 4A Sección	Ciudad de México	33	Colonia	14250
12619	Miguel Hidalgo	Ciudad de México	33	Colonia	14250
12620	El Capulín	Ciudad de México	33	Barrio	14260
12621	Miguel Hidalgo 1A Sección	Ciudad de México	33	Colonia	14260
12622	Zacayucan Peña Pobre	Ciudad de México	33	Colonia	14266
12623	De Caramagüey	Ciudad de México	33	Barrio	14267
12624	La Lonja	Ciudad de México	33	Barrio	14268
12625	La Fama	Ciudad de México	33	Barrio	14269
12626	Primavera	Ciudad de México	33	Colonia	14270
12627	Paraje 38	Ciudad de México	33	Colonia	14275
12628	Nueva Oriental Coapa	Ciudad de México	33	Colonia	14300
12629	Residencial Acoxpa	Ciudad de México	33	Colonia	14300
12630	Residencial Miramontes	Ciudad de México	33	Colonia	14300
12631	Ex Hacienda Coapa	Ciudad de México	33	Colonia	14308
12632	Belisario Domínguez	Ciudad de México	33	Colonia	14310
12633	Floresta Coyoacán	Ciudad de México	33	Colonia	14310
12634	Vergel Coapa	Ciudad de México	33	Colonia	14320
12635	Rinconada Coapa 2A Sección	Ciudad de México	33	Colonia	14325
12636	Tenorios	Ciudad de México	33	Colonia	14326
12637	Granjas Coapa	Ciudad de México	33	Colonia	14330
12638	Rinconada Coapa 1A Sección	Ciudad de México	33	Colonia	14330
12639	Vergel de Coyoacán	Ciudad de México	33	Colonia	14340
12640	Vergel del Sur	Ciudad de México	33	Colonia	14340
12641	Prado Coapa 1A Sección	Ciudad de México	33	Colonia	14350
12642	Prado Coapa 2A Sección	Ciudad de México	33	Colonia	14357
12643	Prado Coapa 3A Sección	Ciudad de México	33	Colonia	14357
12644	Magisterial	Ciudad de México	33	Colonia	14360
12645	Magisterial Coapa	Ciudad de México	33	Colonia	14360
12646	Residencial Chimali	Ciudad de México	33	Colonia	14370
12647	San Lorenzo Huipulco	Ciudad de México	33	Pueblo	14370
12648	Villa Lázaro Cárdenas	Ciudad de México	33	Colonia	14370
12649	Arboledas del Sur	Ciudad de México	33	Colonia	14376
12650	Hacienda San Juan	Ciudad de México	33	Colonia	14377
12651	A.M.S.A	Ciudad de México	33	Colonia	14380
12652	San Bartolo El Chico	Ciudad de México	33	Colonia	14380
12653	Rancho los Colorines	Ciudad de México	33	Colonia	14386
12654	Ex Hacienda San Juan de Dios	Ciudad de México	33	Colonia	14387
12655	Guadalupe	Ciudad de México	33	Colonia	14388
12656	Arenal de Guadalupe	Ciudad de México	33	Colonia	14389
12657	Rinconada Las Hadas	Ciudad de México	33	Colonia	14390
12658	Narciso Mendoza	Ciudad de México	33	Colonia	14390
12659	Residencial Villa Coapa	Ciudad de México	33	Colonia	14390
12660	Villa Coapa	Ciudad de México	33	Colonia	14390
12661	San Andrés Totoltepec	Ciudad de México	33	Pueblo	14400
12662	Divisadero	Ciudad de México	33	Colonia	14406
12663	Nuevo Renacimiento de Axalco	Ciudad de México	33	Colonia	14408
12664	Tecorral	Ciudad de México	33	Colonia	14409
12665	Fuentes Brotantes	Ciudad de México	33	Colonia	14410
12666	Cumbres de Tepetongo	Ciudad de México	33	Colonia	14420
12667	Mesa de los Hornos	Ciudad de México	33	Colonia	14420
12668	Santa Úrsula Xitla	Ciudad de México	33	Pueblo	14420
12669	Texcaltenco	Ciudad de México	33	Colonia	14426
12670	Tlaxcaltenco la Mesa	Ciudad de México	33	Colonia	14426
12671	San Juan Tepeximilpa	Ciudad de México	33	Colonia	14427
12672	Tepeximilpa la Paz	Ciudad de México	33	Colonia	14427
12673	Santísima Trinidad	Ciudad de México	33	Colonia	14429
12674	El Truenito	Ciudad de México	33	Barrio	14430
12675	Tlalcoligia	Ciudad de México	33	Colonia	14430
12676	Pedregal de Santa Úrsula Xitla	Ciudad de México	33	Colonia	14438
12677	Pedregal de las Águilas	Ciudad de México	33	Colonia	14439
12678	Los Volcanes	Ciudad de México	33	Colonia	14440
12679	El Mirador 1A Sección	Ciudad de México	33	Colonia	14449
12680	El Mirador 2A Sección	Ciudad de México	33	Colonia	14449
12681	El Mirador 3A Sección	Ciudad de México	33	Colonia	14449
4168	Ejido Francisco Villa	Tijuana	16	Colonia	22236
12682	Tlalpuente	Ciudad de México	33	Colonia	14460
12683	Plan de Ayala	Ciudad de México	33	Colonia	14470
12684	La Palma	Ciudad de México	33	Colonia	14476
12685	Viveros Coatectlán	Ciudad de México	33	Colonia	14479
12686	La Magdalena Petlacalco	Ciudad de México	33	Pueblo	14480
12687	San Miguel Xicalco	Ciudad de México	33	Pueblo	14490
12688	San Miguel Topilejo	Ciudad de México	33	Pueblo	14500
12689	Valle Escondido	Ciudad de México	33	Colonia	14600
12690	Colinas del Bosque	Ciudad de México	33	Colonia	14608
12691	Las Tórtolas	Ciudad de México	33	Colonia	14609
12692	Arenal Tepepan	Ciudad de México	33	Colonia	14610
12693	Club de Golf México	Ciudad de México	33	Colonia	14620
12694	San Buenaventura	Ciudad de México	33	Colonia	14629
12695	Chimalcoyoc	Ciudad de México	33	Pueblo	14630
12696	Villa Tlalpan	Ciudad de México	33	Colonia	14630
12697	Ejidos de San Pedro Mártir	Ciudad de México	33	Colonia	14640
12698	Fuentes de Tepepan	Ciudad de México	33	Colonia	14643
12699	Valle de Tepepan	Ciudad de México	33	Colonia	14646
12700	Juventud Unida	Ciudad de México	33	Colonia	14647
12701	Movimiento Organizado de Tlalpan	Ciudad de México	33	Colonia	14647
12702	Rinconada El Mirador	Ciudad de México	33	Colonia	14647
12703	San Pedro Mártir	Ciudad de México	33	Pueblo	14650
12704	Heróico Colegio Militar	Ciudad de México	33	Colonia	14653
12705	Tlalmille	Ciudad de México	33	Colonia	14657
12706	Mirador del Valle	Ciudad de México	33	Colonia	14658
12707	María Esther Zuno de Echeverría	Ciudad de México	33	Colonia	14659
12708	San Miguel Ajusco	Ciudad de México	33	Pueblo	14700
12709	Santo Tomas Ajusco	Ciudad de México	33	Pueblo	14710
12710	Belvedere Ajusco	Ciudad de México	33	Colonia	14720
12711	Lomas de Cuilotepec	Ciudad de México	33	Colonia	14730
12712	Lomas de Tepemecatl	Ciudad de México	33	Campamento	14735
12713	Vistas del Pedregal	Ciudad de México	33	Colonia	14737
12714	Bosques del Pedregal	Ciudad de México	33	Colonia	14738
12715	2 de Octubre	Ciudad de México	33	Colonia	14739
12716	Lomas de Padierna Sur	Ciudad de México	33	Colonia	14740
12717	Mirador I	Ciudad de México	33	Colonia	14748
12718	Mirador II	Ciudad de México	33	Colonia	14748
12719	Chimilli	Ciudad de México	33	Colonia	14749
12720	Héroes de 1910	Ciudad de México	33	Colonia	14760
12721	Parres El Guarda	Ciudad de México	33	Pueblo	14900
12722	General Ignacio Zaragoza	Ciudad de México	34	Colonia	15000
12723	Valentín Gómez Farias	Ciudad de México	34	Colonia	15010
12724	Puebla	Ciudad de México	34	Colonia	15020
12725	Zona Centro	Ciudad de México	34	Colonia	15100
12726	Janitzio	Ciudad de México	34	Colonia	15200
12727	Valle Gómez	Ciudad de México	34	Colonia	15210
12728	Nicolás Bravo	Ciudad de México	34	Colonia	15220
12729	Popular Rastro	Ciudad de México	34	Colonia	15220
12730	Emilio Carranza	Ciudad de México	34	Colonia	15230
12731	Michoacana	Ciudad de México	34	Colonia	15240
12732	Ampliación Michoacana	Ciudad de México	34	Colonia	15250
12733	Ampliación 20 de Noviembre	Ciudad de México	34	Colonia	15260
12734	Morelos	Ciudad de México	34	Colonia	15270
12735	Penitenciaria	Ciudad de México	34	Colonia	15280
12736	10 de Mayo	Ciudad de México	34	Colonia	15290
12737	20 de Noviembre	Ciudad de México	34	Colonia	15300
12738	5o Tramo 20 de Noviembre	Ciudad de México	34	Colonia	15309
12739	Felipe Ángeles	Ciudad de México	34	Colonia	15310
12740	Azteca	Ciudad de México	34	Colonia	15320
12741	Tres Mosqueteros	Ciudad de México	34	Colonia	15330
12742	Ampliación Venustiano Carranza	Ciudad de México	34	Colonia	15339
12743	Venustiano Carranza	Ciudad de México	34	Colonia	15340
12744	Ampliación Penitenciaria	Ciudad de México	34	Colonia	15350
12745	Progresista	Ciudad de México	34	Colonia	15370
12746	Escuela de Tiro	Ciudad de México	34	Colonia	15380
12747	7 de Julio	Ciudad de México	34	Colonia	15390
12748	Romero Rubio	Ciudad de México	34	Colonia	15400
12749	Simón Bolívar	Ciudad de México	34	Colonia	15410
12750	Ampliación Simón Bolívar	Ciudad de México	34	Colonia	15420
12751	Aquiles Serdán	Ciudad de México	34	Colonia	15430
12752	1° de Mayo	Ciudad de México	34	Colonia	15440
12753	Damián Carmona	Ciudad de México	34	Colonia	15450
12754	Revolución	Ciudad de México	34	Colonia	15460
12755	Miguel Hidalgo	Ciudad de México	34	Colonia	15470
12756	Moctezuma 1a Sección	Ciudad de México	34	Colonia	15500
12757	Pensador Mexicano	Ciudad de México	34	Colonia	15510
12758	Peñón de los Baños	Ciudad de México	34	Colonia	15520
12759	Moctezuma 2a Sección	Ciudad de México	34	Colonia	15530
12760	Santa Cruz Aviación	Ciudad de México	34	Colonia	15540
12761	Arenal 1a Sección	Ciudad de México	34	Colonia	15600
12762	Cuchilla Pantitlán	Ciudad de México	34	Colonia	15610
12763	México (Lic. Benito Juárez)	Ciudad de México	34	Aeropuerto	15620
12764	Caracol	Ciudad de México	34	Colonia	15630
12765	Arenal 4a Sección	Ciudad de México	34	Colonia	15640
12766	Arenal Puerto Aéreo	Ciudad de México	34	Colonia	15640
12767	Ampliación Caracol	Ciudad de México	34	Colonia	15650
12768	Arenal 3a Sección	Ciudad de México	34	Colonia	15660
12769	Adolfo López Mateos	Ciudad de México	34	Colonia	15670
12770	Arenal 2a Sección	Ciudad de México	34	Colonia	15680
12771	Federal	Ciudad de México	34	Colonia	15700
12772	Industrial Puerto Aéreo	Ciudad de México	34	Colonia	15710
12773	4 Árboles	Ciudad de México	34	Colonia	15730
12774	Aviación Civil	Ciudad de México	34	Colonia	15740
12775	Ampliación Aviación Civil	Ciudad de México	34	Colonia	15750
12776	Jamaica	Ciudad de México	34	Colonia	15800
12777	Merced Balbuena	Ciudad de México	34	Colonia	15810
12778	Lorenzo Boturini	Ciudad de México	34	Colonia	15820
12779	Artes Gráficas	Ciudad de México	34	Colonia	15830
12780	Sevilla	Ciudad de México	34	Colonia	15840
12781	Magdalena Mixiuhca	Ciudad de México	34	Colonia	15850
12782	La Magdalena Mixiuhca	Ciudad de México	34	Pueblo	15860
12783	Aarón Sáenz	Ciudad de México	34	Colonia	15870
12784	Jardín Balbuena	Ciudad de México	34	Colonia	15900
12785	Del Parque	Ciudad de México	34	Colonia	15960
12786	Aeronáutica Militar	Ciudad de México	34	Colonia	15970
12787	24 de Abril	Ciudad de México	34	Colonia	15980
12788	Álvaro Obregón	Ciudad de México	34	Colonia	15990
12789	La Concepción Tlacoapa	Ciudad de México	35	Barrio	16000
12790	San Antonio	Ciudad de México	35	Barrio	16000
12791	San Juan	Ciudad de México	35	Barrio	16000
12792	Bosque Residencial del Sur	Ciudad de México	35	Colonia	16010
12793	Las Peritas	Ciudad de México	35	Colonia	16010
12794	Paseos del Sur	Ciudad de México	35	Colonia	16010
12795	San Bartolo El Chico	Ciudad de México	35	Colonia	16010
12796	San Juan Tepepan	Ciudad de México	35	Colonia	16020
12797	Santa María Tepepan	Ciudad de México	35	Pueblo	16020
12798	Ampliación Tepepan	Ciudad de México	35	Colonia	16029
12799	Huichapan	Ciudad de México	35	Colonia	16030
12800	La Noria	Ciudad de México	35	Colonia	16030
12801	Potrero de San Bernardino	Ciudad de México	35	Colonia	16030
12802	Ampliación La Noria	Ciudad de México	35	Colonia	16030
12803	18	Ciudad de México	35	Barrio	16034
12804	San Lorenzo La Cebada	Ciudad de México	35	Colonia	16035
12805	Rinconada Coapa	Ciudad de México	35	Colonia	16035
12806	Mercado de Flores Plantas y Hortalizas	Ciudad de México	35	Equipamiento	16036
12807	Ampliación San Marcos Norte	Ciudad de México	35	Colonia	16038
12808	La Asunción	Ciudad de México	35	Barrio	16040
12809	San Lorenzo	Ciudad de México	35	Barrio	16040
12810	Jardines del Sur	Ciudad de México	35	Colonia	16050
12811	San Marcos	Ciudad de México	35	Barrio	16050
12812	Tierra Nueva	Ciudad de México	35	Colonia	16050
12813	Pblo. Stgo.Tepalcatlalpan, U. H. Rinconada del Sur	Ciudad de México	35	Colonia	16059
12814	El Mirador	Ciudad de México	35	Colonia	16060
12815	Belén	Ciudad de México	35	Barrio	16070
12816	El Rosario	Ciudad de México	35	Barrio	16070
12817	La Guadalupita	Ciudad de México	35	Barrio	16070
12818	Santa Crucita	Ciudad de México	35	Barrio	16070
12819	La Santísima	Ciudad de México	35	Barrio	16080
12820	San Cristóbal	Ciudad de México	35	Barrio	16080
12821	San Diego	Ciudad de México	35	Barrio	16080
12822	San Esteban	Ciudad de México	35	Barrio	16080
12823	San Pedro	Ciudad de México	35	Barrio	16090
12824	Tablas de San Lorenzo	Ciudad de México	35	Colonia	16090
12825	Xaltocan	Ciudad de México	35	Barrio	16090
12826	Santa Cruz Xochitepec	Ciudad de México	35	Pueblo	16100
12827	Santiago Tepalcatlalpan	Ciudad de México	35	Pueblo	16200
12828	La Concha	Ciudad de México	35	Colonia	16210
12829	San Lucas Xochimanca	Ciudad de México	35	Pueblo	16300
12830	La Cañada	Ciudad de México	35	Colonia	16310
12831	San Lucas Oriente	Ciudad de México	35	Colonia	16320
12832	Texmic	Ciudad de México	35	Colonia	16340
12833	San Lorenzo Atemoaya	Ciudad de México	35	Pueblo	16400
12834	Lomas de Tonalco	Ciudad de México	35	Colonia	16410
12835	San Jerónimo	Ciudad de México	35	Colonia	16420
12836	El Jazmín	Ciudad de México	35	Colonia	16428
12837	Rancho Tejomulco	Ciudad de México	35	Colonia	16429
12838	Xochipilli	Ciudad de México	35	Colonia	16430
12839	Año de Juárez	Ciudad de México	35	Colonia	16440
12840	Pocitos	Ciudad de México	35	Barrio	16443
12841	Santa María Nativitas	Ciudad de México	35	Pueblo	16450
12842	Lomas de Nativitas	Ciudad de México	35	Colonia	16457
12843	Ampliación Nativitas	Ciudad de México	35	Colonia	16459
12844	Santa Cruz Acalpixca	Ciudad de México	35	Pueblo	16500
12845	Apatlaco	Ciudad de México	35	Barrio	16513
12846	Del Puente	Ciudad de México	35	Barrio	16513
12847	La Gallera	Ciudad de México	35	Barrio	16514
2875	Popular Nacionalistas	Mexicali	13	Fraccionamiento	21165
12848	Tetitla	Ciudad de México	35	Barrio	16514
12849	Calpulco	Ciudad de México	35	Barrio	16514
12850	La Planta	Ciudad de México	35	Barrio	16520
12851	Las Cruces	Ciudad de México	35	Barrio	16530
12852	Las Flores	Ciudad de México	35	Barrio	16530
12853	Ahualapa	Ciudad de México	35	Barrio	16533
12854	Valle de Santa María	Ciudad de México	35	Colonia	16550
12855	San Gregorio Atlapulco	Ciudad de México	35	Pueblo	16600
12856	San Andrés	Ciudad de México	35	Barrio	16604
12857	Los Reyes	Ciudad de México	35	Barrio	16605
12858	3 de Mayo	Ciudad de México	35	Barrio	16606
12859	San Antonio	Ciudad de México	35	Barrio	16607
12860	La Candelaria	Ciudad de México	35	Barrio	16609
12861	San Luis Tlaxialtemalco	Ciudad de México	35	Pueblo	16610
12862	Niños Héroes	Ciudad de México	35	Barrio	16614
12863	La Asunción	Ciudad de México	35	Barrio	16615
12864	Santa Cecilia	Ciudad de México	35	Barrio	16616
12865	San Sebastián	Ciudad de México	35	Barrio	16617
12866	San José	Ciudad de México	35	Barrio	16620
12867	La Guadalupana	Ciudad de México	35	Barrio	16629
12868	San Juan	Ciudad de México	35	Barrio	16629
12869	San Juan Moyotepec	Ciudad de México	35	Barrio	16630
12870	San Juan Minas	Ciudad de México	35	Barrio	16640
12871	Quirino Mendoza	Ciudad de México	35	Colonia	16710
12872	Del Carmen	Ciudad de México	35	Colonia	16720
12873	San Isidro	Ciudad de México	35	Colonia	16739
12874	Guadalupita	Ciudad de México	35	Colonia	16740
12875	Las Animas	Ciudad de México	35	Colonia	16749
12876	Calyequita	Ciudad de México	35	Barrio	16750
12877	San Felipe	Ciudad de México	35	Colonia	16770
12878	Santiaguito	Ciudad de México	35	Colonia	16776
12879	El Mirador	Ciudad de México	35	Colonia	16776
12880	Cerrillos Primera Sección	Ciudad de México	35	Colonia	16780
12881	El Sacrificio	Ciudad de México	35	Colonia	16780
12882	Cristo Rey	Ciudad de México	35	Colonia	16780
12883	Cerrillos Segunda Sección	Ciudad de México	35	Colonia	16780
12884	Cerrillos Tercera Sección	Ciudad de México	35	Colonia	16780
12885	Nativitas	Ciudad de México	35	Colonia	16797
12886	Las Mesitas	Ciudad de México	35	Colonia	16799
12887	San Mateo Xalpa	Ciudad de México	35	Pueblo	16800
12888	San Andrés Ahuayucan	Ciudad de México	35	Pueblo	16810
12889	Santa Inés	Ciudad de México	35	Colonia	16810
12890	Rosario Tlali	Ciudad de México	35	Colonia	16810
12891	El Calvario	Ciudad de México	35	Barrio	16813
12892	Santa Cruz Chavarrieta	Ciudad de México	35	Colonia	16840
12893	Chapultepec	Ciudad de México	35	Barrio	16850
12894	Santa Cruz de Guadalupe	Ciudad de México	35	Colonia	16860
12895	Santa Cecilia Tepetlapa	Ciudad de México	35	Pueblo	16880
12896	San Francisco Tlalnepantla	Ciudad de México	35	Pueblo	16900
2876	Militar	Mexicali	13	Colonia	21170
1862	Los Dolores		1	Granja	20299
1924	Las Cañadas		1	Fraccionamiento	20320
2877	27de Septiembre	Mexicali	13	Fraccionamiento	21170
2879	Martha Welch	Mexicali	13	Colonia	21179
2380	Tepetatillo		2	Rancho	20749
2880	Universitario	Mexicali	13	Colonia	21180
2881	Villafontana	Mexicali	13	Fraccionamiento	21180
7819	El Ocotal		29	Campamento	10630
2882	El Papago INFONAVIT	Mexicali	13	Unidadhabitacional	21185
4872	Campa		18	Rancho	22771
5055	Las Flores	Ensenada	18	Colonia	22822
2815	San Martín Caballero	Mexicali	13	Colonia	21137
2816	Misiónde San Antonio	Mexicali	13	Fraccionamiento	21137
2817	San Miguel2da Etapa	Mexicali	13	Fraccionamiento	21137
2818	Misiónde San Ignacio	Mexicali	13	Fraccionamiento	21137
2819	Realdel Río Residencial2da Sección	Mexicali	13	Fraccionamiento	21137
2820	El Colonial	Mexicali	13	Colonia	21137
2821	Villas Coahuila	Mexicali	13	Colonia	21137
2822	Villas Galicia	Mexicali	13	Fraccionamiento	21137
2823	Villasdel Paraíso	Mexicali	13	Colonia	21137
2824	La Luna	Mexicali	13	Colonia	21138
2825	El Coloso	Mexicali	13	Fraccionamiento	21138
2826	San Clemente	Mexicali	13	Colonia	21138
2827	Los Milagros	Mexicali	13	Fraccionamiento	21138
2828	San Jacinto	Mexicali	13	Colonia	21138
2829	El Refugio	Mexicali	13	Colonia	21138
2830	Ampliación Refugio	Mexicali	13	Colonia	21138
2831	Los Viñedos	Mexicali	13	Fraccionamiento	21138
2832	Valledelas Misiones	Mexicali	13	Fraccionamiento	21138
2833	El Paraíso	Mexicali	13	Colonia	21138
2834	Torremolinos	Mexicali	13	Colonia	21138
2835	Misión Viejo	Mexicali	13	Colonia	21138
2836	ValledelosÁngeles	Mexicali	13	Colonia	21138
2837	El Coloso II	Mexicali	13	Fraccionamiento	21138
2838	La Estrella	Mexicali	13	Colonia	21139
2839	Santa Isabel	Mexicali	13	Colonia	21139
2840	San Carlos	Mexicali	13	Colonia	21139
2841	Santa Lorena	Mexicali	13	Colonia	21139
2842	San Antonio	Mexicali	13	Colonia	21139
2843	Gabriela Mistral	Mexicali	13	Colonia	21139
2844	San José	Mexicali	13	Colonia	21139
2845	Nuevo Santa Lucia	Mexicali	13	Colonia	21139
2846	San Pablo	Mexicali	13	Colonia	21139
2970	Privada San Miguel	Mexicali	13	Fraccionamiento	21254
2971	Hacienda Bilbao	Mexicali	13	Fraccionamiento	21254
2972	San Pedro Residencial Segunda Sección	Mexicali	13	Fraccionamiento	21254
2973	Antares Residencial	Mexicali	13	Fraccionamiento	21255
2974	Villas SanÁngel	Mexicali	13	Fraccionamiento	21255
2975	Montecarlo	Mexicali	13	Fraccionamiento	21255
2976	Residencial Casa Maya	Mexicali	13	Fraccionamiento	21255
2977	Puertade Hierro	Mexicali	13	Fraccionamiento	21255
2978	Montecarlo2a Sección	Mexicali	13	Fraccionamiento	21255
2979	Montecarlo3a Sección	Mexicali	13	Fraccionamiento	21255
2980	Residencial Casa Maya II	Mexicali	13	Fraccionamiento	21255
2981	Residencial Puertade Alcalá	Mexicali	13	Fraccionamiento	21255
2982	Balboa Residencial	Mexicali	13	Fraccionamiento	21255
2983	Misiónde Loreto	Mexicali	13	Fraccionamiento	21257
2984	El Lienzo	Mexicali	13	Fraccionamiento	21258
2985	La Jolla	Mexicali	13	Fraccionamiento	21258
3293	Cantera Residencial	Mexicali	13	Fraccionamiento	21395
9334	El Ocotal		29	Campamento	10630
3772	Juárez	Tijuana	16	Colonia	22040
4132	Kino II	Tijuana	16	Colonia	22223
10849	El Ocotal		29	Campamento	10630
2251	El Porvenir		9	Ejido	20615
2343	INFONAVIT	Asientos	2	Colonia	20715
2633	Brownsville		5	Colonia	20910
4251	Kennedy	Tijuana	16	Colonia	22414
4322	Rancho Rivera	Tijuana	16	Colonia	22460
4843	Baja Mar San Diego		18	Colonia	22760
4963	Ibarra		18	Rancho	22796
2847	Popular Centinela	Mexicali	13	Fraccionamiento	21139
5202	San Telmo		18	Ranchería	22908
2848	Ampliación Centinela	Mexicali	13	Colonia	21139
2849	Las Reinas	Mexicali	13	Fraccionamiento	21139
2850	El Sauce	Mexicali	13	Colonia	21139
2851	Esperanza	Mexicali	13	Colonia	21140
2852	Loma Linda	Mexicali	13	Colonia	21140
2853	Parcela36	Mexicali	13	Colonia	21140
2854	Condominio Esperanza Agrícola	Mexicali	13	Fraccionamiento	21140
2855	Bordo Wisteria	Mexicali	13	Colonia	21147
2856	Bellavista	Mexicali	13	Colonia	21150
2857	Héctor Corella	Mexicali	13	Fraccionamiento	21150
2858	Eguia	Mexicali	13	Fraccionamiento	21150
2859	Pasadina	Mexicali	13	Barrio	21150
2860	San Isidro	Mexicali	13	Colonia	21150
2861	Villas California	Mexicali	13	Fraccionamiento	21150
2862	BarrioÁlamo	Mexicali	13	Colonia	21150
2863	Villa Dorada	Mexicali	13	Fraccionamiento	21150
2864	Jabonera	Mexicali	13	Colonia	21150
2865	Cachanilla	Mexicali	13	Zonacomercial	21150
2866	Mexicali Tianguis	Mexicali	13	Zonacomercial	21150
2867	Orizaba	Mexicali	13	Unidadhabitacional	21160
2868	San Luis	Mexicali	13	Colonia	21160
2869	Simental	Mexicali	13	Colonia	21160
2871	Municipio Libre	Mexicali	13	Colonia	21160
2872	CCIEjidatarios	Mexicali	13	Colonia	21160
2883	El Porvenir	Mexicali	13	Colonia	21185
2884	Francisco Zarco	Mexicali	13	Fraccionamiento	21185
2885	Las Palomas	Mexicali	13	Fraccionamiento	21188
2886	Mediterráneo	Mexicali	13	Fraccionamiento	21188
2887	Misión Virreyes	Mexicali	13	Fraccionamiento	21188
2888	Progreso	Mexicali	13	Zonaindustrial	21188
2889	Solidaridad INFONAVIT	Mexicali	13	Unidadhabitacional	21188
2890	Solidaridad INFONAVITII	Mexicali	13	Unidadhabitacional	21188
2891	Puestade Sol Residencial	Mexicali	13	Fraccionamiento	21188
2892	Residencial San Francisco	Mexicali	13	Fraccionamiento	21188
2893	Ampliación Progreso	Mexicali	13	Zonaindustrial	21188
2894	Granjas Virreyes	Mexicali	13	Colonia	21190
2895	Huertasde La Progreso	Mexicali	13	Colonia	21190
2896	Gigantesdel Desierto	Mexicali	13	Fraccionamiento	21190
2897	Hermanos Fuentes	Mexicali	13	Colonia	21190
2898	Santo Niño	Mexicali	13	Colonia	21190
2899	Ampliación Popular Santo Niño	Mexicali	13	Fraccionamiento	21190
2900	Real Virreyes	Mexicali	13	Fraccionamiento	21190
2901	Residencial San Andrés	Mexicali	13	Fraccionamiento	21190
2902	Viñasdel Sol	Mexicali	13	Fraccionamiento	21190
2903	Cuauhtémoc Norte	Mexicali	13	Colonia	21200
2904	Cuauhtémoc Sur	Mexicali	13	Colonia	21200
2905	San Gabriel	Mexicali	13	Colonia	21210
2906	Sonora	Mexicali	13	Fraccionamiento	21210
2907	Residencial Argentina	Mexicali	13	Fraccionamiento	21210
2908	Compuertas	Mexicali	13	Colonia	21210
2909	Estatutos Jurídicos	Mexicali	13	Colonia	21210
2910	Prolongación Alamitos	Mexicali	13	Colonia	21210
2911	Alamitos	Mexicali	13	Colonia	21210
2912	Pimsa I	Mexicali	13	Zonaindustrial	21210
2913	Alameda	Mexicali	13	Colonia	21215
2914	Las Hadas	Mexicali	13	Fraccionamiento	21216
2915	Andalucía	Mexicali	13	Colonia	21217
2916	Compuertas	Mexicali	13	Colonia	21218
2917	Residencial Hípico	Mexicali	13	Fraccionamiento	21219
2918	Corregidora	Mexicali	13	Colonia	21220
2919	El Porvenir	Mexicali	13	Colonia	21220
2920	Hega	Mexicali	13	Fraccionamiento	21220
2921	Imperial	Mexicali	13	Colonia	21220
2922	Josefa Ortizde Domínguez	Mexicali	13	Colonia	21220
2923	Flores Magón	Mexicali	13	Colonia	21220
2924	Flores Magón	Mexicali	13	Fraccionamiento	21220
2925	Armando Gutiérrez	Mexicali	13	Colonia	21220
2926	Nuevo Ideal	Mexicali	13	Colonia	21224
2927	ValledeÁlamo	Mexicali	13	Colonia	21225
2928	Reserva Residencial	Mexicali	13	Fraccionamiento	21225
2929	Calzada	Mexicali	13	Fraccionamiento	21225
2930	Cumbres Provenza	Mexicali	13	Fraccionamiento	21225
2931	Rivera	Mexicali	13	Colonia	21225
2932	Cerradadel Sol	Mexicali	13	Fraccionamiento	21225
2933	Veredasdel Sol	Mexicali	13	Fraccionamiento	21225
2934	Residencial Marsella	Mexicali	13	Fraccionamiento	21225
2935	Privada Vistahermosa	Mexicali	13	Fraccionamiento	21225
2936	Duara Residencial	Mexicali	13	Fraccionamiento	21226
2937	Aurea Residencial	Mexicali	13	Fraccionamiento	21226
2938	Alianza Para La Producción	Mexicali	13	Colonia	21229
2939	Aduana Garita2	Mexicali	13	Colonia	21229
2940	PIMSAIV	Mexicali	13	Zonaindustrial	21229
2941	Parque IndustrialÁlamo	Mexicali	13	Zonaindustrial	21229
2942	Las Garzas	Mexicali	13	Fraccionamiento	21229
2943	Aviación	Mexicali	13	Colonia	21230
2944	Justo Sierra	Mexicali	13	Colonia	21230
2945	Las Fuentes	Mexicali	13	Fraccionamiento	21230
2946	Los Pinos	Mexicali	13	Fraccionamiento	21230
5228	Arenal		19	Colonia	22920
2947	Periodista	Mexicali	13	Colonia	21230
2948	Unidad Patria	Mexicali	13	Unidadhabitacional	21230
2949	La Escondida	Mexicali	13	Fraccionamiento	21230
2950	Ciudad Deportiva	Mexicali	13	Colonia	21239
2951	Prohogar	Mexicali	13	Colonia	21240
2952	Santa Maria	Mexicali	13	Colonia	21240
2953	Vista Hermosa	Mexicali	13	Fraccionamiento	21240
2954	Cataviña	Mexicali	13	Fraccionamiento	21240
2955	Benito Juárez	Mexicali	13	Colonia	21250
2956	Constitución	Mexicali	13	Colonia	21250
2957	Mártiresde1906	Mexicali	13	Colonia	21250
2958	Miraflores	Mexicali	13	Colonia	21250
2959	República Mexicana	Mexicali	13	Colonia	21250
2960	Roma	Mexicali	13	Colonia	21250
2961	Residencialel Lienzo	Mexicali	13	Fraccionamiento	21250
2962	Parque Industrial Ex-XXI	Mexicali	13	Zonaindustrial	21254
2963	San Pedro Residencial	Mexicali	13	Fraccionamiento	21254
2964	Parque Industrial Calafia	Mexicali	13	Zonaindustrial	21254
2965	Residencial Coronado	Mexicali	13	Fraccionamiento	21254
2966	Residencial San Sebastián	Mexicali	13	Fraccionamiento	21254
2967	Ampliación Parque Industrial Ex-XXI	Mexicali	13	Zonaindustrial	21254
2968	Realdel Sol	Mexicali	13	Fraccionamiento	21254
2969	Versalles Residencial	Mexicali	13	Fraccionamiento	21254
2987	Chapultepeclos Pinos	Mexicali	13	Colonia	21260
2988	Ampliaciónlas Fuentes	Mexicali	13	Colonia	21260
2989	1de Diciembre	Mexicali	13	Colonia	21260
2990	Jardinesdel Valle	Mexicali	13	Fraccionamiento	21270
2991	Santa Rosalía	Mexicali	13	Colonia	21270
2992	Santa Teresa	Mexicali	13	Colonia	21270
2993	Vallarta	Mexicali	13	Colonia	21270
2994	Plaza Universidad	Mexicali	13	Colonia	21279
2995	Insurgentes Este	Mexicali	13	Colonia	21280
2996	Insurgentes Oeste	Mexicali	13	Colonia	21280
2997	Maestros Estatales	Mexicali	13	Colonia	21280
2998	Reforma	Mexicali	13	Fraccionamiento	21280
2999	Residencias	Mexicali	13	Fraccionamiento	21280
3000	Residencias Imperiales	Mexicali	13	Colonia	21285
3001	Universidad Autónoma Baja California	Mexicali	13	Equipamiento	21289
3002	Independencia	Mexicali	13	Colonia	21290
3003	Ampliación Independencia	Mexicali	13	Colonia	21290
3004	Las Delicias	Mexicali	13	Fraccionamiento	21297
3005	San Fernando	Mexicali	13	Fraccionamiento	21297
3006	Villasdel Rosario	Mexicali	13	Colonia	21297
3007	Santa Fe	Mexicali	13	Fraccionamiento	21297
3008	Villas Cachanillas	Mexicali	13	Fraccionamiento	21297
3009	Haciendade Lourdes	Mexicali	13	Colonia	21297
3010	Haciendael Pilar	Mexicali	13	Fraccionamiento	21298
3011	San Jerónimo	Mexicali	13	Fraccionamiento	21298
3012	Villa Colonial	Mexicali	13	Fraccionamiento	21298
3013	Los Reyes	Mexicali	13	Fraccionamiento	21298
3015	Burócratas Federales	Mexicali	13	Fraccionamiento	21298
3016	Maestros Democráticosde La Base	Mexicali	13	Fraccionamiento	21298
3017	Misiónde Santo Domingo	Mexicali	13	Fraccionamiento	21298
3018	Misiónde Santo Domingo Ampliación	Mexicali	13	Fraccionamiento	21298
3019	Privada Rústica	Mexicali	13	Fraccionamiento	21298
3020	Misión San Adrian	Mexicali	13	Fraccionamiento	21298
3021	Residencial LosÁngeles	Mexicali	13	Fraccionamiento	21298
3022	Misiónde San Andrés	Mexicali	13	Fraccionamiento	21298
3023	Bordola Rivera	Mexicali	13	Colonia	21298
3024	Misiónde Guadalupe	Mexicali	13	Colonia	21299
3025	De ANSA	Mexicali	13	Fraccionamiento	21299
3026	Divisióndel Norte	Mexicali	13	Colonia	21300
3027	Villanova	Mexicali	13	Fraccionamiento	21307
3028	Parcela62	Mexicali	13	Colonia	21309
3029	Villasdel Real	Mexicali	13	Fraccionamiento	21309
3030	Morelos	Mexicali	13	Colonia	21310
3031	Generalesde México	Mexicali	13	Fraccionamiento	21320
3032	Esteban Cantú	Mexicali	13	Colonia	21320
3033	FelipeÁngeles	Mexicali	13	Colonia	21320
3034	Joaquín Murrieta	Mexicali	13	Colonia	21320
3035	Lucio Blanco	Mexicali	13	Colonia	21320
3036	Madeira Residencia	Mexicali	13	Fraccionamiento	21320
3037	Pedro Moreno	Mexicali	13	Colonia	21320
3038	Vicente Guerrero	Mexicali	13	Colonia	21320
3039	Camino Viejo	Mexicali	13	Fraccionamiento	21320
3040	Residencial Barcelona III	Mexicali	13	Fraccionamiento	21323
3041	Pacífica Residencial	Mexicali	13	Fraccionamiento	21323
3042	San Fernando Regularización Corett	Mexicali	13	Colonia	21323
3043	Voluntad	Mexicali	13	Colonia	21323
3044	Reacomodo San Fernando	Mexicali	13	Colonia	21323
3045	Casa Digna	Mexicali	13	Fraccionamiento	21323
3046	Residencial Barcelona	Mexicali	13	Fraccionamiento	21323
3047	Hacienda La Encantada	Mexicali	13	Fraccionamiento	21323
3048	Residencial Barcelona II	Mexicali	13	Fraccionamiento	21323
2765	Anáhuac	Mexicali	13	Colonia	21060
2766	Constituyentes	Mexicali	13	Colonia	21060
2767	JosuéMolina	Mexicali	13	Colonia	21060
2768	Indeco Anáhuac	Mexicali	13	Colonia	21060
2769	Balbuena	Mexicali	13	Fraccionamiento	21070
2770	Zacatecas	Mexicali	13	Fraccionamiento	21070
2771	Los Arcos	Mexicali	13	Fraccionamiento	21079
2772	El Vidrio	Mexicali	13	Colonia	21080
2773	Del Rastro	Mexicali	13	Colonia	21090
2774	Ejido Zacatecas	Mexicali	13	Colonia	21090
2775	Agualeguas	Mexicali	13	Colonia	21090
2776	Nueva	Mexicali	13	Colonia	21100
2777	Primera Sección	Mexicali	13	Colonia	21100
2778	Segunda Sección	Mexicali	13	Colonia	21100
2779	Eligio Esquivel	Mexicali	13	Colonia	21110
2780	Fronteriza	Mexicali	13	Colonia	21110
2781	Revolución	Mexicali	13	Colonia	21110
2782	Santa Clara	Mexicali	13	Colonia	21110
2783	Pueblo Nuevo	Mexicali	13	Colonia	21120
2784	Río Nuevo	Mexicali	13	Colonia	21120
2785	Baja California	Mexicali	13	Colonia	21130
2786	Orizaba	Mexicali	13	Fraccionamiento	21130
2787	Haciendade Zempoala	Mexicali	13	Colonia	21135
2788	Los Olivos	Mexicali	13	Fraccionamiento	21135
2789	Haciendas Orizaba	Mexicali	13	Fraccionamiento	21135
2790	Las Palmeras	Mexicali	13	Colonia	21135
2791	Palmarde Orizaba	Mexicali	13	Colonia	21135
2792	Sindicalista	Mexicali	13	Colonia	21135
2793	Los Faisanes	Mexicali	13	Colonia	21135
2794	Haciendade Mexicali	Mexicali	13	Fraccionamiento	21135
2795	Mártiresde La Democracia	Mexicali	13	Colonia	21135
2796	Desarrollo Urbano Orizaba Sur	Mexicali	13	Fraccionamiento	21135
2797	Las Magdalenas	Mexicali	13	Fraccionamiento	21135
2798	Soldel Amanecer	Mexicali	13	Fraccionamiento	21135
2799	Lucerna	Mexicali	13	Colonia	21137
2802	Mayos	Mexicali	13	Colonia	21137
3049	Reacomodo Río Colorado	Mexicali	13	Colonia	21324
3050	Zaragoza	Mexicali	13	Colonia	21324
3051	Riveradela Progreso	Mexicali	13	Colonia	21326
3052	Las Pirámides	Mexicali	13	Colonia	21326
3053	Vallede La Plata	Mexicali	13	Colonia	21326
3054	Zona Progreso	Mexicali	13	Colonia	21326
3055	Cucapah Progreso	Mexicali	13	Colonia	21326
3056	Progreso	Mexicali	13	Colonia	21326
3057	Pionerosde La Progreso	Mexicali	13	Colonia	21326
3058	Jardinesde La Progreso	Mexicali	13	Colonia	21326
3059	Ampliación Santa Lucia Progreso	Mexicali	13	Colonia	21326
3060	Villade Alarcón	Mexicali	13	Fraccionamiento	21326
3061	Valledel Diamante	Mexicali	13	Fraccionamiento	21326
3062	Valledel Progreso	Mexicali	13	Fraccionamiento	21326
3063	Villade Alarcón Segunda Etapa	Mexicali	13	Fraccionamiento	21326
3064	Finca Los Jazminez	Mexicali	13	Fraccionamiento	21326
3065	Ciudaddel Sol	Mexicali	13	Colonia	21326
3066	Haciendadelos Portales	Mexicali	13	Fraccionamiento	21327
3067	Haciendadelos Portales3a Sección	Mexicali	13	Fraccionamiento	21327
3068	Mezquital	Mexicali	13	Colonia	21327
3069	Fundadores	Mexicali	13	Fraccionamiento	21327
3070	Haciendadelos Portales2da Sección	Mexicali	13	Fraccionamiento	21327
3071	Haciendadelos Portales4a Sección	Mexicali	13	Fraccionamiento	21327
3072	Haciendadelos Portales5a Sección	Mexicali	13	Fraccionamiento	21327
3073	Haciendade Castilla	Mexicali	13	Fraccionamiento	21327
3074	Haciendadelas Torres	Mexicali	13	Fraccionamiento	21327
3075	Adolfo López Mateos	Mexicali	13	Colonia	21330
3014	Rivera	Mexicali	13	Colonia	21298
3076	Jardinesdel Lago	Mexicali	13	Fraccionamiento	21330
3077	Las Flores	Mexicali	13	Fraccionamiento	21330
3078	Popular6de Enero	Mexicali	13	Fraccionamiento	21330
3079	Televisora	Mexicali	13	Colonia	21337
3080	Santa Mónica	Mexicali	13	Fraccionamiento	21339
3081	Ampliación Jardinesdel Lago	Mexicali	13	Colonia	21339
3082	Cucapah INFONAVIT	Mexicali	13	Unidadhabitacional	21340
3083	Monte Alban	Mexicali	13	Colonia	21340
3085	Conjunto Urbano Esperanza	Mexicali	13	Colonia	21350
3086	Gómez Farías	Mexicali	13	Colonia	21350
3087	Santa Cecilia	Mexicali	13	Colonia	21350
3088	Haciendadel Real	Mexicali	13	Fraccionamiento	21353
3089	Villadel Rey Tercera Etapa	Mexicali	13	Fraccionamiento	21353
3090	Paseosde Xochimilco	Mexicali	13	Colonia	21353
3091	California	Mexicali	13	Fraccionamiento	21353
3092	Villa Esperanza2000	Mexicali	13	Fraccionamiento	21353
3093	Villa Residencial Venecia	Mexicali	13	Fraccionamiento	21353
3094	El Campanario	Mexicali	13	Colonia	21353
3095	Juventud Deportiva2000	Mexicali	13	Fraccionamiento	21353
3096	Xochicalli	Mexicali	13	Fraccionamiento	21353
3097	Hacienda Real	Mexicali	13	Fraccionamiento	21353
3098	Lagode Xochimilco	Mexicali	13	Fraccionamiento	21353
3099	Residencial Madrid	Mexicali	13	Fraccionamiento	21353
3100	Ampliación Xichicalli	Mexicali	13	Fraccionamiento	21353
3101	Villa Residencial Venecia2da Etapa	Mexicali	13	Fraccionamiento	21353
3102	Gran Venecia	Mexicali	13	Fraccionamiento	21353
3103	Terrazasdel Sol	Mexicali	13	Fraccionamiento	21353
3104	Residencial Madrid2a Sección	Mexicali	13	Fraccionamiento	21353
3105	Villadel Rey Primera Etapa	Mexicali	13	Fraccionamiento	21354
3106	Villadel Rey Segunda Etapa	Mexicali	13	Fraccionamiento	21354
3107	Villadel Rey Cuarta Etapa	Mexicali	13	Fraccionamiento	21354
3108	Gran Hacienda	Mexicali	13	Fraccionamiento	21354
3109	Casa Magna	Mexicali	13	Fraccionamiento	21354
3110	Paseolas Flores	Mexicali	13	Fraccionamiento	21354
3111	Villadel Rey Quinta Etapa	Mexicali	13	Fraccionamiento	21355
3112	Zona Urbanadel Ejido Xochimilco	Mexicali	13	Colonia	21355
3113	Haciendadel Bosque	Mexicali	13	Colonia	21355
3114	Villa Residencialdel Prado	Mexicali	13	Fraccionamiento	21355
3115	Quintadel Rey	Mexicali	13	Fraccionamiento	21355
3116	Villa Lomas Altas	Mexicali	13	Fraccionamiento	21355
3117	Villalas Lomas	Mexicali	13	Fraccionamiento	21355
3118	Villa Lomas Altas2a Secc.	Mexicali	13	Fraccionamiento	21355
3119	Residencial Quintadel Rey2a Etapa	Mexicali	13	Fraccionamiento	21355
3120	Villa Margarita Residencial	Mexicali	13	Fraccionamiento	21355
3121	Quinta Granada	Mexicali	13	Fraccionamiento	21355
3122	Villa Lomas Altas3era.Sección	Mexicali	13	Fraccionamiento	21355
3123	Quinta Roma(Quinta Córdova)	Mexicali	13	Fraccionamiento	21355
3124	Buenos Aires	Mexicali	13	Fraccionamiento	21355
3125	Residencial Quintadel Rey3era.Etapa	Mexicali	13	Fraccionamiento	21355
3126	Villa Residencialdel Prado Segunda Etapa	Mexicali	13	Fraccionamiento	21355
3127	Villadel Sol INFONAVIT	Mexicali	13	Colonia	21356
3128	Ex Ejido Coahuila	Mexicali	13	Colonia	21360
3129	Las Palmas	Mexicali	13	Colonia	21360
3130	Sanchez Taboada	Mexicali	13	Colonia	21360
3131	Margaritas	Mexicali	13	Zonaindustrial	21360
3132	Privada Coahuila	Mexicali	13	Fraccionamiento	21360
3133	Carbajal	Mexicali	13	Colonia	21370
3134	Lázaro Cárdenas	Mexicali	13	Colonia	21370
3135	Profesores Federales	Mexicali	13	Colonia	21370
3136	Privada Juárez	Mexicali	13	Fraccionamiento	21370
3137	Plutarco Elías Calles	Mexicali	13	Colonia	21376
3138	Gran Segovia	Mexicali	13	Fraccionamiento	21376
3139	Misióndel Valle	Mexicali	13	Fraccionamiento	21376
3140	Palmarde Santa Anita	Mexicali	13	Fraccionamiento	21376
3141	Hacienda Dorada	Mexicali	13	Fraccionamiento	21376
3142	Villasdel Valle	Mexicali	13	Fraccionamiento	21376
3143	Puertadel Sol2da Etapa	Mexicali	13	Fraccionamiento	21376
3144	Puertadel Sol	Mexicali	13	Colonia	21376
3145	Mayakhan Residencial	Mexicali	13	Fraccionamiento	21376
3146	Bosquedel Sol	Mexicali	13	Fraccionamiento	21376
3147	Terrazasdel Valle	Mexicali	13	Fraccionamiento	21376
3148	Rivera Maya Residencial	Mexicali	13	Fraccionamiento	21376
3149	Verona	Mexicali	13	Fraccionamiento	21376
3150	Residencial Segovia	Mexicali	13	Fraccionamiento	21376
3151	Coral Maya	Mexicali	13	Fraccionamiento	21376
3152	Cerrada Abedul	Mexicali	13	Fraccionamiento	21376
3153	Villasdel Palmar	Mexicali	13	Fraccionamiento	21378
3154	Adara Residencial	Mexicali	13	Fraccionamiento	21378
3155	Adara Residencial Segunda Sección	Mexicali	13	Fraccionamiento	21378
3156	Lomasde Abasolo	Mexicali	13	Colonia	21378
3157	Saturno(Abasolo)	Mexicali	13	Colonia	21378
3158	Villadel Cedro	Mexicali	13	Fraccionamiento	21378
3159	Sevilla	Mexicali	13	Fraccionamiento	21378
3160	Residencial Sevilla2a Sección	Mexicali	13	Fraccionamiento	21378
3161	Sombras Jery	Mexicali	13	Colonia	21378
3162	La Toscana Residencial	Mexicali	13	Fraccionamiento	21378
3163	Nuevo Amanecer	Mexicali	13	Colonia	21378
3164	Los Prados	Mexicali	13	Fraccionamiento	21379
3165	Residencial Quintadel Centro	Mexicali	13	Fraccionamiento	21379
3166	La Bodega ISSSTE	Mexicali	13	Fraccionamiento	21379
3167	Rancho La Bodega	Mexicali	13	Colonia	21379
3168	Realdel Castillo	Mexicali	13	Colonia	21379
3169	Vistadel Llano	Mexicali	13	Fraccionamiento	21379
3170	Santa Lucia	Mexicali	13	Fraccionamiento	21379
3171	Valle Delicias	Mexicali	13	Fraccionamiento	21379
3172	Villa Bonita	Mexicali	13	Fraccionamiento	21379
3173	Misión San Vizcaíno	Mexicali	13	Fraccionamiento	21379
3174	Ampliación San Vizcaíno	Mexicali	13	Colonia	21379
3175	Padre Kino	Mexicali	13	Fraccionamiento	21379
3176	LosÁlamos	Mexicali	13	Fraccionamiento	21379
3177	El Sauzal	Mexicali	13	Fraccionamiento	21379
3178	Jardinesde La Arboleda	Mexicali	13	Fraccionamiento	21379
3179	Las Bugambilias Inn	Mexicali	13	Fraccionamiento	21379
3180	El Maple	Mexicali	13	Fraccionamiento	21379
3181	Santa Veronica	Mexicali	13	Fraccionamiento	21379
3182	Solde Reyes	Mexicali	13	Fraccionamiento	21379
3183	IMSSSiglo XXI	Mexicali	13	Fraccionamiento	21379
3184	Las Misiones	Mexicali	13	Fraccionamiento	21379
3185	Misiónde San Carlos	Mexicali	13	Fraccionamiento	21379
3186	Residencial Ibiza	Mexicali	13	Fraccionamiento	21379
3187	La Antigua	Mexicali	13	Fraccionamiento	21379
3188	Hacienda Málaga	Mexicali	13	Fraccionamiento	21379
3189	Justo Sierra	Mexicali	13	Fraccionamiento	21380
3190	Xochimilco	Mexicali	13	Fraccionamiento	21380
3191	Dos División Dos	Mexicali	13	Colonia	21383
3192	San Andrés	Mexicali	13	Fraccionamiento	21383
3193	Parque Industrial Nelson II	Mexicali	13	Zonaindustrial	21383
3194	Uniónde Residentes Lázaro Cárdenas	Mexicali	13	Colonia	21383
3195	Parque Industrialel Dorado	Mexicali	13	Zonaindustrial	21383
3196	Colorado	Mexicali	13	Zonaindustrial	21383
3197	Privadas Campestre	Mexicali	13	Fraccionamiento	21383
3198	El Ciprés	Mexicali	13	Colonia	21384
3199	El Roble	Mexicali	13	Colonia	21384
3200	El Robledo	Mexicali	13	Colonia	21384
3201	Emiliano Zapata	Mexicali	13	Colonia	21384
3202	Los Encinos	Mexicali	13	Colonia	21384
3203	Huertasdel Colorado	Mexicali	13	Fraccionamiento	21384
3204	Parque Industrial Quazar	Mexicali	13	Zonaindustrial	21385
3205	Satélite	Mexicali	13	Colonia	21385
3206	Marán	Mexicali	13	Zonaindustrial	21385
3207	Cachanilla	Mexicali	13	Zonaindustrial	21385
3208	El Vigía II	Mexicali	13	Zonaindustrial	21385
3209	Visión	Mexicali	13	Zonaindustrial	21385
3210	Palaco	Mexicali	13	Zonaindustrial	21385
3211	Parque Industrial Cucapah	Mexicali	13	Zonaindustrial	21385
3212	Unidad Industrial Paccar México	Mexicali	13	Zonaindustrial	21385
3213	Francisco I.Madero	Mexicali	13	Colonia	21386
3214	Río Hardy	Mexicali	13	Colonia	21386
3215	Vallede San Joaquín	Mexicali	13	Colonia	21386
3216	Granjas Santa Cecilia	Mexicali	13	Fraccionamiento	21386
3217	Granjas Valle Verde	Mexicali	13	Colonia	21386
3218	Ecológicas Campestre	Mexicali	13	Colonia	21386
3219	El Dorado	Mexicali	13	Fraccionamiento	21386
3220	La Ventana Residencial	Mexicali	13	Fraccionamiento	21387
3221	Caminosdel Sol	Mexicali	13	Fraccionamiento	21387
3222	Club Campestrede Mexicali-Golf	Mexicali	13	Equipamiento	21387
3223	Pórticosdel Valle	Mexicali	13	Fraccionamiento	21387
3224	Los Naranjos	Mexicali	13	Fraccionamiento	21387
3225	Jardinesde Calafia	Mexicali	13	Fraccionamiento	21387
3226	Solidaridad Social	Mexicali	13	Fraccionamiento	21387
3227	Popular Leandro Valle	Mexicali	13	Fraccionamiento	21387
3228	Ampliación Solidaridad Social	Mexicali	13	Colonia	21387
3229	Ladrillera Campestre	Mexicali	13	Colonia	21387
3230	Rivera Campestre	Mexicali	13	Colonia	21387
3231	Laguna Campestre	Mexicali	13	Fraccionamiento	21387
3232	Diego Bustamante	Mexicali	13	Colonia	21387
3233	Vistadel Valle	Mexicali	13	Fraccionamiento	21387
3234	Nuevo Milenio	Mexicali	13	Colonia	21387
3235	5de Julio	Mexicali	13	Colonia	21387
3236	MisióndelÁngel	Mexicali	13	Fraccionamiento	21387
3237	Lagodel Sol Residencial	Mexicali	13	Fraccionamiento	21387
3238	Caminodel Sur	Mexicali	13	Fraccionamiento	21387
3239	Hidalgo	Mexicali	13	Colonia	21389
3240	Villa Mediterránea	Mexicali	13	Fraccionamiento	21389
3241	Privada Marbella	Mexicali	13	Fraccionamiento	21389
3242	Veneto Residencial	Mexicali	13	Fraccionamiento	21389
3243	Granjas Nuevas	Mexicali	13	Colonia	21390
3244	Haro Barnet	Mexicali	13	Fraccionamiento	21390
3245	Nueva18de Marzo	Mexicali	13	Colonia	21390
3246	Ignacio Allende	Mexicali	13	Colonia	21390
3247	Francisco IMadero	Mexicali	13	Colonia	21390
3248	Las Californias	Mexicali	13	Zonaindustrial	21394
3249	Venustiano Carranza	Mexicali	13	Colonia	21394
3250	Solidaridad Mexicali	Mexicali	13	Colonia	21394
3251	Las Aves	Mexicali	13	Colonia	21395
3252	Mexicali II	Mexicali	13	Colonia	21395
3253	Nelson	Mexicali	13	Zonaindustrial	21395
3254	Villa Florida	Mexicali	13	Fraccionamiento	21395
3255	Villa Verde	Mexicali	13	Fraccionamiento	21395
3256	Parajesde Oriente	Mexicali	13	Fraccionamiento	21395
3257	Residencial Natura	Mexicali	13	Fraccionamiento	21395
3258	Quinta Alcázarde Toledo	Mexicali	13	Fraccionamiento	21395
3259	Bonaterra Residencial	Mexicali	13	Fraccionamiento	21395
3260	Terra Residencial	Mexicali	13	Fraccionamiento	21395
3261	Parque Industrialdel Desierto	Mexicali	13	Zonaindustrial	21395
3262	Puebla	Mexicali	13	Ejido	21395
3263	Cuernavaca	Mexicali	13	Colonia	21395
3264	Altaria Residencial	Mexicali	13	Fraccionamiento	21395
3265	Unidad Pioneros	Mexicali	13	Fraccionamiento	21395
3266	Villa Flor	Mexicali	13	Fraccionamiento	21395
3267	Ampliación Villa Florida	Mexicali	13	Colonia	21395
3268	Villasdel Colorado	Mexicali	13	Fraccionamiento	21395
3269	Pascualitos	Mexicali	13	Colonia	21395
3270	Ampliación Bugambilias	Mexicali	13	Colonia	21395
3271	Huertasdel Sol	Mexicali	13	Colonia	21395
3272	Valledel Colorado	Mexicali	13	Fraccionamiento	21395
3273	Pimsa III	Mexicali	13	Zonaindustrial	21395
3274	Haciendadel Sol	Mexicali	13	Fraccionamiento	21395
3275	Villasdel Colorado	Mexicali	13	Fraccionamiento	21395
3276	El Sahuaro	Mexicali	13	Zonaindustrial	21395
3277	Casa Blanca	Mexicali	13	Fraccionamiento	21395
3278	Los Balcones	Mexicali	13	Fraccionamiento	21395
3279	Santa Sofía	Mexicali	13	Fraccionamiento	21395
3280	Valledel Pedregal	Mexicali	13	Fraccionamiento	21395
3281	Praderasdel Sol	Mexicali	13	Fraccionamiento	21395
3282	Vallede Puebla	Mexicali	13	Fraccionamiento	21395
3283	Santa Fe	Mexicali	13	Colonia	21395
3284	Villa Toledo	Mexicali	13	Fraccionamiento	21395
3285	Ladrillera	Mexicali	13	Colonia	21395
3286	Monarcas Residencial	Mexicali	13	Fraccionamiento	21395
3287	Residencialdel Río	Mexicali	13	Fraccionamiento	21395
3288	Pedregal Turquesa	Mexicali	13	Fraccionamiento	21395
3289	Ángelesde Puebla	Mexicali	13	Fraccionamiento	21395
3290	Villadel Roble	Mexicali	13	Fraccionamiento	21395
3291	Rinconesde Puebla		13	Fraccionamiento	21395
3292	Victoria Residencial	Mexicali	13	Fraccionamiento	21395
3294	Solde Puebla	Mexicali	13	Colonia	21395
3295	Sesvania	Mexicali	13	Fraccionamiento	21395
3296	Parajesde Puebla	Mexicali	13	Fraccionamiento	21395
3297	Villade Cortés	Mexicali	13	Fraccionamiento	21395
3298	Rinconesde Puebla Segunda Sección		13	Fraccionamiento	21395
3299	Misiónde Puebla		13	Fraccionamiento	21395
3300	Centralde Abastosde Mexicali	Mexicali	13	Zonacomercial	21395
3301	La Condesa	Mexicali	13	Fraccionamiento	21395
3302	Diez División Dos	Mexicali	13	Colonia	21395
3303	Bugambilias	Mexicali	13	Fraccionamiento	21395
3304	El Cóndor	Mexicali	13	Colonia	21395
3305	Frontera	Mexicali	13	Fraccionamiento	21396
3306	González Ortega Norte	Mexicali	13	Colonia	21396
3307	Mexicali	Mexicali	13	Colonia	21396
3308	Mirasol	Mexicali	13	Fraccionamiento	21396
3309	González Ortega	Mexicali	13	Colonia	21396
3310	Santa Cruz	Mexicali	13	Fraccionamiento	21396
3311	El Vigía	Mexicali	13	Zonaindustrial	21397
3312	Pimsa II	Mexicali	13	Zonaindustrial	21397
3313	González Ortega Poniente1	Mexicali	13	Colonia	21398
3314	Raza	Mexicali	13	Colonia	21398
3315	Elizaura	Mexicali	13	Colonia	21399
3316	Eucaliptos	Mexicali	13	Colonia	21399
3317	González Ortega Poniente2	Mexicali	13	Colonia	21399
3318	González Ortega Poniente3	Mexicali	13	Colonia	21399
3319	Nuevo Mexicali	Mexicali	13	Fraccionamiento	21399
3320	Orquídea	Mexicali	13	Fraccionamiento	21399
3321	Paseosdel Sol	Mexicali	13	Fraccionamiento	21399
3322	1de Mayo	Mexicali	13	Colonia	21399
3323	Valle Dorado	Mexicali	13	Fraccionamiento	21399
3324	Puntade Estrella	Mexicali	13	Fraccionamiento	21399
3325	Mexicalidel Sol	Mexicali	13	Colonia	21399
3326	Tavizan Silva	Mexicali	13	Colonia	21399
3327	Los Laureles	Mexicali	13	Fraccionamiento	21399
3328	Villasde La República	Mexicali	13	Colonia	21399
3329	Vivienda Magisterial	Mexicali	13	Fraccionamiento	21399
3330	Casas Eternas	Mexicali	13	Fraccionamiento	21399
3331	Haciendadel Río	Mexicali	13	Fraccionamiento	21399
3332	San Esteban	Mexicali	13	Fraccionamiento	21399
3333	Centro Comercial Nuevo Mexicali	Mexicali	13	Zonacomercial	21399
3334	La Enramada	Mexicali	13	Fraccionamiento	21399
3335	Tecate Centro	Tecate	14	Colonia	21400
3336	Espinoza	Tecate	14	Colonia	21410
3337	Prohogar	Tecate	14	Colonia	21410
3338	Romero	Tecate	14	Fraccionamiento	21410
3339	Esteban Cantú	Tecate	14	Colonia	21420
3340	Pliego	Tecate	14	Colonia	21420
3341	Aldrete	Tecate	14	Colonia	21430
3342	Industrial	Tecate	14	Colonia	21430
3343	1de Mayo	Tecate	14	Colonia	21430
3344	Arroyo Residencial	Tecate	14	Fraccionamiento	21430
3345	Libertad	Tecate	14	Colonia	21430
3346	Andalucía	Tecate	14	Fraccionamiento	21432
3347	Sandoval	Tecate	14	Colonia	21432
3348	Tecate	Tecate	14	Zonaindustrial	21432
3349	San José	Tecate	14	Colonia	21433
3350	Bella Vista	Tecate	14	Colonia	21440
3351	Chávez	Tecate	14	Colonia	21440
3352	Encanto Sur	Tecate	14	Colonia	21440
3353	El Refugio	Tecate	14	Fraccionamiento	21440
3354	Carreño	Tecate	14	Colonia	21440
3355	San Miguel	Tecate	14	Colonia	21440
3356	El Escorial	Tecate	14	Colonia	21440
3357	Palmillas	Tecate	14	Fraccionamiento	21440
3358	Rancho Santa Fe	Tecate	14	Colonia	21442
3359	Encanto Norte	Tecate	14	Colonia	21447
3360	Rancho Gandul	Tecate	14	Colonia	21447
3361	Laderasde Tecate	Tecate	14	Colonia	21447
3362	Lomitasdel Cuchuma	Tecate	14	Fraccionamiento	21447
3363	La Hacienda	Tecate	14	Fraccionamiento	21448
3364	Colinasde Cuchuma	Tecate	14	Fraccionamiento	21449
3365	Solidaridad	Tecate	14	Fraccionamiento	21449
3366	Ampliación Colinasde Cuchuma	Tecate	14	Fraccionamiento	21449
3367	Downey	Tecate	14	Colonia	21450
3368	Federal	Tecate	14	Colonia	21450
3369	Moderna	Tecate	14	Colonia	21450
3370	Zorrilla	Tecate	14	Fraccionamiento	21450
3371	González	Tecate	14	Colonia	21450
3372	INFONAVITCanaima	Tecate	14	Colonia	21450
3373	Los Olivos	Tecate	14	Colonia	21452
3374	Francisco Villa	Tecate	14	Colonia	21452
3375	Trece Ayuntamiento	Tecate	14	Colonia	21452
3376	Rincón Tecate	Tecate	14	Colonia	21452
3377	Rincón Tecate3a Etapa	Tecate	14	Colonia	21452
3378	Rincón Tecate2a Sección	Tecate	14	Fraccionamiento	21452
3379	Escudero	Tecate	14	Fraccionamiento	21452
3380	Rinconada Escudero	Tecate	14	Colonia	21452
3381	Piedra Angular(Las Torres)	Tecate	14	Colonia	21453
3382	El Escorial	Tecate	14	Colonia	21453
3383	Lomasde Santa Anita	Tecate	14	Fraccionamiento	21453
3384	Lomasde Santa Fe	Tecate	14	Fraccionamiento	21453
3385	Santa Anita	Tecate	14	Fraccionamiento	21453
3386	Santa Anita	Tecate	14	Fraccionamiento	21453
3387	Bicentenario	Tecate	14	Fraccionamiento	21453
3388	El Tepeyac	Tecate	14	Colonia	21453
3389	Ilusión	Tecate	14	Colonia	21453
3390	La Viñita	Tecate	14	Colonia	21460
3391	San Fernando	Tecate	14	Fraccionamiento	21460
3392	Valencia	Tecate	14	Fraccionamiento	21460
3393	El Pedregal	Tecate	14	Fraccionamiento	21460
3394	Morelos	Tecate	14	Colonia	21460
3395	Emiliano Zapata	Tecate	14	Colonia	21460
3396	Jardinesdel Pedregal	Tecate	14	Colonia	21460
3397	Miguel Alemán	Tecate	14	Colonia	21462
3398	Cuauhtémoc Oeste	Tecate	14	Colonia	21470
3399	Burócratas	Tecate	14	Colonia	21470
3400	Cuauhtémoc Este	Tecate	14	Colonia	21470
3401	Guajardo	Tecate	14	Colonia	21470
3402	Militar	Tecate	14	Colonia	21470
3403	INFONAVITIndustrial	Tecate	14	Unidadhabitacional	21470
3404	El Capiri	Tecate	14	Colonia	21472
3405	Popular Emiliano Zapata	Tecate	14	Fraccionamiento	21472
3406	Luis Donaldo Colosio	Tecate	14	Colonia	21472
3407	Valle Verde	Tecate	14	Colonia	21472
3408	Ampliación Descanso	Tecate	14	Colonia	21472
3409	El Mirador	Tecate	14	Colonia	21472
3410	La Sierra	Tecate	14	Colonia	21477
3411	El Yaqui	Tecate	14	Colonia	21477
3412	El Mayab	Tecate	14	Fraccionamiento	21478
3413	El Descanso	Tecate	14	Fraccionamiento	21478
3414	Cucapah	Tecate	14	Colonia	21478
3415	Jardinesdel Río	Tecate	14	Colonia	21478
3416	Fundadores	Tecate	14	Colonia	21478
3417	Terrazasdel Río	Tecate	14	Colonia	21478
3418	FOVISSSTE	Tecate	14	Fraccionamiento	21478
3419	Las Huertas	Tecate	14	Colonia	21479
3420	Benito Juárez	Tecate	14	Colonia	21480
3421	Braulio Maldonado	Tecate	14	Colonia	21480
3422	Loma Alta	Tecate	14	Colonia	21480
3423	Loma Alta II	Tecate	14	Colonia	21480
3424	La Bondad	Tecate	14	Colonia	21480
3425	Residencial San Jorge	Tecate	14	Colonia	21480
3426	INFONAVITLoma Alta	Tecate	14	Colonia	21480
3427	Quinta María Luisa	Tecate	14	Fraccionamiento	21482
3428	Tanama	Tecate	14	Colonia	21482
3429	Maclovio Herrera(Colonia Aviación)	Tecate	14	Colonia	21482
3430	Moctezuma	Tecate	14	Fraccionamiento	21483
3431	El Mirador	Tecate	14	Colonia	21483
3432	Salamandra	Tecate	14	Colonia	21484
3433	Paraíso	Tecate	14	Colonia	21485
3434	Lázaro Cárdenas	Tecate	14	Colonia	21490
3435	Alfonso Garzón	Tecate	14	Colonia	21496
3436	Ampliación Valledelas Palmas		14	Colonia	21500
3437	Ramos		14	Rancho	21500
3438	Rancho Viejo		14	Ranchería	21500
3439	Valledelas Palmas		14	Colonia	21500
3440	Parque Industrial El Bajío		14	Zonaindustrial	21503
3441	PasodelÁguila		14	Ranchería	21503
3442	El Bajío		14	Rancho	21503
3443	El Nevado		14	Rancho	21503
3444	Cañada Verde		14	Colonia	21503
3445	El Paraíso(El Capiro)		14	Colonia	21503
3446	Luis EcheverríaÁlvarez(El Hongo)		14	Pueblo	21505
3447	Banchetti		14	Rancho	21506
3448	El Encinal		14	Ejido	21506
3449	Loma Tova		14	Ejido	21506
3450	Villas Campestre		14	Colonia	21507
3451	Unanua		14	Rancho	21507
3452	General FelipeÁngeles		14	Ejido	21507
3453	Nueva Colonia Hindú		14	Colonia	21507
3454	Mi Ranchito(Chula Vista)		14	Colonia	21507
3455	El Paraíso(Baja California)		14	Ejido	21508
3456	Ciénega Redonda		14	Ranchería	21508
3457	Club Campestre Eréndira		14	Fraccionamiento	21508
3458	La Rumorosa		14	Ejido	21510
3459	Jacume		14	Ejido	21511
3460	Jardinesdel Rincón		14	Colonia	21514
3461	San Francisco		14	Ranchería	21517
3462	Ceresodel Hongo		14	Equipamiento	21519
3463	La Puerta		14	Ranchería	21520
3464	Dos Cumbres		14	Rancho	21530
3465	San Pablo		14	Pueblo	21530
3466	Hacienda Tecate		14	Fraccionamiento	21530
3467	Los Laureles		14	Ranchería	21536
3468	Neji Sección B		14	Rancho	21550
3469	Santa Verónica		14	Hacienda	21553
3470	Carmen Serdán		14	Ejido	21570
3471	El Fresno		14	Rancho	21570
3472	El Testerazo		14	Ejido	21570
3473	Guadalajara Dos(El Gato)		14	Ejido	21573
3474	La Rioja		13	Fraccionamiento	21600
3475	Los Manantiales		13	Fraccionamiento	21600
3476	Herradura		13	Ranchería	21600
3477	Islas Agrarias A		13	Ejido	21600
3478	Islas Agrarias B		13	Ranchería	21600
3479	Mariano Abasolo		13	Colonia	21600
3480	Rivera		13	Ejido	21600
3481	Nuevo Milenio		13	Fraccionamiento	21600
3482	Granjas Arco Iris		13	Colonia	21600
3483	San Agustindelas Palmas		13	Fraccionamiento	21600
3484	Bugambilias Jardines		13	Fraccionamiento	21600
3485	Jardinesde Loreto		13	Fraccionamiento	21600
3486	Jardinesde Mendoza		13	Fraccionamiento	21600
3487	Castro		13	Rancho	21606
3488	Castro		13	Colonia	21606
3489	NICOYADesarrollo Industrial		13	Zonaindustrial	21607
3490	Mexicali(Gral.Rodolfo Sánchez Taboada)		13	Aeropuerto	21609
3491	Emiliano Zapata		13	Ranchería	21610
3492	El Centinela		13	Colonia	21610
3493	Ahumadita		13	Ejido	21611
3494	Heriberto Jara		13	Ejido	21611
3495	Heriberto Jara Sección Coronita		13	Ejido	21611
3496	Palo Verde		13	Ranchería	21613
3497	El Chorizo(Colonia Colorado1Campo León1)		13	Colonia	21614
3498	El Choropo(Colonia Colorado Número Uno)		13	Ejido	21615
3499	La Ladrillera(Colorado Número Tres)		13	Colonia	21615
3500	Campoleón		13	Ranchería	21615
3501	El Peligro		13	Ejido	21620
3502	Hechicera		13	Pueblo	21620
3503	Pólvora		13	Ejido	21620
3504	Querétaro		13	Ejido	21620
3505	San Luis Potosí		13	Ejido	21620
3506	Sinaloa		13	Ejido	21620
3507	Jalisco		13	Ejido	21627
3508	Guanajuato		13	Ejido	21628
3509	Cerro Prieto5		13	Colonia	21700
3510	La Flor		13	Rancho	21700
3511	Delta(Estación Delta)		13	Pueblo	21700
3512	Hidalgo		13	Ejido	21700
3513	Jalapa		13	Ejido	21700
3514	Michoacánde Ocampo		13	Ejido	21700
3515	Morelia		13	Ejido	21700
3516	Nayarit		13	Ejido	21700
3517	Chihuahua		13	Ejido	21700
3518	Chimi		13	Colonia	21700
3519	Chorizo Morelia(Morelia)		13	Ejido	21700
3520	El Encanto		13	Fraccionamiento	21703
3521	Hipólito Rentería		13	Ejido	21703
3522	Jesús Sansón Flores		13	Colonia	21703
3523	Cerro Prieto2		13	Colonia	21703
3524	Cerro Prieto4		13	Colonia	21703
3525	Pacífico		13	Colonia	21703
3526	4Cerro Prieto(Ranchoel Roa)		13	Colonia	21703
3527	Benito Juárez		13	Ejido	21703
3528	Seis Granjas Lázaro Cárdenas		13	Colonia	21703
3529	Saltillo		13	Ejido	21704
3530	El Chorizo		13	Ranchería	21704
3531	Nuevo León		13	Ejido	21705
3532	Vicente Guerrero		13	Ejido	21706
3533	Pátzcuaro		13	Ejido	21706
3534	Compuerta29(Veracruz Marítimo)		13	Ranchería	21706
3535	Estación Pescaderos(Kilómetro Treintay Nueve)		13	Pueblo	21710
3536	Primavera		13	Colonia	21713
3537	Guadalupe Victoria		13	Pueblo	21720
3539	Veracruz Uno		13	Ejido	21720
3540	Real Victoria		13	Colonia	21720
3541	Parceladel Valle		13	Colonia	21720
3543	Indeco		13	Fraccionamiento	21720
3544	Vallede Guadalupe		13	Fraccionamiento	21720
3545	Nicolás Bravo		13	Colonia	21720
3546	Valle Nuevo		13	Fraccionamiento	21720
3547	Gral.Francisco Murguía(Km.49)		13	Ejido	21722
3548	Alfredo V.Bonfil		13	Pueblo	21723
3549	Chapultepec		13	Ejido	21723
3550	Madero		13	Colonia	21723
3551	Zonadel Canal(Chapultepéc)		13	Colonia	21723
3552	Benito Juárez		13	Colonia	21723
3553	Galvánel Chorizo(Elías)		13	Colonia	21723
3554	Campo Otta(Elías)		13	Colonia	21723
3555	San Martín(Elías Lote Trece)		13	Ranchería	21723
3556	Hidalgo(González Ortega Dos)		13	Colonia	21725
3557	Las Palmas		13	Colonia	21730
3558	El Marítimo		13	Ejido	21730
3559	Alberto Oviedo Mota		13	Ejido	21730
3560	Cucapah Indígena		13	Ejido	21730
3561	Cucapah(Mestizos)		13	Ejido	21730
3562	El Faro		13	Ejido	21730
3563	La Puerta		13	Ejido	21730
3564	Licenciado Adolfo López Mateos		13	Ejido	21730
3565	Renacimientodel Valle		13	Colonia	21730
3566	Ricardo Mazón Guerrero		13	Colonia	21731
3567	Jesús González Ortega		13	Ejido	21731
3568	La Mariana		13	Colonia	21731
3569	La División(Venustiano Carranza)		13	Ejido	21731
3570	JoséLópez Portillo(Venustiano Carranza)		13	Colonia	21731
3571	Durango		13	Ejido	21735
3572	Sonora		13	Ejido	21738
3573	El Caimán		13	Ejido	21740
3574	Independencia		13	Ejido	21740
3575	Alvarado		13	Colonia	21742
3576	Terrenos Indios		13	Colonia	21742
3577	Comunidad Indígena Cucapahel Mayor		13	Pueblo	21742
3578	Leona Vicario		13	Colonia	21743
3579	Carrancita(Venustiano Carranza)		13	Colonia	21743
3580	Venustiano Carranza Margen Izq(La Carrancita)		13	Colonia	21743
3581	Venustiano Carranza(Estación Coahuila Km.57)		13	Pueblo	21800
3582	Nacay(Elías)		13	Colonia	21800
3583	Hindúes		13	Ejido	21800
3584	Silva		13	Ejido	21800
3585	Campola Curva(Silva)		13	Colonia	21800
3586	La21(Silva)		13	Colonia	21800
3587	El Milagro		13	Colonia	21801
3588	Plande Ayala		13	Ejido	21801
3589	Héroesdela Patria		13	Colonia	21801
3590	Del Bosque		13	Colonia	21801
3591	Cauces Federales		13	Ranchería	21802
3592	Sombrerete		13	Colonia	21802
3593	Sombrerete		13	Ranchería	21802
3594	Doctor Alberto Oviedo Mota(El Indiviso)		13	Ejido	21810
3595	Luis Encinas Johnson		13	Ejido	21813
3596	Quintana Roo		13	Ejido	21820
3597	Toluca		13	Ejido	21820
3598	Crucerodel Toluca(Toluca)		13	Ejido	21820
3599	Rodríguez		13	Colonia	21820
3600	Francisco Santana Peralta		13	Pueblo	21820
3601	Veracruz Dos		13	Ejido	21821
3602	Los Pinos(Silva)		13	Colonia	21821
3603	Lázaro Cárdenas(La Veintiocho)		13	Pueblo	21821
3604	Compuertala24(Silva)		13	Colonia	21821
3605	Zonadel Canal(Veracruz Dos)		13	Ranchería	21821
3606	La Veinticuatro(Silva)		13	Colonia	21821
3607	El Chorizo(Veracruz Dos)		13	Ranchería	21821
3608	Distrito Federal		13	Ejido	21830
3609	Chiapas		13	Ejido	21831
3610	Chiapas Dos(Las Cachoras)		13	Ejido	21832
3612	VIllarreal		13	Colonia	21832
3613	Candelario Vela(Colima)		13	Ranchería	21832
3614	El Bordo(Chiapas)		13	Ranchería	21832
3615	Chiapas3		13	Ejido	21832
3616	Colima Dos		13	Ranchería	21832
3617	El Refugio(Silvael Ombligo)		13	Colonia	21833
3618	Hermosillo		13	Ejido	21840
3619	Pescaderos(Campola Catorce)		13	Colonia	21840
3620	Mezquital		13	Ranchería	21841
3621	El Malo(Tabasco)		13	Ejido	21843
3622	Ingenieros(Hermosillo)		13	Ranchería	21843
3623	Primera Sección	San Felipe	15	Colonia	21850
3624	La Curva	San Felipe	15	Colonia	21850
3625	Naval San Felipe	San Felipe	15	Colonia	21850
3626	Guarnición Militar	San Felipe	15	Fraccionamiento	21850
3627	Militar	San Felipe	15	Fraccionamiento	21850
3628	Porto Bello	San Felipe	15	Fraccionamiento	21850
3629	Realde San Felipe	San Felipe	15	Colonia	21850
3630	Plan Nacional Agrario	San Felipe	15	Colonia	21850
3631	Montañay Mar	San Felipe	15	Colonia	21850
3632	San Felipe Marina Resort	San Felipe	15	Equipamiento	21850
3633	Segunda Sección	San Felipe	15	Colonia	21850
3634	Ampliación Segunda Sección	San Felipe	15	Colonia	21850
3635	Los Gavilanes Sección3	San Felipe	15	Colonia	21850
3636	Los Arcos	San Felipe	15	Colonia	21850
3637	Nuevo San Felipe	San Felipe	15	Fraccionamiento	21850
3638	Baja Marina	San Felipe	15	Fraccionamiento	21850
3639	Verdugo	San Felipe	15	Fraccionamiento	21850
3640	Del Mar	San Felipe	15	Fraccionamiento	21850
3641	Las Dunas	San Felipe	15	Fraccionamiento	21850
3642	Playasde San Felipe	San Felipe	15	Fraccionamiento	21850
3643	Villadelas Palmas	San Felipe	15	Fraccionamiento	21850
3644	Villas San Francisco	San Felipe	15	Condominio	21850
3645	La Hacienda	San Felipe	15	Fraccionamiento	21850
3646	Las Misiones	San Felipe	15	Fraccionamiento	21850
3647	Sterling(Francisco Villa)	San Felipe	15	Colonia	21850
3648	Casimiro Alonso	San Felipe	15	Colonia	21850
3649	Recinto Portuario	San Felipe	15	Colonia	21850
3650	Clubde Pesca	San Felipe	15	Colonia	21850
3651	Ampliación Poniente	San Felipe	15	Colonia	21850
3652	Ranchodel Sol(El Dorado)		15	Ranchería	21853
3653	Palos Verdes Nortey Sur		15	Ejido	21853
3654	Los Viajeros(Plan Nacional Agrario)		15	Ejido	21853
3655	Villasde Cortez		15	Fraccionamiento	21853
3656	El Dorado(Ejido Plan Nacional Agrario)		15	Rancho	21853
3657	Las Minitas		15	Pueblo	21854
3658	La Morita(Tribu Kiliwas)		15	Ejido	21855
3659	Jiquilpan		13	Ejido	21900
3660	Benito Juárez(Ejido Tecolotes)		13	Ejido	21900
3661	México		13	Ejido	21900
3662	Tecolote Bataques		13	Ejido	21900
3663	Álvaro Obregón		13	Ejido	21902
3664	Piedras Negras		13	Ejido	21903
3665	La Curva		13	Colonia	21903
3666	Tehuantepec(Santa Rosa)		13	Ejido	21904
3667	Tabasco		13	Ejido	21905
3668	Villahermosa		13	Ejido	21905
3669	El Chorizo		13	Ranchería	21905
3670	Netzahualcóyotl		13	Ejido	21910
3671	Irapuato		13	Ejido	21910
3672	Lázaro Cárdenas		13	Ejido	21910
3673	Norte		13	Ejido	21910
3674	Yucatán		13	Ejido	21910
3675	Tayjón(Yucatán)		13	Ranchería	21910
3676	Las Cumbres		13	Rancho	21910
3677	Tamaulipas		13	Ejido	21911
3678	Tula		13	Ejido	21911
3679	Vulcano		13	Rancho	21912
3680	Compuertas Carejey(Carehey)		13	Ejido	21913
3681	Monterrey(Colonia Batáquez)		13	Ejido	21913
3682	Los Pérez		13	Ranchería	21920
3683	Mérida		13	Ejido	21920
3684	Paredones		13	Ejido	21920
3685	Villa Hermosa		13	Colonia	21921
3686	Familia Mascareño		13	Colonia	21921
3687	Mesa Arenosade Andrade(Villa Zapata)		13	Pueblo	21925
3688	Miguel Alemán		13	Ejido	21930
3689	Puente Treviño		13	Ejido	21930
3690	Janitzio		13	Pueblo	21950
3691	Guadalajara		13	Ejido	21950
3692	Janitzio		13	Ejido	21951
3693	La27(Campamento SARHKm.27)		13	Colonia	21951
3694	Ciudad Victoria		13	Ranchería	21960
3695	Esquer(Colonia Orivede Alba)		13	Rancho	21960
3696	Ciudad Morelos		13	Colonia	21960
3697	27de Enero		13	Colonia	21960
3698	Tepic		13	Ranchería	21961
3699	Campo Diecinueve		13	Ejido	21961
3700	La Quince(Tepic)		13	Ejido	21961
3701	JoséMaría Rodriguez		13	Colonia	21963
3702	Cuervitos		13	Colonia	21963
3703	Oribe Alba		13	Colonia	21963
3704	Leyesde Reforma		13	Colonia	21964
3705	Puente Calabazas		13	Ranchería	21964
3706	Granados(Recursos Hidráulicos)		13	Colonia	21964
3707	Campoel Dieciocho(Morelos)		13	Ejido	21965
3709	Del Valle		13	Colonia	21970
3710	República Mexicana		13	Ejido	21970
3711	Dieguinos		13	Colonia	21970
3712	Ladrillera		13	Pueblo	21970
3713	Vicente Guerrero(Algodones)		13	Pueblo	21970
3714	Francisco Santana Peralta		13	Colonia	21970
3715	General Gertrudis García Sánchez		13	Ejido	21970
3716	5de Mayo		13	Colonia	21980
3717	Pachuca		13	Ejido	21980
3718	Bordo Okerson(Galeana)		13	Ranchería	21980
3719	Zona Centro	Tijuana	16	Colonia	22000
3720	Zona Este	Tijuana	16	Colonia	22000
3721	Zona Norte	Tijuana	16	Colonia	22000
3722	Empleados Federales	Tijuana	16	Colonia	22010
3723	Cuauhtémoc	Tijuana	16	Colonia	22010
3724	Zona Urbana Río Tijuana	Tijuana	16	Colonia	22010
3725	Escolar Agua Caliente	Tijuana	16	Colonia	22014
3726	Agua Caliente Sección Pinos	Tijuana	16	Colonia	22014
3727	Aviación	Tijuana	16	Colonia	22014
3728	Marrón	Tijuana	16	Colonia	22015
3729	Revolución	Tijuana	16	Colonia	22015
3730	Plande Barranquitas	Tijuana	16	Colonia	22015
3731	Chapultepec	Tijuana	16	Colonia	22020
3732	Hipódromo	Tijuana	16	Colonia	22020
3733	Neidhart	Tijuana	16	Colonia	22020
3734	Rincón Colonial Chapultepec	Tijuana	16	Colonia	22020
3735	Campode Golf	Tijuana	16	Equipamiento	22020
3736	Chapultepec Este	Tijuana	16	Colonia	22020
3737	Chapultepec9a Sección	Tijuana	16	Fraccionamiento	22020
3738	Chapultepec8a Sección	Tijuana	16	Colonia	22020
3739	Chapultepec10a Sección	Tijuana	16	Fraccionamiento	22020
3740	Hipódromo Agua Caliente	Tijuana	16	Colonia	22024
3741	Lomasde Agua Caliente	Tijuana	16	Colonia	22024
3742	Agua Caliente	Tijuana	16	Colonia	22024
3743	Puertade Hierro	Tijuana	16	Colonia	22024
3744	Lomasde Agua Caliente1a Sección	Tijuana	16	Colonia	22025
3745	Ranchoel Grande	Tijuana	16	Colonia	22025
3746	Conjunto Residencial Cataviña	Tijuana	16	Fraccionamiento	22025
3747	Jardinesde Chapultepec	Tijuana	16	Colonia	22025
3748	Privada Catalana	Tijuana	16	Colonia	22025
3749	San Jerónimo	Tijuana	16	Colonia	22025
3750	Colinasde Chapultepec	Tijuana	16	Fraccionamiento	22025
3751	Burócrata Hipódromo	Tijuana	16	Colonia	22030
3752	Colinasde Agua Caliente	Tijuana	16	Colonia	22030
3753	Lomas Hipódromo	Tijuana	16	Colonia	22030
3754	López Mateos	Tijuana	16	Colonia	22030
3755	Haciendalas Palomas	Tijuana	16	Colonia	22030
3756	La Remosa	Tijuana	16	Colonia	22030
3757	Hacienda Agua Caliente	Tijuana	16	Colonia	22030
3758	El Bosque	Tijuana	16	Colonia	22034
3759	Herradura	Tijuana	16	Colonia	22034
3760	Villa Lomas	Tijuana	16	Colonia	22034
3761	Lomasde Agua Caliente5a Sección	Tijuana	16	Colonia	22034
3762	Lomasde Agua Caliente6a Sección(Lomas Altas)	Tijuana	16	Colonia	22034
3763	Jardinesde Chapultepec S-E	Tijuana	16	Colonia	22034
3764	Planetario	Tijuana	16	Colonia	22034
3765	Cañón Oasis	Tijuana	16	Colonia	22034
3766	Pueblo Bonito	Tijuana	16	Colonia	22034
3767	Vista Dorada	Tijuana	16	Fraccionamiento	22034
3768	Cañónde La Pedrera	Tijuana	16	Colonia	22035
3769	Herradura Sur	Tijuana	16	Colonia	22035
3770	Cañónde La Pedrera Este	Tijuana	16	Colonia	22035
3771	Cañón Primavera	Tijuana	16	Colonia	22035
3773	Madero(Cacho)	Tijuana	16	Colonia	22040
3774	América	Tijuana	16	Colonia	22044
3775	Dávila	Tijuana	16	Colonia	22044
3776	Calete	Tijuana	16	Colonia	22044
3777	Gabilondo	Tijuana	16	Colonia	22044
3778	Cubillas	Tijuana	16	Colonia	22045
3779	Cubillas Sur	Tijuana	16	Colonia	22045
3780	Chula Vista	Tijuana	16	Colonia	22045
3781	Lomas Doctores(Chapultepec Doctores)	Tijuana	16	Colonia	22045
3782	Madero Sur	Tijuana	16	Colonia	22046
3783	Guadalajara	Tijuana	16	Colonia	22046
3784	Monterrey	Tijuana	16	Colonia	22046
3785	Fundadores	Tijuana	16	Colonia	22046
3786	Cumbresde Juárez	Tijuana	16	Colonia	22046
3787	Laderasde Monterrey	Tijuana	16	Colonia	22046
3788	Rincón Toscano	Tijuana	16	Fraccionamiento	22046
3789	Castillo	Tijuana	16	Colonia	22050
3790	Alemán	Tijuana	16	Colonia	22050
3791	Altamira	Tijuana	16	Colonia	22054
3792	Roma	Tijuana	16	Colonia	22054
3793	Linda Vista	Tijuana	16	Colonia	22054
3794	Altamira Sur	Tijuana	16	Colonia	22055
3795	Azcona	Tijuana	16	Colonia	22055
3796	Independencia	Tijuana	16	Colonia	22055
3797	Guerrero	Tijuana	16	Colonia	22055
3542	Del Sol		13	Colonia	21720
3798	Hidalgo	Tijuana	16	Colonia	22056
3799	México	Tijuana	16	Colonia	22056
3800	Morelos	Tijuana	16	Colonia	22056
3801	Anexa20de Noviembre	Tijuana	16	Colonia	22100
3802	20de Noviembre	Tijuana	16	Colonia	22100
3803	Los Españoles	Tijuana	16	Colonia	22104
3804	El Pedregal	Tijuana	16	Colonia	22104
3805	Alfonso Coronadel Rosal	Tijuana	16	Colonia	22104
3806	El Pedregal Oeste	Tijuana	16	Colonia	22104
3807	Los Santos	Tijuana	16	Colonia	22104
3808	San Josédel Alto	Tijuana	16	Colonia	22104
3809	El Prado	Tijuana	16	Colonia	22105
3810	Anáhuac	Tijuana	16	Fraccionamiento	22105
3812	Dimenstein	Tijuana	16	Colonia	22105
3813	JoséSandoval	Tijuana	16	Colonia	22105
3814	La Mesa	Tijuana	16	Colonia	22105
3815	López	Tijuana	16	Colonia	22105
3816	LosÁngeles	Tijuana	16	Colonia	22105
3817	Santa Cruz	Tijuana	16	Colonia	22105
3818	Las Lilas	Tijuana	16	Colonia	22105
3819	Moreno	Tijuana	16	Colonia	22105
3820	El Prado Este	Tijuana	16	Colonia	22105
3821	FOVISSSTELos Volcanes	Tijuana	16	Fraccionamiento	22105
3822	La Mesa Sur	Tijuana	16	Colonia	22105
3823	López Oeste	Tijuana	16	Colonia	22105
3824	Santa Rosa	Tijuana	16	Colonia	22106
3825	Cortez	Tijuana	16	Colonia	22106
3826	Alcalá	Tijuana	16	Colonia	22106
3827	Alicia Carrillo	Tijuana	16	Colonia	22106
3828	Angélica	Tijuana	16	Colonia	22106
3829	El Paraíso	Tijuana	16	Colonia	22106
3830	Gerónimo Meza	Tijuana	16	Colonia	22106
3831	La Escondida	Tijuana	16	Colonia	22106
3832	Las Palmas	Tijuana	16	Colonia	22106
3833	López Lucio	Tijuana	16	Colonia	22106
3834	Luz Juárez	Tijuana	16	Colonia	22106
3835	Reynoso	Tijuana	16	Colonia	22106
3836	Jardinesde San Carlos	Tijuana	16	Colonia	22106
3837	Camichin	Tijuana	16	Colonia	22106
3838	Contreras	Tijuana	16	Colonia	22106
3839	Gertrudis Green	Tijuana	16	Colonia	22106
3840	Guillen	Tijuana	16	Colonia	22106
3841	Leos Montoya	Tijuana	16	Colonia	22106
3842	Magaña	Tijuana	16	Colonia	22106
3843	Sonoita	Tijuana	16	Colonia	22106
3844	Electricistas	Tijuana	16	Fraccionamiento	22106
3845	Contreras Oeste	Tijuana	16	Colonia	22106
3846	Gerónimo Meza Este	Tijuana	16	Colonia	22106
3847	Quinta Alta	Tijuana	16	Colonia	22106
3848	Reynoso Parcela162	Tijuana	16	Colonia	22106
3849	Electricistas	Tijuana	16	Unidadhabitacional	22106
3850	San Carlos	Tijuana	16	Fraccionamiento	22106
3851	Residencial Villaflores	Tijuana	16	Fraccionamiento	22110
3852	Buenaventura	Tijuana	16	Fraccionamiento	22110
3853	Los Pirules	Tijuana	16	Colonia	22110
3854	Chapultepec Alamar	Tijuana	16	Colonia	22110
3855	LosÁlamos	Tijuana	16	Colonia	22110
3856	Chihuahua La Mesa	Tijuana	16	Colonia	22114
3857	Fortíndelas Flores	Tijuana	16	Colonia	22114
3858	Santa Elena	Tijuana	16	Colonia	22114
3859	Yamille	Tijuana	16	Colonia	22114
3860	San Antonio	Tijuana	16	Colonia	22114
3861	Fortíndelas Flores Oeste	Tijuana	16	Colonia	22114
3862	INFONAVITLa Mesa	Tijuana	16	Colonia	22114
3863	La Ciénega Poniente	Tijuana	16	Colonia	22114
3864	San Antonio Oeste	Tijuana	16	Colonia	22114
3865	Vaim	Tijuana	16	Colonia	22114
3866	Río Tijuana2a.Etapa	Tijuana	16	Colonia	22114
3867	Moreno2da.Sección	Tijuana	16	Colonia	22115
3868	Las Brisas	Tijuana	16	Colonia	22115
3869	Benton	Tijuana	16	Colonia	22115
3870	Guadalajara(La Mesa)	Tijuana	16	Fraccionamiento	22115
3871	Las Vegas	Tijuana	16	Colonia	22115
3872	Ramírez	Tijuana	16	Colonia	22115
3873	Castro	Tijuana	16	Colonia	22115
3874	Las Huertas3a Sección	Tijuana	16	Colonia	22115
3875	La Joya	Tijuana	16	Colonia	22115
3876	Gasy Anexas	Tijuana	16	Colonia	22115
3877	La Joya Este	Tijuana	16	Colonia	22115
3878	Las Brisas Norte	Tijuana	16	Colonia	22115
3879	Los Olivos	Tijuana	16	Zonaindustrial	22115
3880	Jalisco	Tijuana	16	Colonia	22116
3881	Balcón Las Huertas	Tijuana	16	Colonia	22116
3882	Huertas1a.Sección	Tijuana	16	Colonia	22116
3883	Huertas2a.Sección	Tijuana	16	Colonia	22116
3884	Ramos	Tijuana	16	Colonia	22116
3885	Maurilio Magallón	Tijuana	16	Colonia	22116
3886	Plande Iguala	Tijuana	16	Colonia	22116
3887	Cañónel Salado	Tijuana	16	Colonia	22116
3888	Rubio	Tijuana	16	Colonia	22116
3889	Urías	Tijuana	16	Colonia	22116
3890	El Valle	Tijuana	16	Colonia	22116
3891	Lomas Conjunto Residencial	Tijuana	16	Colonia	22116
3892	Pinosdel Agüero	Tijuana	16	Colonia	22116
3893	Ramos Sur	Tijuana	16	Colonia	22116
3894	Hacienda Acueducto	Tijuana	16	Fraccionamiento	22116
3895	Jardíndelas Bugambilias	Tijuana	16	Fraccionamiento	22116
3896	Anexa Durango	Tijuana	16	Colonia	22117
3897	Chapultepec California	Tijuana	16	Colonia	22117
3898	Durango	Tijuana	16	Colonia	22117
3899	La Esmeralda	Tijuana	16	Colonia	22117
3900	Las Fuentes	Tijuana	16	Colonia	22117
3901	Las Huertas4a Sección	Tijuana	16	Colonia	22117
3902	LosÁrboles	Tijuana	16	Colonia	22117
3903	Santa Fe	Tijuana	16	Colonia	22117
3904	Veracruz	Tijuana	16	Colonia	22117
3905	Anexa Veracruz	Tijuana	16	Colonia	22117
3906	La Villa	Tijuana	16	Colonia	22117
3907	Emperadores	Tijuana	16	Colonia	22117
3908	Guanajuato	Tijuana	16	Colonia	22117
3909	Anexa Santa Fe	Tijuana	16	Colonia	22117
3910	Lomas Las Huertas	Tijuana	16	Fraccionamiento	22117
3911	Arboledasde La Mesa	Tijuana	16	Colonia	22120
3912	Constitucióndel17	Tijuana	16	Colonia	22120
3913	18de Marzo	Tijuana	16	Colonia	22120
3914	La Ciénega	Tijuana	16	Colonia	22120
3915	Zermeño(Mérida)	Tijuana	16	Colonia	22120
3916	Niños Héroes(La Mesa)	Tijuana	16	Colonia	22120
3917	Arboledas	Tijuana	16	Colonia	22120
3918	La Ciénega Sur	Tijuana	16	Colonia	22120
3919	Niños Héroes Este	Tijuana	16	Colonia	22120
3920	Vivienda Magisterial37	Tijuana	16	Colonia	22120
3921	Los Pinos(Limón)	Tijuana	16	Zonaindustrial	22120
3922	Divisióndel Norte	Tijuana	16	Colonia	22120
3923	García	Tijuana	16	Fraccionamiento	22123
3924	Los Venados	Tijuana	16	Colonia	22123
3925	Los Venados Oeste	Tijuana	16	Colonia	22123
3926	Jardinesde Las Arboledas	Tijuana	16	Colonia	22123
3927	El Olivar	Tijuana	16	Colonia	22123
3928	Camino Viejo	Tijuana	16	Fraccionamiento	22123
3929	Villade Alcázar	Tijuana	16	Colonia	22123
3931	Presa Rodriguez	Tijuana	16	Colonia	22124
3932	Terrazasde La Presa	Tijuana	16	Colonia	22124
3933	Colinasdela Presa Sección Montebello	Tijuana	16	Fraccionamiento	22125
3934	Lomasde La Presa	Tijuana	16	Fraccionamiento	22125
3935	Los Reyes	Tijuana	16	Colonia	22125
3936	Villasde Baja California	Tijuana	16	Fraccionamiento	22125
3937	Los Naranjos	Tijuana	16	Colonia	22125
3938	Bosquesde La Presa	Tijuana	16	Fraccionamiento	22125
3939	Colinasdela Presa	Tijuana	16	Fraccionamiento	22125
3940	Cañón Palmas	Tijuana	16	Colonia	22126
3941	Colinasde La Mesa	Tijuana	16	Colonia	22126
3942	Jardinesde La Mesa	Tijuana	16	Fraccionamiento	22126
3943	México Lindo	Tijuana	16	Colonia	22126
3944	3de Octubre	Tijuana	16	Colonia	22126
3945	El Ranchito	Tijuana	16	Colonia	22126
3946	Villa Urrutia	Tijuana	16	Colonia	22126
3947	Residencial Alameda	Tijuana	16	Fraccionamiento	22126
3948	Castro Green	Tijuana	16	Colonia	22127
3949	Las Huertas5a Sección	Tijuana	16	Colonia	22127
3950	Luna Park	Tijuana	16	Colonia	22127
3951	Orizaba	Tijuana	16	Colonia	22127
3952	Baja California	Tijuana	16	Colonia	22127
3953	Campos	Tijuana	16	Fraccionamiento	22127
3954	Pinosde Narez	Tijuana	16	Colonia	22127
3955	Villa Floresta	Tijuana	16	Colonia	22127
3956	Colinasde La Cruz	Tijuana	16	Colonia	22127
3957	INFONAVITLomas Verdes	Tijuana	16	Colonia	22127
3958	Loma Dorada Campos	Tijuana	16	Colonia	22127
3959	Martínez	Tijuana	16	Colonia	22127
3960	Anexa Loma Dorada	Tijuana	16	Colonia	22127
3961	Generación2000	Tijuana	16	Colonia	22160
3962	Granjas Buenos Aires Sección La Palma	Tijuana	16	Colonia	22160
3963	Puerta Plata	Tijuana	16	Fraccionamiento	22163
3964	Tomas Alva Edison	Tijuana	16	Zonaindustrial	22163
3965	La Ilusión	Tijuana	16	Colonia	22163
3966	Hacienda Las Delicias	Tijuana	16	Fraccionamiento	22163
3967	Haciendalos Venados	Tijuana	16	Fraccionamiento	22163
3968	Palma Real	Tijuana	16	Fraccionamiento	22164
3969	Los Valles	Tijuana	16	Fraccionamiento	22164
3970	Natura Sección Arboledas	Tijuana	16	Fraccionamiento	22165
3971	Natura Sección Vistasdel Sol	Tijuana	16	Fraccionamiento	22165
3972	Haciendalas Delicias III	Tijuana	16	Fraccionamiento	22165
3973	Natura Sección Amanecer	Tijuana	16	Fraccionamiento	22165
3974	Natura Sección Bosques	Tijuana	16	Fraccionamiento	22165
3975	Rancho Santa Cruz	Tijuana	16	Colonia	22170
3976	Haciendalos Laureles	Tijuana	16	Fraccionamiento	22170
3977	Santa Cruz	Tijuana	16	Colonia	22170
3978	Emiliano Zapata	Tijuana	16	Colonia	22170
3979	San Luis	Tijuana	16	Colonia	22170
3980	Cañóndel Sainz	Tijuana	16	Colonia	22170
3981	Valle Dorado	Tijuana	16	Fraccionamiento	22170
3982	Colinas San Rafael	Tijuana	16	Colonia	22170
3983	Villadel Prado	Tijuana	16	Fraccionamiento	22170
3984	Villadel Prado Segunda Sección	Tijuana	16	Fraccionamiento	22170
3985	VilladelÁlamo	Tijuana	16	Fraccionamiento	22170
3986	INFONAVITLatinos	Tijuana	16	Unidadhabitacional	22180
3987	Lomasde La Amistad	Tijuana	16	Colonia	22180
3988	Ampliación Reforma	Tijuana	16	Colonia	22180
3989	INFONAVITCachanillas	Tijuana	16	Colonia	22180
3990	Parque Industrial La Mesa	Tijuana	16	Colonia	22180
3991	Reforma	Tijuana	16	Colonia	22183
3930	Tona	Tijuana	16	Colonia	22124
3992	Amparo Sánchez	Tijuana	16	Colonia	22183
3993	Sanchez Taboada II	Tijuana	16	Colonia	22183
3994	Cañón Centenario	Tijuana	16	Colonia	22183
3995	Divisióndel Norte	Tijuana	16	Colonia	22183
3996	María Medina	Tijuana	16	Colonia	22183
3997	Ampliación Sanchez Taboada	Tijuana	16	Colonia	22185
3998	Sanchez Taboada Produtsa	Tijuana	16	Colonia	22185
3999	Niño Artillero	Tijuana	16	Colonia	22185
4000	Colinasde La Cantera	Tijuana	16	Colonia	22185
4001	El Triunfo	Tijuana	16	Colonia	22185
4002	Durán	Tijuana	16	Colonia	22185
4003	Colima	Tijuana	16	Colonia	22185
4004	Sanchez Taboada III	Tijuana	16	Colonia	22185
4005	Sanchez Taboada IV	Tijuana	16	Colonia	22185
4006	Anexa Sanchez Taboada	Tijuana	16	Colonia	22186
4007	La Esperanza	Tijuana	16	Colonia	22186
4008	Carmen Castillo	Tijuana	16	Colonia	22186
4009	Colinasde Cortés	Tijuana	16	Colonia	22186
4010	Camino Verde(Cañada Verde)	Tijuana	16	Colonia	22190
4011	Felipa Velázquez	Tijuana	16	Colonia	22190
4012	Cuauhtémoc	Tijuana	16	Colonia	22190
4013	Los Olivos	Tijuana	16	Colonia	22194
4014	Villa Colonial	Tijuana	16	Colonia	22194
4015	Santa Cecilia	Tijuana	16	Colonia	22194
4016	Residencial Agua Caliente	Tijuana	16	Fraccionamiento	22194
4017	Jardinesde Agua Caliente	Tijuana	16	Colonia	22194
4018	Camino Real	Tijuana	16	Colonia	22195
4019	El Mirador(La Mesa)	Tijuana	16	Colonia	22195
4020	Hipódromo Dos	Tijuana	16	Colonia	22195
4021	Monte Bello	Tijuana	16	Colonia	22195
4022	Realdel Monte	Tijuana	16	Colonia	22195
4023	Santa Anita	Tijuana	16	Fraccionamiento	22195
4024	Sonora	Tijuana	16	Colonia	22195
4025	Los Olivos Norte	Tijuana	16	Colonia	22195
4026	Colinasde SanÁngel	Tijuana	16	Fraccionamiento	22195
4027	Sirak MBaloyan	Tijuana	16	Colonia	22196
4028	Loma Bonita	Tijuana	16	Colonia	22200
4029	Buenos Aires Norte	Tijuana	16	Colonia	22200
4030	Ampliación Loma Bonita	Tijuana	16	Colonia	22200
4031	Jardín Dorado	Tijuana	16	Colonia	22200
4032	Cañóndel Padre	Tijuana	16	Colonia	22203
4033	Granjas Familiaresde Matamoros	Tijuana	16	Colonia	22203
4034	Montecarlo	Tijuana	16	Fraccionamiento	22203
4035	Lomas Terrabella	Tijuana	16	Fraccionamiento	22203
4036	Rincón Dorado	Tijuana	16	Colonia	22203
4037	Pedregaldel Matamoros	Tijuana	16	Colonia	22203
4038	El Encinal	Tijuana	16	Colonia	22204
4039	Ejido Matamoros	Tijuana	16	Colonia	22204
4040	Colasdel Matamoros	Tijuana	16	Colonia	22204
4041	Valle Verde	Tijuana	16	Colonia	22204
4042	El Peñón	Tijuana	16	Colonia	22204
4043	Altiplano	Tijuana	16	Colonia	22204
4044	Planicie	Tijuana	16	Colonia	22204
4045	Altiplano5a Sección	Tijuana	16	Colonia	22204
4046	Valle Imperial	Tijuana	16	Fraccionamiento	22204
4047	Villa Residencialdel Bosque	Tijuana	16	Fraccionamiento	22204
4048	El Mirador	Tijuana	16	Colonia	22204
4049	Riberadel Bosque	Tijuana	16	Fraccionamiento	22204
4050	FIDUZET	Tijuana	16	Colonia	22205
4051	Villadel Real I	Tijuana	16	Fraccionamiento	22205
4052	Villadel Real II	Tijuana	16	Fraccionamiento	22205
4053	Villadel Real III	Tijuana	16	Fraccionamiento	22205
4054	Villadel Real IV	Tijuana	16	Fraccionamiento	22205
4055	Villadel Real V	Tijuana	16	Fraccionamiento	22205
4056	Villadel Real VI	Tijuana	16	Fraccionamiento	22205
4057	Villadel Real VII	Tijuana	16	Fraccionamiento	22205
4058	Villadel Real VIII	Tijuana	16	Fraccionamiento	22205
4059	Villadel Sol I	Tijuana	16	Fraccionamiento	22205
4060	Villadel Sol II	Tijuana	16	Fraccionamiento	22205
4061	Villa Fontana I	Tijuana	16	Fraccionamiento	22205
4062	Villa Fontana II	Tijuana	16	Fraccionamiento	22205
4063	Villa Fontana IX	Tijuana	16	Fraccionamiento	22205
4064	Villa Fontana VI	Tijuana	16	Fraccionamiento	22205
4065	Villa Fontana XIII	Tijuana	16	Fraccionamiento	22205
4066	Villa Fontana XIV	Tijuana	16	Fraccionamiento	22205
4067	Villa Fontana XVI	Tijuana	16	Colonia	22205
4068	Villa Fontana VII	Tijuana	16	Fraccionamiento	22205
4069	Villadel Sol III	Tijuana	16	Fraccionamiento	22205
4070	Villadel Sol IV	Tijuana	16	Fraccionamiento	22205
4071	Villa Fontana III	Tijuana	16	Fraccionamiento	22205
4072	Villa Fontana XII	Tijuana	16	Fraccionamiento	22205
4073	Villa Fontana XVIII	Tijuana	16	Colonia	22205
4074	Villadel Real XI	Tijuana	16	Fraccionamiento	22205
4075	Villadel Real X	Tijuana	16	Fraccionamiento	22205
4076	Villadel Sol V	Tijuana	16	Fraccionamiento	22205
4077	Tierray Libertad	Tijuana	16	Colonia	22206
4078	Mariano Matamoros(Norte)	Tijuana	16	Colonia	22206
4079	Héroesde Independencia	Tijuana	16	Colonia	22206
4080	El Pípila	Tijuana	16	Colonia	22206
4081	Lomasde Matamoros	Tijuana	16	Colonia	22206
4082	Villa Fontana IV	Tijuana	16	Fraccionamiento	22206
4083	Villa Fontana V	Tijuana	16	Fraccionamiento	22206
4084	Villa Fontana X	Tijuana	16	Fraccionamiento	22206
4085	Villa Fontana XI	Tijuana	16	Fraccionamiento	22206
4086	Las Torresde Matamoros	Tijuana	16	Colonia	22206
4087	Villa Fontana VIII	Tijuana	16	Fraccionamiento	22206
4088	Puertadel Sol	Tijuana	16	Colonia	22207
4089	Ampliación Gabriel Rodriguez	Tijuana	16	Colonia	22207
4090	Buenos Aires Sur	Tijuana	16	Colonia	22207
4091	Los Lobos	Tijuana	16	Colonia	22207
4092	Misióndelas Californias	Tijuana	16	Colonia	22207
4094	Colinasdel Alamar(Torresdel Lago)	Tijuana	16	Colonia	22210
4095	Vista Hermosa	Tijuana	16	Fraccionamiento	22210
4096	Mesetasdel Guaycura	Tijuana	16	Colonia	22214
4097	Patria Nueva	Tijuana	16	Colonia	22214
4098	Loma Dorada	Tijuana	16	Fraccionamiento	22214
4099	Pórticosdel Lago	Tijuana	16	Colonia	22214
4100	Ampliación Guaycura	Tijuana	16	Colonia	22214
4101	Urbiquinta Marsella	Tijuana	16	Fraccionamiento	22214
4102	Residencial El Fuerte	Tijuana	16	Fraccionamiento	22214
4103	Presidentes	Tijuana	16	Unidadhabitacional	22215
4104	Baja Maq.ElÁguila	Tijuana	16	Zonaindustrial	22215
4105	Las Misiones	Tijuana	16	Colonia	22215
4106	Las Américas	Tijuana	16	Fraccionamiento	22215
4107	Ampliación Las Américas	Tijuana	16	Colonia	22215
4108	Presidentes	Tijuana	16	Zonaindustrial	22215
4109	RanchoelÁguila	Tijuana	16	Colonia	22215
4110	ElÁguila	Tijuana	16	Fraccionamiento	22215
4111	Plaza España	Tijuana	16	Unidadhabitacional	22215
4112	Plaza San Marcos	Tijuana	16	Unidadhabitacional	22215
4113	Paseosde Guaycura	Tijuana	16	Colonia	22215
4114	Praderasdel Sol	Tijuana	16	Colonia	22215
4115	Pórticosde Tijuana	Tijuana	16	Fraccionamiento	22215
4116	Misióndelas Américas	Tijuana	16	Fraccionamiento	22215
4117	Guaycura	Tijuana	16	Colonia	22216
4118	Bugambilias(Jacarandas)	Tijuana	16	Fraccionamiento	22216
4119	Jardinesdel Lago	Tijuana	16	Fraccionamiento	22217
4120	Lago Sur	Tijuana	16	Zonaindustrial	22217
4121	Haciendael Colorado	Tijuana	16	Colonia	22220
4122	San Carlos	Tijuana	16	Colonia	22223
4123	Cerro Colorado I	Tijuana	16	Colonia	22223
4124	Cerro Colorado2a Sección(Lomasdel Colorado)	Tijuana	16	Colonia	22223
4125	Kino	Tijuana	16	Colonia	22223
4126	Capistrano INFONAVIT	Tijuana	16	Unidadhabitacional	22223
4127	Estadio Potros	Tijuana	16	Unidadhabitacional	22223
4128	JoséLópez Portillo	Tijuana	16	Colonia	22223
4129	Las Praderas	Tijuana	16	Unidadhabitacional	22223
4130	Mirador Capistrano	Tijuana	16	Colonia	22223
4131	Cerro Colorado3a Sección	Tijuana	16	Colonia	22223
4133	Cerro II	Tijuana	16	Colonia	22223
4134	Cerro Colorado	Tijuana	16	Colonia	22223
4135	Azteca	Tijuana	16	Fraccionamiento	22224
4136	El Porvenir	Tijuana	16	Colonia	22224
4137	Praderasde La Mesa	Tijuana	16	Colonia	22224
4138	Fidel Velázquez	Tijuana	16	Unidadhabitacional	22224
4139	Cañónde La Raza	Tijuana	16	Colonia	22224
4140	Villa Cruz	Tijuana	16	Colonia	22224
4141	Agraristas	Tijuana	16	Colonia	22224
4142	Monte Real	Tijuana	16	Fraccionamiento	22224
4143	Insurgentes	Tijuana	16	Fraccionamiento	22224
4144	Los Saucillos	Tijuana	16	Colonia	22225
4145	Praderasde La Mesa Sección Valledelas Flores	Tijuana	16	Fraccionamiento	22225
4146	La Campiña	Tijuana	16	Colonia	22225
4147	IMAQTijuana	Tijuana	16	Colonia	22225
4148	Rodeo	Tijuana	16	Colonia	22225
4149	Anexa Porvenir	Tijuana	16	Colonia	22225
4150	Pórticosde La Mesa	Tijuana	16	Colonia	22225
4151	Mesetadel Chema	Tijuana	16	Colonia	22225
4152	Libramiento(Zona AO)	Tijuana	16	Colonia	22225
4153	El Seminario	Tijuana	16	Colonia	22225
4154	Insurgentes	Tijuana	16	Fraccionamiento	22225
4155	Vistadel Río	Tijuana	16	Fraccionamiento	22226
4156	Paraísodel Río	Tijuana	16	Fraccionamiento	22226
4157	Villasdel Río	Tijuana	16	Fraccionamiento	22226
4158	Alba Roja	Tijuana	16	Unidadhabitacional	22226
4159	Río Tijuana3a Etapa	Tijuana	16	Colonia	22226
4160	Privada Hacienda Córdoba	Tijuana	16	Fraccionamiento	22226
4161	Puertadel Río	Tijuana	16	Fraccionamiento	22226
4162	Horóscopo	Tijuana	16	Colonia	22230
4163	Mariano Matamoros(Centro)	Tijuana	16	Colonia	22234
4164	Mariano Matamoros(Sur)	Tijuana	16	Colonia	22234
4165	Ejido Francisco Villa Sur	Tijuana	16	Colonia	22234
4166	Villasdel Dorado	Tijuana	16	Fraccionamiento	22235
4167	Ejido Francisco Villa2a Sección	Tijuana	16	Colonia	22236
4169	Realde San Francisco	Tijuana	16	Fraccionamiento	22236
4170	El Florido1a.Sección	Tijuana	16	Colonia	22237
4171	El Florido2a.Sección	Tijuana	16	Colonia	22237
4172	El Florido III	Tijuana	16	Colonia	22237
4173	Lomas Virreyes	Tijuana	16	Colonia	22244
4174	El Florido I	Tijuana	16	Zonaindustrial	22244
4175	El Florido II	Tijuana	16	Zonaindustrial	22244
4176	Hacienda Casa Grande	Tijuana	16	Fraccionamiento	22244
4177	Residencial Los Abedules	Tijuana	16	Fraccionamiento	22244
4178	Sevilla Residencial	Tijuana	16	Fraccionamiento	22244
4179	Paseo Santa María	Tijuana	16	Fraccionamiento	22245
4180	La Morita2a Sección	Tijuana	16	Colonia	22245
4181	El Florido IV	Tijuana	16	Colonia	22245
4182	La Morita	Tijuana	16	Colonia	22245
1380	Las Brisas	Aguascalientes	1	Fraccionamiento	20010
1381	Ramon Romo Franco	Aguascalientes	1	Fraccionamiento	20010
1382	Colinasde San Ignacio	Aguascalientes	1	Fraccionamiento	20016
1383	La Fundición	Aguascalientes	1	Fraccionamiento	20016
1384	Fundición II	Aguascalientes	1	Fraccionamiento	20016
1385	Los Sauces	Aguascalientes	1	Fraccionamiento	20016
1386	Líneade Fuego	Aguascalientes	1	Colonia	20018
1387	Buenos Aires	Aguascalientes	1	Colonia	20020
1388	Circunvalación Norte	Aguascalientes	1	Fraccionamiento	20020
1389	Las Arboledas	Aguascalientes	1	Fraccionamiento	20020
1390	Villasde San Francisco	Aguascalientes	1	Fraccionamiento	20020
1391	Villasde La Universidad	Aguascalientes	1	Fraccionamiento	20029
1392	El Sol	Aguascalientes	1	Fraccionamiento	20030
1393	Gremial	Aguascalientes	1	Colonia	20030
1394	Industrial	Aguascalientes	1	Colonia	20030
1395	Altavista	Aguascalientes	1	Colonia	20040
1396	Curtidores	Aguascalientes	1	Colonia	20040
1397	La Concordia	Aguascalientes	1	Fraccionamiento	20040
1398	Miravalle	Aguascalientes	1	Colonia	20040
1399	Panorama	Aguascalientes	1	Fraccionamiento	20040
1400	Residencial Guadalupe	Aguascalientes	1	Fraccionamiento	20040
1401	Colinasdel Poniente	Aguascalientes	1	Fraccionamiento	20049
1402	Bugambilias	Aguascalientes	1	Condominio	20050
1403	Del Carmen	Aguascalientes	1	Colonia	20050
1404	La Fe	Aguascalientes	1	Colonia	20050
1405	México	Aguascalientes	1	Colonia	20050
1406	Primavera	Aguascalientes	1	Colonia	20050
1407	San Pablo	Aguascalientes	1	Colonia	20050
1408	Guadalupe	Aguascalientes	1	Colonia	20059
1409	Heliodoro Garcia	Aguascalientes	1	Colonia	20059
1410	Gómez	Aguascalientes	1	Fraccionamiento	20060
1411	Moderno	Aguascalientes	1	Fraccionamiento	20060
1412	Valledel Rio San Pedro	Aguascalientes	1	Fraccionamiento	20064
1413	Guadalupe Posada	Aguascalientes	1	Unidadhabitacional	20070
1414	San Marcos	Aguascalientes	1	Colonia	20070
1415	San Marcos	Aguascalientes	1	Barrio	20070
1416	San Marcos	Aguascalientes	1	Fraccionamiento	20078
1417	Modelo	Aguascalientes	1	Fraccionamiento	20080
1418	Residencialdel Valle I	Aguascalientes	1	Fraccionamiento	20080
1419	Residencialdel Valle II	Aguascalientes	1	Fraccionamiento	20089
1420	La Herradura	Aguascalientes	1	Fraccionamiento	20100
1421	Club Campestre	Aguascalientes	1	Fraccionamiento	20100
1422	Jardinesdel Campestre	Aguascalientes	1	Condominio	20100
1423	Los Vergeles	Aguascalientes	1	Fraccionamiento	20100
1424	Ciudad Universitaria	Aguascalientes	1	Equipamiento	20100
1425	Rancho San Antonio	Aguascalientes	1	Condominio	20100
1426	Talamantes Ponce	Aguascalientes	1	Colonia	20110
1427	Granjasdel Campestre	Aguascalientes	1	Fraccionamiento	20110
1428	Puertolas Hadas	Aguascalientes	1	Condominio	20110
1429	Valledel Campestre	Aguascalientes	1	Fraccionamiento	20110
1430	Villasde Montenegro	Aguascalientes	1	Fraccionamiento	20110
1431	Las Cavas	Aguascalientes	1	Fraccionamiento	20110
1432	La Enramada	Aguascalientes	1	Fraccionamiento	20110
1433	Trojesde Oriente	Aguascalientes	1	Fraccionamiento	20115
1434	Valledelas Trojes	Aguascalientes	1	Fraccionamiento	20115
1435	Villasde San Nicolás	Aguascalientes	1	Fraccionamiento	20115
1436	San Telmo	Aguascalientes	1	Fraccionamiento	20115
1437	La Paloma	Aguascalientes	1	Condominio	20115
1438	Barriode Santiago	Aguascalientes	1	Fraccionamiento	20115
1439	Villadelas Trojes	Aguascalientes	1	Fraccionamiento	20115
1440	Vallede Santa Teresa	Aguascalientes	1	Fraccionamiento	20115
1441	La Troje	Aguascalientes	1	Fraccionamiento	20116
1442	Trojesde Alonso	Aguascalientes	1	Colonia	20116
1443	San Telmo Residencial	Aguascalientes	1	Fraccionamiento	20116
1444	Santa Fe	Aguascalientes	1	Condominio	20116
1445	Aguascalientes2000	Aguascalientes	1	Fraccionamiento	20117
1446	Las Trojes	Aguascalientes	1	Condominio	20118
1447	Misióndel Campanario	Aguascalientes	1	Fraccionamiento	20118
1448	Trojesde Cristal	Aguascalientes	1	Fraccionamiento	20118
1449	Trojesdel Sol	Aguascalientes	1	Condominio	20118
1450	Residencial Santa Clara	Aguascalientes	1	Fraccionamiento	20118
1451	Misiónde Santiago	Aguascalientes	1	Fraccionamiento	20118
1452	Andora Residencial	Aguascalientes	1	Condominio	20118
1453	Cadaqués Residencial	Aguascalientes	1	Condominio	20118
1454	Valledel Campanario	Aguascalientes	1	Fraccionamiento	20118
1455	Las Misiones	Aguascalientes	1	Fraccionamiento	20118
1456	Los Jarales	Aguascalientes	1	Condominio	20118
1457	Cerrada El Molino	Aguascalientes	1	Condominio	20118
1458	Valle Real	Aguascalientes	1	Fraccionamiento	20118
1459	Terzetto	Aguascalientes	1	Condominio	20118
1460	Cerradade La Misión	Aguascalientes	1	Fraccionamiento	20118
1461	Cerradadel Valle	Aguascalientes	1	Fraccionamiento	20118
1462	Cerradadela Mezquitera	Aguascalientes	1	Fraccionamiento	20118
1463	Lomasdel Campestre2a Sección	Aguascalientes	1	Fraccionamiento	20119
1464	Villasdel Campestre	Aguascalientes	1	Fraccionamiento	20119
1465	Los Calicantos	Aguascalientes	1	Fraccionamiento	20119
1546	El Cobano	Aguascalientes	1	Fraccionamiento	20158
1466	Jardinesdela Concepción	Aguascalientes	1	Fraccionamiento	20120
1467	Los Bosques	Aguascalientes	1	Fraccionamiento	20120
1468	Rinconadalos Bosques	Aguascalientes	1	Condominio	20120
1469	La Perla Norte	Aguascalientes	1	Condominio	20123
1470	Arroyo El Molino	Aguascalientes	1	Fraccionamiento	20123
1471	Galerías	Aguascalientes	1	Zonacomercial	20124
1472	Residencial Altaria	Aguascalientes	1	Fraccionamiento	20124
1473	Constitución	Aguascalientes	1	Fraccionamiento	20126
1474	Libertad	Aguascalientes	1	Fraccionamiento	20126
1475	Pozo Bravo Norte	Aguascalientes	1	Fraccionamiento	20126
1476	Soberana Convención Revolucionaria	Aguascalientes	1	Fraccionamiento	20126
1477	Villa Montaña	Aguascalientes	1	Fraccionamiento	20126
1478	Villasde Don Antonio	Aguascalientes	1	Fraccionamiento	20126
1479	LosÁngeles	Aguascalientes	1	Fraccionamiento	20126
1480	Capittala	Aguascalientes	1	Fraccionamiento	20126
1481	Recintodela Macarena	Aguascalientes	1	Fraccionamiento	20126
1482	La Soledad	Aguascalientes	1	Rancho	20126
1483	Los Naranjos	Aguascalientes	1	Fraccionamiento	20126
1484	Villade Nuestra Señorade La Asunción Sector Guadalupe	Aguascalientes	1	Fraccionamiento	20126
1485	Villa Teresa	Aguascalientes	1	Fraccionamiento	20126
1486	Cartagena1947	Aguascalientes	1	Fraccionamiento	20126
1487	Villasde La Convención	Aguascalientes	1	Fraccionamiento	20126
1488	Lomasde La Asunción	Aguascalientes	1	Fraccionamiento	20126
1489	Villade Nuestra Señorade La Asunción Sector Encino	Aguascalientes	1	Fraccionamiento	20126
1490	Villade Nuestra Señorade La Asunción Sector Alameda	Aguascalientes	1	Fraccionamiento	20126
1491	San Joséde Pozo Bravo	Aguascalientes	1	Fraccionamiento	20126
1492	Villade Nuestra Señorade La Asunción Sector San Marcos	Aguascalientes	1	Fraccionamiento	20126
1493	Villade Nuestra Señorade La Asunción Sector Estación	Aguascalientes	1	Fraccionamiento	20126
1494	Las Plazas	Aguascalientes	1	Condominio	20126
1495	El Rosedal	Aguascalientes	1	Fraccionamiento	20126
1496	Natura	Aguascalientes	1	Fraccionamiento	20126
1497	Montebello Della Stanza	Aguascalientes	1	Fraccionamiento	20126
1498	Villa Notre Dame	Aguascalientes	1	Condominio	20126
1499	Privada Guadalupe	Aguascalientes	1	Condominio	20126
1500	Rinconada Pozo Bravo	Aguascalientes	1	Fraccionamiento	20126
1501	Pozo Bravo Sur	Aguascalientes	1	Fraccionamiento	20126
1502	Villa Loma Dorada	Aguascalientes	1	Fraccionamiento	20126
1503	Jardinesde Montebello	Aguascalientes	1	Fraccionamiento	20126
1504	Villasdel Río	Aguascalientes	1	Fraccionamiento	20126
1505	El Puertecito	Aguascalientes	1	Fraccionamiento	20126
1506	Rinconadadel Puertecito	Aguascalientes	1	Fraccionamiento	20126
1507	Bosquesdel Prado Norte	Aguascalientes	1	Fraccionamiento	20127
1508	Sartenejo	Aguascalientes	1	Rancho	20128
1509	Lomasdel Campestre1a Sección	Aguascalientes	1	Fraccionamiento	20129
1510	Bosquesdel Prado Sur	Aguascalientes	1	Fraccionamiento	20130
1511	El Roble	Aguascalientes	1	Fraccionamiento	20130
1512	Fátima	Aguascalientes	1	Colonia	20130
1513	Independenciade México	Aguascalientes	1	Fraccionamiento	20130
1514	Nueva Rinconada	Aguascalientes	1	Fraccionamiento	20130
1515	Primo Verdad	Aguascalientes	1	Colonia	20130
1516	San Josédel Arenal	Aguascalientes	1	Colonia	20130
1517	Unidad Ganadera	Aguascalientes	1	Colonia	20130
1518	San Xavier	Aguascalientes	1	Condominio	20130
1519	Residencialdel Real	Aguascalientes	1	Fraccionamiento	20130
1520	Puerta Navarra	Aguascalientes	1	Condominio	20130
1521	Residencial Campestre Clubde Golf	Aguascalientes	1	Condominio	20130
1522	Palma Real	Aguascalientes	1	Fraccionamiento	20130
1523	Muralia	Aguascalientes	1	Fraccionamiento	20130
1524	Agropecuario	Aguascalientes	1	Zonacomercial	20135
1525	Centro Distribuidorde Básicos	Aguascalientes	1	Zonacomercial	20135
1526	La Rinconada	Aguascalientes	1	Fraccionamiento	20136
1527	El Plateado	Aguascalientes	1	Fraccionamiento	20137
1528	Residencial Pulgas Pandas Norte	Aguascalientes	1	Condominio	20138
1529	Residencial Pulgas Pandas Sur	Aguascalientes	1	Condominio	20138
1530	Villasdel Vergel	Aguascalientes	1	Condominio	20138
1531	Cerrada San Miguel	Aguascalientes	1	Fraccionamiento	20138
1532	Las Hadas	Aguascalientes	1	Fraccionamiento	20140
1533	Morelos	Aguascalientes	1	Colonia	20140
1535	Los Arcos	Aguascalientes	1	Fraccionamiento	20146
1536	Industrial	Aguascalientes	1	Fraccionamiento	20149
1537	La Estrella	Aguascalientes	1	Fraccionamiento	20150
1538	Macias Arellano	Aguascalientes	1	Colonia	20150
1539	Trento	Aguascalientes	1	Condominio	20150
1540	Nueva Andalucia Coto Residencial	Aguascalientes	1	Condominio	20150
1541	Lomasdel Cobano	Aguascalientes	1	Colonia	20150
1542	Buenavista	Aguascalientes	1	Colonia	20150
1543	C.T.M.	Aguascalientes	1	Fraccionamiento	20150
1544	La Higuerilla	Aguascalientes	1	Colonia	20157
1545	Parras	Aguascalientes	1	Fraccionamiento	20157
1547	Haciendael Cobano	Aguascalientes	1	Fraccionamiento	20158
1548	Trojesdel Cobano	Aguascalientes	1	Fraccionamiento	20158
1549	Villasdel Cobano	Aguascalientes	1	Fraccionamiento	20158
1550	Alianza Ferrocarrilera	Aguascalientes	1	Fraccionamiento	20159
1551	Bosquesdel Prado Oriente	Aguascalientes	1	Fraccionamiento	20159
1552	Francisco Guel Jimenez	Aguascalientes	1	Colonia	20160
1553	Las Viñas INFONAVIT	Aguascalientes	1	Unidadhabitacional	20160
1554	Santa Anita4a Sección	Aguascalientes	1	Colonia	20164
1555	Santa Anita	Aguascalientes	1	Fraccionamiento	20169
1556	Santa Anita2a Sección	Aguascalientes	1	Fraccionamiento	20169
1557	El Maguey	Aguascalientes	1	Fraccionamiento	20170
1558	Las Cumbres	Aguascalientes	1	Condominio	20170
1559	Lic Benito Juárez	Aguascalientes	1	Unidadhabitacional	20170
1560	Nazario Ortiz Garza	Aguascalientes	1	Fraccionamiento	20170
1561	Rodolfo Landeros Gallegos	Aguascalientes	1	Fraccionamiento	20170
1562	S.T.E.M.A.	Aguascalientes	1	Fraccionamiento	20170
1563	Zona Militar	Aguascalientes	1	Colonia	20170
1564	Villa Bonita	Aguascalientes	1	Fraccionamiento	20170
1565	Lic Benito Palomino Dena	Aguascalientes	1	Fraccionamiento	20172
1566	Anexo Benito Palomino Dena(Cumbres II)	Aguascalientes	1	Fraccionamiento	20172
1567	La Floridal	Aguascalientes	1	Fraccionamiento	20172
1568	La Floridall	Aguascalientes	1	Fraccionamiento	20172
1569	Claustros Loma Dorada	Aguascalientes	1	Fraccionamiento	20172
1570	Cumbres III	Aguascalientes	1	Colonia	20172
1571	Lomasde Bellavista	Aguascalientes	1	Fraccionamiento	20174
1572	Lomasdelas Fuentes	Aguascalientes	1	Fraccionamiento	20174
1573	Colinasde Oriente	Aguascalientes	1	Fraccionamiento	20174
1574	Vistadelas Cumbres	Aguascalientes	1	Fraccionamiento	20174
1575	Los Laureles	Aguascalientes	1	Fraccionamiento	20174
1576	Miradordelas Culturas	Aguascalientes	1	Fraccionamiento	20174
1577	El Rocío		1	Ranchería	20174
1578	Villasdela Loma	Aguascalientes	1	Fraccionamiento	20174
1579	Los Pericos	Aguascalientes	1	Colonia	20174
1580	Paseosdel Sol	Aguascalientes	1	Fraccionamiento	20174
1581	Miradoresde Santa Elena	Aguascalientes	1	Fraccionamiento	20174
1582	Villasdelas Fuentes	Aguascalientes	1	Fraccionamiento	20174
1583	La Hojarasca	Aguascalientes	1	Condominio	20175
1584	Ejidolas Cumbres	Aguascalientes	1	Fraccionamiento	20175
1585	JRefugio Esparza Reyes	Aguascalientes	1	Colonia	20175
1586	Rinconadaslas Cumbres	Aguascalientes	1	Fraccionamiento	20175
1587	Lomasde Oriente	Aguascalientes	1	Fraccionamiento	20175
1588	C.N.O.P.Oriente	Aguascalientes	1	Fraccionamiento	20177
1589	Las Cumbres	Aguascalientes	1	Fraccionamiento	20179
1590	Luis Ortega Douglas	Aguascalientes	1	Fraccionamiento	20179
1591	Pensadores Mexicanos	Aguascalientes	1	Fraccionamiento	20179
1592	Pintores Mexicanos	Aguascalientes	1	Fraccionamiento	20179
1593	Progreso	Aguascalientes	1	Colonia	20179
1594	Santa Regina	Aguascalientes	1	Fraccionamiento	20179
1595	Cerro Alto	Aguascalientes	1	Fraccionamiento	20179
1596	Santa Margarita	Aguascalientes	1	Fraccionamiento	20179
1597	Del Trabajo	Aguascalientes	1	Colonia	20180
1598	Ferronales	Aguascalientes	1	Colonia	20180
1599	Luis Gómez Zepeda(ferronales)	Aguascalientes	1	Fraccionamiento	20180
1600	Lomasde Santa Anita	Aguascalientes	1	Colonia	20180
1601	Alameda	Aguascalientes	1	Fraccionamiento	20180
1602	Rinconadade La Alameda	Aguascalientes	1	Condominio	20180
1603	Bosquesde La Alameda	Aguascalientes	1	Condominio	20180
1534	Andrea	Aguascalientes	1	Condominio	20140
1604	Nueva Alameda	Aguascalientes	1	Fraccionamiento	20180
1605	Héroes	Aguascalientes	1	Colonia	20190
1606	La Hacienda	Aguascalientes	1	Condominio	20190
1607	La Mancha	Aguascalientes	1	Condominio	20190
1608	Ojocaliente	Aguascalientes	1	Fraccionamiento	20196
1609	Ojocaliente INEGI	Aguascalientes	1	Unidadhabitacional	20196
1610	Solidaridad1a Sección	Aguascalientes	1	Fraccionamiento	20196
1611	Sol Naciente	Aguascalientes	1	Fraccionamiento	20196
1612	Villadelas Norias	Aguascalientes	1	Fraccionamiento	20196
1613	Camino Real	Aguascalientes	1	Fraccionamiento	20196
1614	Riberadel Sol	Aguascalientes	1	Fraccionamiento	20196
1615	Ambrosía	Aguascalientes	1	Fraccionamiento	20196
1616	JoséGuadalupe Peralta Gámez	Aguascalientes	1	Fraccionamiento	20196
1617	Haciendasde Aguascalientes	Aguascalientes	1	Fraccionamiento	20196
1618	Villerías	Aguascalientes	1	Fraccionamiento	20196
1619	Vistasde Oriente	Aguascalientes	1	Fraccionamiento	20196
1620	Realde Haciendas	Aguascalientes	1	Fraccionamiento	20196
1621	Valledelos Cactus	Aguascalientes	1	Fraccionamiento	20196
1622	Colinasde San Patricio	Aguascalientes	1	Fraccionamiento	20196
1623	Balconesde Oriente	Aguascalientes	1	Fraccionamiento	20196
1624	Terra Nova	Aguascalientes	1	Fraccionamiento	20196
1625	JoséGuadalupe Posada	Aguascalientes	1	Fraccionamiento	20196
1626	El Rocío	Aguascalientes	1	Colonia	20196
1627	Valledel Bicentenario	Aguascalientes	1	Fraccionamiento	20196
1628	Paseodelos Cactus	Aguascalientes	1	Fraccionamiento	20196
1629	Balconesdel Valle	Aguascalientes	1	Fraccionamiento	20196
1630	Realdel Sol	Aguascalientes	1	Fraccionamiento	20196
1631	Ex Hacienda Ojocaliente	Aguascalientes	1	Colonia	20198
1632	Ejido Ojocaliente	Aguascalientes	1	Fraccionamiento	20198
1633	Misión Alameda	Aguascalientes	1	Condominio	20198
1634	El Riego	Aguascalientes	1	Colonia	20199
1635	Fidel Velázquez	Aguascalientes	1	Unidadhabitacional	20199
1636	Municipio Libre	Aguascalientes	1	Fraccionamiento	20199
1637	Bellavista	Aguascalientes	1	Condominio	20200
1638	Loma Bonita	Aguascalientes	1	Fraccionamiento	20200
1639	Nueva Castilla	Aguascalientes	1	Condominio	20200
1640	Xenia Residencial	Aguascalientes	1	Condominio	20200
1641	Vergeldela Cantera	Aguascalientes	1	Fraccionamiento	20200
1642	Villasde La Cantera	Aguascalientes	1	Fraccionamiento	20200
1643	Lic Manuel Gómez Morin	Aguascalientes	1	Fraccionamiento	20200
1644	Residencial San Nicolás	Aguascalientes	1	Fraccionamiento	20200
1645	Villasdel Mediterráneo	Aguascalientes	1	Fraccionamiento	20200
1646	Ex Hacienda La Cantera	Aguascalientes	1	Fraccionamiento	20200
1647	JoséVasconcelos Calderón	Aguascalientes	1	Fraccionamiento	20200
1648	Porta Canteras	Aguascalientes	1	Fraccionamiento	20200
1649	Veteranosdela Revolución	Aguascalientes	1	Colonia	20200
1650	Fuentesdel Lago	Aguascalientes	1	Condominio	20200
1651	El Quelite	Aguascalientes	1	Fraccionamiento	20200
1652	Olinda	Aguascalientes	1	Fraccionamiento	20200
1653	EducaciónÁlamos	Aguascalientes	1	Fraccionamiento	20205
1654	Nueva España	Aguascalientes	1	Colonia	20205
1655	Lic.JoséLópez Portillo	Aguascalientes	1	Fraccionamiento	20206
1656	La Barranquilla	Aguascalientes	1	Colonia	20206
1657	Barandalesde San José	Aguascalientes	1	Colonia	20206
1658	Canterasde San Javier	Aguascalientes	1	Fraccionamiento	20207
1659	Capital City	Aguascalientes	1	Zonacomercial	20207
1660	Rinconada San José	Aguascalientes	1	Fraccionamiento	20207
1661	Canterasde San José	Aguascalientes	1	Fraccionamiento	20208
1662	Circunvalación Poniente	Aguascalientes	1	Fraccionamiento	20210
1663	España	Aguascalientes	1	Fraccionamiento	20210
1664	La Barrancade Guadalupe	Aguascalientes	1	Colonia	20210
1665	Pirules INFONAVIT	Aguascalientes	1	Colonia	20210
1666	Jardinesdelos Pirules	Aguascalientes	1	Fraccionamiento	20216
1667	Residenciallos Pirules	Aguascalientes	1	Fraccionamiento	20217
1668	Canterasde Santa Imelda	Aguascalientes	1	Fraccionamiento	20218
1669	Francisco Villa	Aguascalientes	1	Colonia	20218
1670	Jardinesdel Lago	Aguascalientes	1	Fraccionamiento	20218
1671	Tahona Residencial	Aguascalientes	1	Fraccionamiento	20218
1672	San Martinde La Cantera	Aguascalientes	1	Colonia	20218
1673	Canterasde San Agustin	Aguascalientes	1	Condominio	20218
1674	Santa Imelda	Aguascalientes	1	Condominio	20218
1675	Los Eucaliptos2a.Sección	Aguascalientes	1	Condominio	20218
1676	Los Eucaliptos	Aguascalientes	1	Condominio	20218
1677	San Agustín	Aguascalientes	1	Rancho	20218
1678	El Edén	Aguascalientes	1	Colonia	20219
1679	Parque Industrialel Vergel	Aguascalientes	1	Fraccionamiento	20219
1680	Misión Juan Pablo II	Aguascalientes	1	Condominio	20219
1681	Las Flores	Aguascalientes	1	Colonia	20220
1682	Vivienda Popular	Aguascalientes	1	Unidadhabitacional	20220
1683	Las Torres	Aguascalientes	1	Fraccionamiento	20229
1684	Las Américas	Aguascalientes	1	Fraccionamiento	20230
1685	Obraje	Aguascalientes	1	Colonia	20230
1686	Santa Elena	Aguascalientes	1	Fraccionamiento	20230
1687	Agricultura	Aguascalientes	1	Colonia	20234
1688	El Dorado1a Sección	Aguascalientes	1	Fraccionamiento	20235
1689	El Dorado2a Sección	Aguascalientes	1	Fraccionamiento	20235
1690	Valle Dorado	Aguascalientes	1	Fraccionamiento	20235
1691	Villa Jardín	Aguascalientes	1	Fraccionamiento	20235
1692	Jardinesde Santa Elena	Aguascalientes	1	Colonia	20236
1693	Hermanos Carreón	Aguascalientes	1	Fraccionamiento	20237
1694	Montebello	Aguascalientes	1	Fraccionamiento	20237
1695	Santa Elena2a Sección	Aguascalientes	1	Colonia	20238
1696	La Fuente	Aguascalientes	1	Fraccionamiento	20239
1697	El Laurel	Aguascalientes	1	Colonia	20240
1698	La Luna	Aguascalientes	1	Fraccionamiento	20240
1699	La Salud	Aguascalientes	1	Barrio	20240
1700	Los Virreyes	Aguascalientes	1	Condominio	20240
1701	El Llanito	Aguascalientes	1	Colonia	20240
1702	Residencialel Encino	Aguascalientes	1	Fraccionamiento	20240
1703	Triana	Aguascalientes	1	Fraccionamiento	20240
1704	Residencial Cosío	Aguascalientes	1	Fraccionamiento	20240
1705	Triana	Aguascalientes	1	Condominio	20240
1706	El Encino	Aguascalientes	1	Barrio	20240
1707	San Fernando INFONAVIT	Aguascalientes	1	Unidadhabitacional	20247
1708	Jardinesde Triana	Aguascalientes	1	Fraccionamiento	20248
1709	Gámez	Aguascalientes	1	Fraccionamiento	20249
1710	Jesús Gómez Portugal	Aguascalientes	1	Fraccionamiento	20250
1711	Héroesde Aguascalientes	Aguascalientes	1	Fraccionamiento	20250
1712	Jardinesde La Cruz	Aguascalientes	1	Fraccionamiento	20250
1713	La Huerta	Aguascalientes	1	Colonia	20250
1714	San Luis	Aguascalientes	1	Colonia	20250
1715	Villasde Kristal	Aguascalientes	1	Condominio	20250
1716	Bona Gens	Aguascalientes	1	Fraccionamiento	20255
1717	INFONAVITLos Volcanes	Aguascalientes	1	Unidadhabitacional	20255
1718	FOVISSSTEOjocaliente I	Aguascalientes	1	Unidadhabitacional	20256
1719	Ojocaliente FOVISSSTEII	Aguascalientes	1	Condominio	20256
1720	Ojocalientelas Torres	Aguascalientes	1	Fraccionamiento	20256
1721	Rinconadade La Cruz	Aguascalientes	1	Fraccionamiento	20256
1722	Villasde Ojocaliente	Aguascalientes	1	Fraccionamiento	20256
1723	Parquey Presadel Cedazo	Aguascalientes	1	Equipamiento	20256
1724	Lázaro Cárdenas	Aguascalientes	1	Unidadhabitacional	20257
1725	La Estación	Aguascalientes	1	Barrio	20259
1726	La Purísima	Aguascalientes	1	Barrio	20259
1727	IVCentenario	Aguascalientes	1	Unidadhabitacional	20260
1728	Jesús Terán Peredo	Aguascalientes	1	Fraccionamiento	20260
1729	Vivienda Militar	Aguascalientes	1	Fraccionamiento	20260
1730	Ojode Agua	Aguascalientes	1	Colonia	20260
1731	Sidusa	Aguascalientes	1	Colonia	20260
1732	Rinconada El Cedazo	Aguascalientes	1	Condominio	20260
1733	Agua Clara	Aguascalientes	1	Fraccionamiento	20263
1734	Balconesde Ojocaliente	Aguascalientes	1	Fraccionamiento	20263
1735	Cielo Claro	Aguascalientes	1	Fraccionamiento	20263
1736	Lomasdel Chapulín	Aguascalientes	1	Fraccionamiento	20263
1737	Ojode Aguade Palmitas	Aguascalientes	1	Colonia	20263
1738	Saltode Ojocaliente	Aguascalientes	1	Fraccionamiento	20263
1739	Solidaridad2a Sección	Aguascalientes	1	Fraccionamiento	20263
1740	Solidaridad3a Sección	Aguascalientes	1	Fraccionamiento	20263
1741	Tierra Buena	Aguascalientes	1	Fraccionamiento	20263
1742	Rinconada San Antonio I	Aguascalientes	1	Fraccionamiento	20263
1743	Cimadel Chapulín	Aguascalientes	1	Fraccionamiento	20263
1744	Cobanode Palmitas	Aguascalientes	1	Fraccionamiento	20263
1745	San Jorge	Aguascalientes	1	Fraccionamiento	20263
1746	La Lomita	Aguascalientes	1	Fraccionamiento	20263
1747	Villalas Palmas	Aguascalientes	1	Fraccionamiento	20263
1748	Bajíodelas Palmas	Aguascalientes	1	Fraccionamiento	20263
1749	Lomasdel Gachupín	Aguascalientes	1	Fraccionamiento	20263
1750	El Cedazo	Aguascalientes	1	Fraccionamiento	20263
1751	SanÁngel	Aguascalientes	1	Fraccionamiento	20263
1752	Villa Taurina	Aguascalientes	1	Fraccionamiento	20263
1753	Morelos INFONAVIT	Aguascalientes	1	Unidadhabitacional	20264
1754	Vistadel Sol2a Sección	Aguascalientes	1	Fraccionamiento	20264
1755	Vistadel Sol3a Sección	Aguascalientes	1	Fraccionamiento	20264
1756	Ojode Agua INFONAVIT	Aguascalientes	1	Unidadhabitacional	20265
1757	Jardinesdel Sol	Aguascalientes	1	Fraccionamiento	20266
1758	La Cruz	Aguascalientes	1	Colonia	20266
1759	Misiónde Santa Fe	Aguascalientes	1	Colonia	20266
1760	Vistadel Sol1a Sección	Aguascalientes	1	Fraccionamiento	20266
1761	S.T.E.M.A.	Aguascalientes	1	Condominio	20267
1762	Jardinesde La Convención	Aguascalientes	1	Colonia	20267
1763	Ojode Agua FOVISSSTE1a Sección	Aguascalientes	1	Unidadhabitacional	20267
1764	Lic Primo Verdad INEGI	Aguascalientes	1	Condominio	20267
1765	Fuentesde La Asunción	Aguascalientes	1	Fraccionamiento	20268
1766	Jardinesde La Luz	Aguascalientes	1	Colonia	20269
1767	Mesonero	Aguascalientes	1	Fraccionamiento	20270
1768	Bulevar	Aguascalientes	1	Fraccionamiento	20270
1769	El Caminero	Aguascalientes	1	Fraccionamiento	20270
1847	Lomasdel Sur	Aguascalientes	1	Fraccionamiento	20298
1770	Jardinesde Aguascalientes	Aguascalientes	1	Fraccionamiento	20270
1771	Jardinesde La Asunción	Aguascalientes	1	Colonia	20270
1773	Lindavista	Aguascalientes	1	Fraccionamiento	20270
1774	México	Aguascalientes	1	Fraccionamiento	20270
1775	Los Cedros	Aguascalientes	1	Fraccionamiento	20270
1776	Jardinesdelas Bugambilias	Aguascalientes	1	Colonia	20276
1777	Jardinesdel Parque	Aguascalientes	1	Fraccionamiento	20276
1778	Jardinesde Alejandría	Aguascalientes	1	Condominio	20276
1779	Pirámides	Aguascalientes	1	Fraccionamiento	20277
1780	Residencialdel Parque	Aguascalientes	1	Fraccionamiento	20277
1781	Rinconadadel Parque	Aguascalientes	1	Condominio	20277
1782	Jardinesdelas Fuentes	Aguascalientes	1	Fraccionamiento	20278
1783	Casasolida	Aguascalientes	1	Fraccionamiento	20280
1784	Centralde Abastos	Aguascalientes	1	Zonacomercial	20280
1785	Jardinesdel Sur	Aguascalientes	1	Colonia	20280
1786	Martinez Dominguez	Aguascalientes	1	Colonia	20280
1787	Pradosde Villasunción	Aguascalientes	1	Fraccionamiento	20280
1788	Pradosdel Sur	Aguascalientes	1	Fraccionamiento	20280
1789	San Franciscodel Arenal	Aguascalientes	1	Colonia	20280
1790	San Pedro	Aguascalientes	1	Colonia	20280
1791	Torresde San Francisco	Aguascalientes	1	Fraccionamiento	20280
1792	Trojesdel Sur	Aguascalientes	1	Fraccionamiento	20280
1793	Australis	Aguascalientes	1	Condominio	20280
1794	Conjunto San Francisco	Aguascalientes	1	Fraccionamiento	20280
1795	Parque Industrial Siglo XXI	Aguascalientes	1	Parqueindustrial	20283
1796	Parque Industrial Siglo XXI(Ampliación)	Aguascalientes	1	Parqueindustrial	20283
1797	La Casita	Aguascalientes	1	Fraccionamiento	20284
1798	La Estancia	Aguascalientes	1	Fraccionamiento	20284
1799	INFONAVITPotrerosdel Oeste	Aguascalientes	1	Unidadhabitacional	20284
1800	Villasde Santa Rosa	Aguascalientes	1	Fraccionamiento	20284
1801	Villasdel Oeste	Aguascalientes	1	Fraccionamiento	20284
1802	Vistasdel Sur	Aguascalientes	1	Fraccionamiento	20284
1803	Rinconadadel Sur	Aguascalientes	1	Fraccionamiento	20284
1804	Villasdel Encino	Aguascalientes	1	Fraccionamiento	20284
1805	Versalles1a Sección	Aguascalientes	1	Fraccionamiento	20285
1806	Versalles2a Sección	Aguascalientes	1	Fraccionamiento	20285
1807	Bosque Real	Aguascalientes	1	Condominio	20286
1808	Rancho Santa Mónica	Aguascalientes	1	Fraccionamiento	20286
1809	Vicente Guerrero	Aguascalientes	1	Colonia	20286
1810	Villasdel Pilar1a Sección	Aguascalientes	1	Fraccionamiento	20286
1811	Barlovento	Aguascalientes	1	Condominio	20286
1812	Abadía	Aguascalientes	1	Condominio	20286
1813	Mangata	Aguascalientes	1	Condominio	20286
1814	Villas San Antonio	Aguascalientes	1	Fraccionamiento	20286
1815	Villa Capri	Aguascalientes	1	Fraccionamiento	20286
1816	Providencia	Aguascalientes	1	Condominio	20286
1817	Rinconada Santa Mónica	Aguascalientes	1	Fraccionamiento	20286
1818	Paseosde Santa Mónica	Aguascalientes	1	Condominio	20286
1819	Insurgentes	Aguascalientes	1	Fraccionamiento	20287
1820	Bulevares1a.Sección	Aguascalientes	1	Fraccionamiento	20288
1821	Bulevares2a.Sección	Aguascalientes	1	Fraccionamiento	20288
1822	Pilar Blanco INFONAVIT	Aguascalientes	1	Unidadhabitacional	20289
1823	Ciudad Industrial	Aguascalientes	1	Fraccionamiento	20290
1824	Plaza Vestir	Aguascalientes	1	Zonacomercial	20290
1825	Vista Alegre	Aguascalientes	1	Fraccionamiento	20290
1826	Parque Industrial ALTEC	Aguascalientes	1	Fraccionamiento	20290
1827	Centro SCTAguascalientes	Aguascalientes	1	Equipamiento	20291
1828	Rústicos Calpulli	Aguascalientes	1	Fraccionamiento	20296
1829	Reserva San Matías	Aguascalientes	1	Condominio	20296
1830	Villasde Bonaterra	Aguascalientes	1	Condominio	20296
1831	San Franciscodelos Arteaga	Aguascalientes	1	Fraccionamiento	20296
1832	Residencial San Javier	Aguascalientes	1	Fraccionamiento	20296
1833	Villa Sur	Aguascalientes	1	Fraccionamiento	20296
1834	Casa Blanca	Aguascalientes	1	Fraccionamiento	20297
1835	Jardinesde Casablanca	Aguascalientes	1	Fraccionamiento	20297
1836	Jardinesde Casanueva	Aguascalientes	1	Fraccionamiento	20297
1837	Emiliano Zapata	Aguascalientes	1	Fraccionamiento	20298
1838	Morelos I	Aguascalientes	1	Fraccionamiento	20298
1772	Las Canoas	Aguascalientes	1	Colonia	20270
1839	Morelos2a Sección	Aguascalientes	1	Fraccionamiento	20298
1840	Solidaridad4a Sección	Aguascalientes	1	Fraccionamiento	20298
1841	Residencial Hacienda San Martín	Aguascalientes	1	Fraccionamiento	20298
1842	Viñedosdel Sur	Aguascalientes	1	Fraccionamiento	20298
1843	Reserva Villa Sur	Aguascalientes	1	Fraccionamiento	20298
1844	Villasde Ajedrez	Aguascalientes	1	Colonia	20298
1845	Lomasde Vistabella	Aguascalientes	1	Fraccionamiento	20298
1846	San Sebastián	Aguascalientes	1	Fraccionamiento	20298
1848	Lomasde Nueva York	Aguascalientes	1	Colonia	20298
1849	Laurelesdel Sur	Aguascalientes	1	Fraccionamiento	20298
1850	Lomasdel Mirador	Aguascalientes	1	Fraccionamiento	20298
1851	Misiónde Santa Lucía	Aguascalientes	1	Fraccionamiento	20298
1852	Lomasde Vistabella2a.Sección	Aguascalientes	1	Fraccionamiento	20298
1853	Lotesde Arellano	Aguascalientes	1	Fraccionamiento	20298
1854	Condominio Laterraza	Aguascalientes	1	Fraccionamiento	20298
1855	Valledel Cedazo	Aguascalientes	1	Fraccionamiento	20298
1856	Paseosde San Antonio	Aguascalientes	1	Fraccionamiento	20298
1857	Hacienda San Marcos	Aguascalientes	1	Condominio	20298
1858	Lomasdel Ajedrez	Aguascalientes	1	Fraccionamiento	20299
1859	Mujeres Ilustres	Aguascalientes	1	Colonia	20299
1860	Periodistas	Aguascalientes	1	Fraccionamiento	20299
1861	Villadel Chapulín	Aguascalientes	1	Fraccionamiento	20299
1863	Fundadores	Aguascalientes	1	Fraccionamiento	20299
1864	Lomasde San Jorge	Aguascalientes	1	Fraccionamiento	20299
1865	Reencuentro	Aguascalientes	1	Fraccionamiento	20299
1866	Villalta	Aguascalientes	1	Fraccionamiento	20299
1867	Lunaria	Aguascalientes	1	Fraccionamiento	20299
1868	Panamericano	San Franciscodelos Romo	11	Colonia	20300
1869	San Franciscodelos Romos Centro	San Franciscodelos Romo	11	Colonia	20300
1870	El Tirón(El Progreso)	San Franciscodelos Romo	11	Colonia	20303
1871	Hidalgo	San Franciscodelos Romo	11	Fraccionamiento	20303
1872	La Aurora	San Franciscodelos Romo	11	Granja	20303
1873	La Guadalupana	San Franciscodelos Romo	11	Granja	20303
1874	La Perla	San Franciscodelos Romo	11	Granja	20303
1875	Los Cedros	San Franciscodelos Romo	11	Colonia	20303
1876	María	San Franciscodelos Romo	11	Granja	20303
1877	Revolución	San Franciscodelos Romo	11	Fraccionamiento	20303
1878	San Francisco	San Franciscodelos Romo	11	Granja	20303
1879	San JoséBuenavista	San Franciscodelos Romo	11	Colonia	20303
1880	Cerrada San Francisco	San Franciscodelos Romo	11	Fraccionamiento	20303
1881	Fraccióndela Trinidad II	San Franciscodelos Romo	11	Colonia	20304
1882	La Escondida(El Salero)	San Franciscodelos Romo	11	Colonia	20304
1883	Monserrat	San Franciscodelos Romo	11	Granja	20304
1884	San Josédel Barranco	San Franciscodelos Romo	11	Colonia	20304
1885	San Juan	San Franciscodelos Romo	11	Granja	20304
1886	28de Abril	San Franciscodelos Romo	11	Colonia	20304
1887	Santa Bárbara	San Franciscodelos Romo	11	Fraccionamiento	20304
1888	El Cardonal	San Franciscodelos Romo	11	Fraccionamiento	20304
1889	Santa Fe	San Franciscodelos Romo	11	Fraccionamiento	20304
1890	El Barranco	San Franciscodelos Romo	11	Colonia	20305
1891	El Gigante	San Franciscodelos Romo	11	Colonia	20305
1892	El Refugio	San Franciscodelos Romo	11	Granja	20305
1893	Santa Elena(Elena)	San Franciscodelos Romo	11	Granja	20305
1894	La Gloria	San Franciscodelos Romo	11	Rancho	20305
1895	La Paz	San Franciscodelos Romo	11	Ranchería	20305
1896	La Providencia	San Franciscodelos Romo	11	Colonia	20305
1897	La Trinidad	San Franciscodelos Romo	11	Colonia	20305
1898	La Unión	San Franciscodelos Romo	11	Colonia	20305
1899	Las Carmelitas	San Franciscodelos Romo	11	Colonia	20305
1900	Los Lirios	San Franciscodelos Romo	11	Fraccionamiento	20305
1901	Sociedad Plandelos Sabinos	San Franciscodelos Romo	11	Colonia	20305
1902	SanÁngel	San Franciscodelos Romo	11	Colonia	20305
1903	San Pedro Victoriade Arriba	San Franciscodelos Romo	11	Colonia	20305
1904	Santa Anita	San Franciscodelos Romo	11	Colonia	20305
1905	Zacatenco	San Franciscodelos Romo	11	Granja	20305
1906	Mary	San Franciscodelos Romo	11	Granja	20306
1907	Villade Guadalupe	San Franciscodelos Romo	11	Rancho	20306
1908	San Pablo	San Franciscodelos Romo	11	Rancho	20306
1909	Los Corrales(Los Corrales Blancos)	San Franciscodelos Romo	11	Rancho	20306
1910	El Chamizal	San Franciscodelos Romo	11	Rancho	20306
1911	Los Negritos		1	Ranchería	20310
1912	Coyotes		1	Colonia	20310
1913	Viñedos Valle Redondo		1	Ranchería	20310
1914	La Lomadelos Negritos		1	Pueblo	20310
1915	Viñedos San Felipe		1	Colonia	20310
1916	Cuauhtémoc(Las Palomas)		1	Ejido	20313
1917	Hacienda Nueva		1	Ranchería	20313
1918	El Cariñán		1	Granja	20314
1919	Santa Cruzdela Presa		1	Ranchería	20316
1920	Lomasdel Picacho		1	Fraccionamiento	20316
1921	CERESO(Para Varonesy Mujeres)		1	Zonafederal	20319
1922	Estación Cañada Honda		1	Colonia	20320
1923	General JoséMaría Morelosy Pavón(Cañada Honda)		1	Pueblo	20320
1925	Santa Maríade Gallardo		1	Ejido	20323
1926	Jaltomate		1	Ejido	20324
1927	Loretta		1	Condominio	20326
1928	Parque Industrial Tecnopolo2(PITP2)		1	Zonaindustrial	20326
1929	La Aurora		1	Condominio	20326
1930	Bosque Sereno		1	Condominio	20326
1931	Cavalia		1	Condominio	20326
1932	Quintalos Olivos		1	Fraccionamiento	20326
1933	Misiónde San Jerónimo		1	Fraccionamiento	20326
1934	Privada Los Olivos		1	Fraccionamiento	20326
1935	Residencial Puntadel Cielo		1	Fraccionamiento	20326
1936	Portón San Ignacio		1	Fraccionamiento	20326
1937	Vallede San Ignacio(El Filso)		1	Colonia	20326
1938	San Ignacio		1	Ejido	20326
1939	La Trinidad		1	Fraccionamiento	20326
1940	Tamarindos		1	Fraccionamiento	20326
1941	XaramáEntorno Residencial		1	Fraccionamiento	20326
1942	Puestadel Sol		1	Fraccionamiento	20326
1943	La Soledad		1	Fraccionamiento	20326
1944	La Rioja		1	Fraccionamiento	20326
1945	Rinconadade San Ignacio		1	Condominio	20326
1946	Ex-Haciendade San Ignacio		1	Ranchería	20326
1947	La Perla		1	Colonia	20326
1948	San Ignacio II		1	Colonia	20326
1949	San Ignacio III		1	Colonia	20326
1950	Los Fresnos		1	Condominio	20328
1951	Terranza		1	Condominio	20328
1952	Pocitos		1	Colonia	20328
1953	Parque Industrial Tecnopolo Pocitos		1	Zonaindustrial	20328
1954	Privanza Andaluz		1	Condominio	20329
1955	Residencial Las Quintas		1	Fraccionamiento	20329
1956	La Querencia		1	Condominio	20329
1957	Rincón Andaluz		1	Condominio	20329
1958	La Plazuela		1	Condominio	20329
1959	Torres Residencial Campestre Santamaría		1	Fraccionamiento	20329
1960	La Punta Campestre		1	Condominio	20329
1961	Contadero		1	Condominio	20329
1962	La Joya		1	Condominio	20329
1963	Río Viejo		1	Condominio	20329
1964	Crucero Ojode Aguade Crucitas		10	Ranchería	20330
1965	Palo Alto		10	Ejido	20330
1966	De Triana		10	Barrio	20330
1967	Palo Alto Centro		10	Colonia	20330
1968	Pobre		10	Barrio	20330
1969	De Afuera		10	Barrio	20330
1970	De Abajo		10	Barrio	20330
1971	El Progreso		10	Barrio	20330
1972	El Salto		10	Barrio	20330
1973	El Saucito		10	Barrio	20330
1974	El Cotón		10	Rancho	20333
1975	El Milagro		10	Ranchería	20333
1976	Las Flores(El Cotón)		10	Ejido	20333
1977	Licenciado Jesús Terán(El Muerto)		10	Ejido	20333
1978	San Franciscodelos Viveros		10	Ranchería	20333
1979	Sandovales(San Migueldelos Sandovales)		10	Ejido	20333
1980	San Franciscodelos Pedroza		10	Ranchería	20333
1981	El Barreno(Ampliación San Francisco)		10	Colonia	20333
1982	El Mocho		10	Ranchería	20333
1983	San Gerónimo		10	Ranchería	20333
1984	San José(San Antoniode Montoya)		10	Granja	20333
1985	El Novillo		10	Ranchería	20334
1986	La Luz		10	Ejido	20334
1987	El Puertecito		10	Ranchería	20335
1988	Ojode Aguade Crucitas		10	Ejido	20335
1989	El Terremoto		10	Ejido	20336
1990	Francisco Sarabia(La Reforma)		10	Ranchería	20336
1991	Los Conos		10	Ejido	20336
1992	Montoya		10	Ejido	20336
1993	Santa Rosa(El Huizache)		10	Ejido	20336
1994	El Retoño		10	Ranchería	20337
1995	La Tinaja		10	Ejido	20337
1996	El Rosario		10	Ranchería	20337
1997	El Copetillo		10	Ranchería	20338
1998	El Tildío		10	Ejido	20338
1999	La Unión(La Paz)		10	Ejido	20338
2000	Rancho Nuevo		10	Ranchería	20338
2001	El Chonguillo(El Chonguito)		10	Ranchería	20338
2002	El Copetillo(El Moquete)		10	Ranchería	20338
2003	Tanqueel Coyote(El Coyote)		10	Ranchería	20338
2004	Mirasoles		10	Ranchería	20338
2005	San José(San Josédelos Rodríguez)		10	Ranchería	20339
2006	El Centenario		10	Ranchería	20339
2007	Santa Rita		10	Ranchería	20339
2008	La Primavera		10	Ranchería	20339
2009	Lomasdel Refugio(La Loma)		10	Ranchería	20339
2010	Santa Elena		10	Colonia	20339
2011	El Llano[CERESO]		10	Zonafederal	20339
2012	Granja Temixco		10	Ranchería	20339
2013	El Paraíso(Santa Rita)		10	Ranchería	20339
2014	Santa Rita Uno(Santa Rita)		10	Ranchería	20339
2015	San Lorenzo		10	Ranchería	20339
2016	Santa Clara(Las Mieleras)		10	Ranchería	20339
2017	San Agustíndelos Díaz		10	Ranchería	20339
2018	La Lucita		10	Ranchería	20339
2019	La Calavera		10	Ranchería	20339
2021	San Ramón		10	Ranchería	20339
2022	Parque Industrialde Logística Automotriz(PILA)		1	Zonaindustrial	20340
2023	Arellano		1	Ejido	20340
2024	Buenavistade Peñuelas		1	Ejido	20340
2025	Peñuelas(El Cienegal)		1	Colonia	20340
2026	El Cedazo(Cedazode San Antonio)		1	Ejido	20340
2027	El Saltodelos Salado		1	Ranchería	20341
2028	San Francisco		1	Ranchería	20342
2029	San Gerardo		1	Condominio	20342
2030	Santa Gertrudis		1	Ranchería	20342
2031	San José		1	Ranchería	20343
2032	Villa Licenciado Jesús Terán(Calvillito)		1	Pueblo	20344
2033	Montoro(Mesadel Salto)		1	Ejido	20345
2034	Los Caños		1	Ejido	20346
2035	Dolores		1	Ranchería	20347
2036	El Turicate		1	Colonia	20347
2037	San Antoniode Peñuelas		1	Ejido	20348
2038	Aguascalientes(Lic.Jesús Terán Peredo)		1	Aeropuerto	20349
2039	Los Capricornios(La Biznaga)		11	Ejido	20350
2040	Loretito(Charcodel Toro)		11	Ejido	20350
2041	Macario JGómez		11	Colonia	20350
2042	Medio Kilo		11	Ranchería	20350
2043	La Concepción		11	Pueblo	20355
2044	Viñedos River		11	Hacienda	20355
2045	Parque Industrial San Francisco		11	Zonaindustrial	20355
2046	Paseosdela Providencia		11	Fraccionamiento	20355
2047	Urbi Villadel Vergel		11	Fraccionamiento	20355
2048	Borrotes		11	Ranchería	20356
2049	Estación Chicalote		11	Paraje	20356
2050	Amapolasdel Río		11	Ejido	20357
2051	El Tepetate		11	Ranchería	20357
2052	Rancho Nuevo		11	Ejido	20357
2053	Monteverde		11	Fraccionamiento	20358
2054	Vallede Aguascalientes		11	Fraccionamiento	20358
2055	Reserva Quetzales		11	Condominio	20358
2056	Rancho Seco		11	Ejido	20358
2057	Castelo San Francisco		11	Condominio	20358
2058	Puertecitodela Virgen		11	Pueblo	20358
2059	Parque Industrial Vallede Aguascalientes		11	Zonaindustrial	20358
2060	Ex-Viñedos Guadalupe		11	Colonia	20358
2061	Villasde San Felipe		11	Fraccionamiento	20358
2062	La Casita		11	Fraccionamiento	20358
2063	La Ribera		11	Fraccionamiento	20358
2064	Senderodelos Quetzales		11	Condominio	20358
2065	San Antoniodelos Pedroza		1	Ejido	20363
2066	San Josédela Ordeña		1	Ejido	20363
2067	San Nicolásde Arriba		1	Ranchería	20364
2068	San Nicolásdeen Medio		1	Ranchería	20364
2069	La Herrada		1	Ranchería	20366
2070	El Colorado(El Soyatal)		1	Ejido	20366
2071	El Conejal		1	Ejido	20366
2072	2de Octubre		1	Colonia	20367
2073	Che Guevara		1	Colonia	20367
2074	Tanqueel Trigo		1	Colonia	20367
2075	Noriasde Ojocaliente		1	Ejido	20367
2076	El Malacate		1	Ranchería	20369
2077	Puertode Nieto		1	Rancho	20370
2078	Santa Cruzdela Presa(La Tlacuacha)		1	Ranchería	20371
2079	Ciudaddelos Niños		1	Ranchería	20371
2080	La Cotorra		1	Ranchería	20371
2081	Cabecita3Marías		1	Ranchería	20372
2082	El Niágara		1	Ranchería	20372
2083	Ex-Haciendade Agostaderito		1	Ranchería	20372
2084	Granjas Fátima		1	Rancho	20372
2085	Villa Campestre San Josédel Monte		1	Fraccionamiento	20372
2086	El Ocote		1	Ranchería	20373
2087	La Huerta(La Cruz)		1	Ranchería	20374
2088	El Tanquedelos Jiménez		1	Ejido	20375
2089	Campestre Bosquesde Las Lomas		1	Condominio	20375
2090	Centrode Arriba(El Taray)		1	Ejido	20376
2091	San Pedro Cieneguilla		1	Ejido	20377
2092	Cieneguilla(La Lumbrera)		1	Ejido	20378
2093	Cieneguilla		1	Hacienda	20378
2094	El Hotelito		1	Ranchería	20384
2095	Noriasdel Paso Hondo		1	Ejido	20384
2096	Noriasdel Paso Hondo		1	Ranchería	20384
2097	Paso Hondo		1	Ranchería	20384
2098	La Rinconada(La Escondida)		1	Ranchería	20385
2099	El Duraznillo		1	Ranchería	20386
2100	Los Cuervos(Los Ojosde Agua)		1	Ejido	20388
2101	San Bartolo		1	Ranchería	20388
2102	Los Durón		1	Ejido	20389
2103	Soledadde Abajo		1	Ranchería	20389
2020	San Antoniodela Rosa		10	Ranchería	20339
2104	Matamoros		1	Ranchería	20389
2105	Campestreel Potrerillo		1	Fraccionamiento	20392
2106	Parque Industrial Gigantedelos Arellano		1	Zonaindustrial	20392
2107	El Gigante(Arellano)		1	Ejido	20392
2108	Noriasde Cedazo(Cedazo Noriasde Montoro)		1	Colonia	20392
2109	Montoro		1	Rancho	20392
2110	Universidad Autónomade Aguascalientes Campus Sur		1	Equipamiento	20392
2111	Parque Industrial FINSAAguascalientes		1	Zonaindustrial	20393
2112	Lomasde Arellano		1	Ranchería	20394
2113	Tanquede Guadalupe		1	Ranchería	20394
2114	Cañada Grandede Cotorina		1	Ranchería	20394
2115	Cotorina(Coyotes)		1	Ejido	20395
2116	El Refugiode Peñuelas		1	Ejido	20396
2117	Ex-Haciendade Peñuelas		1	Ranchería	20396
2118	Rincónde Romos Centro	Rincónde Romos	7	Colonia	20400
2119	Norte	Rincónde Romos	7	Fraccionamiento	20403
2120	Santa Elena	Rincónde Romos	7	Colonia	20403
2121	Desarrollo Especial La Pedrera	Rincónde Romos	7	Colonia	20403
2122	Subdivisión La Piedrera	Rincónde Romos	7	Colonia	20403
2123	Villa Seguridad	Rincónde Romos	7	Fraccionamiento	20403
2124	Valledel Real	Rincónde Romos	7	Fraccionamiento	20404
2125	JoséLuis Macias	Rincónde Romos	7	Fraccionamiento	20404
2126	Estanciade Chora	Rincónde Romos	7	Fraccionamiento	20404
2127	Embajadores	Rincónde Romos	7	Fraccionamiento	20404
2128	El Chaveño	Rincónde Romos	7	Colonia	20405
2129	De Guadalupe	Rincónde Romos	7	Barrio	20405
2130	La Paz	Rincónde Romos	7	Fraccionamiento	20405
2131	Rinconadadelas Piedras	Rincónde Romos	7	Fraccionamiento	20406
2132	Rinconada Alameda	Rincónde Romos	7	Colonia	20406
2133	De Chora	Rincónde Romos	7	Barrio	20406
2134	Santa Cruz	Rincónde Romos	7	Colonia	20406
2135	Lázaro Cárdenas	Rincónde Romos	7	Fraccionamiento	20406
2136	Fraternidad	Rincónde Romos	7	Fraccionamiento	20406
2137	Cerrodel Gato	Rincónde Romos	7	Colonia	20406
2138	Independencia	Rincónde Romos	7	Colonia	20410
2139	Magisterial	Rincónde Romos	7	Colonia	20410
2140	Magisterial II	Rincónde Romos	7	Fraccionamiento	20410
2141	Santa Anita	Rincónde Romos	7	Colonia	20410
2142	El Potrero	Rincónde Romos	7	Fraccionamiento	20410
2143	La Mezquitera	Rincónde Romos	7	Fraccionamiento	20410
2144	Desarrollo Especial	Rincónde Romos	7	Colonia	20414
2145	Villasde Jesús	Rincónde Romos	7	Fraccionamiento	20414
2146	San José	Rincónde Romos	7	Colonia	20415
2147	Presidentesde México	Rincónde Romos	7	Colonia	20416
2148	Solidaridad	Rincónde Romos	7	Fraccionamiento	20416
2149	Miguel Hidalgo	Rincónde Romos	7	Fraccionamiento	20417
2150	Popular	Rincónde Romos	7	Fraccionamiento	20417
2152	El Saucillo		7	Ejido	20420
2153	Presade San Elías(JoséMuñoz)		7	Ranchería	20420
2154	El Bajío		7	Ejido	20420
2155	Mar Negro		7	Ranchería	20420
2156	Potrero El Tarasco		7	Ranchería	20420
2157	San Judas Tadeo(Santa Fe)		7	Colonia	20423
2158	Candelaria		7	Granja	20423
2159	Puertadel Muerto(El15)		7	Ranchería	20424
2160	California		7	Ranchería	20424
2161	Bajíodel Yerbaníz		7	Ranchería	20424
2162	Tanque Blanco		7	Ranchería	20424
2163	San Jacinto		7	Ejido	20425
2164	San Juandela Natura		7	Ejido	20426
2165	El Valledelas Delicias		7	Colonia	20427
2166	16de Septiembre		7	Colonia	20427
2167	Los Morales		7	Colonia	20427
2168	San Isidroel Labrador		7	Ranchería	20427
2169	La Misión		7	Ranchería	20430
2170	18de Marzo		7	Colonia	20434
2171	El Salitrillo		7	Colonia	20435
2172	El Barzón		7	Ranchería	20435
2173	Las Norias		7	Ranchería	20435
2174	Lupita		7	Granja	20435
2175	El Milagro		7	Colonia	20436
2176	Constitución		7	Colonia	20437
2177	Héctor Hugo Olivares		7	Colonia	20437
2178	Lindavista		7	Colonia	20437
2179	Pabellónde Hidalgo Centro		7	Colonia	20437
2180	Estanciade Mosqueira		7	Ejido	20437
2181	El Rosario		7	Granja	20437
2182	Morelos		7	Ranchería	20440
2183	Las Camas		7	Ranchería	20444
2184	Potrerillos		7	Ranchería	20444
2185	Túnelde Potrerillo		7	Ranchería	20444
2186	El Panal		7	Ejido	20450
2187	Fresnillo		7	Ejido	20450
2188	La Boquilla		7	Ranchería	20450
2189	Peña Blanca		7	Ranchería	20450
2190	El Ajiladero		7	Ranchería	20454
2191	Cosío Centro	Cosío	4	Colonia	20460
2192	Luis Donaldo Colosio	Cosío	4	Fraccionamiento	20462
2193	Villasdel Potrerito	Cosío	4	Fraccionamiento	20466
2194	Popular	Cosío	4	Fraccionamiento	20467
2195	Santa Cruz	Cosío	4	Colonia	20468
2196	Mexiquito	Cosío	4	Colonia	20469
2197	Coplamar	Cosío	4	Colonia	20469
2198	Vista Hermosa	Cosío	4	Colonia	20469
2199	Soledadde Abajo[Estaciónde Adames]		4	Pueblo	20470
2200	Zacatequillas		4	Pueblo	20470
2201	Soledadde Arriba		4	Pueblo	20470
2202	El Durazno		4	Colonia	20472
2203	La Punta		4	Pueblo	20472
2204	La Esperanza(El Salerito)		4	Ranchería	20472
2205	El Durazno		4	Ranchería	20472
2206	Los Nava		4	Rancho	20472
2207	El Salero		4	Pueblo	20476
2208	El Refugiode Agua Zarca		4	Pueblo	20478
2209	El Refugiode Providencia(Providencia)		4	Pueblo	20478
2210	Guadalupito		4	Colonia	20478
2211	Santa Maríadela Paz		4	Pueblo	20478
2212	San Joséde Gracia		8	Pueblo	20500
2213	El Jocoqui		8	Ranchería	20500
2214	Cieneguita		8	Ranchería	20502
2215	El Toril		8	Ranchería	20503
2216	Santa Elenadela Cruz(Capadero)		8	Colonia	20504
2217	Las Amarillas		8	Ranchería	20504
2218	Túnelde Potrerillo		8	Ranchería	20508
2219	Tortugas		8	Ranchería	20508
2220	Potrerillo		8	Ranchería	20508
2221	Ciénegade Alcorcha		8	Ranchería	20510
2222	Bocadel Túnelde Potrerillo		8	Ranchería	20516
2223	La Congoja		8	Ranchería	20520
2224	El Cepo		8	Ranchería	20534
2225	Antrialgo		8	Ranchería	20538
2226	Sierra Hermosa(Los Alamitos)		8	Ranchería	20538
2227	Paredes		8	Ejido	20540
2228	San Antoniodelos Ríos		8	Ejido	20545
2229	Guajolotes(Huijolotes)		8	Ranchería	20563
2230	Santa Rosade Lima		8	Ranchería	20563
2231	Rancho Viejo		8	Ranchería	20564
2232	Potrerodelos López		8	Ejido	20567
2233	Pasodel Sauz		8	Ranchería	20567
2234	El Tecongo		8	Ranchería	20570
2235	Estanciade San Marcos		8	Ranchería	20574
2236	El Taray		8	Ranchería	20575
2237	Club Náutico San José		8	Equipamiento	20576
2238	TepezaláCentro	Tepezalá	9	Colonia	20600
2239	Cholula	Tepezalá	9	Barrio	20602
2240	San Rafael	Tepezalá	9	Colonia	20603
2241	Felipe González González	Tepezalá	9	Colonia	20604
2242	Del Socorro	Tepezalá	9	Barrio	20607
2243	Luis Ortega Douglas	Tepezalá	9	Colonia	20607
2244	Los Arcos	Tepezalá	9	Colonia	20607
2245	El Chayote		9	Ejido	20610
2246	El Barranco		9	Ejido	20610
2247	Los Alamitos		9	Ejido	20614
2248	Luzde San Antonio(La Luz)		9	Ranchería	20614
2249	Ampliaciónlos Hornos(el Lagunazo)		9	Colonia	20614
2250	El Progreso(La Tira)		9	Ranchería	20615
2252	El Carmen		9	Ranchería	20615
2253	San Antonio		9	Ejido	20616
2254	Mesillas		9	Ejido	20620
2255	Ojode Aguadelos Montes		9	Ejido	20622
2256	La Victoria		9	Ranchería	20634
2257	ElÁguila		9	Ejido	20635
2258	Los Tres Reyes		9	Ranchería	20637
2259	El Gigante		9	Ejido	20637
2260	Puertodela Concepción		9	Ejido	20650
2261	Carboneras		9	Ejido	20656
2262	El Refugio		9	Ejido	20656
2263	Arroyo Hondo		9	Ejido	20657
2264	Berrendos		9	Rancho	20658
2265	El Tepozán		9	Ranchería	20658
2266	Caldera		9	Ejido	20659
2267	El Refugio		6	Ranchería	20663
2268	El Gigante		6	Granja	20663
2269	Nueva		6	Colonia	20664
2270	Emiliano Zapata		6	Colonia	20665
2271	El Pedernal Segundo		6	Ranchería	20665
2272	San Agustíndelos Puentes		6	Ranchería	20665
2273	El Pilar		6	Granja	20665
2274	Los Contreras		6	Ranchería	20665
2275	El Garabato		6	Ranchería	20666
2276	Campestre San Carlos		6	Fraccionamiento	20666
2277	Santiago		6	Ejido	20667
2278	El Canal		6	Ranchería	20667
2279	El Pedregal		6	Ranchería	20668
2280	El Milagro		6	Ranchería	20668
2281	Puertadel Milagro		6	Ranchería	20668
2282	San Luisde Letras		6	Ejido	20668
2283	Miguel Alemán[Secadora]		6	Ranchería	20668
2284	Ampliación Ejido Garabato		6	Ranchería	20668
2285	Pabellónde Arteaga Centro	Pabellónde Arteaga	6	Colonia	20670
2286	FOVISSSTE	Pabellónde Arteaga	6	Fraccionamiento	20673
2287	Jardinesde Pabellón	Pabellónde Arteaga	6	Fraccionamiento	20673
2288	Subdivisión Haciendasde Pabellón	Pabellónde Arteaga	6	Fraccionamiento	20673
2289	Barrio Industrial	Pabellónde Arteaga	6	Colonia	20673
2290	Francisco Villa	Pabellónde Arteaga	6	Colonia	20674
2291	Villasde Pabellón	Pabellónde Arteaga	6	Colonia	20674
2292	Trojesde San Pedro	Pabellónde Arteaga	6	Fraccionamiento	20674
2293	Carboneras	Pabellónde Arteaga	6	Barrio	20675
2294	Palo Alto	Pabellónde Arteaga	6	Barrio	20675
2295	5de Mayo	Pabellónde Arteaga	6	Colonia	20676
2296	Cosmos	Pabellónde Arteaga	6	Fraccionamiento	20676
2297	Popular	Pabellónde Arteaga	6	Fraccionamiento	20676
2298	Plutarco Elías Calles	Pabellónde Arteaga	6	Colonia	20677
2299	Progreso Sur	Pabellónde Arteaga	6	Colonia	20677
2300	Bosquesde Pabellón	Pabellónde Arteaga	6	Fraccionamiento	20678
2301	Progreso Norte	Pabellónde Arteaga	6	Colonia	20678
2302	Vergeldel Valle	Pabellónde Arteaga	6	Fraccionamiento	20678
2303	Valledel Vivero	Pabellónde Arteaga	6	Fraccionamiento	20678
2304	Subdivisión Villade Guadalupe	Pabellónde Arteaga	6	Colonia	20678
2305	Valledel Vivero II	Pabellónde Arteaga	6	Fraccionamiento	20678
2306	LasÁnimas		6	Pueblo	20680
2307	Santa Isabel		6	Fraccionamiento	20680
2308	LasÁnimas		6	Rancho	20680
2309	El Mezquite(Ojode Aguadel Mezquite)		6	Ejido	20683
2310	El Mezquite		6	Colonia	20683
2311	El Mezquite		6	Hacienda	20683
2312	Los Lira		6	Ranchería	20683
2313	Ojo Zarco		6	Colonia	20684
2314	Ojo Zarco		6	Ranchería	20684
2315	Ojo Zarco(La Loma)		6	Ejido	20684
2316	El Rayo		6	Colonia	20684
2317	Gámez Orozco(Puertade Carboneras)		6	Colonia	20686
2318	San Pedro		6	Ranchería	20686
2319	El Cerrito		6	Ranchería	20687
2320	Guadalupe		2	Colonia	20700
2321	Loma Bonita		2	Colonia	20700
2322	Agua Nueva		2	Colonia	20700
2323	Álamos		2	Colonia	20700
2324	La Sierra		2	Colonia	20700
2325	Arboledas		2	Colonia	20700
2326	El Tule		2	Pueblo	20700
2327	Villa Juárez Centro		2	Colonia	20700
2328	La Loma		2	Colonia	20700
2329	El Rascón		2	Colonia	20700
2330	Viudasde Poniente		2	Ejido	20704
2331	Charco Azul		2	Ejido	20705
2332	El Llavero		2	Ranchería	20706
2333	Amarillasde Esparza		2	Ejido	20708
2334	Jilotepec		2	Ejido	20709
2335	La Dichosa		2	Ejido	20709
2336	San Vicente		2	Ranchería	20709
2337	Asientos Centro	Asientos	2	Colonia	20710
2338	Santa Cruz	Asientos	2	Barrio	20710
2339	De Peñitas	Asientos	2	Barrio	20712
2340	Los Tepetates	Asientos	2	Barrio	20713
2341	Del CECYTE	Asientos	2	Barrio	20713
2342	De Guadalupe	Asientos	2	Barrio	20714
2344	Del Tepozán	Asientos	2	Barrio	20715
2345	Juventud	Asientos	2	Barrio	20715
2346	Real Minero	Asientos	2	Fraccionamiento	20717
2347	Guadalupede Atlas		2	Ejido	20720
2348	Bimbaletes Aguascalientes(ElÁlamo)		2	Ejido	20720
2349	Bimbaletes Atlas(Tanquedela Vieja)		2	Ejido	20720
2350	Crisóstomos		2	Ejido	20720
2351	Estación San Gil		2	Paraje	20720
2352	La Divina Providencia		2	Ranchería	20720
2353	Alvarado		2	Rancho	20720
2354	Licenciado Adolfo López Mateos		2	Ranchería	20720
2355	Sociedadlos Posada		2	Ranchería	20720
2356	Sectorde Producción Número3		2	Ranchería	20720
2357	Sectorde Producción Número2		2	Ranchería	20720
2358	Plutarco Elías Calles		2	Ranchería	20721
2359	Ciénega Grande		2	Ejido	20722
2360	Noriadel Borrego(Norias)		2	Ejido	20723
2361	Jarillas		2	Ejido	20723
2362	Gómez Portugal		2	Colonia	20724
2363	Pino Suárez(Rancho Viejo)		2	Ranchería	20727
2364	Clavellinas		2	Ejido	20729
2365	Molinos		2	Ejido	20730
2366	Los Encinos		2	Ranchería	20734
2367	Lázaro Cárdenas		2	Colonia	20734
2368	La Gloria		2	Ejido	20736
2369	Santuariodel Tepozán		2	Ranchería	20737
2370	La Soledad		2	Ranchería	20739
2371	San Pedro		2	Colonia	20739
2372	El Polvo		2	Ejido	20740
2373	Caldera		2	Ejido	20741
2374	Licenciado Adolfo López Mateos		2	Ejido	20742
2375	Charco Prieto(El Palomar)		2	Ranchería	20742
2376	El Fénix		2	Ranchería	20742
2377	San Antoniodelos Martínez		2	Ejido	20744
2378	Gorriones		2	Ejido	20746
2379	Ojode Aguade Rosales		2	Ejido	20748
2381	San Josédel Río		2	Ejido	20750
2382	ElÁguila[Rancho]		2	Rancho	20768
2383	Emancipación(Borunda)		2	Colonia	20770
2384	Tanque Viejo		2	Ejido	20773
2385	Las Adjuntas		2	Ejido	20773
2386	La Tinajuela		2	Barrio	20773
2387	San Rafaelde Ocampo		2	Ranchería	20780
2388	San Josédel Tulillo		2	Ranchería	20780
2389	San Isidro		2	Ranchería	20782
2390	El Chonguillo		2	Rancho	20785
2391	Francisco Villa		2	Ranchería	20790
2392	La Esperanza		2	Ranchería	20795
2393	Ojode Aguadelos Sauces		2	Ejido	20795
2394	Pilotos		2	Ejido	20795
2395	Tanquede Guadalupe		2	Ejido	20796
2396	Las Joyas		2	Ranchería	20796
2397	El Epazote		2	Ranchería	20796
2398	Las Fraguas		2	Ejido	20796
2399	El Salitre		2	Ranchería	20796
2400	El Bajíodelos Campos		2	Barrio	20796
2401	Las Negritas		2	Ejido	20799
2402	Calvillo Centro	Calvillo	3	Colonia	20800
2403	El Mirador	Calvillo	3	Fraccionamiento	20802
2404	Independencia	Calvillo	3	Fraccionamiento	20802
2405	López Mateos	Calvillo	3	Colonia	20802
2406	Las Paseras	Calvillo	3	Fraccionamiento	20802
2407	Vista Hermosa	Calvillo	3	Fraccionamiento	20802
2408	Campo Militar14CINE	Calvillo	3	Zonamilitar	20802
2409	El Guayabo	Calvillo	3	Colonia	20802
2410	Sección Benito Juárez	Calvillo	3	Colonia	20802
2411	Sección Cerritos	Calvillo	3	Colonia	20802
2412	Sección Lomade Fundadores	Calvillo	3	Colonia	20802
2413	Vista Hermosa2a.Sección	Calvillo	3	Fraccionamiento	20802
2414	Lomasde Huejúcar	Calvillo	3	Colonia	20803
2415	San Nicolás	Calvillo	3	Colonia	20803
2416	San Rafael	Calvillo	3	Fraccionamiento	20803
2417	Rincónde Baltazares	Calvillo	3	Fraccionamiento	20803
2418	JoséLanderos	Calvillo	3	Fraccionamiento	20803
2420	Liberal	Calvillo	3	Colonia	20804
2421	Rincónde Baltazares	Calvillo	3	Colonia	20804
2422	Vallede Santiago	Calvillo	3	Colonia	20804
2423	Arroyode Los Caballos	Calvillo	3	Colonia	20804
2424	Del Carmen	Calvillo	3	Colonia	20804
2425	Azteca	Calvillo	3	Colonia	20804
2426	Morelos	Calvillo	3	Colonia	20804
2427	Cerrito Alto	Calvillo	3	Colonia	20805
2428	Emiliano Zapata	Calvillo	3	Colonia	20805
2429	Las Flores	Calvillo	3	Colonia	20805
2430	Martínez	Calvillo	3	Fraccionamiento	20805
2431	Vallede Huejúcar	Calvillo	3	Colonia	20805
2432	Los Angeles	Calvillo	3	Colonia	20805
2433	Chicago	Calvillo	3	Barrio	20805
2434	El Terrerodela Labor		3	Ranchería	20810
2435	Palo Alto		3	Ranchería	20810
2436	El Sauzdela Labor		3	Ranchería	20816
2437	El Zapotedela Labor		3	Ranchería	20816
2438	Las Cuevasdela Labor		3	Ranchería	20816
2439	Las Rubias		3	Ranchería	20816
2440	Piedras Chinas		3	Ranchería	20816
2441	La Pochota		3	Ranchería	20820
2442	El Jagüey		3	Ranchería	20820
2443	El Mirador		3	Ranchería	20820
2444	San Tadeo		3	Pueblo	20820
2445	Jardinesde San Isidro(Colonia Limón)		3	Colonia	20820
2446	Solidaridad		3	Fraccionamiento	20820
2447	El Capulín		3	Ranchería	20824
2448	Los Lazos		3	Ranchería	20824
2449	Montoro		3	Ranchería	20824
2450	Colomos		3	Ranchería	20830
2451	Chiquihuitero(San Isidro)		3	Ranchería	20830
2452	La Panadera		3	Ranchería	20830
2453	Las Víboras(Viborillas)		3	Ranchería	20830
2454	El Llano(El Llanode San Rafael)		3	Ranchería	20830
2455	Villasdel Laurel		3	Fraccionamiento	20830
2456	El Maguey		3	Ranchería	20832
2457	El Sauz		3	Ranchería	20832
2458	Río Gil		3	Ranchería	20832
2459	Potrerodelos López		3	Colonia	20834
2460	Las Huertas		3	Colonia	20834
2462	La Alberca		3	Colonia	20834
2463	La Españita		3	Colonia	20834
2464	Los Baños		3	Colonia	20834
2465	Los Esparza		3	Colonia	20834
2466	La Placita		3	Colonia	20834
2467	La Casa Grande		3	Colonia	20834
2468	Azoteyita		3	Colonia	20834
2469	Catana		3	Ranchería	20834
2470	El Cuervero(Cuerveros)		3	Pueblo	20834
2471	Juntadelos Ríos		3	Ranchería	20834
2472	Malpaso		3	Pueblo	20834
2473	Ojocaliente		3	Colonia	20834
2474	Potrerodelos López		3	Ranchería	20834
2475	Río Gilde Arriba		3	Ranchería	20834
2476	La Fortuna		3	Colonia	20834
2477	Los Arcos		3	Colonia	20834
2478	Magisterial		3	Colonia	20834
2479	Los Mirasoles		3	Ranchería	20840
2480	El Potrerito		3	Ranchería	20840
2481	Las Joyas		3	Ranchería	20842
2482	Chimaltitán		3	Ranchería	20844
2483	San Josédelos Laureles		3	Ranchería	20844
2484	Mesadelos Pozos(La Laguna)		3	Ranchería	20844
2485	Crucerolas Pilas		3	Ranchería	20850
2486	La Calixtina		3	Ranchería	20850
2487	Las Moras		3	Ranchería	20850
2488	Mesa Grande		3	Ranchería	20850
2489	El Refugio(Las Praderas)		3	Ranchería	20850
2490	Tepezalillade Abajo		3	Ranchería	20850
2491	Pozodelos Artistas		3	Colonia	20850
2492	Los Adobes		3	Ranchería	20852
2493	Arroyo Ojocalientillo		3	Ranchería	20852
2494	Parque Industrial Calvillo		3	Zonaindustrial	20854
2495	El Tepetatede Arriba		3	Ranchería	20854
2496	El Tepetatede Abajo		3	Ranchería	20854
2497	Los Alisos		3	Ranchería	20854
2498	Ojode Agua		3	Ranchería	20854
2499	El Garruño		3	Ranchería	20854
2500	El Taray		3	Colonia	20854
2501	Barrancadel Roble		3	Ranchería	20856
2502	El Güencho		3	Ranchería	20856
2503	Jaltichede Arriba		3	Ranchería	20856
2504	Mesadel Roble		3	Ranchería	20856
2505	Cerro Blanco		3	Ranchería	20860
2506	El Salitre		3	Ranchería	20860
2507	LasÁnimas		3	Ranchería	20860
2508	Las Pilas		3	Ranchería	20860
2509	Michoacanejo		3	Ranchería	20860
2510	La Rinconada		3	Ranchería	20862
2511	Las Tinajas		3	Ranchería	20862
2512	Salitrillo		3	Ranchería	20862
2513	Jaltichede Abajo		3	Ranchería	20862
2514	La Fragua		3	Ranchería	20862
2515	La Media Luna		3	Ranchería	20862
2516	El Caracol		3	Ranchería	20864
2517	El Terrerodel Refugio		3	Ranchería	20864
2518	Presadelos Serna		3	Ranchería	20864
2519	El Papantón		3	Ranchería	20870
2520	El Rodeo		3	Ranchería	20870
2521	La Teresa		3	Ranchería	20870
2522	Los Patos		3	Ranchería	20870
2523	Mezquitillos		3	Ranchería	20870
2524	Peña Blanca		3	Ranchería	20870
2525	San José		3	Ranchería	20870
2526	Santos		3	Ranchería	20870
2527	Vaquerías		3	Ranchería	20870
2528	Barrancade Portales		3	Ranchería	20872
2529	El Tigre		3	Ranchería	20872
2530	Miguel Hidalgo(El Huarache)		3	Ranchería	20872
2531	El Ocote[Bancode Tierra]		3	Ranchería	20874
2532	El Tepalcate		3	Ranchería	20874
2533	La Joya		3	Ranchería	20874
2534	Las Trojes		3	Ranchería	20874
2535	Tanquedelos Serna		3	Ranchería	20874
2536	La Labor		3	Hacienda	20880
2537	La Primavera		3	Ranchería	20880
2538	Presa Ordeña Vieja		3	Ranchería	20880
2539	Temazcal		3	Ranchería	20880
2540	Paredes		3	Ranchería	20880
2541	La Hiedra		3	Ranchería	20880
2542	Ventanillas		3	Ranchería	20880
2543	El Salitrillo		3	Ranchería	20880
2544	El Jaralito		3	Ranchería	20882
2545	El Tepozán		3	Ranchería	20882
2546	Manguillas		3	Ranchería	20882
2547	La Ciénega		3	Ranchería	20884
2548	Presadelos Bajíos		3	Ranchería	20884
2549	Puertade Fragua(Presala Codorniz)		3	Ranchería	20890
2550	Santo Domingo		5	Condominio	20900
2551	Puerta Norte		5	Condominio	20900
2552	Residencial Misiónde San José		5	Fraccionamiento	20900
2553	Residencial Campestre Ingles		5	Fraccionamiento	20900
2554	Camino Real		5	Fraccionamiento	20900
2555	Corralde Barrancos		5	Colonia	20900
2556	Maravillas		5	Colonia	20900
2557	Los Olivos		5	Fraccionamiento	20900
2558	Rinconada Maravillas		5	Fraccionamiento	20900
2559	Residencial Villa Campestre		5	Fraccionamiento	20900
2560	Valle Escondido		5	Fraccionamiento	20900
2561	Las Pérgolas		5	Fraccionamiento	20900
2562	La Nogalera		5	Fraccionamiento	20900
2563	El Maguey		5	Colonia	20901
2564	Las Jaulas		5	Colonia	20901
2565	La Lomade Valladolid		5	Colonia	20901
2566	La Chaveña		5	Ranchería	20901
2567	Villasde Montecassino		5	Fraccionamiento	20903
2568	Residencial Santa Paulina		5	Fraccionamiento	20903
2569	Margaritas		5	Ranchería	20903
2570	La Florida		5	Ranchería	20903
2571	El Barreno		5	Colonia	20904
2572	Los Ramírez		5	Ranchería	20904
2573	Los Vázquez		5	Ranchería	20904
2574	Miravalle		5	Colonia	20905
2575	Paso Blanco		5	Colonia	20905
2576	Los Arenales		5	Ranchería	20905
2577	La Lomitade Paso Blanco(Las Canoas)		5	Colonia	20905
2578	Los Sauces		5	Ranchería	20905
2579	Viñedos Casa Leal		5	Ranchería	20907
2581	Viñedos Frutilandia		5	Ranchería	20907
2582	Paseosde Aguascalientes		5	Colonia	20907
2583	Arboledasde Paso Blanco		5	Fraccionamiento	20907
2584	Centro Distribuidorde Básicos Viñedos San Marcos		5	Zonacomercial	20907
2585	Paseosdel Country		5	Condominio	20907
2586	Residencial Campo Real		5	Fraccionamiento	20907
2587	Jardinesde Campo Real		5	Fraccionamiento	20907
2588	Mayorazgo San Cristóbal		5	Condominio	20908
2589	Belmondo		5	Condominio	20908
2590	Residencial Marcellana		5	Fraccionamiento	20908
2591	Rinconada Cuauhtémoc		5	Fraccionamiento	20908
2592	Catania Spazio		5	Fraccionamiento	20908
2593	Punta Norte		5	Condominio	20908
2594	Los Gavilanes		5	Ranchería	20908
2595	Nura		5	Condominio	20908
2596	Santa Isabel Tola		5	Fraccionamiento	20908
2597	Bosquesdelos Ciprés		5	Condominio	20908
2598	Bosquesdel Paraíso I		5	Fraccionamiento	20908
2599	Bosquesdel Paraíso II		5	Fraccionamiento	20908
2600	Augusta		5	Condominio	20908
2601	Bosquesdel Paraíso VI		5	Fraccionamiento	20908
2602	Bosquesdel Paraíso III		5	Fraccionamiento	20908
2603	Bosquesdel Paraíso IV		5	Fraccionamiento	20908
2604	Vivanta		5	Condominio	20908
2605	Zibá		5	Condominio	20908
2606	Tepetates		5	Colonia	20908
2607	Trojesde San Cristóbal		5	Fraccionamiento	20908
2608	Quintasde Monticello		5	Fraccionamiento	20908
2609	Viña Antigua		5	Fraccionamiento	20908
2610	Villasdel Molino		5	Fraccionamiento	20908
2611	Porta Real		5	Condominio	20908
2612	Residencial Cedros		5	Fraccionamiento	20908
2613	Rancho San Miguel Residencial		5	Fraccionamiento	20908
2614	Alcázar Residencial		5	Fraccionamiento	20908
2615	Reserva San Cristóbal		5	Fraccionamiento	20908
2616	La Arborada		5	Fraccionamiento	20908
2617	Privanzade Gratamira		5	Fraccionamiento	20908
2618	Tierraverde(Habitat Gran Clase)		5	Fraccionamiento	20908
2619	Andares		5	Fraccionamiento	20908
2620	INFONAVITMargaritas		5	Fraccionamiento	20909
2621	Villasdel Sol		5	Fraccionamiento	20909
2622	Vallede Margaritas		5	Fraccionamiento	20909
2623	Saturnino Herran		5	Colonia	20909
2624	Los Vázquez		5	Colonia	20909
2625	Santa Fe Tecnopark		5	Zonaindustrial	20909
2626	Alea Park		5	Zonaindustrial	20909
2627	Jesús Gómez Portugal(Margaritas)		5	Pueblo	20909
2628	El Zapato		5	Ranchería	20909
2629	Paseos Gómez Portugal		5	Fraccionamiento	20909
2630	La Guayana(Rancho Seco)		5	Ejido	20909
2631	Pasode Argenta		5	Fraccionamiento	20909
2632	San Antoniodelos Horcones		5	Colonia	20910
2634	Valladolid		5	Pueblo	20913
2635	El Refugio		5	Ejido	20913
2636	El Aurero		5	Ranchería	20913
2637	Villasde Guadalupe(La Malobra)		5	Colonia	20913
2638	El Cenizo		5	Colonia	20913
2639	La Granjita(Los Palillos)		5	Ranchería	20914
2640	Parque Industrial Chichimeco		5	Zonaindustrial	20916
2641	El Chichimeco		5	Hacienda	20916
2642	Paseosdelas Haciendas		5	Fraccionamiento	20916
2643	Cartuja Residencial		5	Fraccionamiento	20916
2644	Pedernal Segundo		5	Ranchería	20917
2645	Jesús María Centro	Jesús María	5	Colonia	20920
2646	Bellavista	Jesús María	5	Colonia	20922
2647	La Troje	Jesús María	5	Fraccionamiento	20922
2648	El Calvario	Jesús María	5	Colonia	20922
2649	La Escalera	Jesús María	5	Colonia	20922
2650	Rinconada Jesús María	Jesús María	5	Fraccionamiento	20923
2651	Real Campestre	Jesús María	5	Fraccionamiento	20923
2652	La Villa Residencial	Jesús María	5	Fraccionamiento	20923
2653	LosÁlamos	Jesús María	5	Condominio	20923
2654	La Misión	Jesús María	5	Fraccionamiento	20923
2655	Flores Magón	Jesús María	5	Colonia	20923
2656	La Cardona	Jesús María	5	Colonia	20923
2657	La Cuesta	Jesús María	5	Fraccionamiento	20923
2658	Los Arroyitos	Jesús María	5	Colonia	20923
2659	San Miguelito	Jesús María	5	Colonia	20923
2660	Rinconada San Miguelito	Jesús María	5	Fraccionamiento	20923
2661	Ruiseñores	Jesús María	5	Condominio	20923
2662	Residencial Jesús María	Jesús María	5	Fraccionamiento	20923
2461	La Pila		3	Colonia	20834
2663	Cielo Claro	Jesús María	5	Colonia	20924
2664	Agua Clara	Jesús María	5	Fraccionamiento	20924
2665	Jacarandas	Jesús María	5	Colonia	20924
2666	Deportiva	Jesús María	5	Colonia	20924
2667	Rancho San Pedro	Jesús María	5	Fraccionamiento	20924
2668	Palma Dorada	Jesús María	5	Fraccionamiento	20924
2669	Arroyodel Bosque	Jesús María	5	Fraccionamiento	20925
2670	Misantla	Jesús María	5	Fraccionamiento	20925
2671	Villas Tec		5	Fraccionamiento	20925
2672	Agua Zarca	Jesús María	5	Fraccionamiento	20925
2673	Benigno Chávez	Jesús María	5	Fraccionamiento	20925
2674	Lomasde Jesús María	Jesús María	5	Colonia	20925
2675	Vistasdel Sáuz	Jesús María	5	Colonia	20925
2676	Puerta Grande	Jesús María	5	Condominio	20925
2677	Rincóndel Pilar	Jesús María	5	Fraccionamiento	20926
2678	La Palma	Jesús María	5	Fraccionamiento	20926
2679	Quintas Miguel Jerónimo	Jesús María	5	Fraccionamiento	20926
2680	Las Palmas	Jesús María	5	Colonia	20926
2681	Porta Arvena	Jesús María	5	Condominio	20926
2682	Arboledas	Jesús María	5	Colonia	20926
2683	Chicahuales	Jesús María	5	Colonia	20926
2684	Lomasdel Valle	Jesús María	5	Colonia	20926
2685	Martínez Andrade	Jesús María	5	Colonia	20926
2686	Solidaridad	Jesús María	5	Fraccionamiento	20926
2687	Vista Hermosa	Jesús María	5	Colonia	20926
2688	Manantialesdel Pinar	Jesús María	5	Fraccionamiento	20926
2689	La Loma	Jesús María	5	Fraccionamiento	20926
2690	La Piedra	Jesús María	5	Condominio	20926
2691	Lomasdelos Vergeles		5	Fraccionamiento	20926
2692	Rinconada Bugambilias	Jesús María	5	Condominio	20926
2693	Misiónde Santa María	Jesús María	5	Condominio	20926
2694	Yalta Campestre	Jesús María	5	Condominio	20926
2695	Residencial Tres Arroyos	Jesús María	5	Fraccionamiento	20926
2696	Mirabrujas	Jesús María	5	Fraccionamiento	20926
2697	Tulipanes Residencial	Jesús María	5	Fraccionamiento	20926
2698	Ayuntamiento	Jesús María	5	Fraccionamiento	20927
2699	La Cañada	Jesús María	5	Colonia	20927
2700	Ampliación La Cañada	Jesús María	5	Colonia	20927
2701	Ojosde Agua	Jesús María	5	Colonia	20927
2702	Luis Donaldo Colosio	Jesús María	5	Colonia	20928
2703	Ejidal	Jesús María	5	Fraccionamiento	20928
2704	El Torito	Jesús María	5	Colonia	20928
2705	Las Palmas	Jesús María	5	Colonia	20928
2706	Plan Benito Juárez	Jesús María	5	Fraccionamiento	20928
2707	El Mezquital	Jesús María	5	Fraccionamiento	20928
2708	El Chaveño	Jesús María	5	Colonia	20928
2709	Buenavista	Jesús María	5	Fraccionamiento	20928
2419	Ejidal	Calvillo	3	Colonia	20804
2710	Solarde Jonacatique	Jesús María	5	Colonia	20928
2711	Uniónde Ladrilleros		5	Colonia	20933
2713	Los Muñoz		5	Ranchería	20943
2714	Milpillasde Abajo		5	Ejido	20943
2715	Ex-haciendade Milpillas		5	Ejido	20943
2717	El Zapote		5	Ranchería	20947
2718	Cañadael Rodeo		5	Ranchería	20953
2719	El Conejo(Puertadel Llano)		5	Ranchería	20954
2720	La Mesadel Contadero(El Contadero)		5	Ranchería	20955
2721	San Rafael		5	Ranchería	20955
2722	Piedras Negras		5	Ranchería	20956
2723	Lomasde San Isidro		5	Ranchería	20957
2724	Pedernal Primero		5	Ranchería	20957
2725	El Rincóndela Virgen(El Rincón)		5	Ranchería	20957
2726	Tapias Viejas		5	Ejido	20970
2727	Puentede Villalpando(El Puente)		5	Ranchería	20970
2728	Puentes Cuates		5	Ranchería	20974
2729	Realdel Molino		5	Fraccionamiento	20983
2730	Mezquitaldel Country		5	Fraccionamiento	20983
2731	El Llano		5	Colonia	20983
2732	Trojesdel Pedregal		5	Fraccionamiento	20983
2733	Residencial Trojesdel Norte		5	Fraccionamiento	20983
2734	Residencial Trojesdel Norte II		5	Fraccionamiento	20983
2735	Residencial Antiguo Country		5	Condominio	20983
2736	Villa Natty Residencial		5	Fraccionamiento	20984
2737	Andrea		5	Condominio	20984
2738	Providencia		5	Colonia	20984
2739	General Ignacio Zaragoza(Venadero)		5	Pueblo	20990
2740	Buenavista		5	Ranchería	20990
2741	Cieneguitas		5	Pueblo	20994
2742	Villasde Montegrande		5	Colonia	20994
2743	La Tomatina		5	Ejido	20994
2744	Agua Zarca		5	Ranchería	20995
2745	Jesús María		5	Ejido	20996
2746	Los Arquitos		5	Ejido	20996
2747	El Chacho		5	Ranchería	20996
2748	La Primavera		5	Colonia	20996
2749	Ruscello		5	Condominio	20997
2712	San Lorenzo		5	Hacienda	20934
2750	QCampestre Residencial		5	Condominio	20997
4183	Las Abejas	Tijuana	16	Colonia	22245
4184	Haciendalas Fuentes	Tijuana	16	Fraccionamiento	22245
4185	Cañadasdel Florido	Tijuana	16	Fraccionamiento	22245
4186	Las Colonias	Tijuana	16	Colonia	22245
4187	Paseosdel Florido	Tijuana	16	Fraccionamiento	22245
4188	Hacienda Santa María	Tijuana	16	Fraccionamiento	22245
4189	Fideicomisoel Florido	Tijuana	16	Zonaindustrial	22245
4190	Cañadasdel Florido2a.Sección	Tijuana	16	Fraccionamiento	22245
4191	Terrazasdel Valle	Tijuana	16	Colonia	22246
4192	Viñedos Casa Blanca	Tijuana	16	Colonia	22246
4193	Parque Industrial El Florido Sección La Encantada	Tijuana	16	Zonaindustrial	22250
4194	Los Olivos	Tijuana	16	Colonia	22250
4195	El Realito	Tijuana	16	Colonia	22250
4196	Valle Bonito	Tijuana	16	Zonaindustrial	22250
4197	Hábitat Piedras Blancas	Tijuana	16	Fraccionamiento	22250
4198	El Refugio	Tijuana	16	Colonia	22253
4199	Terrazas La Morita	Tijuana	16	Colonia	22253
4200	Lomasdel Refugio	Tijuana	16	Fraccionamiento	22253
4201	El Laurel I	Tijuana	16	Fraccionamiento	22253
4202	Paseosdel Vergel	Tijuana	16	Fraccionamiento	22253
4203	Vistasde Palmillas	Tijuana	16	Fraccionamiento	22253
4204	La Muralla	Tijuana	16	Fraccionamiento	22253
4205	El Laurel II	Tijuana	16	Fraccionamiento	22253
4206	Lomasdel Pedregal	Tijuana	16	Fraccionamiento	22254
4207	Partidodel Trabajo	Tijuana	16	Colonia	22254
4208	Colinasdel Florido	Tijuana	16	Colonia	22254
4210	Ampliación Lomasde Tlatelolco	Tijuana	16	Colonia	22254
4211	Rincóndel Mediterraneo	Tijuana	16	Ranchería	22254
4212	Ojode Agua(El Florido)	Tijuana	16	Colonia	22254
4213	El Gandul	Tijuana	16	Rancho	22254
4214	Maclovio Rojas	Tijuana	16	Colonia	22254
4215	Ojode Agua	Tijuana	16	Colonia	22254
4216	Granjas Princesasdel Sol	Tijuana	16	Colonia	22254
4217	Florido Viejo	Tijuana	16	Colonia	22254
4218	Villadel Campo	Tijuana	16	Fraccionamiento	22254
4219	El Florido Sección Colinas	Tijuana	16	Fraccionamiento	22254
4220	Lomasde Tlatelolco	Tijuana	16	Colonia	22254
4221	Nuevo Progreso	Tijuana	16	Colonia	22255
4222	Los Girasoles	Tijuana	16	Colonia	22255
4223	El Roble Tres R	Tijuana	16	Colonia	22255
4224	Quintas Campestre El Refugio	Tijuana	16	Colonia	22255
4225	Portezuelos	Tijuana	16	Colonia	22260
4226	Valledelas Palmas	Tijuana	16	Fraccionamiento	22260
4227	Lomasde San Pedro	Tijuana	16	Fraccionamiento	22263
4228	Tres M(Pérez)	Tijuana	16	Colonia	22330
4229	La Fuentedel Valle	Tijuana	16	Colonia	22330
4230	Terrazasdel Valle2a Sección	Tijuana	16	Colonia	22330
4231	Rancho3Piedras(La Ladrillera)	Tijuana	16	Colonia	22330
4232	Lomasdel Valle	Tijuana	16	Colonia	22330
4233	El Niño	Tijuana	16	Colonia	22330
4234	Vistadel Valle	Tijuana	16	Colonia	22330
4235	Javier Rojo Gómez	Tijuana	16	Colonia	22333
4236	Santa Fe	Tijuana	16	Colonia	22334
4237	Parajesdel Valle	Tijuana	16	Fraccionamiento	22334
4238	Valle Redondo	Tijuana	16	Colonia	22335
4239	Margarita Residencial	Tijuana	16	Fraccionamiento	22335
4240	Libertad	Tijuana	16	Colonia	22400
4241	Aeropuerto	Tijuana	16	Colonia	22404
4242	Las Californias	Tijuana	16	Colonia	22404
4243	Anexa Postal	Tijuana	16	Colonia	22405
4244	Burócrata Ruiz Cortines	Tijuana	16	Colonia	22406
4245	Anexa Ruiz Cortines	Tijuana	16	Colonia	22406
4246	Alfonso Garzón	Tijuana	16	Colonia	22410
4247	Centro Urbano70-76	Tijuana	16	Colonia	22410
4248	Lomas Taurinas	Tijuana	16	Colonia	22410
4249	Anexa Buena Vista	Tijuana	16	Colonia	22414
4250	Tomas Aquino	Tijuana	16	Colonia	22414
4252	SEPANAL	Tijuana	16	Colonia	22415
4253	Buena Vista	Tijuana	16	Colonia	22415
4254	Chamizal	Tijuana	16	Colonia	22415
4255	Anexa Del Río	Tijuana	16	Colonia	22416
4256	Empleado Postal	Tijuana	16	Colonia	22416
4257	Mineralde Santa Fe	Tijuana	16	Colonia	22416
4258	López Leyva	Tijuana	16	Colonia	22416
4259	Defensoresde Baja California	Tijuana	16	Colonia	22416
4260	Del Río	Tijuana	16	Colonia	22416
4261	Otay Insurgentes	Tijuana	16	Colonia	22420
4262	Altabrisa	Tijuana	16	Colonia	22420
4263	Ampliación Lomas Taurinas	Tijuana	16	Colonia	22420
4264	Insurgentes	Tijuana	16	Colonia	22420
4265	Internacional Tijuana	Tijuana	16	Zonaindustrial	22424
4266	Bosquedelas Araucarias	Tijuana	16	Colonia	22425
4267	La Pechuga	Tijuana	16	Colonia	22425
4268	Centro Comercial Otay	Tijuana	16	Colonia	22425
4269	Villas Otay	Tijuana	16	Fraccionamiento	22425
4209	Santa Fe	Tijuana	16	Colonia	22254
4270	Parque Industrial Misionesdelas Californias	Tijuana	16	Zonaindustrial	22425
4271	Guadalupe Victoria	Tijuana	16	Colonia	22426
4272	Ex Ejido Tampico	Tijuana	16	Colonia	22426
4273	Misionesdel Pedregal	Tijuana	16	Colonia	22426
4274	Laderasde Otay	Tijuana	16	Colonia	22427
4275	Otay Jardín	Tijuana	16	Colonia	22427
4276	Otay Universidad	Tijuana	16	Unidadhabitacional	22427
4277	INDECOUniversidad	Tijuana	16	Unidadhabitacional	22427
4278	Ignacio Zaragoza	Tijuana	16	Colonia	22427
4279	Universidad Sur	Tijuana	16	Colonia	22427
4280	Otay Jardín II	Tijuana	16	Colonia	22427
4281	Garita Otay	Tijuana	16	Colonia	22430
4282	Garita Internacional	Tijuana	16	Colonia	22430
4283	Vista Lago	Tijuana	16	Fraccionamiento	22430
4284	Mesade Otay	Tijuana	16	Colonia	22430
4285	Perimetral Norte	Tijuana	16	Colonia	22434
4286	Residencial Frontera	Tijuana	16	Condominio	22434
4287	Robertode La Madrid	Tijuana	16	Colonia	22435
4288	Nueva Tijuana	Tijuana	16	Colonia	22435
4289	Bellas Artes	Tijuana	16	Fraccionamiento	22435
4290	Xicoténcatl Leyva(OE)	Tijuana	16	Colonia	22436
4291	Otay Galerías	Tijuana	16	Colonia	22436
4292	Otay Diamantes	Tijuana	16	Colonia	22436
4293	Otay Colonial	Tijuana	16	Fraccionamiento	22436
4294	Tijuana(Gral.Abelardo L.Rodríguez)	Tijuana	16	Aeropuerto	22439
4295	Ejido Chilpancingo	Tijuana	16	Colonia	22440
4296	Chilpancingo	Tijuana	16	Zonaindustrial	22440
4297	Ciudad Industrial	Tijuana	16	Zonaindustrial	22444
4298	Ejido Chilpancingo	Tijuana	16	Colonia	22446
4299	Plaza Otay	Tijuana	16	Colonia	22450
4300	FOVISSSTEII	Tijuana	16	Unidadhabitacional	22450
4301	Otay Campestre	Tijuana	16	Colonia	22450
4302	Vista Alamar	Tijuana	16	Colonia	22450
4303	FOVISSSTEV	Tijuana	16	Colonia	22450
4304	Manuel Rivera Anaya	Tijuana	16	Colonia	22450
4305	Río Vista	Tijuana	16	Colonia	22450
4306	INFONAVITLoma II	Tijuana	16	Unidadhabitacional	22450
4307	Rincónde Otay	Tijuana	16	Fraccionamiento	22450
4308	Otay Vista	Tijuana	16	Fraccionamiento	22450
4309	Tecnológico	Tijuana	16	Colonia	22454
4310	Campestre Murua	Tijuana	16	Colonia	22455
4311	Valle Vista1a Sección	Tijuana	16	Colonia	22456
4312	Melchor Ocampo	Tijuana	16	Colonia	22456
4313	Murua Poniente	Tijuana	16	Colonia	22456
4314	Valle Vista2a Sección	Tijuana	16	Colonia	22456
4315	FOVISSSTE	Tijuana	16	Unidadhabitacional	22457
4316	Maestros Universitarios	Tijuana	16	Colonia	22457
4317	Otay Constituyentes	Tijuana	16	Colonia	22457
4318	Rinconadade Otay	Tijuana	16	Colonia	22457
4319	Delicias	Tijuana	16	Colonia	22457
4320	Plazas	Tijuana	16	Colonia	22457
4321	Arenales B	Tijuana	16	Colonia	22460
4323	Fernández	Tijuana	16	Colonia	22464
4324	Los Arenales A	Tijuana	16	Colonia	22464
4325	Riberasdel Alamar	Tijuana	16	Colonia	22464
4326	Privada San Miguel	Tijuana	16	Condominio	22465
4327	Patrimonio Alamar	Tijuana	16	Colonia	22465
4328	Alamar	Tijuana	16	Colonia	22465
4329	Hidalgo	Tijuana	16	Colonia	22465
4330	INFONAVITPatrimonio	Tijuana	16	Unidadhabitacional	22465
4331	Murua Oriente	Tijuana	16	Colonia	22465
4332	Valledel Alamar II	Tijuana	16	Fraccionamiento	22470
4333	Magisterial	Tijuana	16	Colonia	22470
4334	Anexa Magisterial	Tijuana	16	Colonia	22470
4335	Las Torres	Tijuana	16	Colonia	22470
4336	Alamar II	Tijuana	16	Zonaindustrial	22470
4337	NidodelasÁguilas	Tijuana	16	Colonia	22473
4338	Rancho Escondido	Tijuana	16	Colonia	22473
4339	Rinconada1	Tijuana	16	Colonia	22474
4340	Rinconada2	Tijuana	16	Colonia	22474
4341	Pegaso II	Tijuana	16	Colonia	22474
4342	Pegaso I	Tijuana	16	Colonia	22474
4343	Granjas Divisióndel Norte	Tijuana	16	Colonia	22474
4344	Pontevedra	Tijuana	16	Fraccionamiento	22476
4345	10de Mayo	Tijuana	16	Colonia	22476
4346	Granjas Familiares Unidas	Tijuana	16	Colonia	22476
4347	Insurgentes	Tijuana	16	Colonia	22476
4348	Playasde Tijuana Sección Jardines	Tijuana	16	Fraccionamiento	22500
4349	Playasde Tijuana Sección Playas Coronado	Tijuana	16	Colonia	22504
4350	Playasde Tijuana Sección Costa	Tijuana	16	Colonia	22504
4351	Playasde Tijuana Sección Terrazas	Tijuana	16	Colonia	22504
4352	Playasde Tijuana Sección Monumental	Tijuana	16	Fraccionamiento	22504
4353	Playa Diamante	Tijuana	16	Fraccionamiento	22504
4354	Puestadel Sol	Tijuana	16	Fraccionamiento	22504
4355	Playasde Tijuana Secciónel Dorado	Tijuana	16	Colonia	22505
4356	Playasde Tijuana Sección Jardinesdel Sol	Tijuana	16	Colonia	22505
4357	Playasde Tijuana Sección La Riviera	Tijuana	16	Colonia	22505
4358	Leonardo Rodriguez Alcaine	Tijuana	16	Colonia	22505
4359	La Perla Residencial	Tijuana	16	Colonia	22505
4360	Marde Cortez	Tijuana	16	Fraccionamiento	22505
4361	Coral Beach	Tijuana	16	Fraccionamiento	22505
4362	La Perla Bahía	Tijuana	16	Fraccionamiento	22505
4363	Playasde Tijuana Sección Triangulode Oro	Tijuana	16	Colonia	22506
4364	Playasde Tijuana Sección Costa Hermosa	Tijuana	16	Colonia	22506
4365	Playasde Tijuana Sección Costade Oro	Tijuana	16	Colonia	22506
4366	Playasde Tijuana Sección Costa Azul	Tijuana	16	Colonia	22506
4367	Colegio Ibero Tijuana	Tijuana	16	Equipamiento	22510
4368	Lázaro Cárdenas	Tijuana	16	Colonia	22510
4369	Alberto Bustamante	Tijuana	16	Colonia	22510
4370	Lázaro Cárdenas3ra Mesa	Tijuana	16	Colonia	22510
4371	Mar Vista	Tijuana	16	Colonia	22510
4372	Xicotencatl Leyva Alemán	Tijuana	16	Colonia	22510
4373	Albatros	Tijuana	16	Colonia	22515
4374	Milenio2000	Tijuana	16	Colonia	22515
4375	Costa Coronado Residencial	Tijuana	16	Fraccionamiento	22516
4376	Villa Mar	Tijuana	16	Colonia	22516
4377	Vista Mar Residencial	Tijuana	16	Fraccionamiento	22517
4378	TECNOMEX	Tijuana	16	Fraccionamiento	22517
4379	Laderasdel Mar	Tijuana	16	Fraccionamiento	22517
4380	La Cúspide	Tijuana	16	Fraccionamiento	22517
4381	Cañóndel Matadero Este	Tijuana	16	Colonia	22520
4382	Los Laureles	Tijuana	16	Colonia	22520
4383	Mar Vista	Tijuana	16	Condominio	22520
4384	El Mirador	Tijuana	16	Colonia	22520
4385	Lomasdel Mirador	Tijuana	16	Colonia	22520
4386	Anexolos Laureles	Tijuana	16	Colonia	22520
4387	Cañón Tampico	Tijuana	16	Colonia	22520
4388	Gran Tenochtitlán	Tijuana	16	Colonia	22523
4389	Cañóndelas Rosas	Tijuana	16	Colonia	22523
4390	Cañón Azteca	Tijuana	16	Colonia	22523
4391	Cañóndel Matadero	Tijuana	16	Colonia	22523
4392	Cañón Miramar	Tijuana	16	Colonia	22523
4393	Michoacán	Tijuana	16	Fraccionamiento	22524
4394	San Angel	Tijuana	16	Colonia	22524
4395	Ecologista	Tijuana	16	Colonia	22525
4396	Divina Providencia	Tijuana	16	Colonia	22525
4397	Anexa Divina Providencia	Tijuana	16	Colonia	22525
4398	La Jolla	Tijuana	16	Zonaindustrial	22525
4399	Rancho Macías	Tijuana	16	Colonia	22525
4400	Vista Encantada	Tijuana	16	Colonia	22525
4401	San Bernardo(Terrazasde San Bernardo)	Tijuana	16	Colonia	22525
4402	Corona Encantada	Tijuana	16	Colonia	22525
4403	Miramar	Tijuana	16	Colonia	22526
4404	Rancholas Flores1a Sección	Tijuana	16	Colonia	22526
4405	Cañón Rosales	Tijuana	16	Colonia	22526
4406	Anexa Miramar	Tijuana	16	Colonia	22526
4407	Rancholas Flores2a Sección	Tijuana	16	Colonia	22526
4408	Colinadel Mediterráneo	Tijuana	16	Colonia	22530
4409	Soler	Tijuana	16	Colonia	22530
4410	Lomas Misión	Tijuana	16	Colonia	22530
4411	Misióndel Sol	Tijuana	16	Colonia	22530
4412	Segunda Partedel Soler	Tijuana	16	Fraccionamiento	22530
4413	Herrera	Tijuana	16	Colonia	22534
4414	Unión	Tijuana	16	Colonia	22534
4415	Santa Rosa(Ciudad)	Tijuana	16	Colonia	22534
4416	Las Palmeras	Tijuana	16	Colonia	22535
4417	INFONAVITLomasdel Porvenir	Tijuana	16	Fraccionamiento	22535
4418	Cañóndelas Palmeras	Tijuana	16	Colonia	22535
4419	Lomas Tijuana	Tijuana	16	Colonia	22535
4420	Los Altos(Ruíz Valencia)	Tijuana	16	Colonia	22536
4421	Divisiónlos Altos	Tijuana	16	Colonia	22536
4422	Hacienda Linda Vista	Tijuana	16	Fraccionamiento	22536
4423	Cañóndel Matadero Norte	Tijuana	16	Fraccionamiento	22537
4424	La Isla	Tijuana	16	Colonia	22537
4425	Puente La Joya	Tijuana	16	Colonia	22540
4426	Coronadel Mar	Tijuana	16	Colonia	22544
4427	Roberto Yahuaca	Tijuana	16	Colonia	22545
4428	Las Cumbres	Tijuana	16	Colonia	22545
4429	Punta Bandera	Tijuana	16	Fraccionamiento	22550
4430	Puntadel Mar	Tijuana	16	Fraccionamiento	22550
4431	Terrazasdel Sol	Tijuana	16	Colonia	22555
4432	Antorcha Campesina	Tijuana	16	Colonia	22555
4433	El Monte	Tijuana	16	Colonia	22555
4434	Antorcha II	Tijuana	16	Colonia	22557
4435	Granjas Familiares La Esperanza	Tijuana	16	Fraccionamiento	22557
4436	Vista Azul	Tijuana	16	Fraccionamiento	22557
4437	Baja Malibú	Tijuana	16	Colonia	22560
4438	Baja Malibú(Sección Playas)	Tijuana	16	Fraccionamiento	22560
4439	Playa Blanca	Tijuana	16	Fraccionamiento	22560
4440	San Antoniodel Mar	Tijuana	16	Colonia	22560
4441	Lomas Santa Fe	Tijuana	16	Fraccionamiento	22564
4442	Viñasdel Mar	Tijuana	16	Fraccionamiento	22564
4443	Viñasdel Mar II	Tijuana	16	Fraccionamiento	22564
4444	Lomasdel Mar	Tijuana	16	Fraccionamiento	22564
4445	Urbi Quintadel Cedro	Tijuana	16	Fraccionamiento	22564
4446	Urbi Quintadel Cedro Segunda Sección	Tijuana	16	Fraccionamiento	22564
4447	Realdel Mar	Tijuana	16	Colonia	22565
4448	Pacifico Campestre	Tijuana	16	Fraccionamiento	22565
4449	Baja Malibú(Sección Lomas)	Tijuana	16	Fraccionamiento	22566
4450	Campo Koa	Tijuana	16	Colonia	22566
4451	Los Delfines	Tijuana	16	Fraccionamiento	22566
4452	Sección Campestre	Tijuana	16	Fraccionamiento	22566
4453	Haciendadel Mar	Tijuana	16	Colonia	22566
4454	Santa Mónica	Tijuana	16	Colonia	22566
4455	Brisasdel Mar	Tijuana	16	Colonia	22566
4456	Residencial San Marino	Tijuana	16	Fraccionamiento	22567
4457	Montes Olímpicos	Tijuana	16	Colonia	22600
4458	Anexa Niños Héroes	Tijuana	16	Colonia	22600
4459	Cañón Rubí	Tijuana	16	Colonia	22600
4460	Artesanal	Tijuana	16	Colonia	22600
4461	El Cortez	Tijuana	16	Colonia	22600
4462	Pedregalde Santa Julia	Tijuana	16	Colonia	22604
4463	Nueva Aurora	Tijuana	16	Colonia	22604
4464	Loma Bonita Norte	Tijuana	16	Colonia	22604
4465	Nueva Aurora Sur	Tijuana	16	Colonia	22604
4466	Nuevo Milenio	Tijuana	16	Colonia	22604
4467	Realde Loma Bonita	Tijuana	16	Fraccionamiento	22604
4468	Valle Sur	Tijuana	16	Zonaindustrial	22604
4469	El Cerrito	Tijuana	16	Colonia	22605
4470	Reacomodo Obras Publicas	Tijuana	16	Colonia	22605
4471	Cañóndelas Carretas	Tijuana	16	Colonia	22605
4472	Fausto González	Tijuana	16	Colonia	22605
4473	Loma Bonita(NA)	Tijuana	16	Colonia	22605
4474	Xicotencatl Leyva	Tijuana	16	Colonia	22606
4475	Flores Magón	Tijuana	16	Colonia	22606
4476	El Jibarito	Tijuana	16	Fraccionamiento	22606
4477	Brisa Marina	Tijuana	16	Fraccionamiento	22607
4478	Salvatierra	Tijuana	16	Colonia	22607
4479	Ampliación Salvatierra	Tijuana	16	Colonia	22607
4480	Modesto Ponce	Tijuana	16	Colonia	22607
4481	San Mateo	Tijuana	16	Fraccionamiento	22607
4482	Granja Puestadel Sol	Tijuana	16	Colonia	22607
4483	La Cueva	Tijuana	16	Colonia	22607
4484	Ciudad Jardín	Tijuana	16	Colonia	22610
4485	Manuel Paredes II	Tijuana	16	Colonia	22610
4486	5y8Hectáreas	Tijuana	16	Colonia	22610
4487	Manuel Paredes3a Sección	Tijuana	16	Colonia	22610
4488	Anexa Herrera	Tijuana	16	Colonia	22614
4489	Patrimonial Benito Juárez	Tijuana	16	Colonia	22614
4490	Lomasdel Pacifico	Tijuana	16	Colonia	22614
4491	IAyuntamiento	Tijuana	16	Colonia	22614
4492	Anexa Roma	Tijuana	16	Colonia	22614
4493	Francisco Villa	Tijuana	16	Colonia	22615
4494	El Progreso	Tijuana	16	Colonia	22615
4495	Rancho La Cima	Tijuana	16	Colonia	22616
4496	Monte San Antonio	Tijuana	16	Colonia	22616
4497	Manuel Paredes I	Tijuana	16	Colonia	22620
4498	Niños Héroes	Tijuana	16	Colonia	22620
4499	Chihuahua	Tijuana	16	Colonia	22620
4500	Oaxaca(Ángel Fernández)	Tijuana	16	Colonia	22620
4501	Obrera2a Sección	Tijuana	16	Colonia	22624
4502	Obrera3a Sección	Tijuana	16	Colonia	22624
4503	Obrera1a Sección	Tijuana	16	Colonia	22625
4504	El Rubí	Tijuana	16	Fraccionamiento	22626
4505	RubíAguadores	Tijuana	16	Fraccionamiento	22626
4506	Valledel RubíSección Lomas	Tijuana	16	Colonia	22630
4507	Vivienda Popular	Tijuana	16	Colonia	22630
4508	Cumbresdel Sol	Tijuana	16	Fraccionamiento	22630
4509	La Sierra	Tijuana	16	Colonia	22634
4510	Liberal Lomasdel Rubí	Tijuana	16	Fraccionamiento	22634
4511	Residencial Las Cascadas	Tijuana	16	Colonia	22634
4512	Colinasdel Rey	Tijuana	16	Colonia	22634
4513	Roberto Curiel	Tijuana	16	Colonia	22634
4514	Valledel Pedregal	Tijuana	16	Fraccionamiento	22635
4515	Simón Bolívar	Tijuana	16	Colonia	22635
4516	Ignacio Ramírez	Tijuana	16	Colonia	22635
4517	Tepeyac	Tijuana	16	Colonia	22635
4518	Tejamen	Tijuana	16	Colonia	22635
4519	Alfonso Ballesteros	Tijuana	16	Colonia	22635
4520	Ampliación Tejamen	Tijuana	16	Colonia	22635
4521	Anexa Simón Bolívar	Tijuana	16	Colonia	22635
4522	Cumbresdel Rubí	Tijuana	16	Colonia	22635
4523	Lomasdel Río	Tijuana	16	Colonia	22635
4524	Lomas Villas	Tijuana	16	Colonia	22635
4525	El Palmar	Tijuana	16	Fraccionamiento	22635
4526	La Esperanza	Tijuana	16	Fraccionamiento	22635
4527	Santa Paula	Tijuana	16	Fraccionamiento	22635
4528	El Rincón	Tijuana	16	Fraccionamiento	22635
4529	Villa Bonita	Tijuana	16	Fraccionamiento	22635
4530	Gutiérrez Ovalle	Tijuana	16	Colonia	22636
4531	Llamas Amaya	Tijuana	16	Colonia	22636
4532	Patrimonio Familiar	Tijuana	16	Colonia	22636
4533	Jardinesdelas Cruces	Tijuana	16	Colonia	22636
4534	Villegas	Tijuana	16	Colonia	22636
4535	28Batallónde Infantería	Tijuana	16	Zonamilitar	22636
4536	Nueva Era	Tijuana	16	Colonia	22636
4537	Militar	Tijuana	16	Unidadhabitacional	22636
4538	Valledel Sur2	Tijuana	16	Zonaindustrial	22637
4539	Valledel Sur	Tijuana	16	Fraccionamiento	22637
4540	Valledel RubíSección Terrazas	Tijuana	16	Colonia	22637
4541	Jardinesdel Rubí	Tijuana	16	Colonia	22637
4542	Anexa Pro Hogar	Tijuana	16	Colonia	22637
4543	Valledel Sur1	Tijuana	16	Zonaindustrial	22637
4544	Aguajede La Tuna1a Sección	Tijuana	16	Colonia	22640
4545	Aguajede La Tuna2a Sección	Tijuana	16	Colonia	22640
4546	Internacional	Tijuana	16	Colonia	22640
4547	Luis Echeverría	Tijuana	16	Colonia	22640
4548	Delos Maestros	Tijuana	16	Colonia	22640
4549	Las Plazas	Tijuana	16	Fraccionamiento	22640
4550	Residencial La Esmeralda	Tijuana	16	Colonia	22640
4551	Condesa	Tijuana	16	Fraccionamiento	22640
4552	Anexa Internacional	Tijuana	16	Colonia	22640
4553	Nueva Esperanza(La Cuesta)	Tijuana	16	Colonia	22640
4554	Sánchez Díaz	Tijuana	16	Colonia	22640
4555	Residencial La Esperanza	Tijuana	16	Fraccionamiento	22640
4556	La Rioja Residencial	Tijuana	16	Fraccionamiento	22643
4557	Industrial Pacífico I	Tijuana	16	Zonaindustrial	22643
4558	Industrial Pacífico III	Tijuana	16	Zonaindustrial	22643
4559	Leandro Valle	Tijuana	16	Colonia	22643
4560	Xochimilco Solidaridad	Tijuana	16	Colonia	22643
4561	Las Flores	Tijuana	16	Fraccionamiento	22643
4562	Paseosdel Pacífico	Tijuana	16	Fraccionamiento	22643
4563	Mi Patrimonio	Tijuana	16	Colonia	22643
4564	Haciendadel Pacifico	Tijuana	16	Colonia	22643
4565	San Quintín	Tijuana	16	Fraccionamiento	22643
4566	Lomasde San Martín	Tijuana	16	Fraccionamiento	22643
4567	Banus Residencial	Tijuana	16	Fraccionamiento	22644
4568	Parque Industrial Pacífico IV	Tijuana	16	Zonaindustrial	22644
4569	El Tecolote	Tijuana	16	Colonia	22644
4570	Genaro Vázquez	Tijuana	16	Colonia	22644
4571	Industrial Pacífico II	Tijuana	16	Zonaindustrial	22644
4572	Nordika	Tijuana	16	Zonaindustrial	22644
4573	Granjasel Tecolote	Tijuana	16	Colonia	22644
4574	Cumbresdel Pacífico(Terrazasdel Pacífico)	Tijuana	16	Fraccionamiento	22644
4575	XVIIIAyuntamiento	Tijuana	16	Unidadhabitacional	22644
4576	Genaro Vázquez Sección Tres	Tijuana	16	Colonia	22644
4577	Residencial Barcelona	Tijuana	16	Fraccionamiento	22644
4578	Monarca	Tijuana	16	Colonia	22645
4579	La Gloria	Tijuana	16	Colonia	22645
4580	Campestre La Gloria	Tijuana	16	Colonia	22645
4581	Jardinesde La Gloria	Tijuana	16	Colonia	22645
4582	Realde La Gloria	Tijuana	16	Colonia	22645
4583	La Jolla	Tijuana	16	Colonia	22645
4584	Residencial Los Leones	Tijuana	16	Fraccionamiento	22645
4585	Condominios Villas California	Tijuana	16	Fraccionamiento	22645
4586	Lagunitas	Tijuana	16	Colonia	22646
4587	Lagunitas3a Sección	Tijuana	16	Colonia	22646
4588	Bonaterra	Tijuana	16	Fraccionamiento	22647
4589	Panamericano	Tijuana	16	Colonia	22647
4590	Alfa Panamericano	Tijuana	16	Colonia	22647
4591	Industrial Morelos	Tijuana	16	Fraccionamiento	22647
4592	Colinasde California	Tijuana	16	Fraccionamiento	22647
4593	Villa Campestre	Tijuana	16	Fraccionamiento	22647
4594	Jardinesde La Misión	Tijuana	16	Fraccionamiento	22647
4595	Cuesta Blanca	Tijuana	16	Fraccionamiento	22650
4596	Las2Palmas	Tijuana	16	Colonia	22650
4597	Loma Blanca	Tijuana	16	Fraccionamiento	22650
4598	Hacienda San Martín	Tijuana	16	Colonia	22654
4599	El Chicote	Tijuana	16	Colonia	22654
4600	Bonilla	Tijuana	16	Colonia	22654
4601	Alfredo Ames	Tijuana	16	Colonia	22654
4602	Ejido Lázaro Cárdenas	Tijuana	16	Colonia	22654
4603	Alcatraces	Tijuana	16	Fraccionamiento	22654
4604	Ampliación Ejido Lázaro Cárdenas	Tijuana	16	Colonia	22654
4605	Colinasdel Sol	Tijuana	16	Fraccionamiento	22660
4606	Francisco Zarco	Tijuana	16	Colonia	22660
4607	Xicoténcatl Dos	Tijuana	16	Colonia	22660
4608	Lomas Encantadas	Tijuana	16	Fraccionamiento	22660
4609	Estrella	Tijuana	16	Fraccionamiento	22660
4610	Valparaíso Residencial	Tijuana	16	Fraccionamiento	22663
4611	San Agustin	Tijuana	16	Fraccionamiento	22663
4612	Haciendalas Flores	Tijuana	16	Colonia	22663
4613	Villa Residencial Santa Fe4a Sección	Tijuana	16	Fraccionamiento	22664
4614	La Cuestecita	Tijuana	16	Colonia	22664
4615	Villa Residencial Santa Fe3a Sección	Tijuana	16	Fraccionamiento	22664
4616	Villa Residencial Santa Fe2a Sección	Tijuana	16	Fraccionamiento	22664
4617	Leonardo Rodriguez Alcaine	Tijuana	16	Colonia	22664
4618	Villa Residencial Santa Fe5a Sección	Tijuana	16	Fraccionamiento	22664
4619	Quinta Versalles	Tijuana	16	Fraccionamiento	22664
4620	Cumbresdel Sol	Tijuana	16	Colonia	22665
4621	Leydel Servicio Civil	Tijuana	16	Colonia	22665
4622	Terrazasde San Angel	Tijuana	16	Colonia	22665
4623	Lomasde San Antonio	Tijuana	16	Colonia	22665
4624	Isla Coronado	Tijuana	16	Fraccionamiento	22665
4625	Fuentesdel Sol	Tijuana	16	Fraccionamiento	22665
4626	Las Villas Santa Fe	Tijuana	16	Fraccionamiento	22666
4627	Pórticosde San Antonio	Tijuana	16	Colonia	22666
4628	Realde San Antonio	Tijuana	16	Colonia	22666
4629	Vista Bella	Tijuana	16	Colonia	22666
4630	Residencial Isla Cedros	Tijuana	16	Fraccionamiento	22666
4631	Isla Mujeres	Tijuana	16	Fraccionamiento	22666
4632	La Escondida	Tijuana	16	Fraccionamiento	22666
4633	Lomasdel Real	Tijuana	16	Fraccionamiento	22666
4634	Estrelladel Pacífico	Tijuana	16	Fraccionamiento	22667
4635	Siena Residencial	Tijuana	16	Fraccionamiento	22667
4636	Costa Dorada	Tijuana	16	Colonia	22667
4637	Villa Residencial Santa Fe1a Sección	Tijuana	16	Fraccionamiento	22667
4638	Las Villas Tijuana	Tijuana	16	Colonia	22667
4640	Praderasdela Gloria	Tijuana	16	Fraccionamiento	22667
4641	Verona Residencial	Tijuana	16	Fraccionamiento	22667
4642	Rosarito Centro	Playasde Rosarito	17	Colonia	22700
4643	Quintadel Mar	Playasde Rosarito	17	Condominio	22703
4644	Termoeléctrica	Playasde Rosarito	17	Colonia	22703
4645	Villasdel Mar	Playasde Rosarito	17	Fraccionamiento	22703
4646	5ta.Plaza	Playasde Rosarito	17	Colonia	22703
4647	Villadel Mar	Playasde Rosarito	17	Fraccionamiento	22703
4648	La Fuente	Playasde Rosarito	17	Fraccionamiento	22703
4649	Machado	Playasde Rosarito	17	Colonia	22703
4650	Basso	Playasde Rosarito	17	Colonia	22703
4651	Lienzo Charro	Playasde Rosarito	17	Colonia	22703
4652	López Gutiérrez	Playasde Rosarito	17	Fraccionamiento	22703
4653	LosÁngeles	Playasde Rosarito	17	Fraccionamiento	22703
4654	Echeverría	Playasde Rosarito	17	Colonia	22703
4655	Machado Sur	Playasde Rosarito	17	Colonia	22703
4656	Magisterial	Playasde Rosarito	17	Colonia	22703
4657	Mexicali	Playasde Rosarito	17	Colonia	22703
4658	Miramar	Playasde Rosarito	17	Colonia	22703
4659	Obrera	Playasde Rosarito	17	Colonia	22703
4660	Tijuana	Playasde Rosarito	17	Colonia	22703
4661	Villa Mar	Playasde Rosarito	17	Fraccionamiento	22703
4662	Hacienda San Fernando	Playasde Rosarito	17	Fraccionamiento	22703
4663	Reserva San Fernando	Playasde Rosarito	17	Colonia	22703
4664	Anexa Obrera	Playasde Rosarito	17	Colonia	22703
4665	Rosarito Este	Playasde Rosarito	17	Colonia	22703
4666	Machado Norte	Playasde Rosarito	17	Colonia	22703
4667	Hacienda Floresta	Playasde Rosarito	17	Fraccionamiento	22703
4668	Vistaal Mar	Playasde Rosarito	17	Colonia	22703
4669	Perladel Pacífico	Playasde Rosarito	17	Fraccionamiento	22704
4670	Ampliación Reforma	Playasde Rosarito	17	Colonia	22704
4671	PEMEX	Playasde Rosarito	17	Equipamiento	22704
4672	PEMEX	Playasde Rosarito	17	Unidadhabitacional	22704
4673	Ranchodel Mar	Playasde Rosarito	17	Fraccionamiento	22704
4674	Reforma	Playasde Rosarito	17	Colonia	22704
4675	Rica Mar	Playasde Rosarito	17	Fraccionamiento	22704
4676	Santa Mónica	Playasde Rosarito	17	Fraccionamiento	22704
4677	Bajadel Mar	Playasde Rosarito	17	Fraccionamiento	22704
4678	Marisol	Playasde Rosarito	17	Fraccionamiento	22704
4679	El Oasis	Playasde Rosarito	17	Colonia	22704
4680	Lepro	Playasde Rosarito	17	Fraccionamiento	22704
4681	Lomasdel Desierto	Playasde Rosarito	17	Fraccionamiento	22705
4682	Rosamar	Playasde Rosarito	17	Fraccionamiento	22705
4683	Campestre Lagos	Playasde Rosarito	17	Fraccionamiento	22705
4684	Colinasde Aragón	Playasde Rosarito	17	Colonia	22705
4685	Aztlán	Playasde Rosarito	17	Fraccionamiento	22705
4686	Lomasde Rosarito	Playasde Rosarito	17	Fraccionamiento	22705
4687	Santa Lucía	Playasde Rosarito	17	Colonia	22705
4688	Veracruz	Playasde Rosarito	17	Colonia	22705
4689	Campestre La Minade San Antonio	Playasde Rosarito	17	Fraccionamiento	22705
4690	Lomasde Montecarlo	Playasde Rosarito	17	Fraccionamiento	22705
4691	Independencia	Playasde Rosarito	17	Colonia	22705
4692	La Mina	Playasde Rosarito	17	Fraccionamiento	22705
4693	Playasde Santander	Playasde Rosarito	17	Fraccionamiento	22705
4694	Colinasde Mazatlán	Playasde Rosarito	17	Colonia	22706
4695	Realde Rosarito	Playasde Rosarito	17	Fraccionamiento	22706
4696	Cumbresde Rosarito	Playasde Rosarito	17	Fraccionamiento	22706
4697	Villa Bonita	Playasde Rosarito	17	Fraccionamiento	22706
4698	Colinasdel Sol	Playasde Rosarito	17	Colonia	22706
4699	La Herradura	Playasde Rosarito	17	Colonia	22706
4700	Los Ramos	Playasde Rosarito	17	Fraccionamiento	22706
4701	Cumbresdel Mar	Playasde Rosarito	17	Fraccionamiento	22706
4702	Ampliación Lucio Blanco	Playasde Rosarito	17	Colonia	22706
4703	Costa Rica	Playasde Rosarito	17	Fraccionamiento	22706
4704	Coralde Rosarito	Playasde Rosarito	17	Colonia	22706
4705	Arboledas	Playasde Rosarito	17	Fraccionamiento	22706
4706	San Miguel	Playasde Rosarito	17	Fraccionamiento	22706
4707	Poliducto	Playasde Rosarito	17	Colonia	22706
4708	Plan Libertador	Playasde Rosarito	17	Colonia	22706
4709	Ampliación Benito Juárez	Playasde Rosarito	17	Colonia	22706
4710	Salinasde Gortari	Playasde Rosarito	17	Fraccionamiento	22706
4711	Ampliación Plan Libertador	Playasde Rosarito	17	Colonia	22706
4712	Lucio Blanco	Playasde Rosarito	17	Colonia	22706
4713	Benito Juárez	Playasde Rosarito	17	Colonia	22706
4714	Rosarito	Playasde Rosarito	17	Zonaindustrial	22706
4715	Jorge Díaz Serrano	Playasde Rosarito	17	Fraccionamiento	22706
4716	Realde Rosarito II	Playasde Rosarito	17	Fraccionamiento	22706
4717	Villa Turística	Playasde Rosarito	17	Fraccionamiento	22707
4718	Ampliación Constitución	Playasde Rosarito	17	Colonia	22707
4719	Chula Vista	Playasde Rosarito	17	Fraccionamiento	22707
4720	Villas Siboney	Playasde Rosarito	17	Colonia	22707
4721	Colinasde Rosarito	Playasde Rosarito	17	Colonia	22707
4722	Lomasde Coronado	Playasde Rosarito	17	Fraccionamiento	22707
4723	Rancholos Olivos	Playasde Rosarito	17	Colonia	22707
4724	Rinconadade Rosarito	Playasde Rosarito	17	Colonia	22707
4725	Rancho Altamira	Playasde Rosarito	17	Colonia	22707
4726	Aguajedela Cabaña	Playasde Rosarito	17	Rancho	22707
4727	Mauro Guzmán	Playasde Rosarito	17	Ranchería	22707
4728	Constitución	Playasde Rosarito	17	Colonia	22707
4729	Rancho Chula Vista	Playasde Rosarito	17	Colonia	22707
4730	Eduardo Crosthwhite	Playasde Rosarito	17	Colonia	22707
4731	Crosthwhite	Playasde Rosarito	17	Colonia	22707
4732	Huacatay	Playasde Rosarito	17	Colonia	22707
4733	Ampliación Ejido Mazatlán	Playasde Rosarito	17	Colonia	22707
4734	17de Agosto	Playasde Rosarito	17	Colonia	22707
4735	Lomas Altas	Playasde Rosarito	17	Colonia	22707
4736	Catalinadel Mar	Playasde Rosarito	17	Fraccionamiento	22707
4737	La Capilla	Playasde Rosarito	17	Colonia	22707
4738	Santa Anitadel Mar	Playasde Rosarito	17	Colonia	22707
4739	Morelos	Playasde Rosarito	17	Colonia	22707
4740	Vista Hermosa	Playasde Rosarito	17	Colonia	22707
4741	La Cascada	Playasde Rosarito	17	Fraccionamiento	22710
4742	Costadelsol	Playasde Rosarito	17	Fraccionamiento	22710
4743	Popotla	Playasde Rosarito	17	Colonia	22710
4744	Playa Hermosa	Playasde Rosarito	17	Colonia	22710
4745	Camino Alegre	Playasde Rosarito	17	Colonia	22710
4746	El Mañana	Playasde Rosarito	17	Colonia	22710
4747	Punta Azul	Playasde Rosarito	17	Fraccionamiento	22713
4748	Matajanil	Playasde Rosarito	17	Rancho	22713
4749	Hermenegildo Cuenca Díaz	Playasde Rosarito	17	Colonia	22713
4750	La Barca	Playasde Rosarito	17	Colonia	22713
4751	La Paloma	Playasde Rosarito	17	Colonia	22713
4752	Playa Encantada	Playasde Rosarito	17	Colonia	22713
4753	Castillosdel Mar	Playasde Rosarito	17	Colonia	22713
4754	Villa Coronadel Mar	Playasde Rosarito	17	Colonia	22713
4755	Villasde Rosarito	Playasde Rosarito	17	Colonia	22713
4757	Los Arroyos	Playasde Rosarito	17	Fraccionamiento	22715
4758	Aguamarina	Playasde Rosarito	17	Fraccionamiento	22715
4759	Misióndel Mar I	Playasde Rosarito	17	Colonia	22715
4760	Colinasdel Volcan	Playasde Rosarito	17	Fraccionamiento	22715
4761	Perla Escondida	Playasde Rosarito	17	Fraccionamiento	22715
4762	La Fortuna	Playasde Rosarito	17	Fraccionamiento	22715
4763	Villa Italiana	Playasde Rosarito	17	Fraccionamiento	22715
4764	Misióndel Mar II	Playasde Rosarito	17	Colonia	22715
4765	Rivera San Carlos	Playasde Rosarito	17	Fraccionamiento	22716
4766	Terrazasdel Pacífico	Playasde Rosarito	17	Fraccionamiento	22716
4767	El Mirador	Playasde Rosarito	17	Fraccionamiento	22716
4768	Marde Popotla	Playasde Rosarito	17	Fraccionamiento	22716
4769	El Morro	Playasde Rosarito	17	Rancho	22717
4770	El Morro	Playasde Rosarito	17	Ranchería	22717
4771	Haciendadel Sol	Playasde Rosarito	17	Fraccionamiento	22717
4772	Marde Calafia	Playasde Rosarito	17	Fraccionamiento	22717
4773	Santa Isabeldel Mar	Playasde Rosarito	17	Fraccionamiento	22717
4774	Terrazasdel Mar	Playasde Rosarito	17	Fraccionamiento	22717
4775	Villasde SanÁngel	Playasde Rosarito	17	Fraccionamiento	22717
4776	Primo Tapiaparte Baja		17	Ejido	22740
4777	Los Manantiales		17	Colonia	22740
4778	Lomasde Cantamar		17	Fraccionamiento	22740
4779	Las Torres		17	Fraccionamiento	22740
4780	Rancho Reynoso		17	Fraccionamiento	22740
4781	Santini		17	Rancho	22740
4782	El Morro Kilómetro Treintay Ocho		17	Colonia	22740
4783	Ladrillera Pescador		17	Colonia	22740
4784	El Refugio		17	Colonia	22740
4785	Lomasde Puerto Nuevo		17	Fraccionamiento	22740
4786	Centinela		17	Fraccionamiento	22740
4787	Los Arroyos		17	Colonia	22740
4788	Primo Tapiaparte Alta		17	Ejido	22740
4789	Cantamar		17	Fraccionamiento	22740
4790	Bahía Cantiles(Cantiles Dorados)		17	Colonia	22740
4791	Las Gaviotas		17	Colonia	22740
4792	Puerto Nuevo		17	Colonia	22740
4793	Marbella		17	Fraccionamiento	22740
4794	Centro Turístico El Pescador		17	Colonia	22740
4795	Villasde San Pedro		17	Fraccionamiento	22740
4796	Fundadores		17	Fraccionamiento	22740
4797	Vista Marina		17	Fraccionamiento	22740
4798	Colinasdel Puerto		17	Fraccionamiento	22740
4799	Marde Puerto Nuevo I		17	Fraccionamiento	22740
4800	Campo Real		17	Fraccionamiento	22740
4801	El Descanso		17	Ranchería	22744
4802	Ranchoel Descanso		17	Fraccionamiento	22744
4803	Misiónel Descanso		17	Ranchería	22744
4804	Lomasde León		17	Fraccionamiento	22744
4805	San Josédela Zorra		17	Ranchería	22745
4806	La Zorra		17	Ejido	22745
4807	Santa Anita		17	Colonia	22746
4808	Playasla Misión		17	Ranchería	22746
4809	Alisitos		17	Colonia	22746
4810	Campo López		17	Colonia	22746
4811	Medio Camino		17	Fraccionamiento	22746
4812	El Campito		17	Colonia	22746
4813	Marena Cove		17	Fraccionamiento	22746
4814	Misión Viejo		17	Fraccionamiento	22746
4815	Cuenca Lechera		17	Fraccionamiento	22746
4816	Venustiano Carranza		17	Ejido	22746
4817	Plazadel Mar		17	Fraccionamiento	22746
4818	Francisco Zarco(Vallede Guadalupe)		18	Pueblo	22750
4819	San Antonio Necua(Cañadadelos Encinos)		18	Ranchería	22750
4820	Tierra Santa		18	Rancho	22753
4821	Parcela32		18	Ranchería	22753
4822	Parcela77		18	Ranchería	22753
4823	Tierra Santa		18	Ranchería	22753
4824	Democraciay Libertaddel Porvenir		18	Colonia	22753
4825	El Porvenir(Guadalupe)		18	Ejido	22753
4826	Ampliaciónel Porvenir		18	Ejido	22755
4827	Artículo Ciento Quince		18	Pueblo	22755
4828	El Milagro		18	Ranchería	22756
4829	Ignacio Zaragoza		18	Ranchería	22758
4830	Emiliano Zapata		18	Ejido	22758
4831	Colinasdel Sauzal		18	Fraccionamiento	22760
4832	FONDEPORT		18	Zonaindustrial	22760
4833	Colinasdel Mar		18	Colonia	22760
5008	Nuevo Reforma II	Ensenada	18	Fraccionamiento	22812
4834	Nueva Ciudadde Niños(R.Coronita)		18	Equipamiento	22760
4835	Balcones Cíbolasdel Mar		18	Fraccionamiento	22760
4836	Villasde San Miguel		18	Fraccionamiento	22760
4837	El Sauzal		18	Pueblo	22760
4838	Villas Cíboladel Mar		18	Fraccionamiento	22760
4839	Lomasdel Sauzal		18	Colonia	22760
4840	Colinasdel Mar Residencial		18	Fraccionamiento	22760
4841	Manchuria		18	Colonia	22760
4842	Santa Anita		18	Colonia	22760
4844	Brisadel Mar		18	Colonia	22760
4845	Ley Federalde Reforma Agraria(El Tigre)		18	Ejido	22762
4846	Punta Piedra		18	Fraccionamiento	22765
4847	La Salina		18	Rancho	22765
4848	Orfanato Doorof Faith Orphanage		18	Equipamiento	22765
4849	Buena Vista		18	Ranchería	22765
4850	Úrsulo Galván		18	Ranchería	22765
4851	Campo Turístico La Misión		18	Equipamiento	22765
4852	La Misión		18	Ejido	22765
4853	Puerto Salina La Marina		18	Equipamiento	22765
4854	Ampliación Mixteca II		18	Colonia	22766
4855	Granjas Agrícolas Lucio Blanco		18	Ranchería	22766
4856	Residencial Campestre Las Lomas		18	Ranchería	22766
4857	San Marco		18	Ranchería	22766
4858	Las Ilusiones		18	Ejido	22766
4859	Santa Rosa		18	Ranchería	22766
4860	Villade Juárez(San Antoniodelas Minas)		18	Ejido	22766
4861	Los Cipreses		18	Ranchería	22766
4862	San Antoniode Las Minas		18	Pueblo	22766
4863	Lomasde San Antonio		18	Fraccionamiento	22766
4864	Cuatro Milpas		18	Colonia	22767
4865	Del Valle		18	Fraccionamiento	22770
4866	Los Pirules		18	Rancho	22770
4867	Los Eucaliptos		18	Colonia	22770
4868	Realdel Castillo Nuevo(Ojos Negros)		18	Pueblo	22770
4869	La Rosade Castilla		18	Ranchería	22770
4870	Puerta Trampa		18	Pueblo	22770
4871	La Huerta		18	Ranchería	22771
4873	Siena Residencial		18	Fraccionamiento	22785
4874	Santo Domingo Residencial		18	Fraccionamiento	22785
4875	Nueva España		18	Fraccionamiento	22785
4876	Las Brisas		18	Fraccionamiento	22785
4877	Valledelas Palmas		18	Colonia	22785
4878	Chapultepec		18	Colonia	22785
4879	Aeropuerto		18	Colonia	22785
4880	El Ciprés		18	Colonia	22785
4881	Playasde Chapultepec		18	Colonia	22785
4882	Pórticosdel Mar		18	Fraccionamiento	22785
4883	Villadel Real		18	Fraccionamiento	22785
4884	Villa Residencialdel Real		18	Fraccionamiento	22785
4885	Villadel Real3a Sección		18	Fraccionamiento	22785
4886	Villadel Real2a Sección		18	Fraccionamiento	22785
4887	Villasdel Mar		18	Colonia	22785
4888	Villa Residencialdel Rey		18	Fraccionamiento	22785
4889	Vallede Chapultepec		18	Colonia	22785
4890	Todoslos Santos		18	Fraccionamiento	22785
4891	Jardinesde Chapultepec		18	Colonia	22785
4892	Escritores		18	Colonia	22785
4893	El Naranjo		18	Colonia	22785
4894	Praderasdel Ciprés		18	Colonia	22785
4895	Vistadel Mar		18	Colonia	22785
4896	Vista Hermosa		18	Colonia	22785
4897	Conjunto Artesanal		18	Colonia	22785
4898	Lomasde San Fernando		18	Colonia	22785
4899	Juan Diego		18	Fraccionamiento	22785
4900	Rinconadadel Pedregal		18	Colonia	22785
4901	Parcela Número Sesentay Siete(Las Palmas)		18	Colonia	22785
4902	Villasdel Campo		18	Fraccionamiento	22785
4903	Domingo Luna		18	Colonia	22785
4904	San Borja Residencial		18	Fraccionamiento	22785
4905	Realde San Fernando		18	Fraccionamiento	22785
4906	Las Brisas	Rodolfo Sánchez Taboada(Maneadero)	18	Colonia	22790
4907	Loma Bonita	Rodolfo Sánchez Taboada(Maneadero)	18	Colonia	22790
4908	Vistadel Valle	Rodolfo Sánchez Taboada(Maneadero)	18	Fraccionamiento	22790
4909	JoséLópez Portillo	Rodolfo Sánchez Taboada(Maneadero)	18	Ejido	22790
4910	El Veladero(Ejido Nacionalista)	Rodolfo Sánchez Taboada(Maneadero)	18	Colonia	22790
4911	Reformael Veladero	Rodolfo Sánchez Taboada(Maneadero)	18	Colonia	22790
4912	La Escondida	Rodolfo Sánchez Taboada(Maneadero)	18	Colonia	22790
4913	Durango	Rodolfo Sánchez Taboada(Maneadero)	18	Colonia	22790
4914	Las Tinajitas	Rodolfo Sánchez Taboada(Maneadero)	18	Colonia	22790
4915	Lomasde Mendoza	Rodolfo Sánchez Taboada(Maneadero)	18	Ranchería	22790
4916	El Pípila	Rodolfo Sánchez Taboada(Maneadero)	18	Ejido	22790
4917	Villasdel Mar	Rodolfo Sánchez Taboada(Maneadero)	18	Colonia	22790
4918	Nueva España	Rodolfo Sánchez Taboada(Maneadero)	18	Colonia	22790
4919	Huerta	Rodolfo Sánchez Taboada(Maneadero)	18	Colonia	22790
4920	Maneadero	Rodolfo Sánchez Taboada(Maneadero)	18	Colonia	22790
4921	Bellavista	Rodolfo Sánchez Taboada(Maneadero)	18	Colonia	22790
4922	ElÚnico	Rodolfo Sánchez Taboada(Maneadero)	18	Fraccionamiento	22790
4923	Hogaresdel Puerto	Rodolfo Sánchez Taboada(Maneadero)	18	Colonia	22790
4924	Sexta Sección	Rodolfo Sánchez Taboada(Maneadero)	18	Colonia	22790
4925	Los Pinos	Rodolfo Sánchez Taboada(Maneadero)	18	Fraccionamiento	22790
4926	Solidaridad	Rodolfo Sánchez Taboada(Maneadero)	18	Fraccionamiento	22790
4927	Las Palmas	Rodolfo Sánchez Taboada(Maneadero)	18	Fraccionamiento	22790
4928	Los Olivos	Rodolfo Sánchez Taboada(Maneadero)	18	Fraccionamiento	22790
4929	Rancho Cañón Buena Vista(El Zorrillo)	Rodolfo Sánchez Taboada(Maneadero)	18	Colonia	22790
4930	El Paraíso	Rodolfo Sánchez Taboada(Maneadero)	18	Colonia	22790
4931	Las Flores	Rodolfo Sánchez Taboada(Maneadero)	18	Fraccionamiento	22790
4932	Vistaal Mar	Rodolfo Sánchez Taboada(Maneadero)	18	Fraccionamiento	22790
4933	Praderasdel Sol	Rodolfo Sánchez Taboada(Maneadero)	18	Fraccionamiento	22790
4934	Benito Juárez		18	Colonia	22793
4935	Arce(Nacionalista)		18	Ejido	22793
4936	San Miguel		18	Colonia	22793
4937	Villadel Mar		18	Colonia	22793
4939	Bienestar		18	Colonia	22793
4940	Costa Azul		18	Colonia	22793
4941	El Salitral		18	Fraccionamiento	22793
4942	Lomasdel Mar		18	Fraccionamiento	22794
4943	Campo Turístico La Jolla		18	Equipamiento	22794
4944	IISección Esteban Cantú		18	Ejido	22794
4945	El Ramajal		18	Ranchería	22794
4946	Packard		18	Rancho	22794
4947	Parcela Número140(Nacionalista)		18	Ejido	22794
4948	La Bufadora		18	Ejido	22794
4949	Rincón Punta Banda(Rincónde Ballenas)		18	Ranchería	22794
4950	Coronel Estéban Cantú		18	Ejido	22794
4951	Puerto Escondido		18	Fraccionamiento	22794
4952	Vista Hermosa		18	Ranchería	22795
4953	Francisco Villa		18	Ranchería	22795
4954	Uruapan		18	Ejido	22795
4955	El Ajusco		18	Ejido	22795
4956	El Puertode Santo Tomás		18	Pueblo	22795
4957	Santo Tomas		18	Ranchería	22795
4958	Chula Vista		18	Colonia	22795
4959	Santa Juquila		18	Colonia	22796
4960	Parcela231(El Refugiodel Viejo)		18	Ranchería	22796
4961	Parcela116(Nacionalista)		18	Ejido	22796
4962	Parcela Número117(Lucero)		18	Rancho	22796
4964	Parcela Número105(Nacionalista)		18	Ejido	22796
4965	Colinasdel Pedregal		18	Colonia	22796
4966	Brechasel Mirador		18	Colonia	22796
4967	Francisco R.Serrano(Valle San Matías)		18	Ejido	22797
4968	Comunidad Indígenade Santa Catarina		18	Pueblo	22797
4969	Leyesde Reforma(El Rodeo)		18	Ranchería	22797
4970	Pocitos(Valledela Trinidad)		18	Ranchería	22797
4756	Renes	Playasde Rosarito	17	Colonia	22713
4971	Lázaro Cárdenas(Valledela Trinidad)		18	Pueblo	22797
4972	Héroesde La Independencia(Llano Colorado)		18	Ejido	22797
4973	Esperanza(Cañón San Carlos)		18	Colonia	22798
4974	San Carlos(Ejido Nacionalista)		18	Ranchería	22798
4975	Santa Isabel(Cañón San Carlos)		18	Colonia	22798
4976	Parcela Número64(Ejido Nacionalista)		18	Ejido	22798
4977	Parcela78(Nacionalista)		18	Ejido	22798
4978	Parcela32(Nacionalista)		18	Ejido	22798
4979	Aguacaliente(Baja Country Club)		18	Rancho	22798
4980	Sección Primera	Ensenada	18	Colonia	22800
4981	Márquesde León	Ensenada	18	Colonia	22810
4982	Ejido Ruiz Cortines	Ensenada	18	Colonia	22810
4983	Las Lomitas	Ensenada	18	Fraccionamiento	22810
4984	Lomasy Jardinesde Valle Verde	Ensenada	18	Colonia	22810
4985	Popular Valle Verde1	Ensenada	18	Colonia	22810
4986	Lázaro Cárdenas1	Ensenada	18	Colonia	22810
4987	Lázaro Cárdenas2	Ensenada	18	Colonia	22810
4988	Luis Donaldo Colosio	Ensenada	18	Colonia	22810
4989	Margaritas	Ensenada	18	Colonia	22810
4990	2de Septiembre	Ensenada	18	Colonia	22810
4991	Arcoiris	Ensenada	18	Colonia	22810
4992	Victoria	Ensenada	18	Fraccionamiento	22810
4993	Lomitas III	Ensenada	18	Fraccionamiento	22810
4994	Lomitas IV	Ensenada	18	Fraccionamiento	22810
4995	Villasdel Cedro I	Ensenada	18	Fraccionamiento	22810
4996	Villasdel Cedro II	Ensenada	18	Fraccionamiento	22810
4997	Villasdel Cedro III	Ensenada	18	Fraccionamiento	22810
4998	San Rafael	Ensenada	18	Colonia	22812
4999	Vista Hermosa	Ensenada	18	Colonia	22812
5000	Vistaal Sol	Ensenada	18	Colonia	22812
5001	Puestade Sol	Ensenada	18	Colonia	22812
5002	Del Mar	Ensenada	18	Condominio	22812
5003	Ampliación Puestade Sol	Ensenada	18	Colonia	22812
5004	Popular89	Ensenada	18	Colonia	22812
5005	Ampliación Popular89	Ensenada	18	Colonia	22812
5006	Colinasde San Angel	Ensenada	18	Colonia	22812
5007	Nuevo Reforma	Ensenada	18	Fraccionamiento	22812
5009	Residencial Misiones	Ensenada	18	Fraccionamiento	22812
5010	Montemar	Ensenada	18	Fraccionamiento	22812
5011	Colinasdel Paraíso	Ensenada	18	Colonia	22813
5012	Las Torres	Ensenada	18	Colonia	22813
5013	Colinasde La Presa	Ensenada	18	Colonia	22813
5014	Cumbresde La Presa	Ensenada	18	Colonia	22813
5015	Colinasdel Magisterio	Ensenada	18	Colonia	22813
5016	Nuevo Milenio	Ensenada	18	Colonia	22813
5017	Marde Cortez	Ensenada	18	Colonia	22813
5018	Misionesde La Presa1	Ensenada	18	Fraccionamiento	22813
5019	Misionesde La Presa2	Ensenada	18	Colonia	22813
5020	Misionesde Altamar	Ensenada	18	Fraccionamiento	22813
5021	Marde Ensenada	Ensenada	18	Fraccionamiento	22813
5022	Lomasdela Presa	Ensenada	18	Fraccionamiento	22813
5023	Residencialdel Sol	Ensenada	18	Fraccionamiento	22813
5024	Alta Mar	Ensenada	18	Colonia	22813
5025	INFONAVITNuevo Milenio	Ensenada	18	Unidadhabitacional	22813
5026	Misionesdel Paraíso	Ensenada	18	Colonia	22813
5027	Salvador Rosas Magallón	Ensenada	18	Fraccionamiento	22814
5028	Puerto Azul	Ensenada	18	Fraccionamiento	22814
5029	Los Girasoles	Ensenada	18	Fraccionamiento	22818
5030	Mediterráneo	Ensenada	18	Colonia	22818
5031	Las Fincas	Ensenada	18	Colonia	22818
5032	Las Arboledas	Ensenada	18	Fraccionamiento	22818
5033	Bosquedelos Olivos	Ensenada	18	Fraccionamiento	22818
5034	Granjas Chapingo	Ensenada	18	Colonia	22818
5035	Popular Valle Verde2	Ensenada	18	Colonia	22819
5036	Balconesde La Presa	Ensenada	18	Colonia	22819
5037	Rogelio Appel Chacón	Ensenada	18	Colonia	22819
5038	Ricardo Flores Magón	Ensenada	18	Colonia	22819
5039	Misionesde La Presa	Ensenada	18	Colonia	22819
5040	Villa Residencialdel Prado	Ensenada	18	Fraccionamiento	22819
5041	Residencialdel Prado Dos	Ensenada	18	Fraccionamiento	22819
5042	Los Encinos	Ensenada	18	Fraccionamiento	22819
5043	Azteca	Ensenada	18	Colonia	22820
5044	Bellavista	Ensenada	18	Colonia	22820
5045	Benito Juárez	Ensenada	18	Colonia	22820
5046	Empleados	Ensenada	18	Colonia	22820
5047	Estadode México	Ensenada	18	Colonia	22820
5048	Ignacio Allende	Ensenada	18	Colonia	22820
5049	Loma Linda	Ensenada	18	Colonia	22820
5050	Sexto Ayuntamiento	Ensenada	18	Colonia	22820
5051	Salinasde Gortari	Ensenada	18	Colonia	22820
5052	Del Sol	Ensenada	18	Fraccionamiento	22820
5053	La Joyita	Ensenada	18	Colonia	22822
5054	Las Peñitas	Ensenada	18	Colonia	22822
5056	Lomasdel Paraíso	Ensenada	18	Fraccionamiento	22823
5057	Popular Emiliano Zapata	Ensenada	18	Fraccionamiento	22823
5058	Alisos Reforma	Ensenada	18	Fraccionamiento	22830
5059	Camilo Flores	Ensenada	18	Colonia	22830
5060	Misión	Ensenada	18	Zonacomercial	22830
5061	FOVISSSTE1a Sección	Ensenada	18	Unidadhabitacional	22830
5062	FOVISSSTE2a Sección	Ensenada	18	Unidadhabitacional	22830
5063	FOVISSSTE3a Sección	Ensenada	18	Unidadhabitacional	22830
5064	FOVISSSTE4a Sección	Ensenada	18	Unidadhabitacional	22830
5065	Luis Echeverría Alvarez	Ensenada	18	Colonia	22830
5066	México	Ensenada	18	Colonia	22830
5067	Misión	Ensenada	18	Colonia	22830
5068	Piedras Negras	Ensenada	18	Colonia	22830
5069	Reforma	Ensenada	18	Colonia	22830
5070	Revolución	Ensenada	18	Colonia	22830
5071	Tercer Ayuntamiento	Ensenada	18	Colonia	22830
5072	Ulbrich	Ensenada	18	Colonia	22830
5073	Bronce	Ensenada	18	Colonia	22830
5074	3de Octubre	Ensenada	18	Colonia	22830
5075	28de Agosto	Ensenada	18	Colonia	22830
5076	Las Rosas	Ensenada	18	Colonia	22830
5077	Santo Tomas	Ensenada	18	Unidadhabitacional	22830
5078	Obrera	Ensenada	18	Colonia	22830
5079	Pro-hogar	Ensenada	18	Colonia	22830
5080	Ampliación Revolución	Ensenada	18	Colonia	22830
5081	Ampliación Reforma	Ensenada	18	Colonia	22835
5082	Residencial Lomas	Ensenada	18	Fraccionamiento	22835
5083	Valle Verde	Ensenada	18	Colonia	22839
5084	Villafontana	Ensenada	18	Fraccionamiento	22839
5085	Los Laureles	Ensenada	18	Fraccionamiento	22839
5086	Magisterial La Presa	Ensenada	18	Fraccionamiento	22839
5087	Bonifaz Popoff	Ensenada	18	Colonia	22840
5088	Aviación	Ensenada	18	Colonia	22840
5089	Bustamante	Ensenada	18	Colonia	22840
5090	Careaga	Ensenada	18	Colonia	22840
5091	Jesús Munguia	Ensenada	18	Colonia	22840
5092	Granados	Ensenada	18	Colonia	22840
5093	Independencia	Ensenada	18	Colonia	22840
5094	Los Maestros	Ensenada	18	Colonia	22840
5095	Niños Héroes	Ensenada	18	Colonia	22840
5096	Escritores	Ensenada	18	Colonia	22840
5097	Mar	Ensenada	18	Fraccionamiento	22842
5098	17de Abril	Ensenada	18	Colonia	22842
5099	Libertad	Ensenada	18	Colonia	22842
5100	Emiliano Zapata	Ensenada	18	Colonia	22842
5101	Aguajito	Ensenada	18	Colonia	22842
5102	Gómez Morín	Ensenada	18	Colonia	22842
5103	Ampliación Gómez Morín	Ensenada	18	Colonia	22842
5104	El Campanario	Ensenada	18	Fraccionamiento	22842
5105	Contreras	Ensenada	18	Colonia	22842
5106	San Luis	Ensenada	18	Colonia	22842
5107	Villasdel Roble	Ensenada	18	Fraccionamiento	22842
5108	Loma Dorada	Ensenada	18	Fraccionamiento	22847
5109	Lomasdel Mar	Ensenada	18	Fraccionamiento	22847
5110	Granjasel Gallo	Ensenada	18	Colonia	22850
5111	Industrial	Ensenada	18	Unidadhabitacional	22850
5112	Jalisco	Ensenada	18	Colonia	22850
5113	Los Olivos	Ensenada	18	Colonia	22850
5114	Manuel Márquezde León	Ensenada	18	Colonia	22850
5115	Terrazasel Gallo	Ensenada	18	Colonia	22850
5116	Francisco Villa I	Ensenada	18	Colonia	22850
5117	Francisco Villa II	Ensenada	18	Colonia	22850
5118	Residencial LosÁlamos	Ensenada	18	Fraccionamiento	22850
5119	San Sebastián	Ensenada	18	Fraccionamiento	22852
5120	Esperanza	Ensenada	18	Colonia	22852
5121	Villa Bonita	Ensenada	18	Fraccionamiento	22852
5122	JoséMaría Morelosy Pavón	Ensenada	18	Fraccionamiento	22855
5123	Ampliación Manuel Márquezde León	Ensenada	18	Colonia	22859
5124	CICESE	Ensenada	18	Equipamiento	22860
5125	Realde San Marino	Ensenada	18	Fraccionamiento	22860
5126	Las Palmas	Ensenada	18	Colonia	22860
5127	Coronita	Ensenada	18	Colonia	22860
5128	Miguel Alemán	Ensenada	18	Colonia	22860
5129	Moderna	Ensenada	18	Colonia	22860
5130	Pedregal Playitas	Ensenada	18	Colonia	22860
5131	Territorio Sur	Ensenada	18	Colonia	22860
5132	Las Palmas III	Ensenada	18	Fraccionamiento	22863
5133	Ampliación Chapultepec	Ensenada	18	Colonia	22870
5134	Chapultepec	Ensenada	18	Colonia	22870
5135	Ignacio Altamirano	Ensenada	18	Colonia	22870
5136	Quintas Papagayo	Ensenada	18	Colonia	22870
5137	San Marino	Ensenada	18	Colonia	22870
5138	Comercial Chapultepec	Ensenada	18	Fraccionamiento	22870
5139	El Morro	Ensenada	18	Condominio	22870
5140	Universidad Autónomade Baja California	Ensenada	18	Equipamiento	22873
5141	Kings Coronita	Ensenada	18	Fraccionamiento	22873
5142	Kings Villas	Ensenada	18	Fraccionamiento	22873
5143	Villa Cortez	Ensenada	18	Fraccionamiento	22873
5144	Ampliación Moderna	Ensenada	18	Colonia	22879
5146	Buenaventura	Ensenada	18	Colonia	22880
5147	Hidalgo	Ensenada	18	Colonia	22880
5148	Nueva Ensenada	Ensenada	18	Colonia	22880
5149	Playade Ensenada	Ensenada	18	Colonia	22880
4938	Arce		18	Colonia	22793
5150	Vivienda Popular	Ensenada	18	Colonia	22880
5151	Primera Sección	Ensenada	18	Unidadhabitacional	22880
5152	Buenaventura2a Sección	Ensenada	18	Fraccionamiento	22888
5153	Ampliación Hidalgo	Ensenada	18	Colonia	22889
5154	Los Lagos	Ensenada	18	Fraccionamiento	22890
5155	Valle Dorado Sección Lagos	Ensenada	18	Fraccionamiento	22890
5156	Carlos Pacheco4	Ensenada	18	Colonia	22890
5157	Acapulco	Ensenada	18	Colonia	22890
5158	California	Ensenada	18	Colonia	22890
5159	Costa Azul	Ensenada	18	Colonia	22890
5160	Cuauhtémoc	Ensenada	18	Colonia	22890
5161	Villa Colonial	Ensenada	18	Fraccionamiento	22890
5162	Josefa Ortizde Domínguez	Ensenada	18	Colonia	22890
5163	Loma Linda	Ensenada	18	Fraccionamiento	22890
5164	Playa Hermosa	Ensenada	18	Colonia	22890
5165	Valle Dorado	Ensenada	18	Colonia	22890
5166	Militar(23de Noviembre)		18	Unidadhabitacional	22890
5167	Carlos Pacheco8	Ensenada	18	Colonia	22895
5168	Adolfo Ruiz Cortines	Ensenada	18	Colonia	22895
5169	Rincóndel Mar	Ensenada	18	Fraccionamiento	22895
5170	Puertadel Mar II	Ensenada	18	Fraccionamiento	22896
5171	Puertadel Mar	Ensenada	18	Fraccionamiento	22896
5172	Punta Banda II	Ensenada	18	Fraccionamiento	22897
5173	Punta Banda	Ensenada	18	Fraccionamiento	22897
5174	Playa Todos Santos	Ensenada	18	Fraccionamiento	22897
5175	Carlos Pacheco(Ayuntamiento)	Ensenada	18	Colonia	22898
5176	Costa Bella	Ensenada	18	Colonia	22898
5177	Las Misiones		18	Fraccionamiento	22900
5178	San Vicente		18	Pueblo	22900
5179	La Misión		18	Fraccionamiento	22900
5180	Rodolfo Sánchez Taboada(El Calvario)		18	Ejido	22903
5181	San Jacinto		18	Pueblo	22903
5182	García		18	Rancho	22904
5183	Puerto San Isidro		18	Ejido	22904
5184	Eréndira		18	Ejido	22904
5185	Ignacio López Rayón		18	Ejido	22904
5186	Alfredo VBonfil		18	Ejido	22905
5187	Llano Colorado		18	Ranchería	22905
5188	Benito Juárez		18	Ejido	22905
5189	General Leandro Valle		18	Ejido	22905
5190	El Morro		18	Ranchería	22906
5191	Islade Cedros		18	Ejido	22906
5192	Islade Cedros		18	Puerto	22906
5193	Héroesde Chapultepec		18	Pueblo	22908
5194	La Providencia		18	Colonia	22908
5195	Generalísimo Morelos		18	Ejido	22908
5196	México(Parcela Número10)		18	Colonia	22908
5197	Trinidad Cardona		18	Rancho	22908
5198	Brisasde San Telmo		18	Colonia	22908
5199	27de Enero		18	Ejido	22908
5200	Bellavista		18	Rancho	22908
5201	López Zamora		18	Ejido	22908
5203	Licenciado Gustavo Díaz Ordaz		18	Ejido	22908
5204	Las Brisas		18	Pueblo	22908
5205	Abelardo L.Rodríguez		18	Colonia	22908
5206	Las Tinajitas		18	Ranchería	22908
5207	Punta Colnett(Punta Colonet)		18	Pueblo	22909
5208	Jardinesdel Mar		18	Colonia	22909
5209	Martínez		19	Fraccionamiento	22910
5210	Camalú		19	Pueblo	22910
5211	Ampliación Capricornio		19	Colonia	22910
5212	Costa Mar		19	Fraccionamiento	22910
5213	Tierray Libertad		19	Colonia	22910
5214	Benito Juárez		19	Colonia	22910
5215	Santa Candelaria		19	Colonia	22910
5216	Monte Albán		19	Fraccionamiento	22910
5217	LomasdelosÁngeles		19	Colonia	22910
5218	El Bramadero(San Telmo)		19	Ranchería	22914
5219	Hacienda Sinaloa		19	Colonia	22914
5220	Rubén Jaramillo		19	Ejido	22915
5221	Mesade San Jacinto		19	Ejido	22915
5222	Misión Santo Domingo		19	Rancho	22920
5223	Vicente Guerrero		19	Pueblo	22920
5224	Las Misiones		19	Fraccionamiento	22920
5225	Isabel Andrade		19	Colonia	22920
5226	Maclovio Rojas		19	Colonia	22920
5227	Rancho Nuevo		19	Fraccionamiento	22920
5229	Colinasdel Valle		19	Fraccionamiento	22920
5230	Lomas Verdes		19	Fraccionamiento	22920
5231	13de Mayo		19	Colonia	22920
5232	Rancho Contento		19	Fraccionamiento	22920
5233	Reforma		19	Colonia	22920
5234	Zarahemla		19	Ejido	22920
5235	Santa Fe		19	Colonia	22920
5236	Santa Fe Braulio Maldonado		19	Colonia	22920
5237	Militar Elpidio Berlangade León		19	Colonia	22920
5238	El Colonial		19	Colonia	22920
5239	Emiliano Zapata		19	Colonia	22920
5240	Lic.Luis EcheverríaÁlvarez(Chula Vista)		19	Colonia	22920
5242	Lomasde San Ramón(Triquis)		19	Colonia	22920
5243	Orfanatorio Cristoporsu Mundo		19	Equipamiento	22920
5244	San Ramón		19	Ranchería	22920
5245	Santa Fe		19	Ranchería	22920
5246	Playasdela Vicente Guerrero		19	Colonia	22920
5247	Santo Domingo		19	Fraccionamiento	22920
5248	La Bendición		19	Colonia	22920
5249	Nuevo Centrode Población Padre Kino		19	Pueblo	22925
5250	Cachanilla		19	Colonia	22930
5251	Ampliación Nuevo Baja California		19	Colonia	22930
5252	Nuevo Baja California		19	Colonia	22930
5253	Lázaro Cárdenas		19	Colonia	22930
5254	Nuevo Mexicali		19	Colonia	22930
5255	Jardinesdel Valle		19	Colonia	22930
5256	Morelos		19	Colonia	22930
5257	3Arbolitos		19	Fraccionamiento	22930
5258	Popular San Quintín		19	Fraccionamiento	22930
5259	Raúl Sánchez Díaz		19	Ejido	22930
5260	Nueva Era		19	Colonia	22930
5261	Parcela12		19	Ranchería	22930
5262	Benito García		19	Pueblo	22930
5263	Concordia		19	Colonia	22930
5264	Paseode San Quintín		19	Colonia	22930
5265	Valle Dorado		19	Colonia	22930
5266	Popular Carmona		19	Colonia	22930
5310	Punta Prieta		19	Ranchería	22970
5311	San Josédelas Palomas		19	Rancho	22973
5313	BahíadelosÁngeles		19	Pueblo	22980
5314	21/o Regimientode Caballería		19	Zonamilitar	22993
5315	Villa Jesús María		19	Colonia	22994
5316	JoséMaría Morelosy Pavón		19	Ranchería	22994
5317	Nuevo Rosarito		19	Ejido	22995
5318	Santa Rosaliíta		19	Ranchería	22995
5319	El Barril		19	Ranchería	22997
1376	Aguascalientes Centro	Aguascalientes	1	Colonia	20000
1377	San Cayetano	Aguascalientes	1	Fraccionamiento	20010
1378	Colinasdel Rio	Aguascalientes	1	Fraccionamiento	20010
1379	Olivares Santana	Aguascalientes	1	Colonia	20010
2752	Caliss	Mexicali	13	Unidadhabitacional	21010
2753	Industrial	Mexicali	13	Colonia	21010
2754	Residencial Cerradadel Parque	Mexicali	13	Fraccionamiento	21010
2755	Burócrata	Mexicali	13	Colonia	21020
2756	Nacozari	Mexicali	13	Colonia	21030
2757	Libertad	Mexicali	13	Colonia	21030
2758	FOVISSSTE	Mexicali	13	Fraccionamiento	21038
2759	Esteban Cantú	Mexicali	13	Colonia	21039
2760	Calafia	Mexicali	13	Fraccionamiento	21040
2761	Ferrocarril	Mexicali	13	Colonia	21040
2762	Guajardo	Mexicali	13	Fraccionamiento	21050
2763	San Marcos	Mexicali	13	Fraccionamiento	21050
2764	Nueva Esperanza	Mexicali	13	Colonia	21050
3084	Aurora	Mexicali	13	Colonia	21340
3538	Tlaxcala		13	Ejido	21720
2151	Pablo Escaleras		7	Colonia	20420
2716	Graciasa Dios		5	Ejido	20947
2800	Ampliación Lucerna	Mexicali	13	Colonia	21137
2801	Luis Donaldo Colosio	Mexicali	13	Colonia	21137
2803	Oscar Garzón	Mexicali	13	Colonia	21137
2804	Las Margaritas	Mexicali	13	Colonia	21137
2805	Sánchez Taboada	Mexicali	13	Colonia	21137
2806	Aztecas	Mexicali	13	Fraccionamiento	21137
2807	Carlos Salinas	Mexicali	13	Colonia	21137
2808	Ladrilleros Santa Isabel	Mexicali	13	Colonia	21137
2809	Realdel Río	Mexicali	13	Fraccionamiento	21137
2810	Cachanilla	Mexicali	13	Colonia	21137
2811	San Miguel	Mexicali	13	Fraccionamiento	21137
2812	Misiónde San Diegode Alcalá	Mexicali	13	Fraccionamiento	21137
2813	Misiónde San Francisco Javier	Mexicali	13	Fraccionamiento	21137
2814	Villadel Campo	Mexicali	13	Colonia	21137
2878	Electricistas	Mexicali	13	Colonia	21178
2986	Rivera	Mexicali	13	Fraccionamiento	21259
3611	Colima		13	Ejido	21832
3708	Álamo		13	Colonia	21966
4093	El Lago	Tijuana	16	Colonia	22210
2580	Santa Elena		5	Fraccionamiento	20907
4639	San Miguel	Tijuana	16	Fraccionamiento	22667
5145	Bahía	Ensenada	18	Colonia	22880
5241	Llamas		19	Colonia	22920
5267	El Paraíso		19	Fraccionamiento	22930
5268	Nuevo Mundo		19	Fraccionamiento	22930
5269	Pinosde Madrid Etapa1		19	Colonia	22930
5270	Praderasde San Quintín		19	Colonia	22930
5271	67Batallón		19	Zonamilitar	22930
5272	Adolfo López Mateos		19	Colonia	22930
5273	La Chorera		19	Ranchería	22934
5274	Chapala		19	Ranchería	22934
5275	Juan María Salvatierra		19	Granja	22937
5276	Loreto		19	Colonia	22937
5277	Lomasde Papalote		19	Colonia	22937
5278	Venustiano Carranza		19	Colonia	22937
5279	El Papalote		19	Colonia	22937
5280	Ampliaciónel Papalote		19	Colonia	22937
5281	Esmeralda		19	Colonia	22937
5282	San Quintín		19	Colonia	22940
5283	Las Flores		19	Colonia	22940
5284	Stokers		19	Colonia	22940
5285	San Fernando		19	Colonia	22940
5286	Magisterial Sección Treintay Siete		19	Fraccionamiento	22940
5287	General Leandro Valle		19	Colonia	22943
5288	Pérez Chávez(Estado Veintinueve)		19	Rancho	22943
5289	Profesor Graciano Sánchez		19	Colonia	22943
5290	San Francisco		19	Fraccionamiento	22943
5291	Venustiano Carranza(Santa María)		19	Pueblo	22950
5292	Francisco Villa(San Simón)		19	Pueblo	22950
5293	San Simónde Arriba		19	Pueblo	22950
5294	Luis Rodríguez(El Vergel)		19	Unidadhabitacional	22950
5295	Santa María(Los Pinos)		19	Colonia	22950
5296	JoséMaría Morelos		19	Ranchería	22951
5297	El Socorro		19	Fraccionamiento	22952
5298	El Socorrito		19	Colonia	22952
5299	Nueva Odisea(El Pabellón)		19	Ejido	22952
5300	El Pabellón		19	Rancho	22952
5301	Valle Tranquilo		19	Ejido	22952
5302	El Rosarito		19	Rancho	22955
5303	El Rosariode Arriba		19	Pueblo	22960
5304	Nuevo Uruapan		19	Pueblo	22960
5305	El Rosariode Abajo		19	Ranchería	22960
5306	Guayaquil		19	Rancho	22964
5307	Cataviña		19	Colonia	22965
5308	Santa Inés		19	Rancho	22965
5309	Santa Catarina		19	Rancho	22967
5312	Chapala		19	Rancho	22974
\.


--
-- Data for Name: estado; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.estado (id_estado, version, nombre, siglasrenapo, numero_oficial) FROM stdin;
1	0	AGUASCALIENTES	AGS	1
2	0	BAJA CALIFORNIA	BCN	2
3	0	BAJA CALIFORNIA SUR	BCS	3
4	0	CAMPECHE	CAM	4
5	0	CHIAPAS	CHS	7
6	0	CHIHUAHUA	CHI	8
7	0	COAHUILA	COA	5
8	0	COLIMA	COL	6
9	0	CIUDAD DE MEXICO	DF	9
10	0	DURANGO	DGO	10
11	0	GUANAJUATO	GTO	11
12	0	GUERRERO	GRO	12
13	0	HIDALGO	HGO	13
14	0	JALISCO	JAL	14
15	0	ESTADO DE MEXICO	EM	15
16	0	MICHOACAN	MICH	16
17	0	MORELOS	MOR	17
18	0	NAYARIT	NAY	18
19	0	NUEVO LEON	NL	19
20	0	OAXACA	OAX	20
21	0	PUEBLA	PUE	21
22	0	QUERETARO	QRO	22
23	0	QUINTANA ROO	QR	23
24	0	SAN LUIS POTOSI	SLP	24
25	0	SINALOA	SIN	25
26	0	SONORA	SON	26
27	0	TABASCO	TAB	27
28	0	TAMAULIPAS	TAM	28
29	0	TLAXCALA	TLA	29
30	0	VERACRUZ	VER	30
31	0	YUCATAN	YUC	31
32	0	ZACATECAS	ZAC	32
\.


--
-- Data for Name: municipio; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.municipio (id_municipio, nombre, estado_id) FROM stdin;
1	Aguascalientes	1
11	San Francisco de los Romo	1
10	El Llano	1
7	Rincón de Romos	1
4	Cosío	1
8	San José de Gracia	1
9	Tepezalá	1
6	Pabellón de Arteaga	1
2	Asientos	1
3	Calvillo	1
5	Jesús María	1
13	Mexicali	2
14	Tecate	2
15	San Felipe	2
16	Tijuana	2
17	Playas de Rosarito	2
18	Ensenada	2
19	San Quintín	2
20	Álvaro Obregón	9
21	Azcapotzalco	9
22	Benito Juárez	9
23	Coyoacán	9
24	Cuajimalpa de Morelos	9
25	Cuauhtémoc	9
26	Gustavo A. Madero	9
27	Iztacalco	9
28	Iztapalapa	9
29	La Magdalena Contreras	9
30	Miguel Hidalgo	9
31	Milpa Alta	9
32	Tláhuac	9
33	Tlalpan	9
34	Venustiano Carranza	9
35	Xochimilco	9
\.


--
-- Name: codigo_postal_sec; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.codigo_postal_sec', 12896, true);


--
-- Name: municipio_sec; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.municipio_sec', 35, true);


--
-- Name: codigo_postal codigo_postal_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.codigo_postal
    ADD CONSTRAINT codigo_postal_pkey PRIMARY KEY (id_codigo_postal);


--
-- Name: estado estado_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.estado
    ADD CONSTRAINT estado_pkey PRIMARY KEY (id_estado);


--
-- Name: municipio municipio_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.municipio
    ADD CONSTRAINT municipio_pkey PRIMARY KEY (id_municipio);


--
-- Name: municipio fk_estado; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.municipio
    ADD CONSTRAINT fk_estado FOREIGN KEY (estado_id) REFERENCES public.estado(id_estado);


--
-- PostgreSQL database dump complete
--

