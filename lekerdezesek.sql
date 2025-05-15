-- 1. Sikeres vizsgák
SELECT t.nev, 
        v.tipus, 
        v.eredmeny,
        v.datum
FROM Vizsgak v JOIN Tanulok t ON v.tanulo_id = t.tanulo_id
WHERE v.eredmeny = 'sikeres';

-- 2. Melyik oktatóhoz iratkoztak be a legtöbben
SELECT TOP 1 o.nev AS "Oktató neve", 
        COUNT(b.tanulo_id) AS "Tanulók száma"
FROM Beiratkozasok b JOIN Oktatok o ON b.oktato_id = o.oktato_id
GROUP BY o.nev
ORDER BY "Tanulók száma" DESC;

-- 3. Legforgalmasabb hónap
SELECT MONTH(datum) AS "Hónap",
        COUNT(tanulo_id)
FROM Beiratkozasok

-- 4. Mind a két típusú tanfolyamra beiratkozottak
SELECT t.nev
FROM Tanulok t
WHERE t.tanulo_id IN (
    SELECT b.tanulo_id
    FROM Beiratkozasok b JOIN Tanfolyamok tf ON b.tanfolyam_id = tf.tanfolyam_id
    WHERE tf.tipus = 'elméleti')

AND 

      t.tanulo_id IN (
    SELECT b.tanulo_id
    FROM Beiratkozasok b JOIN Tanfolyamok tf ON b.tanfolyam_id = tf.tanfolyam_id
    WHERE tf.tipus = 'gyakorlati');

-- 5. Még nem vizsgázottak/sikertelenül vizsgázók
SELECT t.nev, 
        t.email, 
        t.telefon
FROM Tanulok t LEFT JOIN Vizsgak v ON t.tanulo_id = v.tanulo_id
GROUP BY t.nev, t.tanulo_id
HAVING COUNT(v.vizsga_id) = 0 OR SUM(CASE WHEN v.eredmeny = 'sikeres' THEN 1 ELSE 0 END) = 0;
