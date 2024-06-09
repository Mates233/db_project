SELECT Kurzy.ID AS Kurz_ID, Kurzy.Název AS Kurz_Název, Kurzy.Kredity, Učitelé.ID AS Učitel_ID, Učitelé.Jméno AS Učitel_Jméno, Učitelé.Oddělení
FROM Kurzy
INNER JOIN Učitelé ON Kurzy.Učitel_ID = Učitelé.ID;

SELECT ID, Jméno, Věk, Email FROM Studenti
UNION
SELECT ID, Jméno, Věk, Oddělení AS Email FROM Učitelé;

SELECT Studenti.Jméno AS Student_Jméno, Kurzy.Název AS Kurz_Název
FROM Zápisy
INNER JOIN Studenti ON Zápisy.Student_ID = Studenti.ID
INNER JOIN Kurzy ON Zápisy.Kurz_ID = Kurzy.ID;




CREATE VIEW JoinedTables AS
SELECT
    s.Jméno AS Jméno_studenta,
    k.Název AS Název_kurzu,
    z.Datum_zápisu
FROM
    Studenti s
JOIN
    Zápisy z ON s.ID = z.Student_ID
JOIN
    Kurzy k ON z.Kurz_ID = k.ID
UNION
SELECT
    u.Jméno AS Jméno_trenéra,
    k.Název AS Název_kurzu,
    NULL AS Datum_zápisu
FROM
    Učitelé u
JOIN
    Kurzy k ON u.ID = k.Učitel_ID;
    
SELECT * FROM JoinedTables;