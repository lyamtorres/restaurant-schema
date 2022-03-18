-- FONCTIONS
CREATE OR REPLACE PROCEDURE get_cout_produit
IS
    l_total_cp NUMBER := 0;
BEGIN
    -- get total sales
    SELECT SUM(prix_prod * quantite_prod)
    INTO l_total_cp
    FROM Produit
    NATURAL JOIN CompoMenu ;
    -- return the total cout
    DBMS_OUTPUT.PUT_LINE('cout est :' || l_total_cp );
END;
/

CREATE OR REPLACE FUNCTION get_total_Menu_Enfant

RETURN NUMBER
IS
    l_total_menu NUMBER := 0;
BEGIN
    -- get total sales
    SELECT COUNT(*)
    INTO l_total_menu
    FROM Menu
    NATURAL JOIN Type_menu
    WHERE lib_type_menu = 'Enfant';
    
    
    -- return the total menu
    RETURN l_total_menu;
END;
/