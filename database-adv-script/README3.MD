# Aggregation and Window Functions in SQL

## Objective
Leverage SQL aggregation and window functions to derive meaningful analytics from the Airbnb clone database.

---

## Tasks

### 1. Aggregation with COUNT and GROUP BY

**Task:**  
Find the total number of bookings made by each user.

**Query:**
```sql
SELECT 
    u.user_id,
    u.name AS user_name,
    COUNT(b.booking_id) AS total_bookings
FROM 
    User u
LEFT JOIN 
    Booking b ON u.user_id = b.user_id
GROUP BY 
    u.user_id, u.name;
