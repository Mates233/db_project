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

SELECT * FROM Top5Kurzu;
