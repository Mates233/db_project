
CREATE TABLE Studenti (
    ID INT PRIMARY KEY,
    Jméno VARCHAR(100),
    Věk INT,
    Email VARCHAR(100)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;




INSERT INTO Studenti (ID, Jméno, Věk, Email) VALUES (1, 'Jan Novák', 21, 'jan.novak@example.com');
INSERT INTO Studenti (ID, Jméno, Věk, Email) VALUES (2, 'Petr Svoboda', 22, 'petr.svoboda@example.com');
INSERT INTO Studenti (ID, Jméno, Věk, Email) VALUES (3, 'Eva Černá', 20, 'eva.cerna@example.com');
INSERT INTO Studenti (ID, Jméno, Věk, Email) VALUES (4, 'Marie Procházková', 23, 'marie.prochazkova@example.com');
INSERT INTO Studenti (ID, Jméno, Věk, Email) VALUES (5, 'Tomáš Novotný', 24, 'tomas.novotny@example.com');
INSERT INTO Studenti (ID, Jméno, Věk, Email) VALUES (6, 'Lucie Dvořáková', 22, 'lucie.dvorakova@example.com');
INSERT INTO Studenti (ID, Jméno, Věk, Email) VALUES (7, 'Martin Novák', 21, 'martin.novak@example.com');
INSERT INTO Studenti (ID, Jméno, Věk, Email) VALUES (8, 'Anna Kovářová', 20, 'anna.kovarova@example.com');
INSERT INTO Studenti (ID, Jméno, Věk, Email) VALUES (9, 'Michal Kříž', 22, 'michal.kriz@example.com');
INSERT INTO Studenti (ID, Jméno, Věk, Email) VALUES (10, 'Kateřina Veselá', 23, 'katerina.vesela@example.com');
INSERT INTO Studenti (ID, Jméno, Věk, Email) VALUES (11, 'Jakub Malý', 21, 'jakub.maly@example.com');
INSERT INTO Studenti (ID, Jméno, Věk, Email) VALUES (12, 'Petra Nováková', 20, 'petra.novakova@example.com');
INSERT INTO Studenti (ID, Jméno, Věk, Email) VALUES (13, 'Lukáš Kratochvíl', 22, 'lukas.kratochvil@example.com');
INSERT INTO Studenti (ID, Jméno, Věk, Email) VALUES (14, 'Veronika Adamová', 23, 'veronika.adamova@example.com');
INSERT INTO Studenti (ID, Jméno, Věk, Email) VALUES (15, 'Marek Pospíšil', 21, 'marek.pospisil@example.com');
INSERT INTO Studenti (ID, Jméno, Věk, Email) VALUES (16, 'Kristýna Nováková', 20, 'kristyna.novakova@example.com');
INSERT INTO Studenti (ID, Jméno, Věk, Email) VALUES (17, 'David Marek', 22, 'david.marek@example.com');
INSERT INTO Studenti (ID, Jméno, Věk, Email) VALUES (18, 'Lucie Nová', 23, 'lucie.nova@example.com');
INSERT INTO Studenti (ID, Jméno, Věk, Email) VALUES (19, 'Jiří Nový', 21, 'jiri.novy@example.com');
INSERT INTO Studenti (ID, Jméno, Věk, Email) VALUES (20, 'Lenka Svobodová', 20, 'lenka.svobodova@example.com');
INSERT INTO Studenti (ID, Jméno, Věk, Email) VALUES (21, 'Tomáš Veselý', 22, 'tomas.vesely@example.com');
INSERT INTO Studenti (ID, Jméno, Věk, Email) VALUES (22, 'Marie Kovářová', 23, 'marie.kovarova@example.com');
INSERT INTO Studenti (ID, Jméno, Věk, Email) VALUES (23, 'Pavel Novák', 21, 'pavel.novak@example.com');
INSERT INTO Studenti (ID, Jméno, Věk, Email) VALUES (24, 'Jana Dvořáková', 22, 'jana.dvorakova@example.com');
INSERT INTO Studenti (ID, Jméno, Věk, Email) VALUES (25, 'Martin Kříž', 23, 'martin.kriz@example.com');

CREATE TABLE Učitelé (
    ID INT PRIMARY KEY,
    Jméno VARCHAR(100),
    Věk INT,
    Oddělení VARCHAR(100)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;


INSERT INTO Učitelé (ID, Jméno, Věk, Oddělení) VALUES (1, 'Milan Jílek', 35, 'Matematika');
INSERT INTO Učitelé (ID, Jméno, Věk, Oddělení) VALUES (2, 'Lenka Svobodová', 32, 'Fyzika');
INSERT INTO Učitelé (ID, Jméno, Věk, Oddělení) VALUES (3, 'Tomáš Marek', 40, 'Chemie');
INSERT INTO Učitelé (ID, Jméno, Věk, Oddělení) VALUES (4, 'Kateřina Novotná', 38, 'Biologie');
INSERT INTO Učitelé (ID, Jméno, Věk, Oddělení) VALUES (5, 'Pavel Čech', 36, 'Informatika');
INSERT INTO Učitelé (ID, Jméno, Věk, Oddělení) VALUES (6, 'Jana Veselá', 33, 'Literatura');
INSERT INTO Učitelé (ID, Jméno, Věk, Oddělení) VALUES (7, 'Michal Horák', 37, 'Dějepis');
INSERT INTO Učitelé (ID, Jméno, Věk, Oddělení) VALUES (8, 'Alena Malá', 34, 'Zeměpis');


CREATE TABLE Kurzy (
    ID INT PRIMARY KEY,
    Název VARCHAR(100),
    Kredity INT,
    Učitel_ID INT,
    FOREIGN KEY (Učitel_ID) REFERENCES Učitelé(ID)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

INSERT INTO Kurzy (ID, Název, Kredity, Učitel_ID) VALUES (1, 'Matematika I', 5, 1);
INSERT INTO Kurzy (ID, Název, Kredity, Učitel_ID) VALUES (2, 'Matematika II', 5, 1);
INSERT INTO Kurzy (ID, Název, Kredity, Učitel_ID) VALUES (3, 'Fyzika I', 4, 2);
INSERT INTO Kurzy (ID, Název, Kredity, Učitel_ID) VALUES (4, 'Fyzika II', 4, 2);
INSERT INTO Kurzy (ID, Název, Kredity, Učitel_ID) VALUES (5, 'Chemie', 4, 3);
INSERT INTO Kurzy (ID, Název, Kredity, Učitel_ID) VALUES (6, 'Biologie', 4, 4);
INSERT INTO Kurzy (ID, Název, Kredity, Učitel_ID) VALUES (7, 'Programování', 6, 5);
INSERT INTO Kurzy (ID, Název, Kredity, Učitel_ID) VALUES (8, 'Literatura', 3, 6);
INSERT INTO Kurzy (ID, Název, Kredity, Učitel_ID) VALUES (9, 'Dějiny umění', 3, 7);
INSERT INTO Kurzy (ID, Název, Kredity, Učitel_ID) VALUES (10, 'Zeměpis', 3, 8);
INSERT INTO Kurzy (ID, Název, Kredity, Učitel_ID) VALUES (11, 'Databáze', 6, 5);
INSERT INTO Kurzy (ID, Název, Kredity, Učitel_ID) VALUES (12, 'Dějepis', 4, 7);


CREATE TABLE Zápisy (
    Student_ID INT,
    Kurz_ID INT,
    Datum_zápisu DATE,
    PRIMARY KEY (Student_ID, Kurz_ID),
    FOREIGN KEY (Student_ID) REFERENCES Studenti(ID),
    FOREIGN KEY (Kurz_ID) REFERENCES Kurzy(ID)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

INSERT INTO Zápisy (Student_ID, Kurz_ID, Datum_zápisu) VALUES (1, 1, '2024-06-01');
INSERT INTO Zápisy (Student_ID, Kurz_ID, Datum_zápisu) VALUES (2, 1, '2024-06-01');
INSERT INTO Zápisy (Student_ID, Kurz_ID, Datum_zápisu) VALUES (3, 1, '2024-06-01');
INSERT INTO Zápisy (Student_ID, Kurz_ID, Datum_zápisu) VALUES (4, 1, '2024-06-01');
INSERT INTO Zápisy (Student_ID, Kurz_ID, Datum_zápisu) VALUES (5, 1, '2024-06-01');
INSERT INTO Zápisy (Student_ID, Kurz_ID, Datum_zápisu) VALUES (6, 1, '2024-06-01');
INSERT INTO Zápisy (Student_ID, Kurz_ID, Datum_zápisu) VALUES (7, 1, '2024-06-01');
INSERT INTO Zápisy (Student_ID, Kurz_ID, Datum_zápisu) VALUES (8, 1, '2024-06-01');
INSERT INTO Zápisy (Student_ID, Kurz_ID, Datum_zápisu) VALUES (9, 1, '2024-06-01');
INSERT INTO Zápisy (Student_ID, Kurz_ID, Datum_zápisu) VALUES (10, 1, '2024-06-01');


INSERT INTO Zápisy (Student_ID, Kurz_ID, Datum_zápisu) VALUES (11, 2, '2024-06-01');
INSERT INTO Zápisy (Student_ID, Kurz_ID, Datum_zápisu) VALUES (12, 2, '2024-06-01');
INSERT INTO Zápisy (Student_ID, Kurz_ID, Datum_zápisu) VALUES (13, 2, '2024-06-01');
INSERT INTO Zápisy (Student_ID, Kurz_ID, Datum_zápisu) VALUES (14, 2, '2024-06-01');
INSERT INTO Zápisy (Student_ID, Kurz_ID, Datum_zápisu) VALUES (15, 2, '2024-06-01');
INSERT INTO Zápisy (Student_ID, Kurz_ID, Datum_zápisu) VALUES (16, 2, '2024-06-01');
INSERT INTO Zápisy (Student_ID, Kurz_ID, Datum_zápisu) VALUES (17, 2, '2024-06-01');
INSERT INTO Zápisy (Student_ID, Kurz_ID, Datum_zápisu) VALUES (18, 2, '2024-06-01');
INSERT INTO Zápisy (Student_ID, Kurz_ID, Datum_zápisu) VALUES (19, 2, '2024-06-01');
INSERT INTO Zápisy (Student_ID, Kurz_ID, Datum_zápisu) VALUES (20, 2, '2024-06-01');

INSERT INTO Zápisy (Student_ID, Kurz_ID, Datum_zápisu) VALUES (21, 3, '2024-06-01');
INSERT INTO Zápisy (Student_ID, Kurz_ID, Datum_zápisu) VALUES (22, 3, '2024-06-01');
INSERT INTO Zápisy (Student_ID, Kurz_ID, Datum_zápisu) VALUES (23, 3, '2024-06-01');
INSERT INTO Zápisy (Student_ID, Kurz_ID, Datum_zápisu) VALUES (24, 3, '2024-06-01');
INSERT INTO Zápisy (Student_ID, Kurz_ID, Datum_zápisu) VALUES (25, 3, '2024-06-01');

INSERT INTO Zápisy (Student_ID, Kurz_ID, Datum_zápisu) VALUES (7, 4, '2024-06-01');
INSERT INTO Zápisy (Student_ID, Kurz_ID, Datum_zápisu) VALUES (8, 4, '2024-06-01');
INSERT INTO Zápisy (Student_ID, Kurz_ID, Datum_zápisu) VALUES (9, 4, '2024-06-01');
INSERT INTO Zápisy (Student_ID, Kurz_ID, Datum_zápisu) VALUES (10, 4, '2024-06-01');
INSERT INTO Zápisy (Student_ID, Kurz_ID, Datum_zápisu) VALUES (11, 4, '2024-06-01');
INSERT INTO Zápisy (Student_ID, Kurz_ID, Datum_zápisu) VALUES (12, 4, '2024-06-01');
INSERT INTO Zápisy (Student_ID, Kurz_ID, Datum_zápisu) VALUES (13, 4, '2024-06-01');
INSERT INTO Zápisy (Student_ID, Kurz_ID, Datum_zápisu) VALUES (14, 4, '2024-06-01');
INSERT INTO Zápisy (Student_ID, Kurz_ID, Datum_zápisu) VALUES (15, 4, '2024-06-01');

INSERT INTO Zápisy (Student_ID, Kurz_ID, Datum_zápisu) VALUES (16, 5, '2024-06-01');
INSERT INTO Zápisy (Student_ID, Kurz_ID, Datum_zápisu) VALUES (17, 5, '2024-06-01');
INSERT INTO Zápisy (Student_ID, Kurz_ID, Datum_zápisu) VALUES (18, 5, '2024-06-01');
INSERT INTO Zápisy (Student_ID, Kurz_ID, Datum_zápisu) VALUES (19, 5, '2024-06-01');
INSERT INTO Zápisy (Student_ID, Kurz_ID, Datum_zápisu) VALUES (20, 5, '2024-06-01');
INSERT INTO Zápisy (Student_ID, Kurz_ID, Datum_zápisu) VALUES (21, 5, '2024-06-01');
INSERT INTO Zápisy (Student_ID, Kurz_ID, Datum_zápisu) VALUES (22, 5, '2024-06-01');
INSERT INTO Zápisy (Student_ID, Kurz_ID, Datum_zápisu) VALUES (23, 5, '2024-06-01');
INSERT INTO Zápisy (Student_ID, Kurz_ID, Datum_zápisu) VALUES (24, 5, '2024-06-01');
INSERT INTO Zápisy (Student_ID, Kurz_ID, Datum_zápisu) VALUES (25, 5, '2024-06-01');
INSERT INTO Zápisy (Student_ID, Kurz_ID, Datum_zápisu) VALUES (15, 5, '2024-06-01');

INSERT INTO Zápisy (Student_ID, Kurz_ID, Datum_zápisu) VALUES (1, 6, '2024-06-01');
INSERT INTO Zápisy (Student_ID, Kurz_ID, Datum_zápisu) VALUES (2, 6, '2024-06-01');
INSERT INTO Zápisy (Student_ID, Kurz_ID, Datum_zápisu) VALUES (3, 6, '2024-06-01');
INSERT INTO Zápisy (Student_ID, Kurz_ID, Datum_zápisu) VALUES (4, 6, '2024-06-01');
INSERT INTO Zápisy (Student_ID, Kurz_ID, Datum_zápisu) VALUES (5, 6, '2024-06-01');
INSERT INTO Zápisy (Student_ID, Kurz_ID, Datum_zápisu) VALUES (6, 6, '2024-06-01');

INSERT INTO Zápisy (Student_ID, Kurz_ID, Datum_zápisu) VALUES (7, 7, '2024-06-01');
INSERT INTO Zápisy (Student_ID, Kurz_ID, Datum_zápisu) VALUES (8, 7, '2024-06-01');
INSERT INTO Zápisy (Student_ID, Kurz_ID, Datum_zápisu) VALUES (9, 7, '2024-06-01');
INSERT INTO Zápisy (Student_ID, Kurz_ID, Datum_zápisu) VALUES (10, 7, '2024-06-01');
INSERT INTO Zápisy (Student_ID, Kurz_ID, Datum_zápisu) VALUES (11, 7, '2024-06-01');
INSERT INTO Zápisy (Student_ID, Kurz_ID, Datum_zápisu) VALUES (12, 7, '2024-06-01');
INSERT INTO Zápisy (Student_ID, Kurz_ID, Datum_zápisu) VALUES (13, 7, '2024-06-01');
INSERT INTO Zápisy (Student_ID, Kurz_ID, Datum_zápisu) VALUES (14, 7, '2024-06-01');
INSERT INTO Zápisy (Student_ID, Kurz_ID, Datum_zápisu) VALUES (15, 7, '2024-06-01');
INSERT INTO Zápisy (Student_ID, Kurz_ID, Datum_zápisu) VALUES (16, 7, '2024-06-01');

INSERT INTO Zápisy (Student_ID, Kurz_ID, Datum_zápisu) VALUES (19, 8, '2024-06-01');
INSERT INTO Zápisy (Student_ID, Kurz_ID, Datum_zápisu) VALUES (20, 8, '2024-06-01');
INSERT INTO Zápisy (Student_ID, Kurz_ID, Datum_zápisu) VALUES (21, 8, '2024-06-01');
INSERT INTO Zápisy (Student_ID, Kurz_ID, Datum_zápisu) VALUES (22, 8, '2024-06-01');
INSERT INTO Zápisy (Student_ID, Kurz_ID, Datum_zápisu) VALUES (23, 8, '2024-06-01');
INSERT INTO Zápisy (Student_ID, Kurz_ID, Datum_zápisu) VALUES (24, 8, '2024-06-01');
INSERT INTO Zápisy (Student_ID, Kurz_ID, Datum_zápisu) VALUES (25, 8, '2024-06-01');

CREATE VIEW Top5Kurzu AS
SELECT
    k.ID AS Kurz_ID,
    k.Název AS Název_kurzu,
    COUNT(DISTINCT z.Student_ID) AS Počet_studentů
FROM
    Kurzy k
JOIN
    Zápisy z ON k.ID = z.Kurz_ID
GROUP BY
    k.ID
ORDER BY
    COUNT(DISTINCT z.Student_ID) DESC
LIMIT 5;

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

CREATE VIEW TrenéřiAlespoň2Kurzy AS
SELECT U.*
FROM Učitelé U
JOIN Kurzy K ON U.ID = K.Učitel_ID
GROUP BY U.ID
HAVING COUNT(K.ID) >= 2;

CREATE VIEW Top3Trenéři AS
SELECT U.Jméno AS Trenér, COUNT(Z.Student_ID) AS Počet_studentů
FROM Učitelé U
JOIN Kurzy K ON U.ID = K.Učitel_ID
JOIN Zápisy Z ON K.ID = Z.Kurz_ID
GROUP BY U.ID
ORDER BY Počet_studentů DESC
LIMIT 3;


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
    
    
    
    
    
    
SELECT * FROM Top5Kurzu;

SELECT * FROM ReportovaciView;

SELECT * FROM TrenéřiAlespoň2Kurzy;
SELECT * FROM Top3Trenéři;

SELECT * FROM JoinedTables;

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