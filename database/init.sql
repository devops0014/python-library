-- Create the database if it doesn't exist
CREATE DATABASE IF NOT EXISTS ccituserdb;

-- Use the database
USE ccituserdb;

-- Create the users table
CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    image_url VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Optionally insert a test user (uncomment to use)
-- INSERT INTO users (name, email, password, image_url) 
-- VALUES ('Test User', 'testuser@example.com', '$2b$12$Kfuvm6KN0Od0q1hPzPZ2g.xdcUbLfJ0Z1YtbL1rZdF0y1HnKMdVGu', 'uploads/test.jpg');

