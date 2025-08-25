# Task 0: Entity-Relationship Diagram

## Objective
Create an Entity-Relationship (ER) diagram based on the database specification.

## Entities Identified
- **User**: user_id, first_name, last_name, email, password_hash, phone_number, role, created_at
- **Property**: property_id, host_id, name, description, location, pricepernight, created_at, updated_at
- **Booking**: booking_id, property_id, user_id, start_date, end_date, total_price, status, created_at
- **Payment**: payment_id, booking_id, amount, payment_date, payment_method
- **Review**: review_id, property_id, user_id, rating, comment, created_at
- **Message**: message_id, sender_id, recipient_id, message_body, sent_at

## Relationships
- User (1) → Properties (M) - Host relationship
- User (1) → Bookings (M) - Guest relationship
- Property (1) → Bookings (M)
- Booking (1) → Payment (1)
- Property (1) → Reviews (M)
- User (1) → Reviews (M)
- User (1) → Messages (M) - Sender
- User (1) → Messages (M) - Recipient

## ER Diagram

### Visual Representation (PNG)
![Airbnb Database ERD](airbnb%20project%20clone%20database.png)

### Detailed Documentation (PDF)
[Airbnb Database ERD Documentation](airbnb%20project%20clone%20database.pdf)

## Database Schema
The complete DBML schema is available in: `database_schema.dbml`
