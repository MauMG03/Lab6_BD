--Ejercicio 1.


--Ejercicio 2.


--Ejercicio 3.
SELECT CONCAT("b_lname", ' ', "b_fname") AS "Full_Name" FROM
  (builder INNER JOIN hireinfo ON builder.bid = hireinfo.bid) 
ORDER BY "Full_Name";

--Ejercicio 4.


--Ejercicio 5.


--Ejercicio 6.
SELECT CONCAT("b_lname", ' ', "b_fname") AS "Full_name" FROM 
  (builder INNER JOIN house ON builder.bid = house.bid)
WHERE (h_name = 'Nova' OR h_name = 'El cañaduzal');



--Ejercicio 7.


--Ejercicio 8.
SELECT (n_name,city) FROM 
  (SELECT * FROM(house INNER JOIN neighborhood ON house.nid = neighborhood.nid) WHERE (h_name = 'Las consultas')) AS "datos_completos";
