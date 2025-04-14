SELECT name FROM

(SELECT uid FROM membersInKnesset) All
EXCEPT
(SELECT uid FROM
    (SELECT number AS num1, uid FROM membersInKnesset) K1
    NATURAL JOIN
    (SELECT number AS num2, uid FROM membersInKnesset) K2
WHERE num1 != num2;)

NATURAL JOIN

(SELECT * FROM members WHERE birthPlace = "Jerusalem")
