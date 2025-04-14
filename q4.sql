SELECT DISTINCT name
FROM members NATURAL JOIN memberInKnesset
WHERE gender = 'female' and occupation != 'politician' and number = 23 
INTERSECT 
SELECT DISTINCT name
FROM members NATURAL JOIN memberInKnesset
WHERE gender = 'female' and occupation != 'politician' and number = 24
ORDER BY name;