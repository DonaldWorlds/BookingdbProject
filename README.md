# BookingdbProject

# SQL Project - Booking Management System

Submitted by: [Donald Witherspoon]

## Introduction

The Booking Management System is a database project designed to manage hotel bookings, guest information, room details, and guest messages. This project allows you to efficiently handle hotel booking records and streamline guest communication.

## Database Structure

The database consists of several tables, including:

- `booking`: Stores information about hotel bookings, such as booking number, guest number, room type, and check-in/check-out dates.

- `guest`: Contains guest details, such as name and address.

- `guestmessage`: Keeps track of guest messages, connecting them to specific bookings, hotels, and room types.

- `hotel`: Stores information about hotels, including their name, address, and city.

- `room`: Manages room details, like room number, hotel number, room type, and price.

# SQL Project - Database Implementation

## Overview
This project involves the implementation of a MySQL database and covers various SQL concepts and techniques.

## SQL Concepts Implemented

### Normalization
Normalization is the process of efficiently organizing data in a database to reduce data redundancy and improve data integrity. In this project, we've applied normalization principles to the following tables:
- `booking`
- `guest`
- `hotel`
- `room`

### Table Relationships
Our project implements essential relationships between tables. For example, the `booking` table establishes relationships with the `hotel` and `guest` tables through foreign keys. These relationships are crucial in database design.

### Stored Procedures
We've created stored procedures, which encapsulate a series of SQL statements into reusable routines. We use the `CALL` statement to execute these stored procedures for practical database operations.

### Functions
SQL functions are used for performing computations and returning results. In our project, we've utilized functions, such as calculating the total price for a booking.

### Data Types
Our database involves various data types to handle different types of data, including:
- Integers (`INT`)
- Decimals (`DECIMAL`)
- Dates (`DATE` and `DATETIME`)
- Strings (`VARCHAR`, `CHAR`)

### Constraints
The project implements constraints to ensure data integrity. Examples include:
- Primary key constraints on the `bookingNo` column
- Foreign key constraints for establishing relationships between tables
- `NOT NULL` constraints for specific columns

### Indexes
Indexes are employed to optimize data retrieval, particularly in tables where frequent lookups occur. Notable examples are the `booking` and `room` tables.

### Querying
We use SQL queries extensively to retrieve data from the database. The `SELECT` statements serve as the foundation for querying and filtering data.

### SQL Statements
The project involves a variety of SQL statements, including:
- `INSERT`
- `UPDATE`
- `DELETE`
- `ALTER TABLE`
- `SELECT`

### Database Design
The overall design of our database schema is fundamental to efficient data storage and retrieval. This includes decisions related to:
- Choice of tables
- Column design
- Relationships
- Key constraints

## Database Schema

The database schema is as follows:

[INSERT SCHEMA IMAGE]

## Prerequisites

Before you can run this project, you need to:

1. Install a MySQL server.
2. Create a MySQL database, e.g., `bookingdb`.
3. Import the provided SQL dump into your database.

```sql
mysql -u [username] -p [database_name] < booking_db_dump.sql
