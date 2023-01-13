--Ejercicio 1.


--Ejercicio 2.


--Ejercicio 3.
SELECT CONCAT("b_lname", ' ', "b_fname") AS "Full_Name" FROM 
  (SELECT * FROM (builder INNER JOIN hireinfo ON builder.bid = hireinfo.bid)) AS "datos_completos"
ORDER BY "Full_Name";

--Ejercicio 4.


--Ejercicio 5.


--Ejercicio 6.


--Ejercicio 7.


--Ejercicio 8.
