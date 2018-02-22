USE rockStarDay2;
SHOW COLUMNS FROM band;
SELECT ID, name, genre FROM band;
SELECT * FROM individual WHERE LastName = 'Jennings';
SELECT ID, LASTNAME FROM individual WHERE DeceasedDate IS NOT NULL;
SELECT ID, LastName, BirthDate FROM individual WHERE Year(BirthDate) > 1940;
SELECT * FROM individual WHERE ID IN (1,3,5,7,19);
SELECT * FROM band WHERE genre = 'Alternative' AND isTogether <> 1;
SELECT ID, name FROM band WHERE ID = 4;
SELECT * FROM band WHERE name LIKE '% and %';
SELECT * FROM individual WHERE firstName LIKE '_im';
SELECT * FROM band WHERE name LIKE '%s';

SELECT p.firstName, p.lastName, b.battingAvg
FROM batting b
INNER JOIN player p ON b.playerID = p.ID;

SELECT t.teamName, p.firstName, p.lastName
FROM roster r
INNER JOIN player p ON r.playerID = p.ID
INNER JOIN team t ON r.teamID = t.ID WHERE t.teamName = 'Boston Red Sox';

SELECT * FROM vTeamRoster;
DESCRIBE vTeamRoster;
SHOW CREATE VIEW vteamRoster;
