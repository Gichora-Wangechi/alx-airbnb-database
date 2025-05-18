EXPLAIN ANALYZE
SELECT b.id, b.start_date, b.end_date, u.username
FROM Booking b
JOIN User u ON b.user_id = u.id
WHERE u.username = 'john_doe';

EXPLAIN ANALYZE
SELECT p.id, p.name, r.rating
FROM Property p
LEFT JOIN Review r ON p.id = r.property_id
WHERE p.city = 'Nairobi';

-- Add index on username
CREATE INDEX idx_user_username ON User(username);

-- Add index on property city
CREATE INDEX idx_property_city ON Property(city);

-- Add index on Review.property_id
CREATE INDEX idx_review_property_id ON Review(property_id);

EXPLAIN ANALYZE
SELECT b.id, b.start_date, b.end_date, u.username
FROM Booking b
JOIN User u ON b.user_id = u.id
WHERE u.username = 'john_doe';

EXPLAIN ANALYZE
SELECT p.id, p.name, r.rating
FROM Property p
LEFT JOIN Review r ON p.id = r.property_id
WHERE p.city = 'Nairobi';
