SELECT name FROM

(SELECT uid FROM membersInKnesset)
EXCEPT
(SELECT uid FROM
    (SELECT number AS num1, uid FROM membersInKnesset)
    NATURAL JOIN
    (SELECT number AS num2, uid FROM membersInKnesset)
WHERE num1 != num2;)

NATURAL JOIN

(SELECT * FROM members WHERE birthPlace = "Jerusalem")
