-- create tables
CREATE TABLE category (
  category_id VARCHAR(4) PRIMARY KEY,
  category VARCHAR
);

CREATE TABLE subcategory (
  subcategory_id VARCHAR(8) PRIMARY KEY,
  subcategory VARCHAR
);

CREATE TABLE contacts (
contact_id INT PRIMARY KEY,
first_name VARCHAR,
last_name VARCHAR,
email VARCHAR
);

CREATE TABLE campaign (
cf_id INT PRIMARY KEY,
contact_id INT, 
FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
company_name VARCHAR,
description VARCHAR,
goal FLOAT,
pledged FLOAT,
outcome VARCHAR,
backers_count INT,
country VARCHAR,
currency VARCHAR,
launch_date TIMESTAMP,
end_date TIMESTAMP,
category_id VARCHAR(4), 
FOREIGN KEY (category_id) REFERENCES category(category_id),
subcategory_id VARCHAR(8), 
FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);

-- use select statements one at a time after table creation
-- to make sure tables were created and data imported correctly
SELECT * FROM category LIMIT 5;
SELECT * FROM subcategory LIMIT 5;
SELECT * FROM contacts LIMIT 5;
SELECT * FROM campaign LIMIT 5;
