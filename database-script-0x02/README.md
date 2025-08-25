# Database Seeding - Sample Data

## Overview
This directory contains SQL Data Manipulation Language (DML) scripts to populate the AirBnB Clone database with realistic sample data.

## Files
- `seed.sql` - Complete database seeding script with sample data
- `README.md` - This documentation file

## Sample Data Overview

### Data Volume
- **10 Users** - Mix of hosts, guests, and admin
- **8 Properties** - Diverse property types and locations
- **8 Bookings** - Various booking statuses and date ranges
- **5 Payments** - Different payment methods
- **6 Reviews** - Range of ratings and detailed comments
- **10 Messages** - Realistic host-guest communication

### User Profiles

#### Hosts (4 users)
- **Alice Johnson** - New York host with downtown apartment and luxury penthouse
- **David Smith** - Miami host with beachfront villa and modern studio
- **Emily Davis** - Multi-location host with mountain cabin and historic brownstone
- **Michael Brown** - Southwest host with desert oasis and eco-friendly house

#### Guests (5 users)
- **Sarah Wilson** - Frequent traveler, business and leisure
- **James Miller** - Family vacation planner
- **Jessica Garcia** - Romantic getaway enthusiast
- **Robert Martinez** - Adventure seeker
- **Linda Anderson** - Urban explorer

#### Admin (1 user)
- **Admin User** - Platform administrator

### Property Portfolio

#### Property Types & Locations
1. **Cozy Downtown Apartment** - New York, NY ($150/night)
2. **Luxury Penthouse Suite** - New York, NY ($450/night)
3. **Beachfront Villa** - Miami, FL ($300/night)
4. **Modern Studio Loft** - Miami, FL ($95/night)
5. **Mountain Cabin Retreat** - Aspen, CO ($220/night)
6. **Historic Brownstone** - Boston, MA ($180/night)
7. **Desert Oasis** - Phoenix, AZ ($275/night)
8. **Urban Garden House** - Portland, OR ($165/night)

### Booking Scenarios

#### Confirmed Bookings (5)
- March 2024 stays across different properties
- Total booking value: $3,500
- Average stay: 3 nights
- All with completed payments

#### Pending Bookings (2)
- April 2024 future bookings
- Awaiting host confirmation

#### Canceled Bookings (1)
- Emergency cancellation scenario
- Demonstrates cancellation workflow

### Payment Distribution
- **Credit Card**: 40% (2 payments)
- **PayPal**: 40% (2 payments)
- **Stripe**: 20% (1 payment)

### Review Analysis
- **Average Rating**: 4.3/5
- **Rating Distribution**:
  - 5 stars: 50% (3 reviews)
  - 4 stars: 33% (2 reviews)
  - 3 stars: 17% (1 review)
- Detailed comments covering various aspects of stays

### Communication Patterns
- Pre-booking inquiries
- Booking confirmations
- Local recommendations
- Cancellation requests
- Post-stay gratitude messages

## Usage

### Prerequisites
- Database schema must be created first (run `database-script-0x01/schema.sql`)
- PostgreSQL database connection

### Installation
```sql
-- Run the seeding script
\i seed.sql
```

### Verification
```sql
-- Check data counts
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
```

## Data Characteristics

### Realistic Scenarios
- **Seasonal Bookings** - March/April timeframe representing spring travel
- **Geographic Diversity** - Properties across major US cities
- **Price Ranges** - $95-$450/night covering budget to luxury segments
- **Authentic Communications** - Real-world messaging patterns

### Business Logic Compliance
- All foreign key relationships properly maintained
- Booking dates follow logical sequences
- Payment amounts match booking totals
- Review ratings within 1-5 constraint
- User roles appropriately distributed

### Data Integrity
- UUID consistency across related records
- Proper timestamp sequencing
- Email uniqueness maintained
- Realistic phone number formats
- Secure password hashing simulation

## Sample Queries

### Popular Properties
```sql
SELECT p.name, p.location, p.pricepernight, COUNT(b.booking_id) as total_bookings
FROM Property p
LEFT JOIN Booking b ON p.property_id = b.property_id
GROUP BY p.property_id, p.name, p.location, p.pricepernight
ORDER BY total_bookings DESC;
```

### Host Revenue
```sql
SELECT u.first_name, u.last_name, SUM(pay.amount) as total_revenue
FROM User u
JOIN Property p ON u.user_id = p.host_id
JOIN Booking b ON p.property_id = b.property_id
JOIN Payment pay ON b.booking_id = pay.booking_id
GROUP BY u.user_id, u.first_name, u.last_name
ORDER BY total_revenue DESC;
```

This seed data provides a solid foundation for testing queries, analyzing business metrics, and demonstrating the full functionality of the AirBnB Clone database system.
