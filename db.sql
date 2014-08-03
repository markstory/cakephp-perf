DROP DATABASE IF EXISTS cake_perf;

CREATE DATABASE cake_perf;

USE cake_perf;

CREATE TABLE articles (
	id integer not null primary key auto_increment,
	title varchar(255),
	body TEXT,
	created datetime,
	modified datetime
);

INSERT INTO articles (title, body, created, modified) VALUES
('First Post', 'First Post', NOW(), NOW()),
('Second Post', 'Second Post', NOW(), NOW()),
('Third Post', 'Third Post', NOW(), NOW()),
('Fourth Post', 'Fourth Post', NOW(), NOW()),
('Fifth Post', 'Fifth Post', NOW(), NOW()),
('Sixth Post', 'Sixth Post', NOW(), NOW()),
('Seventh Post', 'Seventh Post', NOW(), NOW()),
('Eighth Post', 'Eighth Post', NOW(), NOW()),
('Ninth Post', 'Ninth Post', NOW(), NOW()),
('Tenth Post', 'Tenth Post', NOW(), NOW()),
('First Post', 'First Post', NOW(), NOW()),
('Second Post', 'Second Post', NOW(), NOW()),
('Third Post', 'Third Post', NOW(), NOW()),
('Fourth Post', 'Fourth Post', NOW(), NOW()),
('Fifth Post', 'Fifth Post', NOW(), NOW()),
('Sixth Post', 'Sixth Post', NOW(), NOW()),
('Seventh Post', 'Seventh Post', NOW(), NOW()),
('Eighth Post', 'Eighth Post', NOW(), NOW()),
('Ninth Post', 'Ninth Post', NOW(), NOW()),
('Tenth Post', 'Tenth Post', NOW(), NOW()),
('First Post', 'First Post', NOW(), NOW()),
('Second Post', 'Second Post', NOW(), NOW()),
('Third Post', 'Third Post', NOW(), NOW()),
('Fourth Post', 'Fourth Post', NOW(), NOW()),
('Fifth Post', 'Fifth Post', NOW(), NOW()),
('Sixth Post', 'Sixth Post', NOW(), NOW()),
('Seventh Post', 'Seventh Post', NOW(), NOW()),
('Eighth Post', 'Eighth Post', NOW(), NOW()),
('Ninth Post', 'Ninth Post', NOW(), NOW()),
('Tenth Post', 'Tenth Post', NOW(), NOW());
