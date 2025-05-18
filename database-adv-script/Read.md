# SQL Joins – Airbnb Clone Database

This document contains SQL queries demonstrating different types of JOINs using the Airbnb Clone database schema. The goal is to showcase how to retrieve meaningful data from multiple tables by leveraging SQL join operations.

---

## 1. INNER JOIN – Bookings and Users

**Objective:** Retrieve all bookings and the respective users who made those bookings.

```sql
SELECT 
    b.booking_id,
    b.property_id,
    b.start_date,
    b.end_date,
    b.total_price,
    b.status,
    u.user_id,
    u.first_name,
    u.last_name,
    u.email
FROM 
    Booking b
INNER JOIN 
    User u ON b.user_id = u.user_id;
