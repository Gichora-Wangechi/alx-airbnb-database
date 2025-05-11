# Entity-Relationship

This ERD defines the core schema of the Airbnb clone system. It includes six entities and their relationships.

## Entities
1. **User**
2. **Property**
3. **Booking**
4. **Payment**
5. **Review**
6. **Message**

# Normalization of Airbnb Clone Database

## First Normal Form (1NF)
- All tables have atomic values.
- No repeating groups or arrays.

## Second Normal Form (2NF)
- All non-key attributes fully depend on the primary key.

## Third Normal Form (3NF)
- No transitive dependency exists.
- Each non-key attribute depends only on the primary key.

## Notes
- `User`, `Booking`, `Property`, `Review`, `Payment`, and `Message` are cleanly normalized.
- ENUMs were used for constrained categorical data (`role`, `status`, etc.).

