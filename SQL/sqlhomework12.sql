/*
1.film tablosunda film uzunluğu length sütununda gösterilmektedir. Uzunluğu ortalama film uzunluğundan fazla kaç tane film vardır?
2.film tablosunda en yüksek rental_rate değerine sahip kaç tane film vardır?
3.film tablosunda en düşük rental_rate ve en düşün replacement_cost değerlerine sahip filmleri sıralayınız.
4.payment tablosunda en fazla sayıda alışveriş yapan müşterileri(customer) sıralayınız.
*/

--1.1 To see all films which have longer screentime than the average of film list
SELECT title,length,(SELECT avg(length) AS avg_length FROM film) FROM film
WHERE length > (
SELECT avg(length) FROM film
);

--1.2 To see the total count of films which have longer screentime than the average of film list
SELECT COUNT(film_id) FROM film
WHERE length > (
SELECT avg(length) FROM film
);

--2.
SELECT COUNT(film_id) FROM film
WHERE rental_rate =
(SELECT MAX(rental_rate) FROM film);

--3.
SELECT * FROM film
WHERE rental_rate=
(SELECT MIN(rental_rate) FROM film)
AND 
replacement_cost =
(SELECT MIN(replacement_cost) FROM film);

--4
SELECT customer.first_name, customer.last_name, payment.customer_id, COUNT(payment.customer_id)
FROM payment, customer
WHERE customer.customer_id = payment.customer_id
GROUP BY customer.first_name, customer.last_name, payment.customer_id
ORDER BY COUNT(payment.customer_id) DESC;
