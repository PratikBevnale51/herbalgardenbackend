-- =====================================================
-- Digital Herbal Garden - MySQL Database Schema
-- Run this file in MySQL Workbench or phpMyAdmin
-- =====================================================

CREATE DATABASE IF NOT EXISTS herbal_garden;
USE herbal_garden;

-- ─── USERS TABLE ──────────────────────────────────
CREATE TABLE users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(150) UNIQUE NOT NULL,
  mobile VARCHAR(15),
  password VARCHAR(255) NOT NULL,
  role ENUM('user', 'admin') DEFAULT 'user',
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- ─── PLANTS TABLE ─────────────────────────────────
CREATE TABLE plants (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  scientific_name VARCHAR(150),
  description TEXT,
  usage TEXT,
  benefits TEXT,
  image VARCHAR(255),
  category VARCHAR(100),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- ─── REMEDIES TABLE ───────────────────────────────
CREATE TABLE remedies (
  id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(200) NOT NULL,
  category ENUM('cold','stress','digestion','skin','dental','respiratory','immunity') NOT NULL,
  ingredients TEXT,
  instructions TEXT,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- ─── DOCTORS TABLE ────────────────────────────────
CREATE TABLE doctors (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  specialization VARCHAR(200),
  email VARCHAR(150),
  phone VARCHAR(20),
  image VARCHAR(255),
  bio TEXT
);

-- ─── FEEDBACK TABLE ───────────────────────────────
CREATE TABLE feedback (
  id INT AUTO_INCREMENT PRIMARY KEY,
  user_id INT,
  rating INT CHECK (rating BETWEEN 1 AND 5),
  message TEXT,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE SET NULL
);

-- ─── CONTACT MESSAGES TABLE ───────────────────────
CREATE TABLE contact_messages (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(150) NOT NULL,
  message TEXT NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- ─── SEED DATA ────────────────────────────────────

-- Sample Plants
INSERT INTO plants (name, scientific_name, description, usage, benefits, image, category) VALUES
('Tulsi', 'Ocimum sanctum', 'Tulsi is a sacred plant in India, also known as Holy Basil.', 'Used in Ayurveda for relieving stress, boosting immunity, and treating respiratory conditions.', 'Boosts immunity, relieves stress, anti-inflammatory', 'tulsi.jpg', 'Immunity'),
('Ashwagandha', 'Withania somnifera', 'A powerful adaptogen used for centuries in Ayurvedic medicine.', 'Used to reduce stress, increase energy levels, and improve concentration.', 'Reduces stress, boosts energy, improves memory', 'ashwagandha.jpg', 'Stress'),
('Aloe Vera', 'Aloe barbadensis miller', 'A succulent plant species of the genus Aloe.', 'Applied topically for skin care; also used internally for digestive health.', 'Heals wounds, reduces acne, improves digestion', 'aloe_vera.jpg', 'Skin'),
('Neem', 'Azadirachta indica', 'A fast-growing tree known for its medicinal properties.', 'Used for blood purification, treating skin diseases, and as a natural pesticide.', 'Purifies blood, treats acne, anti-bacterial', 'neem.jpg', 'Skin'),
('Ginger', 'Zingiber officinale', 'A flowering plant whose rhizome is widely used as a spice and medicine.', 'Helps in digestion, relieves nausea, and reduces muscle pain.', 'Aids digestion, anti-nausea, anti-inflammatory', 'ginger.jpg', 'Digestion'),
('Amla', 'Phyllanthus emblica', 'Also known as Indian Gooseberry, it is rich in Vitamin C.', 'Boosts immunity, improves hair health, and aids in digestion.', 'Rich in Vitamin C, boosts immunity, improves skin', 'amla.jpg', 'Immunity'),
('Hibiscus', 'Hibiscus rosa-sinensis', 'A flowering plant used widely in traditional medicine.', 'Used for lowering blood pressure and cholesterol, and for hair care.', 'Lowers blood pressure, improves hair health', 'hibiscus.jpg', 'Heart'),
('Fenugreek', 'Trigonella foenum-graecum', 'An herb used in cooking and as a medicine.', 'Controls blood sugar, improves digestion, and boosts milk production in nursing mothers.', 'Controls blood sugar, aids digestion', 'fenugreek.jpg', 'Digestion');

-- Sample Remedies
INSERT INTO remedies (title, category, ingredients, instructions) VALUES
('Tulsi Tea for Cold & Cough', 'cold', 'Tulsi leaves, Ginger, Water, Honey', 'Boil tulsi leaves and ginger in water for 10 minutes. Strain, add honey, drink warm twice daily.'),
('Ginger Tea for Sore Throat', 'cold', 'Ginger slices, Water, Honey, Lemon', 'Boil ginger in water for 10 minutes. Add honey and lemon. Drink warm to ease throat irritation.'),
('Ashwagandha Milk for Stress', 'stress', 'Ashwagandha powder (1 tsp), Warm milk', 'Mix ashwagandha powder in warm milk. Drink before bed to reduce stress and improve sleep.'),
('Ajwain Water for Indigestion', 'digestion', 'Ajwain seeds (1 tsp), Water', 'Boil ajwain seeds in a glass of water. Strain and drink warm to relieve gas and indigestion.'),
('Neem Paste for Acne', 'skin', 'Fresh neem leaves, Water', 'Crush fresh neem leaves into a paste. Apply to affected areas for 15 minutes then rinse.'),
('Clove Oil for Toothache', 'dental', 'Clove oil, Cotton ball', 'Dab a cotton ball in clove oil and apply to the aching tooth for instant pain relief.'),
('Honey + Ginger for Respiratory', 'respiratory', 'Honey (1 tbsp), Ginger juice (1 tsp)', 'Mix honey and fresh ginger juice. Take once daily to strengthen lungs.'),
('Giloy Juice for Immunity', 'immunity', 'Giloy stem, Water', 'Boil giloy stem in water, strain, and drink regularly to purify blood and boost immunity.');

-- Sample Doctors
INSERT INTO doctors (name, specialization, email, phone) VALUES
('Dr. Sanjay Algude', 'Homeopathy & Ayurvedic Medicine', 'sanjayalgude1977@herbalcare.com', '+91 9850615151'),
('Dr. Amit Sheth', 'MBBS, Homeopathy & Herbal Wellness', 'amit.sheth@herbalcare.com', '+91 8275960639');

-- Create default admin user (password: admin123)
INSERT INTO users (name, email, mobile, password, role) VALUES
('Admin', 'admin@herbalcare.com', '9999999999', '$2a$10$rGJ4R.SQ7AhJ0hhMVWFGp.2qiXTnFB1kJXMT8H5NZHoLYdBUOoT/K', 'admin');