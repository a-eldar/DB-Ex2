SELECT name
FROM (
    (SELECT uid FROM memberInKnesset)
    EXCEPT
    (SELECT uid
     FROM
       (SELECT number AS num1, uid FROM memberInKnesset) AS K1
       NATURAL JOIN
       (SELECT number AS num2, uid FROM memberInKnesset) AS K2
     WHERE num1 != num2)
) AS AllInOneKnesset
NATURAL JOIN
  (SELECT * FROM members WHERE birthPlace = 'Jerusalem') AS JerusalemMembers
ORDER BY name;