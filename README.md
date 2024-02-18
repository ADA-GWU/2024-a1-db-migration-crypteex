[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-24ddc0f5d75046c5622901739e7c5dd533143b0c8e959d652212380cedb1ea36.svg)](https://classroom.github.com/a/JwSLLxUh)


<h1> Database Migration and Rollback </h1>

<li> Creating Tables </li>
<li> Migration </li>
<li> Rollback </li>



<h3> Prerequisites </h3>

<ul>
Ensure you have administrative access to your database management system (PostgreSQL) 
</ul>


<ul> 
Backup your database before initiating the migration process. This provides an additional safety net beyond the steps outlined here.
</ul>


<ul>Verify that your database management system supports the SQL commands used in these procedures (e.g., ALTER TABLE, CREATE TABLE, INSERT INTO with SELECT UNNEST, etc.). These instructions are written with PostgreSQL in mind; adjust syntax for other DBMSs as necessary. </ul>

<ul>Testing Environment which we can test migration and rollback procedures before applying them to the production database </ul>


<h3> Creating Tables </h3>

<ul>Creating the ‘STUDENTS’ table that is including unique identifier, first name and last name and execute it</ul>
<ul>At the same time, we have to create ‘INTERESTS’ table with the given students and their interests that is linked to the ‘STUDENTS’ by student ID. </ul>
<ul>fter that, populate both tables (STUDENTS and INTERESTS). When finishing creating the tables, we have to verify it is created or not, at this time you have to view all the students and interests by the command. </ul>



<h3> Migration of the ‘STUDENTS’ Table </h3>

<ul> Renaming the column of the ‘st_id’ to the ‘student_id’ </ul>
<ul> Changing length of the column both st_firstname and st_lastname from VARCHAR(50) to the VARCHAR(30)</ul>


<h3>Migration of the ‘INTERESTS’ Table </h3>

<ul>Creating temporary table for holding the interests in array format </ul>
<ul>Aggregation interests (individual) into arrays and populate to the ‘temporary interests’ table </ul>
<ul>Replacing the original table by removing the old “INTERESTS” table and also rename “temporary interests” to the “interests</ul>


<p>  Make certain that all information has been appropriately moved and represented in the new format. </p>


<p>

Run the code on Terminal: 

psql -U username -d databasename -a -f Migration.sql

 </p>



 <h3>Procedure of the Rollback </h3>


 <p> You may restore your database to its original structure by following these instructions
 if you need to undo the modifications made during the migration. Essentially, you have to 

Check Backup Availability: Make sure your database backup is prepared for any necessary restorations.

 </p>

 <ul> Reverting the ‘INTERESTS’ Table Changes and renaming the modified ‘interests’ table and creating the original ‘INTERESTS’ table structure. </ul>

  <ul> Disaggregating the interests by expanding the arrays of the interests back to the individual arrays. </ul>

   <ul> After that, remove the temporary table which is called as a ‘temporary_interests’ after the data has been successfully transferred </ul>

   <ul>

 Reverting the ‘STUDENTS’ Table changes by the renaming the student_id to the st_id again. Following instruction is restoring the original column types with ‘st_firstname’ and ‘st_lastname’ to the original specifications. After that we have to ensure data consistency that is rollback has been executed without errors. 


   </ul>

<p>



Run the code on terminal:

psql -U username -d databasename -a -f Rollback Back.sql


</p>