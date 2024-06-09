CREATE VIEW ReportovaciView AS
SELECT 
    S.ID AS Student_ID,
    S.Jméno AS Student_Jméno,
    S.Věk AS Student_Věk,
    S.Email AS Student_Email,
    K.ID AS Kurz_ID,
    K.Název AS Kurz_Název,
    K.Kredity AS Kurz_Kredity,
    U.ID AS Učitel_ID,
    U.Jméno AS Učitel_Jméno,
    U.Věk AS Učitel_Věk,
    U.Oddělení AS Učitel_Oddělení,
    Z.Datum_zápisu
FROM 
    Studenti S
JOIN 
    Zápisy Z ON S.ID = Z.Student_ID
JOIN 
    Kurzy K ON Z.Kurz_ID = K.ID
JOIN 
    Učitelé U ON K.Učitel_ID = U.ID;


SELECT * FROM ReportovaciView;