-- Change Name of the Column

ALTER TABLE STUDENTS RENAME COLUMN st_id to student_id;

-- Change the length to the 30 of the given column 

ALTER TABLE STUDENTS ALTER COLUMN st_firstname TYPE VARCHAR(30);

ALTER TABLE STUDENTS ALTER COLUMN st_lastname TYPE VARCHAR(30);


-- Create another table 

CREATE TABLE temporary_interests (
 	STUDENT_ID INT,
	INTERESTS VARCHAR(50)[]

); 

-- Change name of the interest to insterests and likewise its type to array of strings

INSERT INTO temporary_interests (STUDENT_ID, INTERESTS)
SELECT STUDENT_ID, STRING_TO_ARRAY(STRING_AGG(INTEREST, ','), ',') AS INTERESTS
FROM INTERESTS
GROUP BY STUDENT_ID;

-- Now, Dropping the old INTERESTS table and rename it to the new one

DROP TABLE INTERESTS;
ALTER TABLE temporary_interests RENAME TO INTERESTS;

