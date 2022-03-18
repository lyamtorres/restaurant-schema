CREATE OR REPLACE VIEW menu_prix
AS
SELECT lib_menu MENU,SUM(prix_prod*quantite_prod) PRIX 
    FROM Menu NATURAL JOIN CompoMenu NATURAL JOIN Produit
    GROUP BY lib_menu;

--Create a new Relational View

CREATE OR REPLACE VIEW detail_menu
AS
SELECT lib_menu MENU,  Produit.produit PRODUIT, prix_prod PRIX,quantite_prod QUANTITE
    FROM Menu NATURAL JOIN CompoMenu NATURAL JOIN Produit
    order by lib_menu;

SET PAGESIZE 100
SET LINESIZE 300

CLEAR BREAKS
CLEAR COMPUTES
CLEAR COLUMNS

BREAK ON MENU skip 1

COLUMN MENU HEADING 'MENU'
COLUMN PRODUIT HEADING "PRODUIT"
COLUMN PRIX HEADING 'PRIX'

--COLUMN prix HEADING 'Prix'

INSERT INTO Produit values('p14','Shake caramel',5,-1.7);
SELECT MENU, PRODUIT, PRIX, QUANTITE FROM detail_menu;

select * from detail_menu;
projet_bd.sql
4 KB