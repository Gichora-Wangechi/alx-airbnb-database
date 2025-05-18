-- Step 1: Rename existing Booking table
ALTER TABLE Booking RENAME TO Booking_old;

-- Step 2: Create new partitioned Booking table
CREATE TABLE Booking (
    id SERIAL PRIMARY KEY,
    user_id INT REFERENCES User(id),
    property_id INT REFERENCES Property(id),
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    CONSTRAINT valid_date_range CHECK (end_date > start_date)
) PARTITION BY RANGE (start_date);

-- Step 3: Create partitions
CREATE TABLE Booking_2023 PARTITION OF Booking
    FOR VALUES FROM ('2023-01-01') TO ('2024-01-01');

CREATE TABLE Booking_2024 PARTITION OF Booking
    FOR VALUES FROM ('2024-01-01') TO ('2025-01-01');

CREATE TABLE Booking_2025 PARTITION OF Booking
    FOR VALUES FROM ('2025-01-01') TO ('2026-01-01');

-- Step 4: Move data from old table to new partitioned table
INSERT INTO Booking (id, user_id, property_id, start_date, end_date)
SELECT id, user_id, property_id, start_date, end_date FROM Booking_old;

-- Step 5: Drop old table (optional)
-- DROP TABLE Booking_old;

-- Query to test performance on partitioned table
EXPLAIN ANALYZE
SELECT * FROM Booking
WHERE start_date BETWEEN '2024-05-01' AND '2024-05-31';

