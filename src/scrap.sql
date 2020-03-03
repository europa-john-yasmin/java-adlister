CREATE USER 'adlisteruser'@'localhost' IDENTIFIED BY 'password';

CREATE DATABASE adlister_db;

USE adlister_db;

CREATE TABLE IF NOT EXISTS users
(
    id       INT UNSIGNED NOT NULL AUTO_INCREMENT,
    username VARCHAR(100) NOT NULL,
    email    VARCHAR(100) NOT NULL,
    password VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);


CREATE TABLE IF NOT EXISTS ads
(
    id          INT UNSIGNED NOT NULL AUTO_INCREMENT,
    user_id     INT UNSIGNED NOT NULL,
    title       VARCHAR(100) NOT NULL,
    description VARCHAR(100) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES users (id)
);


# +----------+             +-------------+
# |  users   |             |    ads      |
# +----------+             +-------------+
# | id       |<------,     | id          |
# | username |       `-----| user_id     | <-- foreign key to users table
# | email    |             | title       |
# | password |             | description |
# +----------+             +-------------+