SELECT reservations.*, properties.*, avg(property_reviews.rating) as average_rating
FROM users
JOIN property_reviews ON property_reviews.guest_id = users.id
JOIN reservations ON property_reviews.reservation_id = reservations.id
JOIN properties ON reservations.property_id = properties.id
WHERE users.id = 1
AND reservations.end_date < now()::date
GROUP BY reservations.id, properties.id
ORDER BY reservations.start_date
LIMIT 10;