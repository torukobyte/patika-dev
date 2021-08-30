/* film tablosunda film uzunluğu length sütununda gösterilmektedir. Uzunluğu ortalama film uzunluğundan fazla kaç tane film vardır? */

SELECT COUNT(*)
FROM film
WHERE length > (
    SELECT AVG(length)
    FROM film
);

/* film tablosunda en yüksek rental_rate değerine sahip kaç tane film vardır? */

SELECT COUNT(*)
FROM film
WHERE rental_rate = (
    SELECT MAX(rental_rate)
    FROM film
);

/* film tablosunda en düşük rental_rate ve en düşük replacement_cost değerlerine sahip filmleri sıralayınız. */

SELECT *
FROM film
WHERE rental_rate = (
    SELECT MIN(rental_rate)
    FROM film
)
  AND replacement_cost = (
    SELECT MIN(replacement_cost)
    FROM film
);

/* payment tablosunda en fazla sayıda alışveriş yapan müşterileri(customer) sıralayınız. */

SELECT customer_id,
       first_name,
       last_name,
       (SELECT COUNT(*) FROM payment WHERE customer_id = customer.customer_id) AS number_of_shops
FROM customer
ORDER BY number_of_shops DESC
LIMIT 5;