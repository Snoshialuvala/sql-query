CREATE TABLE Movies(
    Movie_name VARCHAR(100),
    Lead_actor VARCHAR(50),
    Lead_actress VARCHAR(50),
    Year_of_release DATE,
    Director_name VARCHAR(50)
);
INSERT INTO Movies VALUES('A','Mahesh','Kajal','2000-12-01','puri');
INSERT INTO Movies VALUES('B','Ram','Sam','2005-01-01','ABC');
INSERT INTO Movies VALUES('C','NTR','Alia','2022-12-12','Raja');
INSERT INTO Movies VALUES('D','Chiranjeevi','Ramya','2010-05-06','Ravi');
INSERT INTO Movies VALUES('E','Bala Krishna','Pragya','2022-01-03','Kiran');
SELECT Movie_name FROM Movies;
SELECT Movie_name FROM Movies WHERE Lead_actor='Ram';
SELECT Movie_name FROM Movies WHERE Lead_actress='Sam';
SELECT Movie_name FROM Movies WHERE Director_name='Kiran';
