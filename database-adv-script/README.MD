# Subqueries in SQL

## Objective
Demonstrate the use of both **correlated** and **non-correlated** subqueries in SQL by solving practical problems in the context of an Airbnb-style booking system.

---

## Tasks

### 1. Non-Correlated Subquery

**Task:**  
Retrieve all properties where the **average rating** is greater than 4.0.

**Query:**
```sql
SELECT 
    p.property_id,
    p.name AS property_name
FROM 
    Property p
WHERE 
    p.property_id IN (
        SELECT 
            r.property_id
        FROM 
            Review r
        GROUP BY 
            r.property_id
        HAVING 
            AVG(r.rating) > 4.0
    );
