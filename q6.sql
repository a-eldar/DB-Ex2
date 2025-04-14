-- Mapai = \sigma_(party=Mapai)(members \bowtie membersInKnesset)
-- BenGurion = \pi_(number) \sigma_(name=DBG and party=Mapai) (members \bowtie membersInKnesset)
-- \pi_(name) (Mapai \div BenGurion)
SELECT DISTINCT name
FROM members NATURAL JOIN memberInKnesset
WHERE NOT EXISTS (
    (SELECT number FROM (members NATURAL JOIN memberInKnesset) M
    WHERE party = 'Mapai')
    EXCEPT
    (SELECT number FROM (members NATURAL JOIN memberInKnesset) DBG
    WHERE name = 'David Ben-Gurion' AND party = 'Mapai' AND M.number = DBG.number)
)
ORDER BY name;
