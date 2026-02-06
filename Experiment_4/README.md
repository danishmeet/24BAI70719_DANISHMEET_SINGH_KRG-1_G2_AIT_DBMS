
Student Name:DANISHMEET SINGH		        UID: 24BAI70719
Branch: AIT-CSE- AIML				        Section/Group: 24AIT_KRG-1/G2
Semester: 4							        Subject Name: DBMS                                             


AIM
To design and implement PL/SQL programs utilizing conditional control statements such as IF–ELSE, IF–ELSIF–ELSE, ELSIF ladder, and CASE constructs in order to control the flow of execution based on logical conditions and to analyze decision-making capabilities in PL/SQL blocks.

S/W Requirement: 
• Database Management System: PostgreSQL / Oracle Database Express Edition
• Database Administration Tool: pgAdmin

OBJECTIVES:
• To understand and implement conditional control statements in PL/SQL
• To analyze decision-making using IF–ELSE, ELSIF ladder, and CASE statements
• To enhance logical thinking using PL/SQL blocks

PROBLEM STATEMENT: 
Develop and execute PL/SQL programs that demonstrate the use of conditional control statements. The programs should employ IF–ELSE, IF–ELSIF–ELSE, ELSIF ladder, and CASE statements to evaluate given conditions and control the flow of execution accordingly.

1.	PROBLEM STATEMENT – IF–ELSE STATEMENT
________________________________________
Write a PL/SQL program to check whether a given number is positive or non-positive using the IF–ELSE conditional control statement and display an appropriate message.
PROGRAM:


DECLARE
    num NUMBER := -5;
BEGIN
    IF num > 0 THEN
        DBMS_OUTPUT.PUT_LINE('The number is Positive');
    ELSE
        DBMS_OUTPUT.PUT_LINE('The number is Non-Positive');
    END IF;
END;

2.	PROBLEM STATEMENT – IF–ELSIF–ELSE STATEMENT
________________________________________
Write a PL/SQL program to evaluate the grade of a student based on obtained marks and display the corresponding grade.
PROGRAM:
DECLARE
    marks NUMBER := 78;
BEGIN
    IF marks >= 90 THEN
        DBMS_OUTPUT.PUT_LINE('Grade: A');
    ELSIF marks >= 75 THEN
        DBMS_OUTPUT.PUT_LINE('Grade: B');
    ELSIF marks >= 60 THEN
        DBMS_OUTPUT.PUT_LINE('Grade: C');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Grade: Fail');
    END IF;
END;

3.	PROBLEM STATEMENT – ELSIF LADDER
________________________________________
Write a PL/SQL program to determine the performance status of a student based on marks using an ELSIF ladder.
PROGRAM:
DECLARE
    marks NUMBER := 82;
BEGIN
    IF marks >= 85 THEN
        DBMS_OUTPUT.PUT_LINE('Performance: Excellent');
    ELSIF marks >= 70 THEN
        DBMS_OUTPUT.PUT_LINE('Performance: Very Good');
    ELSIF marks >= 55 THEN
        DBMS_OUTPUT.PUT_LINE('Performance: Good');
    ELSIF marks >= 40 THEN
        DBMS_OUTPUT.PUT_LINE('Performance: Average');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Performance: Poor');
    END IF;
END;

4.	PROBLEM STATEMENT – CASE STATEMENT
________________________________________
Write a PL/SQL program to display the name of the day based on a given day number using the CASE statement.
PROGRAM:
DECLARE
    day_num NUMBER := 3;
    day_name VARCHAR2(20);
BEGIN
    CASE day_num
        WHEN 1 THEN day_name := 'Sunday';
        WHEN 2 THEN day_name := 'Monday';
        WHEN 3 THEN day_name := 'Tuesday';
        WHEN 4 THEN day_name := 'Wednesday';
        WHEN 5 THEN day_name := 'Thursday';
        WHEN 6 THEN day_name := 'Friday';
        WHEN 7 THEN day_name := 'Saturday';
        ELSE day_name := 'Invalid Day Number';
    END CASE;

    DBMS_OUTPUT.PUT_LINE('Day is: ' || day_name);
END;

LEARNING OUTCOMES:
1.	Understood the use of conditional control statements in PL/SQL.
2.	Learned to apply IF–ELSE and IF–ELSIF–ELSE statements for decision-making.
3.	Implemented ELSIF ladder for evaluating multiple conditions.
4.	Used CASE statements to simplify complex conditional logic.
5.	Improved logical reasoning and procedural programming skills in PL/SQL.

OUTPUT :
 
   


 
 
 

CONCLUSION: 
This experiment provided hands-on experience with conditional control statements in PL/SQL. The use of IF–ELSE, ELSIF ladder, and CASE statements helped in understanding decision-making mechanisms and control flow within PL/SQL programs.


