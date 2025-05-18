-- Create indexes on frequently queried columns

-- 1. Index on Booking.user_id (used in JOINs and WHERE clauses)
CREATE INDEX idx_booking_user_id ON Booking(user_id);

-- 2. Index on Booking.property_id (used in JOINs and WHERE clauses)
CREATE INDEX idx_booking_property_id ON Booking(property_id);

CREATE INDEX idx_booking_user_id ON Booking(user_id);

-- 3. Index on Property.name (useful for search or ORDER BY operations)
CREATE INDEX idx_property_name ON Property(name);

-- 4. Index on User.name (useful if filtering or ordering users by name)
CREATE INDEX idx_user_name ON User(name);

-- 5. Composite Index on Booking (user_id, property_id) for multi-condition JOINs
CREATE INDEX idx_booking_user_property ON Booking(user_id, property_id);

--After index applying
CREATE INDEX idx_booking_user_id ON Booking(user_id);

EXPLAIN ANALYZE
SELECT * FROM Booking WHERE user_id = 2;



