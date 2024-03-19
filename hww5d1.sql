--q1
SELECT * 
FROM actor
WHERE last_name = 'Wahlberg';
--2

--q2
SELECT count(*) 
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;
--5,607

--q3
SELECT film_id, count(*) 
FROM inventory
GROUP BY film_id
HAVING count(*) = 7;

--q4
SELECT first_name
FROM customer
WHERE first_name = 'Willie';
--2

--q5
SELECT staff_id, count(*) AS num_rentals
FROM rental
GROUP BY staff_id
ORDER BY num_rentals DESC;
--staff1 with 8,040

--q6
SELECT count(DISTINCT district)
FROM address;
--378

--q7
SELECT film_id, count(*) 
FROM film_actor
GROUP BY film_id
ORDER BY count(*) DESC;
--film 508

--q8
SELECT count(*) 
FROM customer
WHERE store_id = 1 AND last_name LIKE '%es';
--13

--q9
SELECT amount, count(*)
FROM payment
WHERE customer_id BETWEEN 380 AND 430
GROUP BY amount 
HAVING count(*) > 250;
--(2.99, 4.99, 0.99)

--q10
SELECT rating, count(*)
FROM film
GROUP BY rating 
ORDER BY count(*) DESC;
--5 and pg-13

