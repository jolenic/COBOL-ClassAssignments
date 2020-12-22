      *********************************
      *    Name: Jennifer Olenic
      *    Student ID: 040998261
      *********************************
       
       IDENTIFICATION DIVISION.
       PROGRAM-ID. Program5 as "Program5".
       AUTHOR.  Jennifer Olenic - 040998261.
       

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 numCount         PIC 9.
       01 nextNum          PIC 99V9.
       01 total            PIC 9(4)V9.
       01 avg              PIC 99V9.
       01 cityName         PIC A(8).
       01 printLine1.
           03 FILLER           PIC X(14) VALUE "   MONTREAL   ".
           03 FILLER           PIC X(14) VALUE "   OTTAWA     ".
           03 FILLER           PIC X(14) VALUE "   TORONTO    ".
           03 FILLER           PIC X(14) VALUE "   KINGSTON   ".
           03 FILLER           PIC X(11) VALUE "   CORNWALL".
       01 printLine2.
           03 FILLER           PIC X(4) VALUE SPACES.
           03 montrealAvg      PIC 99.9.
           03 FILLER           PIC X(10) VALUE "C         ".
           03 ottawaAvg        PIC 99.9.
           03 FILLER           PIC X(10) VALUE "C         ".
           03 torontoAvg       PIC 99.9.
           03 FILLER           PIC X(10) VALUE "C         ".
           03 kingstonAvg      PIC 99.9.
           03 FILLER           PIC X(10) VALUE "C         ".
           03 cornwallAvg      PIC 99.9.
           03 FILLER           PIC X(3) VALUE "C  ".

       PROCEDURE DIVISION.
       MAIN SECTION.
           PERFORM INITIALIZATION.
           PERFORM GET-AVERAGES.
           PERFORM TERMINATION.
           STOP RUN.
               
       INITIALIZATION SECTION.
           INITIALIZE-FIELDS.
               MOVE ZEROS TO numCount, nextNum, total, avg, ottawaAvg, 
               montrealAvg, torontoAvg, kingstonAvg, cornwallAvg.
               DISPLAY SPACE UPON CRT.
           
       GET-AVERAGES SECTION.
           
           GET-MONTREAL.
               MOVE "Montreal" TO cityName.
               PERFORM GET-AVG.
               MOVE avg TO montrealAvg.
               DISPLAY SPACE UPON CRT.
           
           GET-OTTAWA.
               MOVE "Ottawa" TO cityName.
               PERFORM GET-AVG.
               MOVE avg TO ottawaAvg.
               DISPLAY SPACE UPON CRT.
           
           GET-TORONTO.
               MOVE "Toronto" TO cityName.
               PERFORM GET-AVG.
               MOVE avg TO torontoAvg.
               DISPLAY SPACE UPON CRT.
           
           GET-KINGSTON.
               MOVE "Kingston" TO cityName.
               PERFORM GET-AVG.
               MOVE avg TO kingstonAvg.
               DISPLAY SPACE UPON CRT.
           
           GET-CORNWALL.
               MOVE "Cornwall" TO cityName.
               PERFORM GET-AVG.
               MOVE avg TO cornwallAvg.
               DISPLAY SPACE UPON CRT.

           
       MATH SECTION.
           GET-AVG.
               DISPLAY "ENTER the last 5 daily high temperatures for: "
                   cityName.
               DISPLAY SPACES.
               DISPLAY "Temperatures (one decimal place only)"
               MOVE ZERO TO total.
               MOVE 1 to numCount.
               PERFORM ADD-TEMPS UNTIL numCount = 6.
               DIVIDE total BY 5 GIVING avg.
           
           ADD-TEMPS.
               DISPLAY "Enter temperature #" numCount " : ".
               ACCEPT nextNum.
               ADD nextNum TO total.
               ADD 1 TO numCount.

         
           
       TERMINATION SECTION.
           DISPLAY-RESULTS.
               DISPLAY "Here are the average temperatures for cities in 
      -        "the area:".
               DISPLAY SPACES.
               DISPLAY printLine1.
               DISPLAY printLine2.
               DISPLAY SPACES.

               

       END PROGRAM Program5.