# Database Schema - DDL Scripts

## Overview
This directory contains the SQL Data Definition Language (DDL) scripts for the AirBnB Clone database schema.

## Files
- `schema.sql` - Complete database schema with tables, constraints, and indexes

## Database Schema Components

### Tables Created
1. **User** - User accounts with roles (guest, host, admin)
2. **Property** - Rental properties hosted by users
3. **Booking** - Reservations linking users to properties
4. **Payment** - Payment records for bookings
5. **Review** - User reviews for properties
6. **Message** - Communication between users

### Key Features

#### Data Types
- **UUID Primary Keys** - All tables use UUID for globally unique identifiers
- **ENUM Types** - Controlled vocabularies for role, booking status, and payment methods
- **Constraints** - Data integrity through CHECK constraints and foreign keys

#### Performance Optimizations
- **Strategic Indexing** - Indexes on frequently queried columns
- **Composite Indexes** - Multi-column indexes for complex queries
- **Partial Indexes** - Conditional indexes for specific query patterns

#### Data Integrity
- **Foreign Key Constraints** - Referential integrity between related tables
- **Check Constraints** - Business rule enforcement (rating 1-5, positive prices)
- **Unique Constraints** - Email uniqueness for users
- **NOT NULL Constraints** - Required field enforcement

## Usage

### Prerequisites
- PostgreSQL database
- UUID extension support

### Installation
```sql
-- Run the schema creation script
\i schema.sql
```

### Key Constraints
- User emails must be unique
- Booking end dates must be after start dates
- Ratings must be between 1 and 5
- Users cannot send messages to themselves
- All prices must be positive values

## Performance Features
- Optimized for common query patterns
- Efficient lookup on email, property location, and booking dates
- Automatic timestamp updates for property modifications
