-- Create database and tables for storing user data and expense data
CREATE DATABASE expense_tracker;

USE expense_tracker;

-- Table for storing user data
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL
);

-- Table for storing expense data
CREATE TABLE expenses (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    amount DECIMAL(10, 2) NOT NULL,
    category VARCHAR(255) NOT NULL,
    date DATE NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id)
);


-- Add more tables as needed for storing maze configurations, algorithm preferences, performance metrics, etc.
