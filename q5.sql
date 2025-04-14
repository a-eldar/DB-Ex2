SELECT name
FROM
  (SELECT uid FROM membersInKnesset) AS AllUIDs
EXCEPT
  (SELECT uid
   FROM
     (SELECT number AS num1, uid FROM membersInKnesset) AS K1
     NATURAL JOIN
     (SELECT number AS num2, uid FROM membersInKnesset) AS K2
   WHERE num1 != num2)

NATURAL JOIN
  (SELECT * FROM members WHERE birthPlace = 'Jerusalem');
