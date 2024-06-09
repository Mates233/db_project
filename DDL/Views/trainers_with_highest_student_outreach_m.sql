CREATE VIEW Top3Trenéři AS
SELECT U.Jméno AS Trenér, COUNT(Z.Student_ID) AS Počet_studentů
FROM Učitelé U
JOIN Kurzy K ON U.ID = K.Učitel_ID
JOIN Zápisy Z ON K.ID = Z.Kurz_ID
GROUP BY U.ID
ORDER BY Počet_studentů DESC
LIMIT 3;


SELECT * FROM Top3Trenéři;