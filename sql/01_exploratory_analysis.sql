
-- Airline Booking & Revenue Analytics
-- Exploratory SQL analysis
-- Dataset: Synthetic airline data

-- 1. Count records in the main tables
SELECT 'bookings' AS table_name, COUNT(*) AS row_count
FROM bookings
UNION ALL
SELECT 'tickets', COUNT(*) FROM tickets
UNION ALL
SELECT 'ticket_flights', COUNT(*) FROM ticket_flights
UNION ALL
SELECT 'flights', COUNT(*) FROM flights
UNION ALL
SELECT 'flight_instances', COUNT(*) FROM flight_instances
UNION ALL
SELECT 'payments', COUNT(*) FROM payments
UNION ALL
SELECT 'refunds', COUNT(*) FROM refunds
ORDER BY table_name;


-- 2. Examine booking and payment statuses
SELECT
    'Booking status' AS category,
    status AS category_value,
    COUNT(*) AS record_count
FROM bookings
GROUP BY status

UNION ALL

SELECT
    'Payment status',
    transaction_status,
    COUNT(*)
FROM payments
GROUP BY transaction_status

ORDER BY category, record_count DESC;


-- 3. Payment method distribution
SELECT
    payment_method,
    COUNT(*) AS payment_records,
    ROUND(SUM(amount), 2) AS total_amount
FROM payments
GROUP BY payment_method
ORDER BY total_amount DESC;


-- 4. Financial KPIs
SELECT
    (SELECT COUNT(*) FROM bookings) AS total_bookings,
    (SELECT COUNT(*) FROM tickets) AS total_tickets,
    (SELECT ROUND(SUM(amount), 2)
     FROM payments
     WHERE transaction_status = 'succeeded')
        AS gross_successful_payments,
    (SELECT COUNT(*) FROM refunds) AS refund_records,
    (SELECT ROUND(SUM(r.amount), 2)
     FROM refunds r
     JOIN payments p ON r.payment_id = p.id
     WHERE p.transaction_status = 'succeeded')
        AS recorded_refund_amount;


-- 5. Monthly booking trends
SELECT
    strftime('%Y-%m', booking_date) AS booking_month,
    COUNT(*) AS total_bookings
FROM bookings
GROUP BY strftime('%Y-%m', booking_date)
ORDER BY booking_month;


-- 6. Monthly successful payment trends
SELECT
    strftime('%Y-%m', payment_date) AS payment_month,
    COUNT(*) AS payment_records,
    ROUND(SUM(amount), 2) AS total_payment_amount
FROM payments
WHERE transaction_status = 'succeeded'
GROUP BY strftime('%Y-%m', payment_date)
ORDER BY payment_month;


-- 7. Check recent payment date coverage
SELECT
    strftime('%Y-%m', payment_date) AS payment_month,
    MIN(date(payment_date)) AS first_payment_date,
    MAX(date(payment_date)) AS last_payment_date,
    COUNT(*) AS payment_records,
    ROUND(SUM(amount), 2) AS total_amount
FROM payments
GROUP BY strftime('%Y-%m', payment_date)
ORDER BY payment_month DESC
LIMIT 6;
