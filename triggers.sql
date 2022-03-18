
-- TRIGGERS
-- vérification du numéro de produit
CREATE OR REPLACE TRIGGER identifiant_produit
BEFORE INSERT OR UPDATE 
ON Produit 
FOR EACH ROW
BEGIN 
    IF(:NEW.id_produit NOT LIKE 'p%') THEN 
        RAISE_APPLICATION_ERROR (-20001,' l id_produit  doit commencer par p');
    END IF;
END;
/

-- vérification du numéro de catégorie
ALTER TABLE Produit ADD CONSTRAINT chk_prix CHECK (prix_prod > 0);