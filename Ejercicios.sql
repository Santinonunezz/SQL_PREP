/*Ejercicio 1:*/
SELECT DISTINCT city FROM crime_scene_report ORDER BY city ASC;
/*Ejercicio 2:*/
SELECT car_make, car_model, plate_number, age, gender FROM drivers_license WHERE age > "70" AND gender = "male"
/*Ejercicio 3:*/
SELECT p.name FROM person p LEFT JOIN drivers_license dl ON p.license_id = dl.id
/*Ejercicio 1:*/
SELECT address_street_name, name FROM person ORDER BY address_street_name, address_number DESC 
/*Ejercicio 4:*/
SELECT MIN(age) AS mini_age, AVG(age) AS aveg_age, MAX(age) AS maxi_age, gender FROM person LEFT JOIN drivers_license ON license_id = drivers_license.id 
WHERE gender = "female"
/*Ejercicio 5:*/
SELECT membership_status, count(person_id) AS cant_personas FROM get_fit_now_member 
GROUP BY membership_status ORDER BY cant_personas DESC;
/*Ejercicio 6:*/
SELECT check_in_date, count(check_in_date) AS dias_asistidos, membership_id, membership_status, gn.name, p.ssn
FROM get_fit_now_check_in gi
JOIN get_fit_now_member gn ON gi.membership_id = gn.id
JOIN person p ON gn.person_id = p.id
WHERE check_in_date LIKE "2018%"
GROUP BY check_in_date, membership_status
HAVING dias_asistidos >= 1
ORDER BY dias_asistidos, membership_status ASC;
/*Ejercicio 7:*/
