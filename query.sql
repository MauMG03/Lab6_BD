--Ejercicio 1.
select concat(s_Fname, ' ', s_lname) as "Nombre completo"
from subcontractor
where salary > 3000000
group by s_fname, s_lname 
limit 5;

--Ejercicio 2.
select s_lname, s_Fname 
from subcontractor natural join hireinfo natural join builder
where extract(year from hiredate)::int = 2019;

--Ejercicio 3.
SELECT CONCAT("b_lname", ' ', "b_fname") AS "Full_Name" FROM
  (builder INNER JOIN hireinfo ON builder.bid = hireinfo.bid) 
ORDER BY "Full_Name";

--Ejercicio 4.
select b_lname, s_lname, salary
from subcontractor natural join hireinfo natural join builder
limit 11;

--Ejercicio 5.
SELECT (b_lname, h_name) FROM 
  (builder LEFT OUTER JOIN house ON builder.bid = house.bid) 
WHERE (finishdate > CURRENT_DATE OR h_name IS NULL) 
ORDER BY b_lname;

--Ejercicio 6.
SELECT CONCAT("b_lname", ' ', "b_fname") AS "Full_name" FROM 
  (builder INNER JOIN house ON builder.bid = house.bid)
WHERE (h_name = 'Nova' OR h_name = 'El cañaduzal');

--Ejercicio 7.
SELECT (h_name) FROM 
  (builder INNER JOIN house ON builder.bid = house.bid) 
WHERE (b_lname LIKE 'P%');

--Ejercicio 8.
SELECT (n_name,city) FROM 
  (house INNER JOIN neighborhood ON house.nid = neighborhood.nid) 
WHERE (h_name = 'Las consultas');

