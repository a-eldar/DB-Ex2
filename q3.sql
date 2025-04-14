SELECT DISTINCT name, number
FROM members NATURAL JOIN memberInKnesset NATURAL JOIN knessets
WHERE (party = 'Likud' OR party = 'Meretz') AND startYear - birthYear > 70
ORDER BY name,number;