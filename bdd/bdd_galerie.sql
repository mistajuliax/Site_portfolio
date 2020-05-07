# script créé le : Sat May 02 17:03:06 CEST 2020 ;

# use  VOTRE_BASE_DE_DONNEE ;

DROP TABLE IF EXISTS projet ;

CREATE TABLE projet (id_projet int AUTO_INCREMENT NOT NULL,
projet_titre VARCHAR(255),
projet_image VARCHAR(255),
projet_description TEXT,
projet_date DATE,
projet_nb_vues INT,
projet_nb_mentions_jaime INT,
projet_commentaire TEXT,
id_portfolio int,
PRIMARY KEY (id_projet) ) ENGINE=InnoDB;

DROP TABLE IF EXISTS utilisateur ;

CREATE TABLE utilisateur (id_utilisateur int AUTO_INCREMENT NOT NULL,
utilisateur_nom VARCHAR(255),
utilisateur_prenom VARCHAR(255),
utilisateur_pseudo VARCHAR(255),
utilisateur_email VARCHAR(255),
utilisateur_mdp VARCHAR(255),
utilisateur_admin INT,
PRIMARY KEY (id_utilisateur) ) ENGINE=InnoDB;

DROP TABLE IF EXISTS portfolio ;

CREATE TABLE portfolio (id_portfolio int AUTO_INCREMENT NOT NULL,
portfolio_titre VARCHAR(255),
portfolio_image VARCHAR(255),
portfolio_photo VARCHAR(255),
portfolio_pseudo VARCHAR(255),
portfolio_date_creation DATETIME,
id_utilisateur int NOT NULL,
PRIMARY KEY (id_portfolio) ) ENGINE=InnoDB;

DROP TABLE IF EXISTS favoris ;

CREATE TABLE favoris (id_favoris int AUTO_INCREMENT NOT NULL,
titre_favoris VARCHAR(255),
favoris_date DATE,
id_utilisateur int NOT NULL,
id_projet int NOT NULL,
PRIMARY KEY (id_favoris) ) ENGINE=InnoDB;

DROP TABLE IF EXISTS commenter ;

CREATE TABLE commenter (id_utilisateur int AUTO_INCREMENT NOT NULL,
id_projet int NOT NULL,
id_commentaire int,
commentaire_date DATETIME,
commentaire_contenu TEXT,
PRIMARY KEY (id_utilisateur,
 id_projet) ) ENGINE=InnoDB;

ALTER TABLE projet ADD CONSTRAINT FK_projet_id_portfolio FOREIGN KEY (id_portfolio) REFERENCES portfolio (id_portfolio);

ALTER TABLE portfolio ADD CONSTRAINT FK_portfolio_id_utilisateur FOREIGN KEY (id_utilisateur) REFERENCES utilisateur (id_utilisateur);

ALTER TABLE favoris ADD CONSTRAINT FK_favoris_id_utilisateur FOREIGN KEY (id_utilisateur) REFERENCES utilisateur (id_utilisateur);

ALTER TABLE favoris ADD CONSTRAINT FK_favoris_id_projet FOREIGN KEY (id_projet) REFERENCES projet (id_projet);

ALTER TABLE commenter ADD CONSTRAINT FK_commenter_id_utilisateur FOREIGN KEY (id_utilisateur) REFERENCES utilisateur (id_utilisateur);

ALTER TABLE commenter ADD CONSTRAINT FK_commenter_id_projet FOREIGN KEY (id_projet) REFERENCES projet (id_projet);

