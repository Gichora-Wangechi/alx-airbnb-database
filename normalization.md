# Database Normalization

## Objective
This document outlines how the database schema adheres to **Third Normal Form (3NF)** by minimizing redundancy and ensuring data integrity.

---

## First Normal Form (1NF)
**Requirements**:
- Each table has a primary key.
- All attributes contain only atomic (indivisible) values.
- No repeating groups or arrays.

**Compliance**:
- All tables use UUIDs as primary keys.
- Attributes like `email`, `price_per_night`, `rating`, etc., are scalar values.
- No multi-valued fields or nested data structures are used.

---

## Second Normal Form (2NF)
**Requirements**:
- Meets all 1NF rules.
- All non-key attributes are fully functionally dependent on the entire primary key.

**Compliance**:
- No composite primary keys are used; each table has a single-column UUID as the primary key.
- All non-key fields depend entirely on the table's primary key.
  - For example: in the `bookings` table, `start_date`, `end_date`, and `status` all depend only on `booking_id`.

---

## Third Normal Form (3NF)
**Requirements**:
- Meets all 2NF rules.
- No transitive dependencies (i.e., non-key attributes do not depend on other non-key attributes).

**Compliance**:
- There are no transitive dependencies.
  - `User` info (like email and role) is stored in `users`.
  - `property_id` is linked to `host_id` via foreign key, but `host` data remains in the `users` table, avoiding duplication.
  - `payments` only reference the `booking_id` to derive payment details — no duplication of property, user, or guest info.

---

## Summary of Normalization Choices
- **User-role separation** is handled via `ENUM`.
- **Redundancy** is minimized by linking data through foreign keys rather than copying data between tables.
- **Reviews, messages, and payments** each have their own dedicated tables and link back to core entities (`users`, `properties`, `bookings`).

The schema has been validated to meet the principles of **3NF**, promoting data consistency, reducing redundancy, and optimizing query performance.
