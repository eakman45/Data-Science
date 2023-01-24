SELECT city,country FROM country
LEFT JOIN city ON country.country_id=city.country_id;

SELECT payment.payment_id,customer.first_name,customer.last_name FROM PAYMENT
RIGHT JOIN CUSTOMER ON customer.customer_id = payment.customer_id;

SELECT rental.rental_id,customer.first_name,customer.last_name FROM rental
FULL JOIN customer ON customer.customer_id = rental.customer_id;