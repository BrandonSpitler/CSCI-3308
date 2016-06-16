
SELECT name, statecode FROM states;
SELECT * FROM counties WHERE name like 'Prince%' ORDER BY statecode ASC;
SELECT population_2010 AS populate_2010 FROM states,senators WHERE states.statecode=senators.statecode AND senators.name='Richard Lugar';
SELECT count(counties.statecode) FROM counties INNER JOIN states ON states.statecode=counties.statecode WHERE states.name='Maryland';
SELECT states.name FROM states ORDER BY states.admitted_to_union DESC limit 1;
SELECT senators.name FROM senators LEFT JOIN committees ON committees.chairman = senators.name WHERE committees.chairman is NULL AND senators.affiliation='D' ORDER BY name;

