
-- Airline Booking & Revenue Analytics
-- Cabin-level ticket fare analysis
-- Dataset: Synthetic airline data

SELECT
    c.name AS cabin_class,
    COUNT(tf.id) AS ticket_flight_records,
    ROUND(AVG(tf.fare), 2) AS average_segment_fare,
    ROUND(MIN(tf.fare), 2) AS minimum_segment_fare,
    ROUND(MAX(tf.fare), 2) AS maximum_segment_fare
FROM ticket_flights tf
JOIN cabins c
    ON tf.cabin_id = c.id
GROUP BY c.name
ORDER BY ticket_flight_records DESC;
