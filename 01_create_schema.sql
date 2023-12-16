
CREATE SEQUENCE public.categorie_categorie_id_seq_1;

CREATE TABLE public.Categorie (
                categorie_id INTEGER NOT NULL DEFAULT nextval('public.categorie_categorie_id_seq_1'),
                nom VARCHAR NOT NULL,
                CONSTRAINT categorie_pk PRIMARY KEY (categorie_id)
);


ALTER SEQUENCE public.categorie_categorie_id_seq_1 OWNED BY public.Categorie.categorie_id;

CREATE SEQUENCE public.ingredient_ingredient_id_seq_1;

CREATE TABLE public.Ingredient (
                ingredient_id INTEGER NOT NULL DEFAULT nextval('public.ingredient_ingredient_id_seq_1'),
                nom VARCHAR(50) NOT NULL,
                prix_unitaire NUMERIC NOT NULL,
                unite VARCHAR NOT NULL,
                CONSTRAINT ingredient_pk PRIMARY KEY (ingredient_id)
);


ALTER SEQUENCE public.ingredient_ingredient_id_seq_1 OWNED BY public.Ingredient.ingredient_id;

CREATE SEQUENCE public.adresse_adresse_id_seq_1;

CREATE TABLE public.Adresse (
                adresse_id INTEGER NOT NULL DEFAULT nextval('public.adresse_adresse_id_seq_1'),
                rue_1 VARCHAR(100) NOT NULL,
                rue_2 VARCHAR(100),
                code_postal INTEGER NOT NULL,
                ville VARCHAR(100) NOT NULL,
                type_batiment VARCHAR(20),
                complement_adresse VARCHAR(300),
                CONSTRAINT adresse_pk PRIMARY KEY (adresse_id)
);


ALTER SEQUENCE public.adresse_adresse_id_seq_1 OWNED BY public.Adresse.adresse_id;

CREATE SEQUENCE public.pizzerria_pizzeria_id_seq_3_2;

CREATE TABLE public.Pizzerria (
                pizzeria_id INTEGER NOT NULL DEFAULT nextval('public.pizzerria_pizzeria_id_seq_3_2'),
                nom VARCHAR NOT NULL,
                adresse_id INTEGER NOT NULL,
                CONSTRAINT pizzerria_pk PRIMARY KEY (pizzeria_id)
);


ALTER SEQUENCE public.pizzerria_pizzeria_id_seq_3_2 OWNED BY public.Pizzerria.pizzeria_id;

CREATE TABLE public.Stock (
                stock_id INTEGER NOT NULL,
                pizzeria_id INTEGER NOT NULL,
                ingredient_id INTEGER NOT NULL,
                quantite_ingredient INTEGER,
                date_limite_consommation DATE NOT NULL,
                CONSTRAINT stock_pk PRIMARY KEY (stock_id, pizzeria_id, ingredient_id)
);


CREATE SEQUENCE public.catalogue_catalogue_id_seq;

CREATE TABLE public.Catalogue (
                catalogue_id INTEGER NOT NULL DEFAULT nextval('public.catalogue_catalogue_id_seq'),
                listePizza VARCHAR,
                pizzeria_id INTEGER NOT NULL,
                CONSTRAINT catalogue_pk PRIMARY KEY (catalogue_id)
);


ALTER SEQUENCE public.catalogue_catalogue_id_seq OWNED BY public.Catalogue.catalogue_id;

CREATE SEQUENCE public.pizza_pizza_id_seq;

CREATE TABLE public.Pizza (
                pizza_id INTEGER NOT NULL DEFAULT nextval('public.pizza_pizza_id_seq'),
                nom VARCHAR(50) NOT NULL,
                taille INTEGER NOT NULL,
                prix_unitaire NUMERIC NOT NULL,
                temps_preparation VARCHAR NOT NULL,
                catalogue_id INTEGER NOT NULL,
                categorie_id INTEGER NOT NULL,
                CONSTRAINT pizza_pk PRIMARY KEY (pizza_id)
);


ALTER SEQUENCE public.pizza_pizza_id_seq OWNED BY public.Pizza.pizza_id;

CREATE SEQUENCE public.recette_recette_id_seq;

CREATE TABLE public.Recette (
                recette_id INTEGER NOT NULL DEFAULT nextval('public.recette_recette_id_seq'),
                ingredient_id INTEGER NOT NULL,
                pizza_id INTEGER NOT NULL,
                quantite_ingredient INTEGER NOT NULL,
                etape INTEGER NOT NULL,
                description_etape VARCHAR(500) NOT NULL,
                CONSTRAINT recette_pk PRIMARY KEY (recette_id, ingredient_id, pizza_id)
);


ALTER SEQUENCE public.recette_recette_id_seq OWNED BY public.Recette.recette_id;

CREATE TABLE public.TypeUtilisateur (
                typeUtilisateur_id INTEGER NOT NULL,
                nom VARCHAR NOT NULL,
                CONSTRAINT typeutilisateur_pk PRIMARY KEY (typeUtilisateur_id)
);


CREATE SEQUENCE public.compte_compte_id_seq_1_1;

CREATE TABLE public.Compte (
                compte_id INTEGER NOT NULL DEFAULT nextval('public.compte_compte_id_seq_1_1'),
                login VARCHAR(100) NOT NULL,
                password VARCHAR(100) NOT NULL,
                CONSTRAINT compte_pk PRIMARY KEY (compte_id)
);


ALTER SEQUENCE public.compte_compte_id_seq_1_1 OWNED BY public.Compte.compte_id;

CREATE SEQUENCE public.utilisateur_utilisateur_id_seq_2_1;

CREATE TABLE public.Utilisateur (
                utilisateur_id INTEGER NOT NULL DEFAULT nextval('public.utilisateur_utilisateur_id_seq_2_1'),
                nom VARCHAR(50) NOT NULL,
                prenom VARCHAR(50) NOT NULL,
                date_de_naissance DATE NOT NULL,
                numero_de_telephone VARCHAR(10) NOT NULL,
                adresse_mail VARCHAR(100) NOT NULL,
                civilite VARCHAR NOT NULL,
                adresse_id INTEGER NOT NULL,
                CONSTRAINT utilisateur_pk PRIMARY KEY (utilisateur_id)
);


ALTER SEQUENCE public.utilisateur_utilisateur_id_seq_2_1 OWNED BY public.Utilisateur.utilisateur_id;

CREATE SEQUENCE public.employe_employe_id_seq_3_2;

CREATE TABLE public.Employe (
                employe_id INTEGER NOT NULL DEFAULT nextval('public.employe_employe_id_seq_3_2'),
                typeUtilisateur_id INTEGER NOT NULL,
                pizzeria_id INTEGER NOT NULL,
                utilisateur_id INTEGER NOT NULL,
                compte_id INTEGER NOT NULL,
                CONSTRAINT employe_pk PRIMARY KEY (employe_id)
);


ALTER SEQUENCE public.employe_employe_id_seq_3_2 OWNED BY public.Employe.employe_id;

CREATE SEQUENCE public.client_client_id_seq;

CREATE TABLE public.Client (
                client_id INTEGER NOT NULL DEFAULT nextval('public.client_client_id_seq'),
                utilisateur_id INTEGER NOT NULL,
                compte_id INTEGER,
                CONSTRAINT client_pk PRIMARY KEY (client_id)
);


ALTER SEQUENCE public.client_client_id_seq OWNED BY public.Client.client_id;

CREATE SEQUENCE public.panier_panier_id_seq_4_1;

CREATE TABLE public.Panier (
                panier_id INTEGER NOT NULL DEFAULT nextval('public.panier_panier_id_seq_4_1'),
                listePizza VARCHAR,
                CONSTRAINT panier_pk PRIMARY KEY (panier_id)
);


ALTER SEQUENCE public.panier_panier_id_seq_4_1 OWNED BY public.Panier.panier_id;

CREATE SEQUENCE public.pizza_pizza_id_seq_1;

CREATE TABLE public.PanierPossedePizza (
                panier_id INTEGER NOT NULL,
                pizza_id INTEGER NOT NULL DEFAULT nextval('public.pizza_pizza_id_seq_1'),
                quantite INTEGER,
                CONSTRAINT panierpossedepizza_pk PRIMARY KEY (panier_id, pizza_id)
);


ALTER SEQUENCE public.pizza_pizza_id_seq_1 OWNED BY public.PanierPossedePizza.pizza_id;

CREATE SEQUENCE public.commande_commande_id_seq;

CREATE TABLE public.Commande (
                commande_id BIGINT NOT NULL DEFAULT nextval('public.commande_commande_id_seq'),
                date_heure TIMESTAMP NOT NULL,
                a_livrer BOOLEAN DEFAULT true NOT NULL,
                paiement_effectue BOOLEAN DEFAULT false NOT NULL,
                employe_id INTEGER NOT NULL,
                panier_id INTEGER NOT NULL,
                CONSTRAINT commande_pk PRIMARY KEY (commande_id)
);


ALTER SEQUENCE public.commande_commande_id_seq OWNED BY public.Commande.commande_id;

CREATE SEQUENCE public.facture_facture_id_seq;

CREATE TABLE public.Facture (
                facture_id INTEGER NOT NULL DEFAULT nextval('public.facture_facture_id_seq'),
                prix NUMERIC NOT NULL,
                date_heure TIMESTAMP NOT NULL,
                commande_id BIGINT NOT NULL,
                CONSTRAINT facture_pk PRIMARY KEY (facture_id)
);


ALTER SEQUENCE public.facture_facture_id_seq OWNED BY public.Facture.facture_id;

CREATE TABLE public.TypePaiement (
                typePaiement_id INTEGER NOT NULL,
                nom VARCHAR NOT NULL,
                commande_id BIGINT NOT NULL,
                CONSTRAINT typepaiement_pk PRIMARY KEY (typePaiement_id)
);


CREATE TABLE public.StatutCommande (
                statutCommande_id INTEGER NOT NULL,
                nom VARCHAR(30) NOT NULL,
                commande_id BIGINT NOT NULL,
                CONSTRAINT statutcommande_pk PRIMARY KEY (statutCommande_id)
);


ALTER TABLE public.Pizza ADD CONSTRAINT categorie_pizza_fk
FOREIGN KEY (categorie_id)
REFERENCES public.Categorie (categorie_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Recette ADD CONSTRAINT ingredient_recette_fk
FOREIGN KEY (ingredient_id)
REFERENCES public.Ingredient (ingredient_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Stock ADD CONSTRAINT ingredient_stock_fk
FOREIGN KEY (ingredient_id)
REFERENCES public.Ingredient (ingredient_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Pizzerria ADD CONSTRAINT adresse_pizzerria_fk
FOREIGN KEY (adresse_id)
REFERENCES public.Adresse (adresse_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Utilisateur ADD CONSTRAINT adresse_utilisateur_fk
FOREIGN KEY (adresse_id)
REFERENCES public.Adresse (adresse_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Catalogue ADD CONSTRAINT pizzerria_catalogue_fk
FOREIGN KEY (pizzeria_id)
REFERENCES public.Pizzerria (pizzeria_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Stock ADD CONSTRAINT pizzerria_stock_fk
FOREIGN KEY (pizzeria_id)
REFERENCES public.Pizzerria (pizzeria_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Employe ADD CONSTRAINT pizzerria_employe_fk
FOREIGN KEY (pizzeria_id)
REFERENCES public.Pizzerria (pizzeria_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Pizza ADD CONSTRAINT catalogue_pizza_fk
FOREIGN KEY (catalogue_id)
REFERENCES public.Catalogue (catalogue_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Recette ADD CONSTRAINT pizza_recette_fk
FOREIGN KEY (pizza_id)
REFERENCES public.Pizza (pizza_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.PanierPossedePizza ADD CONSTRAINT pizza_panierpossedepizza_fk
FOREIGN KEY (pizza_id)
REFERENCES public.Pizza (pizza_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Employe ADD CONSTRAINT typeutilisateur_employe_fk
FOREIGN KEY (typeUtilisateur_id)
REFERENCES public.TypeUtilisateur (typeUtilisateur_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Client ADD CONSTRAINT compte_client_fk
FOREIGN KEY (compte_id)
REFERENCES public.Compte (compte_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Employe ADD CONSTRAINT compte_employe_fk
FOREIGN KEY (compte_id)
REFERENCES public.Compte (compte_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Client ADD CONSTRAINT utilisateur_client_fk
FOREIGN KEY (utilisateur_id)
REFERENCES public.Utilisateur (utilisateur_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Employe ADD CONSTRAINT utilisateur_employe_fk
FOREIGN KEY (utilisateur_id)
REFERENCES public.Utilisateur (utilisateur_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Commande ADD CONSTRAINT employe_commande_fk
FOREIGN KEY (employe_id)
REFERENCES public.Employe (employe_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.PanierPossedePizza ADD CONSTRAINT panier_panierpossedepizza_fk
FOREIGN KEY (panier_id)
REFERENCES public.Panier (panier_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Commande ADD CONSTRAINT panier_commande_fk
FOREIGN KEY (panier_id)
REFERENCES public.Panier (panier_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.StatutCommande ADD CONSTRAINT commande_statutcommande_fk
FOREIGN KEY (commande_id)
REFERENCES public.Commande (commande_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.TypePaiement ADD CONSTRAINT commande_typepaiement_fk
FOREIGN KEY (commande_id)
REFERENCES public.Commande (commande_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.Facture ADD CONSTRAINT commande_facture_fk
FOREIGN KEY (commande_id)
REFERENCES public.Commande (commande_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;
