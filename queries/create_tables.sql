Table creation for HICP & unemployment data

USE portfolio_finance;
create table if not exists `hicp_v4_2014-24` (
id INT auto_increment PRIMARY KEY,
country VARCHAR(50),
year INT,
inflation_rate DECIMAL(5,2)
);

USE portfolio_finance;
CREATE TABLE IF NOT EXISTS unemployment_v4 (
ID INT AUTO_INCREMENT PRIMARY KEY,
iso_code VARCHAR(50),
country VARCHAR(50),
year INT,
unemployment_rate DECIMAL(5,2)
);