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

INSERT INTO users(username, email, password)
values ('codeupuser', 'fake@email.com', 'password');

INSERT INTO ads (user_id, title, description)
values ('1', 'Nintendo Switch', 'Gently used.');