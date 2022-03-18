-- AUTORISATIONS
-- création des rôles
CREATE ROLE admin_junior IDENTIFIED BY role1;
CREATE ROLE proprietaire IDENTIFIED BY role2;
CREATE ROLE cadre IDENTIFIED BY role3;
CREATE ROLE equipier IDENTIFIED BY role4;

-- attribution des rôles aux utilisateurs
GRANT admin_junior to L3_71;
GRANT proprietaire to L3_56;
GRANT cadre to L3_69;
GRANT equipier to L3_64;

-- attribution des autorisations
-- admin_junior
GRANT proprietaire TO admin_junior
GRANT cadre TO admin_junior
GRANT equipier TO admin_junior

-- propriétaire
GRANT SELECT ON menu TO proprietaire;
GRANT INSERT ON menu TO proprietaire;
GRANT UPDATE ON menu TO proprietaire;
GRANT DELETE ON menu TO proprietaire;

GRANT SELECT ON compomenu TO proprietaire;
GRANT INSERT ON compomenu TO proprietaire;
GRANT UPDATE ON compomenu TO proprietaire;
GRANT DELETE ON compomenu TO proprietaire;

GRANT SELECT ON categorie TO proprietaire;
GRANT INSERT ON categorie TO proprietaire;
GRANT UPDATE ON categorie TO proprietaire;
GRANT DELETE ON categorie TO proprietaire;

GRANT SELECT ON produit TO proprietaire;
GRANT INSERT ON produit TO proprietaire;
GRANT UPDATE ON produit TO proprietaire;
GRANT DELETE ON produit TO proprietaire;

GRANT SELECT ON typeMenu TO proprietaire;
GRANT INSERT ON typeMenu TO proprietaire;
GRANT UPDATE ON typeMenu TO proprietaire;
GRANT DELETE ON typeMenu TO proprietaire;

GRANT SELECT ON menu TO proprietaire;
GRANT SELECT ON typemenu TO proprietaire;
GRANT SELECT ON compomenu TO proprietaire;
GRANT SELECT ON produit TO proprietaire;
GRANT SELECT ON compocommande TO proprietaire;
GRANT SELECT ON categorie TO proprietaire;
GRANT SELECT ON compomenu TO proprietaire;

-- cadre
GRANT SELECT ON commande TO cadre;
GRANT INSERT ON commande TO cadre;
GRANT UPDATE ON commande TO cadre;
GRANT DELETE ON commande TO cadre;

GRANT SELECT ON compocommande TO cadre;
GRANT INSERT ON compocommande TO cadre;
GRANT UPDATE ON compocommande TO cadre;
GRANT DELETE ON compocommande TO cadre;

GRANT SELECT ON menu TO cadre;
GRANT SELECT ON typemenu TO cadre;
GRANT SELECT ON compomenu TO cadre;
GRANT SELECT ON produit TO cadre;
GRANT SELECT ON compocommande TO cadre;
GRANT SELECT ON categorie TO cadre;
GRANT SELECT ON compomenu TO cadre;

-- équipier
GRANT SELECT ON commande TO equipier;
GRANT INSERT ON commande TO equipier;

GRANT SELECT ON compocommande TO equipier;
GRANT INSERT ON compocommande TO equipier;

GRANT SELECT ON menu TO equipier;
GRANT SELECT ON typemenu TO equipier;
GRANT SELECT ON compomenu TO equipier;
GRANT SELECT ON produit TO equipier;
GRANT SELECT ON compocommande TO equipier;
GRANT SELECT ON categorie TO equipier;
GRANT SELECT ON compomenu TO equipier;

-- récupération des droits par les utilisateurs
SET ROLE admin_junior IDENTIFIED BY role1;
SET ROLE proprietaire IDENTIFIED BY role2;
SET ROLE cadre IDENTIFIED BY role3;
SET ROLE equipier IDENTIFIED BY role4;