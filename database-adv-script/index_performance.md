# SQL Index Optimization

## Objective
Improve query performance by identifying high-usage columns and applying appropriate indexes.

---

## Indexing Strategy

### Indexed Columns
- `Booking.user_id`: Used in joins and WHERE conditions.
- `Booking.property_id`: Frequently joined with Property.
- `Property.name`: Used in ORDER BY or WHERE search filters.
- `User.name`: Searched and sorted in frontend filters.
- `Booking(user_id, property_id)`: Multi-column joins in advanced reports.

---

## Measuring Performance

We used `EXPLAIN` to compare query plans before and after indexing.

### Example

```sql
-- Before indexing
EXPLAIN SELECT * FROM Booking WHERE user_id = 2;

-- After indexing
EXPLAIN SELECT * FROM Booking WHERE user_id = 2;
