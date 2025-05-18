# Table Partitioning: Performance Optimization Report

## Objective
To optimize query performance on the large `Booking` table by partitioning it based on the `start_date` column.

## Implementation
- Used `RANGE` partitioning to split the table by year.
- Created three partitions: `Booking_2023`, `Booking_2024`, and `Booking_2025`.
- Migrated all existing data into the partitioned structure.

## Performance Test
Executed a query to fetch bookings within May 2024:

```sql
EXPLAIN ANALYZE
SELECT * FROM Booking
WHERE start_date BETWEEN '2024-05-01' AND '2024-05-31';
