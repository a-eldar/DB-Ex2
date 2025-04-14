SELECT DISTINCT name
FROM members NATURAL JOIN memberInKnesset
WHERE gender = 'female' AND occupation != 'politician' AND number = 23 
INTERSECT 
SELECT DISTINCT name
FROM members NATURAL JOIN memberInKnesset
WHERE gender = 'female' AND occupation != 'politician' AND number = 24
ORDER BY name;