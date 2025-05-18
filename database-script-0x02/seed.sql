-- Sample Data Insertion Script -- File: sample_data.sql

-- Insert Users 
INSERT INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role) VALUES 
('uuid-user-1', 'Alice', 'Wangari', 'alice@example.com', 'hashed_pwd_1', '0712345678', 'guest'), 
('uuid-user-2', 'Brian', 'Otieno', 'brian@example.com', 'hashed_pwd_2', '0723456789', 'host'), 
('uuid-user-3', 'Cynthia', 'Kiptoo', 'cynthia@example.com', 'hashed_pwd_3', NULL, 'guest'), 
('uuid-user-4', 'David', 'Mwangi', 'david@example.com', 'hashed_pwd_4', '0734567890', 'admin');

-- Insert Properties 
INSERT INTO Property (property_id, host_id, name, description, location, price_per_night) VALUES 
  ('uuid-prop-1', 'uuid-user-2', 'Cozy Cottage', 'A peaceful place in the hills.', 'Naivasha', 5000.00), 
  ('uuid-prop-2', 'uuid-user-2', 'Urban Loft', 'Modern loft in the city center.', 'Nairobi', 7500.00);

-- Insert Bookings 
INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status) VALUES 
  ('uuid-book-1', 'uuid-prop-1', 'uuid-user-1', '2025-06-01', '2025-06-03', 10000.00, 'confirmed'), 
  ('uuid-book-2', 'uuid-prop-2', 'uuid-user-3', '2025-07-10', '2025-07-12', 15000.00, 'pending');

-- Insert Payments 
INSERT INTO Payment (payment_id, booking_id, amount, payment_method) VALUES 
  ('uuid-pay-1', 'uuid-book-1', 10000.00, 'credit_card');

-- Insert Reviews 
INSERT INTO Review (review_id, property_id, user_id, rating, comment) VALUES 
  ('uuid-rev-1', 'uuid-prop-1', 'uuid-user-1', 5, 'Absolutely lovely stay!'), 
  ('uuid-rev-2', 'uuid-prop-2', 'uuid-user-3', 4, 'Great place but had minor issues.');

-- Insert Messages 
INSERT INTO Message (message_id, sender_id, recipient_id, message_body) VALUES 
  ('uuid-msg-1', 'uuid-user-1', 'uuid-user-2', 'Hi! Is the cottage available next weekend?'), 
  ('uuid-msg-2', 'uuid-user-2', 'uuid-user-1', 'Yes, it is. Would you like to book?');

