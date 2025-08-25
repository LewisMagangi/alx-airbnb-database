# Database Normalization Analysis

## Objective
Apply normalization principles to ensure the Airbnb database design is in Third Normal Form (3NF).

## Current Schema Analysis

### First Normal Form (1NF) ✅
**Definition**: Each table cell contains atomic values, and each record is unique.

**Analysis**:
- ✅ All attributes contain atomic values (no arrays or composite values)
- ✅ Each table has a primary key (user_id, property_id, booking_id, etc.)
- ✅ No repeating groups or multivalued attributes
- ✅ ENUM types (role_enum, booking_status_enum, payment_method_enum) ensure atomic values

### Second Normal Form (2NF) ✅
**Definition**: Must be in 1NF and all non-key attributes are fully functionally dependent on the primary key.

**Analysis**:
- ✅ **User Table**: All attributes (first_name, last_name, email, etc.) depend on user_id
- ✅ **Property Table**: All attributes (name, description, location, etc.) depend on property_id
- ✅ **Booking Table**: All attributes (start_date, end_date, total_price, etc.) depend on booking_id
- ✅ **Payment Table**: All attributes (amount, payment_date, payment_method) depend on payment_id
- ✅ **Review Table**: All attributes (rating, comment, created_at) depend on review_id
- ✅ **Message Table**: All attributes (message_body, sent_at) depend on message_id

**No partial dependencies identified** - all non-key attributes are fully dependent on their respective primary keys.

### Third Normal Form (3NF) ✅
**Definition**: Must be in 2NF and no transitive dependencies exist (non-key attributes don't depend on other non-key attributes).

**Analysis**:

#### User Table
- ✅ No transitive dependencies
- All attributes directly relate to the user entity

#### Property Table
- ✅ No transitive dependencies
- `host_id` is a foreign key, not a transitive dependency
- All other attributes directly describe the property

#### Booking Table
- ✅ No transitive dependencies
- `property_id` and `user_id` are foreign keys, not transitive dependencies
- `total_price` could be calculated from `pricepernight × days`, but storing it prevents data inconsistency when prices change

#### Payment Table
- ✅ No transitive dependencies
- All attributes directly relate to the payment transaction

#### Review Table
- ✅ No transitive dependencies
- `property_id` and `user_id` are foreign keys establishing relationships

#### Message Table
- ✅ No transitive dependencies
- `sender_id` and `recipient_id` are foreign keys for user relationships

## Normalization Steps Applied

### 1. Entity Separation
- **Separated entities**: User, Property, Booking, Payment, Review, Message
- **Eliminated redundancy**: Each entity contains only attributes directly related to it

### 2. Foreign Key Implementation
- Replaced redundant data with foreign key references:
  - `Property.host_id` → `User.user_id`
  - `Booking.property_id` → `Property.property_id`
  - `Booking.user_id` → `User.user_id`
  - `Payment.booking_id` → `Booking.booking_id`
  - `Review.property_id` → `Property.property_id`
  - `Review.user_id` → `User.user_id`
  - `Message.sender_id` → `User.user_id`
  - `Message.recipient_id` → `User.user_id`

### 3. ENUM Implementation
- Created dedicated ENUMs to eliminate string redundancy:
  - `role_enum`: guest, host, admin
  - `booking_status_enum`: pending, confirmed, canceled
  - `payment_method_enum`: credit_card, paypal, stripe

### 4. Data Integrity Constraints
- Primary keys ensure entity integrity
- Foreign keys ensure referential integrity
- UNIQUE constraint on `User.email` prevents duplicates
- CHECK constraint on `Review.rating` (1-5) ensures data validity

## Potential Denormalization Considerations

### Calculated Fields Kept for Performance
1. **`Booking.total_price`**: Could be calculated from property price and dates, but stored to:
   - Prevent inconsistencies when property prices change
   - Improve query performance
   - Maintain historical accuracy

### No Further Normalization Needed
- **Location in Property**: Could be normalized into separate Address table, but current granularity is appropriate for the use case
- **User names**: first_name and last_name are kept separate for flexibility in display and sorting

## Conclusion

The current database design successfully achieves **Third Normal Form (3NF)**:

✅ **1NF**: Atomic values, unique records, proper primary keys  
✅ **2NF**: No partial dependencies on composite keys  
✅ **3NF**: No transitive dependencies between non-key attributes  

The design eliminates data redundancy while maintaining data integrity and query performance. The use of foreign keys, ENUMs, and appropriate constraints ensures a robust, scalable database structure suitable for an Airbnb-like application.