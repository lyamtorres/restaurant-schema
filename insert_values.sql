-- INSERTION DES VALEURS
INSERT INTO Categorie values(1,'Entree');
INSERT INTO Categorie values(2,'Boisson');
INSERT INTO Categorie values(3,'Burger');
INSERT INTO Categorie values(4,'Pizza');
INSERT INTO Categorie values(5,'Dessert');

INSERT INTO Produit values('p01','Nuggets',1,0.3);
INSERT INTO Produit values('p02','Wings',1,0.5);
INSERT INTO Produit values('p03','Fanta 40 cl',2,1.1);
INSERT INTO Produit values('p04','Pepsi',2,0.9);
INSERT INTO Produit values('p05','Capri Sun',2,0.7);
INSERT INTO Produit values('p06','Chess Burger',3,2.7);
INSERT INTO Produit values('p07','Whopper',3,3.5);
INSERT INTO Produit values('p08','Big Mac',3,3.7);
INSERT INTO Produit values('p09','Kebab',3,5.5);
INSERT INTO Produit values('p10','Marguerrita',4,5.0);
INSERT INTO Produit values('p12','Muffin choco',5,0.7);
INSERT INTO Produit values('p13','Donnut',5,0.5);
INSERT INTO Produit values('p14','Shake caramel',5,1.7);

INSERT INTO TypeMenu values(1,'Enfant');
INSERT INTO TypeMenu values(2,'Royal');
INSERT INTO TypeMenu values(3,'Etudiant');
INSERT INTO TypeMenu values(4,'Promo');

INSERT INTO Menu values(1,'Peppa',1);
INSERT INTO Menu values(2,'Tchoupi',1);
INSERT INTO Menu values(3,'Etudiant Kebab',3);
INSERT INTO Menu values(4,'Etudiant Pizza',3);
INSERT INTO Menu values(5,'Grand Roi',2);
INSERT INTO Menu values(6,'Cocote',4);

INSERT INTO CompoMenu values(1,'p01',4);
INSERT INTO CompoMenu values(1,'p06',1);
INSERT INTO CompoMenu values(1,'p05',1);
INSERT INTO CompoMenu values(2,'p02',4);
INSERT INTO CompoMenu values(2,'p06',1);
INSERT INTO CompoMenu values(2,'p05',1);
INSERT INTO CompoMenu values(2,'p13',1);
INSERT INTO CompoMenu values(3,'p09',1);
INSERT INTO CompoMenu values(3,'p01',8);
INSERT INTO CompoMenu values(3,'p04',1);
INSERT INTO CompoMenu values(3,'p13',1);
INSERT INTO CompoMenu values(4,'p14',1);
INSERT INTO CompoMenu values(4,'p03',1);
INSERT INTO CompoMenu values(4,'p12',1);
INSERT INTO CompoMenu values(5,'p03',2);
INSERT INTO CompoMenu values(5,'p07',1);
INSERT INTO CompoMenu values(5,'p08',1);
INSERT INTO CompoMenu values(5,'p12',1);
INSERT INTO CompoMenu values(5,'p02',8);
INSERT INTO CompoMenu values(5,'p14',2);
INSERT INTO CompoMenu values(6,'p03',2);
INSERT INTO CompoMenu values(6,'p10',1);
INSERT INTO CompoMenu values(6,'p01',4);

INSERT INTO Commande values (1,'Sur place',TO_DATE('2022/02/12','yyyy/mm/dd'));
INSERT INTO Commande values  (2,'A emporter',TO_DATE('2022/02/12','yyyy/mm/dd'));
INSERT INTO Commande values  (3,'Sur place',TO_DATE('2022/02/12','yyyy/mm/dd'));
INSERT INTO Commande values  (4,'A emporter',TO_DATE('2022/02/12','yyyy/mm/dd'));
INSERT INTO Commande values  (5,'Sur place',TO_DATE('2022/03/12','yyyy/mm/dd'));
INSERT INTO Commande values  (6,'Sur place',TO_DATE('2022/03/22','yyyy/mm/dd'));
INSERT INTO Commande values  (7,'A emporter',TO_DATE('2022/03/22','yyyy/mm/dd'));
INSERT INTO Commande values  (8,'Sur place',TO_DATE('2022/03/22','yyyy/mm/dd'));
INSERT INTO Commande values  (9,'A emporter',TO_DATE('2022/01/12','yyyy/mm/dd'));
INSERT INTO Commande values  (10,'Sur place',TO_DATE('2022/01/12','yyyy/mm/dd'));
INSERT INTO Commande values  (11,'A emporter',TO_DATE('2022/01/12','yyyy/mm/dd'));
INSERT INTO Commande values  (12,'Sur place',TO_DATE('2022/01/12','yyyy/mm/dd'));
INSERT INTO Commande values  (13,'Sur place',TO_DATE('2022/01/12','yyyy/mm/dd'));
INSERT INTO Commande values  (14,'A emporter',TO_DATE('2021/05/12','yyyy/mm/dd'));
INSERT INTO Commande values  (15,'A emporter',TO_DATE('2021/04/12','yyyy/mm/dd'));
INSERT INTO Commande values  (16,'A emporter',TO_DATE('2021/04/12','yyyy/mm/dd'));
INSERT INTO Commande values  (17,'A emporter',TO_DATE('2022/01/12','yyyy/mm/dd'));
INSERT INTO Commande values  (18,'A emporter',TO_DATE('2022/01/12','yyyy/mm/dd'));

INSERT INTO CompoCommande values(1,1,2);
INSERT INTO CompoCommande values(1,6,1);
INSERT INTO CompoCommande values(2,3,1);
INSERT INTO CompoCommande values(2,4,3);
INSERT INTO CompoCommande values(3,5,1);
INSERT INTO CompoCommande values(4,6,2);
INSERT INTO CompoCommande values(5,1,1);
INSERT INTO CompoCommande values(5,6,3);
INSERT INTO CompoCommande values(6,1,2);
INSERT INTO CompoCommande values(7,4,1);
INSERT INTO CompoCommande values(7,3,1);
INSERT INTO CompoCommande values(8,5,2);
INSERT INTO CompoCommande values(8,6,2);
INSERT INTO CompoCommande values(9,2,3);
INSERT INTO CompoCommande values(10,1,1);
INSERT INTO CompoCommande values(11,2,2);
INSERT INTO CompoCommande values(11,6,3);
INSERT INTO CompoCommande values(12,1,2);
INSERT INTO CompoCommande values(13,1,2);
INSERT INTO CompoCommande values(14,1,1);
INSERT INTO CompoCommande values(14,6,2);
INSERT INTO CompoCommande values(14,2,3);
INSERT INTO CompoCommande values(15,4,5);
INSERT INTO CompoCommande values(16,1,2);
INSERT INTO CompoCommande values(17,3,2);
INSERT INTO CompoCommande values(18,6,2);
INSERT INTO CompoCommande values(18,5,2);