--Create the users table in local sql server:

CREATE TABLE IF NOT EXISTS `users` (
  `id` INT AUTO_INCREMENT PRIMARY KEY,
  `email` VARCHAR(255) NOT NULL UNIQUE,
  `password` VARCHAR(255) NOT NULL,
  `account_type` ENUM('User', 'Business') NOT NULL,
  `mobile_phone_number` VARCHAR(20),
  `business_name` VARCHAR(255),
  `business_website` VARCHAR(255)
);

-- dummy data

-- Insert regular users
INSERT INTO users (email, password, account_type)
VALUES
  ('user1@example.com', 'password1', 'User'),
  ('user2@example.com', 'password2', 'User'),
  ('user3@example.com', 'password3', 'User');

-- Insert business users
INSERT INTO users (email, password, account_type, mobile_phone_number, business_name, business_website)
VALUES
  ('business1@example.com', 'password1', 'Business', '+1234567890', 'Business 1', 'https://www.business1.com'),
  ('business2@example.com', 'password2', 'Business', '+9876543210', 'Business 2', 'https://www.business2.com');
