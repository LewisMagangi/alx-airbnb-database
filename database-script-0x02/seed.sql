-- AirBnB Clone Database - Sample Data Seeding Script
-- PostgreSQL DML Script

-- ===============================================
-- SEED USERS
-- ===============================================
INSERT INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role, created_at) VALUES
-- Hosts
('550e8400-e29b-41d4-a716-446655440001', 'Alice', 'Johnson', 'alice.johnson@email.com', '$2b$12$LQv3c1yqBWVHxkd0LHAkCOYz6TtxMQJqhN8/LewdBPj4S5WkkK6oi', '+1-555-0101', 'host', '2024-01-15 10:30:00'),
('550e8400-e29b-41d4-a716-446655440002', 'David', 'Smith', 'david.smith@email.com', '$2b$12$LQv3c1yqBWVHxkd0LHAkCOYz6TtxMQJqhN8/LewdBPj4S5WkkK6oi', '+1-555-0102', 'host', '2024-01-20 14:15:00'),
('550e8400-e29b-41d4-a716-446655440003', 'Emily', 'Davis', 'emily.davis@email.com', '$2b$12$LQv3c1yqBWVHxkd0LHAkCOYz6TtxMQJqhN8/LewdBPj4S5WkkK6oi', '+1-555-0103', 'host', '2024-02-01 09:45:00'),
('550e8400-e29b-41d4-a716-446655440004', 'Michael', 'Brown', 'michael.brown@email.com', '$2b$12$LQv3c1yqBWVHxkd0LHAkCOYz6TtxMQJqhN8/LewdBPj4S5WkkK6oi', '+1-555-0104', 'host', '2024-02-10 16:20:00'),

-- Guests
('550e8400-e29b-41d4-a716-446655440005', 'Sarah', 'Wilson', 'sarah.wilson@email.com', '$2b$12$LQv3c1yqBWVHxkd0LHAkCOYz6TtxMQJqhN8/LewdBPj4S5WkkK6oi', '+1-555-0105', 'guest', '2024-02-15 11:00:00'),
('550e8400-e29b-41d4-a716-446655440006', 'James', 'Miller', 'james.miller@email.com', '$2b$12$LQv3c1yqBWVHxkd0LHAkCOYz6TtxMQJqhN8/LewdBPj4S5WkkK6oi', '+1-555-0106', 'guest', '2024-02-20 13:30:00'),
('550e8400-e29b-41d4-a716-446655440007', 'Jessica', 'Garcia', 'jessica.garcia@email.com', '$2b$12$LQv3c1yqBWVHxkd0LHAkCOYz6TtxMQJqhN8/LewdBPj4S5WkkK6oi', '+1-555-0107', 'guest', '2024-03-01 08:15:00'),
('550e8400-e29b-41d4-a716-446655440008', 'Robert', 'Martinez', 'robert.martinez@email.com', '$2b$12$LQv3c1yqBWVHxkd0LHAkCOYz6TtxMQJqhN8/LewdBPj4S5WkkK6oi', '+1-555-0108', 'guest', '2024-03-05 12:45:00'),
('550e8400-e29b-41d4-a716-446655440009', 'Linda', 'Anderson', 'linda.anderson@email.com', '$2b$12$LQv3c1yqBWVHxkd0LHAkCOYz6TtxMQJqhN8/LewdBPj4S5WkkK6oi', '+1-555-0109', 'guest', '2024-03-10 15:20:00'),

-- Admins
('550e8400-e29b-41d4-a716-446655440010', 'Admin', 'User', 'admin@airbnb.com', '$2b$12$LQv3c1yqBWVHxkd0LHAkCOYz6TtxMQJqhN8/LewdBPj4S5WkkK6oi', '+1-555-0000', 'admin', '2024-01-01 00:00:00');

-- ===============================================
-- SEED PROPERTIES
-- ===============================================
INSERT INTO Property (property_id, host_id, name, description, location, pricepernight, created_at, updated_at) VALUES
-- Alice's properties
('650e8400-e29b-41d4-a716-446655440001', '550e8400-e29b-41d4-a716-446655440001', 'Cozy Downtown Apartment', 'Modern 2-bedroom apartment in the heart of downtown. Walking distance to restaurants, shops, and public transportation. Perfect for business travelers and tourists.', 'New York, NY', 150.00, '2024-01-16 10:00:00', '2024-01-16 10:00:00'),
('650e8400-e29b-41d4-a716-446655440002', '550e8400-e29b-41d4-a716-446655440001', 'Luxury Penthouse Suite', 'Stunning penthouse with panoramic city views, premium amenities, and rooftop access. Ideal for special occasions and luxury stays.', 'New York, NY', 450.00, '2024-01-18 14:30:00', '2024-01-18 14:30:00'),

-- David's properties
('650e8400-e29b-41d4-a716-446655440003', '550e8400-e29b-41d4-a716-446655440002', 'Beachfront Villa', 'Spectacular oceanfront villa with private beach access, 4 bedrooms, and outdoor entertainment area. Perfect for family vacations.', 'Miami, FL', 300.00, '2024-01-21 09:15:00', '2024-01-21 09:15:00'),
('650e8400-e29b-41d4-a716-446655440004', '550e8400-e29b-41d4-a716-446655440002', 'Modern Studio Loft', 'Stylish studio loft in trendy arts district. Features high ceilings, exposed brick, and modern amenities.', 'Miami, FL', 95.00, '2024-01-25 16:45:00', '2024-01-25 16:45:00'),

-- Emily's properties
('650e8400-e29b-41d4-a716-446655440005', '550e8400-e29b-41d4-a716-446655440003', 'Mountain Cabin Retreat', 'Rustic cabin nestled in the mountains with fireplace, hot tub, and hiking trails nearby. Perfect for nature lovers.', 'Aspen, CO', 220.00, '2024-02-02 11:20:00', '2024-02-02 11:20:00'),
('650e8400-e29b-41d4-a716-446655440006', '550e8400-e29b-41d4-a716-446655440003', 'Historic Brownstone', 'Charming historic brownstone with original architecture, modern updates, and garden access.', 'Boston, MA', 180.00, '2024-02-05 13:40:00', '2024-02-05 13:40:00'),

-- Michael's properties
('650e8400-e29b-41d4-a716-446655440007', '550e8400-e29b-41d4-a716-446655440004', 'Desert Oasis', 'Unique desert property with pool, spa, and stunning sunset views. Modern architecture meets natural beauty.', 'Phoenix, AZ', 275.00, '2024-02-12 10:30:00', '2024-02-12 10:30:00'),
('650e8400-e29b-41d4-a716-446655440008', '550e8400-e29b-41d4-a716-446655440004', 'Urban Garden House', 'Eco-friendly house with rooftop garden, solar panels, and sustainable features in vibrant neighborhood.', 'Portland, OR', 165.00, '2024-02-15 14:15:00', '2024-02-15 14:15:00');

-- ===============================================
-- SEED BOOKINGS
-- ===============================================
INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status, created_at) VALUES
-- Confirmed bookings
('750e8400-e29b-41d4-a716-446655440001', '650e8400-e29b-41d4-a716-446655440001', '550e8400-e29b-41d4-a716-446655440005', '2024-03-15', '2024-03-18', 450.00, 'confirmed', '2024-03-01 09:30:00'),
('750e8400-e29b-41d4-a716-446655440002', '650e8400-e29b-41d4-a716-446655440003', '550e8400-e29b-41d4-a716-446655440006', '2024-03-20', '2024-03-25', 1500.00, 'confirmed', '2024-03-02 14:15:00'),
('750e8400-e29b-41d4-a716-446655440003', '650e8400-e29b-41d4-a716-446655440005', '550e8400-e29b-41d4-a716-446655440007', '2024-03-22', '2024-03-24', 440.00, 'confirmed', '2024-03-03 10:45:00'),
('750e8400-e29b-41d4-a716-446655440004', '650e8400-e29b-41d4-a716-446655440007', '550e8400-e29b-41d4-a716-446655440008', '2024-03-25', '2024-03-28', 825.00, 'confirmed', '2024-03-04 16:20:00'),
('750e8400-e29b-41d4-a716-446655440005', '650e8400-e29b-41d4-a716-446655440004', '550e8400-e29b-41d4-a716-446655440009', '2024-03-30', '2024-04-02', 285.00, 'confirmed', '2024-03-05 11:30:00'),

-- Pending bookings
('750e8400-e29b-41d4-a716-446655440006', '650e8400-e29b-41d4-a716-446655440002', '550e8400-e29b-41d4-a716-446655440005', '2024-04-10', '2024-04-12', 900.00, 'pending', '2024-03-25 13:15:00'),
('750e8400-e29b-41d4-a716-446655440007', '650e8400-e29b-41d4-a716-446655440006', '550e8400-e29b-41d4-a716-446655440006', '2024-04-15', '2024-04-17', 360.00, 'pending', '2024-03-26 15:45:00'),

-- Canceled booking
('750e8400-e29b-41d4-a716-446655440008', '650e8400-e29b-41d4-a716-446655440008', '550e8400-e29b-41d4-a716-446655440007', '2024-04-05', '2024-04-08', 495.00, 'canceled', '2024-03-20 12:00:00');

-- ===============================================
-- SEED PAYMENTS
-- ===============================================
INSERT INTO Payment (payment_id, booking_id, amount, payment_date, payment_method) VALUES
-- Payments for confirmed bookings
('850e8400-e29b-41d4-a716-446655440001', '750e8400-e29b-41d4-a716-446655440001', 450.00, '2024-03-01 09:35:00', 'credit_card'),
('850e8400-e29b-41d4-a716-446655440002', '750e8400-e29b-41d4-a716-446655440002', 1500.00, '2024-03-02 14:20:00', 'paypal'),
('850e8400-e29b-41d4-a716-446655440003', '750e8400-e29b-41d4-a716-446655440003', 440.00, '2024-03-03 10:50:00', 'stripe'),
('850e8400-e29b-41d4-a716-446655440004', '750e8400-e29b-41d4-a716-446655440004', 825.00, '2024-03-04 16:25:00', 'credit_card'),
('850e8400-e29b-41d4-a716-446655440005', '750e8400-e29b-41d4-a716-446655440005', 285.00, '2024-03-05 11:35:00', 'paypal');

-- ===============================================
-- SEED REVIEWS
-- ===============================================
INSERT INTO Review (review_id, property_id, user_id, rating, comment, created_at) VALUES
-- Reviews for completed stays
('950e8400-e29b-41d4-a716-446655440001', '650e8400-e29b-41d4-a716-446655440001', '550e8400-e29b-41d4-a716-446655440005', 5, 'Amazing apartment! Perfect location, spotlessly clean, and Alice was an incredible host. The downtown location made it easy to explore the city. Highly recommended!', '2024-03-19 10:15:00'),

('950e8400-e29b-41d4-a716-446655440002', '650e8400-e29b-41d4-a716-446655440003', '550e8400-e29b-41d4-a716-446655440006', 4, 'Beautiful beachfront villa with stunning ocean views. The private beach access was amazing. Only minor issue was wifi connectivity, but overall fantastic experience.', '2024-03-26 14:30:00'),

('950e8400-e29b-41d4-a716-446655440003', '650e8400-e29b-41d4-a716-446655440005', '550e8400-e29b-41d4-a716-446655440007', 5, 'Perfect mountain getaway! The cabin was cozy, well-equipped, and the hot tub was incredible after hiking. Emily provided excellent local recommendations.', '2024-03-25 16:45:00'),

('950e8400-e29b-41d4-a716-446655440004', '650e8400-e29b-41d4-a716-446655440007', '550e8400-e29b-41d4-a716-446655440008', 4, 'Unique desert property with breathtaking sunsets. The pool area was perfect for relaxation. Property was exactly as described. Great communication from Michael.', '2024-03-29 11:20:00'),

('950e8400-e29b-41d4-a716-446655440005', '650e8400-e29b-41d4-a716-446655440001', '550e8400-e29b-41d4-a716-446655440006', 5, 'Excellent stay in downtown! Apartment exceeded expectations. Great amenities, comfortable beds, and Alice was very responsive. Will definitely book again.', '2024-02-15 09:30:00'),

('950e8400-e29b-41d4-a716-446655440006', '650e8400-e29b-41d4-a716-446655440004', '550e8400-e29b-41d4-a716-446655440009', 3, 'Nice studio with good location, but could use some updates. The exposed brick was charming, but the space felt smaller than expected. David was helpful though.', '2024-04-03 13:15:00');

-- ===============================================
-- SEED MESSAGES
-- ===============================================
INSERT INTO Message (message_id, sender_id, recipient_id, message_body, sent_at) VALUES
-- Booking inquiries and communications
('a50e8400-e29b-41d4-a716-446655440001', '550e8400-e29b-41d4-a716-446655440005', '550e8400-e29b-41d4-a716-446655440001', 'Hi Alice! I am interested in booking your downtown apartment for March 15-18. Is it available?', '2024-02-28 15:30:00'),

('a50e8400-e29b-41d4-a716-446655440002', '550e8400-e29b-41d4-a716-446655440001', '550e8400-e29b-41d4-a716-446655440005', 'Hi Sarah! Yes, the apartment is available for those dates. It would be perfect for your stay. The total would be $450 for 3 nights. Would you like to proceed with the booking?', '2024-02-28 16:15:00'),

('a50e8400-e29b-41d4-a716-446655440003', '550e8400-e29b-41d4-a716-446655440005', '550e8400-e29b-41d4-a716-446655440001', 'Perfect! Yes, I would like to book it. Also, could you recommend some good restaurants nearby?', '2024-02-28 16:45:00'),

('a50e8400-e29b-41d4-a716-446655440004', '550e8400-e29b-41d4-a716-446655440006', '550e8400-e29b-41d4-a716-446655440002', 'Hello David, I saw your beachfront villa and it looks amazing! Is it available for March 20-25? Planning a family vacation.', '2024-03-01 10:20:00'),

('a50e8400-e29b-41d4-a716-446655440005', '550e8400-e29b-41d4-a716-446655440002', '550e8400-e29b-41d4-a716-446655440006', 'Hi James! The villa is available and would be perfect for your family. It sleeps up to 8 people comfortably. The private beach is great for kids!', '2024-03-01 11:45:00'),

('a50e8400-e29b-41d4-a716-446655440006', '550e8400-e29b-41d4-a716-446655440007', '550e8400-e29b-41d4-a716-446655440003', 'Hi Emily! Your mountain cabin looks perfect for a romantic getaway. Do you have hiking trail maps available?', '2024-03-02 14:30:00'),

('a50e8400-e29b-41d4-a716-446655440007', '550e8400-e29b-41d4-a716-446655440003', '550e8400-e29b-41d4-a716-446655440007', 'Hi Jessica! Yes, I have detailed trail maps and can recommend the best routes based on your experience level. The cabin is perfect for couples!', '2024-03-02 15:15:00'),

('a50e8400-e29b-41d4-a716-446655440008', '550e8400-e29b-41d4-a716-446655440008', '550e8400-e29b-41d4-a716-446655440004', 'Hi Michael, I need to cancel my booking for April 5-8 due to a family emergency. Is that possible?', '2024-03-18 09:30:00'),

('a50e8400-e29b-41d4-a716-446655440009', '550e8400-e29b-41d4-a716-446655440004', '550e8400-e29b-41d4-a716-446655440008', 'Hi Robert, no problem at all! I understand emergencies happen. I will cancel your booking and process the refund. Hope everything is okay.', '2024-03-18 10:15:00'),

('a50e8400-e29b-41d4-a716-446655440010', '550e8400-e29b-41d4-a716-446655440005', '550e8400-e29b-41d4-a716-446655440001', 'Thank you for the wonderful stay! Your recommendations for restaurants were spot on. Left a 5-star review!', '2024-03-19 11:00:00');

-- ===============================================
-- VERIFICATION QUERIES
-- ===============================================
-- View summary of seeded data
-- Uncomment the following queries to verify the data has been inserted correctly

/*
SELECT 'Users' as table_name, COUNT(*) as record_count FROM User
UNION ALL
SELECT 'Properties', COUNT(*) FROM Property
UNION ALL
SELECT 'Bookings', COUNT(*) FROM Booking
UNION ALL
SELECT 'Payments', COUNT(*) FROM Payment
UNION ALL
SELECT 'Reviews', COUNT(*) FROM Review
UNION ALL
SELECT 'Messages', COUNT(*) FROM Message;
*/
