SELECT number, name
FROM 
(
    SELECT uid, number
    FROM memberInKnesset
    EXCEPT
    (
        SELECT m2.uid, m2.number
        FROM (members NATURAL JOIN memberInKnesset) AS m1
        INNER JOIN (members NATURAL JOIN memberInKnesset) AS m2
        ON m1.number = m2.number AND m1.birthYear < m2.birthYear
    )
) AS A
NATURAL JOIN members
ORDER BY number, name;
