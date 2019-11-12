DROP TABLE IF EXISTS articles;

CREATE TABLE articles (
    id integer NOT NULL PRIMARY KEY AUTOINCREMENT,
    title varchar(255),
    body TEXT,
    created datetime,
    modified datetime
);

INSERT INTO articles (title, body, created, modified) VALUES
('First Post', 'First Post', datetime('now'), datetime('now')),
('Second Post', 'Second Post', datetime('now'), datetime('now')),
('Third Post', 'Third Post', datetime('now'), datetime('now')),
('Fourth Post', 'Fourth Post', datetime('now'), datetime('now')),
('Fifth Post', 'Fifth Post', datetime('now'), datetime('now')),
('Sixth Post', 'Sixth Post', datetime('now'), datetime('now')),
('Seventh Post', 'Seventh Post', datetime('now'), datetime('now')),
('Eighth Post', 'Eighth Post', datetime('now'), datetime('now')),
('Ninth Post', 'Ninth Post', datetime('now'), datetime('now')),
('Tenth Post', 'Tenth Post', datetime('now'), datetime('now')),
('First Post', 'First Post', datetime('now'), datetime('now')),
('Second Post', 'Second Post', datetime('now'), datetime('now')),
('Third Post', 'Third Post', datetime('now'), datetime('now')),
('Fourth Post', 'Fourth Post', datetime('now'), datetime('now')),
('Fifth Post', 'Fifth Post', datetime('now'), datetime('now')),
('Sixth Post', 'Sixth Post', datetime('now'), datetime('now')),
('Seventh Post', 'Seventh Post', datetime('now'), datetime('now')),
('Eighth Post', 'Eighth Post', datetime('now'), datetime('now')),
('Ninth Post', 'Ninth Post', datetime('now'), datetime('now')),
('Tenth Post', 'Tenth Post', datetime('now'), datetime('now')),
('First Post', 'First Post', datetime('now'), datetime('now')),
('Second Post', 'Second Post', datetime('now'), datetime('now')),
('Third Post', 'Third Post', datetime('now'), datetime('now')),
('Fourth Post', 'Fourth Post', datetime('now'), datetime('now')),
('Fifth Post', 'Fifth Post', datetime('now'), datetime('now')),
('Sixth Post', 'Sixth Post', datetime('now'), datetime('now')),
('Seventh Post', 'Seventh Post', datetime('now'), datetime('now')),
('Eighth Post', 'Eighth Post', datetime('now'), datetime('now')),
('Ninth Post', 'Ninth Post', datetime('now'), datetime('now')),
('Tenth Post', 'Tenth Post', datetime('now'), datetime('now'));
