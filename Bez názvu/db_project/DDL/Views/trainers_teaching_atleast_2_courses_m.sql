CREATE VIEW TrenéřiAlespoň2Kurzy AS
SELECT U.*
FROM Učitelé U
JOIN Kurzy K ON U.ID = K.Učitel_ID
GROUP BY U.ID
HAVING COUNT(K.ID) >= 2;


SELECT * FROM TrenéřiAlespoň2Kurzy;