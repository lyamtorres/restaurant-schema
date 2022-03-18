-- TABLES
-- suppression des tables
DROP TABLE CompoCommande;
DROP TABLE Commande;
DROP TABLE CompoMenu;
DROP TABLE Menu;
DROP TABLE TypeMenu;
DROP TABLE Produit;
DROP TABLE Categorie;

-- création des tables
CREATE TABLE Categorie (
    id_cat        NUMBER,
    categorie    VARCHAR2(10),
    CONSTRAINT pk_categorie PRIMARY KEY(id_cat)
);

CREATE TABLE Produit (
    id_produit    VARCHAR2(20),
    produit        VARCHAR2(15),
    id_cat      NUMBER,
    prix_prod   NUMBER,
    CONSTRAINT pk_produit PRIMARY KEY(id_produit),
    CONSTRAINT fk_Produit_categorie FOREIGN KEY(id_cat) REFERENCES Categorie(id_cat)
);

CREATE TABLE TypeMenu (
    id_type_menu NUMBER,
    lib_type_menu VARCHAR2(20),
    CONSTRAINT pk_type_menu PRIMARY KEY(id_type_menu) 
);

CREATE TABLE Menu (
    id_menu NUMBER,
    lib_menu VARCHAR2(20),
    id_type_menu NUMBER,
    CONSTRAINT pk_menu PRIMARY KEY(id_menu),
    CONSTRAINT fk_Menu_TypeMenu FOREIGN KEY (id_type_menu) REFERENCES TypeMenu(id_type_menu)
);

CREATE TABLE CompoMenu (
    id_menu NUMBER NOT NULL ,
    id_produit VARCHAR(15) NOT NULL,
    quantite_prod NUMBER,
    CONSTRAINT pk_CompoMenu PRIMARY KEY(id_menu,id_produit),
    CONSTRAINT fk_CompoMenu_Produit FOREIGN KEY (id_produit) REFERENCES Produit(id_produit),
    CONSTRAINT fk_CompoMenu_Menu FOREIGN KEY (id_menu) REFERENCES Menu(id_menu)
);

CREATE TABLE Commande (
  id_cmd NUMBER NOT NULL,
  type_cmd VARCHAR2(50),
  date_cmd Date default sysdate not null,
  CONSTRAINT pk_commande PRIMARY KEY (id_cmd),
  CONSTRAINT ck_type_cmd CHECK (type_cmd IN ('Sur place','A emporter'))
);

CREATE TABLE CompoCommande (
    id_cmd NUMBER NOT NULL ,
    id_menu NUMBER NOT NULL,
    quantite NUMBER,
    CONSTRAINT pk_CompoCMD PRIMARY KEY(id_menu,id_cmd),
    CONSTRAINT fk_CompoCMD_Commande FOREIGN KEY (id_cmd) REFERENCES Commande(id_cmd),
    CONSTRAINT fk_CompoCMD_Menu FOREIGN KEY (id_menu) REFERENCES Menu(id_menu)
);

CREATE SEQUENCE categorie_id.nextval START WITH 1
INCREMENT BY 1;