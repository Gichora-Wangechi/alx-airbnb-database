# Sample Data SQL - Airbnb Clone Project

## Overview
This SQL script (`sample_data.sql`) populates the Airbnb Clone database with sample records to simulate real-world usage. It includes insertions for users, properties, bookings, payments, reviews, and messages.

## Objectives
- Populate the database with realistic sample data.
- Allow developers and reviewers to test and visualize the system's functionality.
- Support front-end development and testing with meaningful mock data.

## Entities & Sample Data Included

### 1. **User**
- Sample users with different roles (`guest`, `host`, `admin`)
- Fields: `user_id`, `first_name`, `last_name`, `email`, `password_hash`, `phone_number`, `role`, `created_at`

### 2. **Property**
- Two property listings created by the host
- Fields: `property_id`, `host_id`, `name`, `description`, `location`, `price_per_night`, `created_at`, `updated_at`

### 3. **Booking**
- Bookings made by users for properties
- Fields: `booking_id`, `property_id`, `user_id`, `start_date`, `end_date`, `total_price`, `status`, `created_at`

### 4. **Payment**
- Payments linked to bookings
- Fields: `payment_id`, `booking_id`, `amount`, `payment_date`, `payment_method`

### 5. **Review**
- Reviews left by guests for properties
- Fields: `review_id`, `property_id`, `user_id`, `rating`, `comment`, `created_at`

### 6. **Message**
- Messages between guest and host users
- Fields: `message_id`, `sender_id`, `recipient_id`, `message_body`, `sent_at`

## Usage
1. Ensure the database schema is already created using `schema.sql`.
2. Run the `sample_data.sql` script using your preferred SQL client or command-line interface:
   ```bash
   psql -U your_user -d your_database -f sample_data.sql
