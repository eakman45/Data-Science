SELECT city,country FROM CITY
INNER JOIN COUNTRY ON country.country_id=city.country_id;

SELECT payment.payment_id,customer.first_name,customer.last_name FROM PAYMENT
INNER JOIN CUSTOMER ON customer.customer_id = payment.customer_id;

SELECT rental.rental_id,customer.first_name,customer.last_name FROM rental
INNER JOIN customer ON customer.customer_id = rental.customer_id;