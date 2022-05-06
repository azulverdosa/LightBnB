-- Show all reservations for a user.
-- Select the reservation id, property title, reservation start_date, property cost_per_night and the average rating of the property. 
-- You'll need data from both the reservations and properties tables.
-- The reservations will be for a single user, so just use 1 for the user_id.
-- Order the results from the earliest start_date to the most recent start_date.
-- Limit the results to 10.
-- You can use the user with the email address tristanjacobs@gmail.com to compare to our results

SELECT reservations.id as reso_id, properties.title, reservations.start_date, properties.cost_per_night, AVG(property_reviews.rating) as avg_rating
FROM reservations
JOIN properties ON properties.id = reservations.property_id
JOIN property_reviews ON properties.id = property_reviews.property_id
WHERE reservations.guest_id = 1
GROUP BY reservations.id, properties.title, reservations.start_date, properties.cost_per_night
ORDER BY reservations.start_date ASC
LIMIT 10;

