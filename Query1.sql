DROP DATABASE mydatabase;
CREATE DATABASE mydatabase;

USE mydatabase;

DROP TABLE IF EXISTS bankaccounts;

CREATE TABLE bankaccounts
(
    bank_account_id INT AUTO_INCREMENT,
    user_id INT,
    user_name VARCHAR(20),
	bank_account_number VARCHAR(20),
	bank INT,
	PRIMARY KEY (bank_account_id)
);

INSERT INTO bankaccounts
(
	user_id,
    user_name,
	bank_account_number,
	bank
) VALUES

	(1,
    'Dan',
    '25484834/0100',
    0100),
    (2,
    'PETR',
    '1345315/2100',
    2100)
;

SELECT * FROM bankaccounts;

DROP TABLE IF EXISTS users;

CREATE TABLE users
(
	users_id INT auto_increment,
    user_name VARCHAR(20),
    address VARCHAR(40),
    PRIMARY KEY(users_id)
);

INSERT INTO users
(
	user_name,
    address
) VALUES

	('Dan',
    'Prague'),
    ('Petr',
    'Ostrava')
;

SELECT * FROM users;

SELECT bank FROM bankaccounts
JOIN users ON users_id = user_id
WHERE address = "Prague";


