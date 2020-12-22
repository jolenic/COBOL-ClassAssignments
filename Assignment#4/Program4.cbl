      ************************************
      *
      *    Name: Jennifer Olenic
      *    Student ID: 040998261
      *
      ************************************
       
       IDENTIFICATION DIVISION.
       PROGRAM-ID. Assignment4 as "Assignment4".
       AUTHOR.  Jennifer Olenic - 040998261.


       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 numToAvg         PIC 99.
       01 numCount         PIC 99.
       01 nextNum          PIC 9(4).
       01 total            PIC 9(6).
       01 avg              PIC 9(4).99.

       PROCEDURE DIVISION.
       PROG SECTION.
           DISPLAY "Enter Number of Integers to Average (2-15): "
           PERFORM GET-NUM-COUNT UNTIL numToAvg > 1 AND numToAvg < 16.  
           MOVE ZERO to numCount total.
           PERFORM ADD-NUMS UNTIL numCount = numToAvg.
           PERFORM GET-AVG.
           DISPLAY "Thank you!"
           STOP RUN.
           
       GET-NUM-COUNT SECTION.
           ACCEPT numToAvg.
           IF numToAvg < 2 OR numToAvg > 15 THEN
               DISPLAY "Please enter a valid number (2-15): "
           END-IF.
           
       ADD-NUMS SECTION.
           DISPLAY "Enter next number: ".
           ACCEPT nextNum.
           ADD nextNum TO total.
           ADD 1 TO numCount.

       GET-AVG SECTION.
           DIVIDE total BY numToAvg GIVING avg.
           DISPLAY "Average is " avg.
           
       END PROGRAM Assignment4.
