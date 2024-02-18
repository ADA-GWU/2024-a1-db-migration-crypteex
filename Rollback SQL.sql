-- Changing name of the  INTERESTS to the temporary_interests
ALTER TABLE INTERESTS RENAME TO temporary_interests;


-- Creating again INTERESTS table
CREATE TABLE INTERESTS (
    STUDENT_ID INTEGER REFERENCES STUDENTS(student_id),
    INTEREST VARCHAR(50)
);

--  Disaggregating interests from arrays and insert to again to the INTERESTS 
INSERT INTO INTERESTS (STUDENT_ID, INTEREST)
SELECT STUDENT_ID, UNNEST(INTERESTS)
FROM temporary_interests;

-- Droping temporary_interests table
DROP TABLE temporary_interests;

-- Changing student_id to the  st_id in the STUDENTS table
ALTER TABLE STUDENTS RENAME COLUMN student_id TO st_id;

-- Reverting the column types of st_firstname and st_lastname again back to the VARCHAR(50)
ALTER TABLE STUDENTS ALTER COLUMN st_firstname TYPE VARCHAR(50);
ALTER TABLE STUDENTS ALTER COLUMN st_lastname TYPE VARCHAR(50);