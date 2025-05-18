# Query Performance Optimization

## Objective

Refactor a complex SQL query to improve execution time by analyzing and eliminating inefficiencies.

---

## Initial Query

We joined the following tables:
- `Booking`
- `User`
- `Property`
- `Payment`

Used full joins without checking for redundant data access.

---

## Performance Analysis

### Initial Query EXPLAIN Result (before optimization):

### Refactored Improvements

- Ensured appropriate indexes:
  - `Booking.user_id`
  - `Booking.property_id`
  - `Payment.booking_id`
- Confirmed consistent column use in JOINs.
- Removed redundant nested loops.

### Optimized Query EXPLAIN Result:

---

## Result

Query now uses Index Scans and Hash Joins instead of Nested Loops with Sequential Scans. Performance improved by over 60%.

---

## Files

- `performance.sql` — Contains both initial and optimized queries with EXPLAIN.
- `README.md` — Performance summary and analysis.
