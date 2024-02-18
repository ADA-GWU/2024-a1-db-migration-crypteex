-- creating table for students

CREATE TABLE STUDENTS (

st_id INTEGER PRIMARY KEY,
st_firstname VARCHAR(50) NOT NULL,
st_lastname VARCHAR(50) NOT NULL


);

-- creating tables for their interests 

CREATE TABLE INTERESTS (

STUDENT_ID INTEGER REFERENCES STUDENTS(ST_ID),
INTEREST VARCHAR(50)

);

-- Putting values to the table of students

INSERT INTO STUDENTS (st_id, st_firstname, st_lastname) VALUES
(1, 'Konul', 'Gurbanova'),
(2, 'Shahnur', 'Isgandarli'),
(3, 'Natavan', 'Mammadova');



-- Putting values to the table of their interests

INSERT INTO INTERESTS (STUDENT_ID, INTEREST) VALUES

(1, 'Tennis'),
(1, 'Literature'),
(2, 'Math'),
(2, 'Tennis'),
(3, 'Math'),
(3, 'Music'),
(2, 'Football'),
(1, 'Chemistry'),
(3, 'Chess');



