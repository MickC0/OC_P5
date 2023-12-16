--
-- PostgreSQL database dump
--

-- Dumped from database version 11.2
-- Dumped by pg_dump version 11.2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: adresse; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.adresse VALUES (1, '6 rue saint Martin', NULL, 87180, 'Trouville', 'appartement', '2ème étage');
INSERT INTO public.adresse VALUES (2, '2 rue Emile Paul', NULL, 87120, 'Pizzaville', NULL, NULL);
INSERT INTO public.adresse VALUES (3, '3 rue saint Jean', NULL, 87120, 'Pizzaville', NULL, NULL);
INSERT INTO public.adresse VALUES (5, '13 rue pas de chance', NULL, 87120, 'Pizzaville', NULL, NULL);
INSERT INTO public.adresse VALUES (6, '3 cours Paul', 'quartier de la butte', 87120, 'Pizzaville', 'maison', NULL);
INSERT INTO public.adresse VALUES (4, '1 rue du centre', NULL, 87120, 'Pizzaville', 'Pizzeria', NULL);
INSERT INTO public.adresse VALUES (7, '2 rue jesaispas', NULL, 87120, 'Pizzaville', NULL, NULL);
INSERT INTO public.adresse VALUES (8, '666 rue du diable', 'quartier de l''église', 87130, 'Acotéduboulot', NULL, NULL);
INSERT INTO public.adresse VALUES (9, '777 rue porte bonheur', NULL, 87000, 'Cépaloin', NULL, NULL);
INSERT INTO public.adresse VALUES (10, '1234 rue azerty', NULL, 87120, 'Pizzaville', NULL, NULL);


--
-- Data for Name: pizzerria; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.pizzerria VALUES (1, 'Pizzeria du centre', 4);


--
-- Data for Name: catalogue; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.catalogue VALUES (1, 'cataclassique', 1);


--
-- Data for Name: categorie; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.categorie VALUES (1, 'CLASSIQUE');
INSERT INTO public.categorie VALUES (2, 'VEGETARIENNE');
INSERT INTO public.categorie VALUES (3, 'SPECIALE');


--
-- Data for Name: compte; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.compte VALUES (2, 'jp@gmail.com', 'azerty1');
INSERT INTO public.compte VALUES (3, 'mario', 'bros');
INSERT INTO public.compte VALUES (4, 'pp@gmail.com', 'plop');
INSERT INTO public.compte VALUES (5, 'jaila', 'peach');
INSERT INTO public.compte VALUES (6, 'samus', 'pas');
INSERT INTO public.compte VALUES (7, 'ae@gmail.com', 'jesae');
INSERT INTO public.compte VALUES (8, 'saperli', 'popette');


--
-- Data for Name: utilisateur; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.utilisateur VALUES (1, 'Jean', 'Pierre', '1992-02-20', '0612345874', 'jp@gmail.com', 'M', 1);
INSERT INTO public.utilisateur VALUES (2, 'Ponce', 'Pierre', '1976-02-27', '0621456985', 'pp@gmail.com', 'M', 2);
INSERT INTO public.utilisateur VALUES (3, 'Eha', 'Aline', '1993-02-05', '0635216498', 'ae@gmail.com', 'F', 3);
INSERT INTO public.utilisateur VALUES (4, 'Cape', 'Andy', '1991-02-15', '0635418975', 'ac@gmail.com', 'M', 5);
INSERT INTO public.utilisateur VALUES (5, 'Voyance', 'Claire', '1983-03-12', '0632145879', 'cv@gmail.com', 'F', 6);
INSERT INTO public.utilisateur VALUES (6, 'Lipopette', 'Saper', '1998-02-13', '0632154875', 'sali@gmail.com', 'M', 8);
INSERT INTO public.utilisateur VALUES (7, 'Luigi', 'Mario', '1983-02-18', '0632598654', 'lm@gmail.com', 'M', 9);
INSERT INTO public.utilisateur VALUES (8, 'Peach', 'Princesse', '1984-02-09', '0632165984', 'princesse59@gmail.com', 'F', 10);
INSERT INTO public.utilisateur VALUES (9, 'Aran', 'Samus', '1986-05-15', '0635214569', 'metroid@gmail.com', 'F', 7);


--
-- Data for Name: client; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.client VALUES (4, 4, NULL);
INSERT INTO public.client VALUES (5, 5, NULL);
INSERT INTO public.client VALUES (1, 1, 2);
INSERT INTO public.client VALUES (3, 3, 7);
INSERT INTO public.client VALUES (2, 2, 4);


--
-- Data for Name: typeutilisateur; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.typeutilisateur VALUES (1, 'PIZZAIOLO');
INSERT INTO public.typeutilisateur VALUES (2, 'MANAGER');
INSERT INTO public.typeutilisateur VALUES (3, 'LIVREUR');


--
-- Data for Name: employe; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.employe VALUES (1, 1, 1, 6, 5);
INSERT INTO public.employe VALUES (2, 2, 1, 7, 6);
INSERT INTO public.employe VALUES (3, 3, 1, 8, 7);
INSERT INTO public.employe VALUES (4, 3, 1, 9, 8);


--
-- Data for Name: panier; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.panier VALUES (1, '4quatresfromages');
INSERT INTO public.panier VALUES (2, '2reines');
INSERT INTO public.panier VALUES (3, '8quatrefromages');


--
-- Data for Name: commande; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.commande VALUES (2, '2019-02-27 18:56:20.807', false, false, 1, 1);
INSERT INTO public.commande VALUES (3, '2019-02-26 18:57:18.224', true, true, 2, 2);
INSERT INTO public.commande VALUES (5, '2019-02-28 16:37:58.564', true, true, 1, 3);


--
-- Data for Name: facture; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.facture VALUES (1, 40, '2019-02-27 18:56:20.807', 2);
INSERT INTO public.facture VALUES (2, 24, '2019-02-26 18:57:18.224', 3);
INSERT INTO public.facture VALUES (3, 80, '2019-02-28 16:37:58.564', 5);


--
-- Data for Name: ingredient; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.ingredient VALUES (1, 'pate', 0.10, 'kg');
INSERT INTO public.ingredient VALUES (2, 'sauce tomate', 0.2, 'L');
INSERT INTO public.ingredient VALUES (3, 'emmental', 0.3, 'kg');
INSERT INTO public.ingredient VALUES (4, 'parmesan', 2, 'kg');
INSERT INTO public.ingredient VALUES (5, 'mozzarella', 2, 'kg');
INSERT INTO public.ingredient VALUES (6, 'gorgonzola', 2, 'kg');
INSERT INTO public.ingredient VALUES (7, 'chèvre', 1.5, 'kg');
INSERT INTO public.ingredient VALUES (8, 'olive', 0.9, 'kg');
INSERT INTO public.ingredient VALUES (9, 'crème fraiche', 0.25, 'L');
INSERT INTO public.ingredient VALUES (10, 'jambon', 0.72, 'kg');
INSERT INTO public.ingredient VALUES (11, 'champignon', 1.3, 'kg');
INSERT INTO public.ingredient VALUES (12, 'origan', 0.15, 'kg');
INSERT INTO public.ingredient VALUES (13, 'tomate', 1.2, 'kg');
INSERT INTO public.ingredient VALUES (14, 'poivron', 1.1, 'kg');
INSERT INTO public.ingredient VALUES (15, 'oignon', 0.4, 'kg');
INSERT INTO public.ingredient VALUES (16, 'courgette', 0.65, 'kg');
INSERT INTO public.ingredient VALUES (17, 'sel', 0.1, 'kg');
INSERT INTO public.ingredient VALUES (18, 'poivre', 0.2, 'kg');
INSERT INTO public.ingredient VALUES (19, 'herbe de provence', 0.3, 'kg');


--
-- Data for Name: pizza; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.pizza VALUES (1, 'reine', 25, 10, '5', 1, 1);
INSERT INTO public.pizza VALUES (2, 'quatre fromage', 25, 10, '6', 1, 1);
INSERT INTO public.pizza VALUES (3, 'reine', 30, 12, '7', 1, 1);
INSERT INTO public.pizza VALUES (4, 'quatre fromage', 30, 12, '8', 1, 1);
INSERT INTO public.pizza VALUES (5, 'vegetarienne', 25, 9, '4', 1, 2);
INSERT INTO public.pizza VALUES (6, 'chelou', 30, 15, '10', 1, 3);


--
-- Data for Name: panierpossedepizza; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: recette; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.recette VALUES (1, 1, 2, 1, 1, 'prendre un paton et le mettre en forme');
INSERT INTO public.recette VALUES (2, 2, 2, 1, 2, 'etaler la sauce');
INSERT INTO public.recette VALUES (3, 4, 2, 1, 3, 'etaler le parmesan');
INSERT INTO public.recette VALUES (4, 5, 2, 1, 4, 'etaler la mozzarella');
INSERT INTO public.recette VALUES (5, 6, 2, 1, 5, 'etaler le gorgonzola');
INSERT INTO public.recette VALUES (6, 7, 2, 1, 6, 'etaler le chevre');
INSERT INTO public.recette VALUES (7, 8, 2, 8, 7, 'repartir 8 olives');
INSERT INTO public.recette VALUES (8, 12, 2, 1, 8, 'soupoudrer d''origan');


--
-- Data for Name: statutcommande; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.statutcommande VALUES (1, 'LIVRAISON_EN_COURS', 3);
INSERT INTO public.statutcommande VALUES (2, 'EN_COURS_PREPARATION', 2);


--
-- Data for Name: stock; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.stock VALUES (1, 1, 1, 100, '2021-02-27');
INSERT INTO public.stock VALUES (1, 1, 2, 200, '2023-02-10');
INSERT INTO public.stock VALUES (1, 1, 3, 300, '2020-02-13');
INSERT INTO public.stock VALUES (1, 1, 4, 250, '2020-03-02');
INSERT INTO public.stock VALUES (1, 1, 5, 150, '2021-05-12');
INSERT INTO public.stock VALUES (1, 1, 6, 200, '2020-08-01');
INSERT INTO public.stock VALUES (1, 1, 7, 220, '2019-11-08');
INSERT INTO public.stock VALUES (1, 1, 8, 10, '2019-06-07');
INSERT INTO public.stock VALUES (1, 1, 9, 200, '2020-04-04');
INSERT INTO public.stock VALUES (1, 1, 10, 30, '2020-04-12');
INSERT INTO public.stock VALUES (1, 1, 11, 30, '2019-03-23');
INSERT INTO public.stock VALUES (1, 1, 12, 10, '2021-11-07');
INSERT INTO public.stock VALUES (1, 1, 13, 50, '2019-11-12');
INSERT INTO public.stock VALUES (1, 1, 14, 50, '2020-10-03');
INSERT INTO public.stock VALUES (1, 1, 15, 50, '2020-05-22');
INSERT INTO public.stock VALUES (1, 1, 16, 50, '2020-01-17');
INSERT INTO public.stock VALUES (1, 1, 17, 15, '2019-06-11');
INSERT INTO public.stock VALUES (1, 1, 18, 15, '2020-07-16');
INSERT INTO public.stock VALUES (1, 1, 19, 15, '2019-06-08');


--
-- Data for Name: typepaiement; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.typepaiement VALUES (3, 'SUR_PLACE', 2);
INSERT INTO public.typepaiement VALUES (4, 'PAIEMENT_EN_LIGNE', 3);


--
-- Name: adresse_adresse_id_seq_1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.adresse_adresse_id_seq_1', 10, true);


--
-- Name: catalogue_catalogue_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.catalogue_catalogue_id_seq', 1, false);


--
-- Name: categorie_categorie_id_seq_1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categorie_categorie_id_seq_1', 1, false);


--
-- Name: client_client_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.client_client_id_seq', 5, true);


--
-- Name: commande_commande_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.commande_commande_id_seq', 5, true);


--
-- Name: compte_compte_id_seq_1_1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.compte_compte_id_seq_1_1', 1, false);


--
-- Name: employe_employe_id_seq_3_2; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.employe_employe_id_seq_3_2', 4, true);


--
-- Name: facture_facture_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.facture_facture_id_seq', 3, true);


--
-- Name: ingredient_ingredient_id_seq_1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ingredient_ingredient_id_seq_1', 19, true);


--
-- Name: panier_panier_id_seq_4_1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.panier_panier_id_seq_4_1', 3, true);


--
-- Name: pizza_pizza_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pizza_pizza_id_seq', 6, true);


--
-- Name: pizza_pizza_id_seq_1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pizza_pizza_id_seq_1', 1, false);


--
-- Name: pizzerria_pizzeria_id_seq_3_2; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pizzerria_pizzeria_id_seq_3_2', 1, true);


--
-- Name: recette_recette_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.recette_recette_id_seq', 8, true);


--
-- Name: utilisateur_utilisateur_id_seq_2_1; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.utilisateur_utilisateur_id_seq_2_1', 9, true);


--
-- PostgreSQL database dump complete
--

