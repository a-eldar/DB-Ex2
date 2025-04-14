-- Mapai = \sigma_(party=Mapai)(members \bowtie membersInKnesset)
-- BenGurion = \pi_(number) \sigma_(name=DBG and party=Mapai) (members \bowtie membersInKnesset)
-- \pi_(name) (Mapai \div BenGurion)
SELECT DISTINCT name
FROM members NATURAL JOIN memberInKnesset R
WHERE party = 'Mapai'
  AND NOT EXISTS (
    (SELECT number FROM (members NATURAL JOIN memberInKnesset)
     WHERE name = 'David Ben-Gurion' AND party = 'Mapai')
    EXCEPT
    (SELECT number FROM (members NATURAL JOIN memberInKnesset)
     WHERE party = 'Mapai' AND uid = R.uid)
)
ORDER BY name;
