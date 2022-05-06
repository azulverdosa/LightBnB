-- Select the number of users that own a property ("x users currently renting their homes")

SELECT COUNT(DISTINCT properties.owner_id) as users_currently_offering_a_rental
FROM properties
WHERE active = true;

