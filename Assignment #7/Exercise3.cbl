      *********************************
      *    Name: Jennifer Olenic
      *    Student ID: 040998261
      *********************************

       program-id. Exercise3 as "Exercise3".
       author. Jennifer Olenic - 040998261.

       environment division.
       configuration section.

       data division.
       working-storage section.
       01 multiplicationTable.
         03 row occurs 11 times.
           05 colm occurs 11 times.
               07 nums pic Z(5) value 0.
               
       01 rowCounter   pic 99.
       01 workingRow   pic 99.
       01 colmCounter  pic 99.
       01 workingColm  pic 99.

       procedure division.

       prog.
           move 1 to rowCounter colmCounter.
           display "Multiplication Table 10x10:".
           move 1 to nums(1, 2).
           move 2 to nums(1, 3).
           move 3 to nums(1, 4).
           move 4 to nums(1, 5).
           move 5 to nums(1, 6).
           move 6 to nums(1, 7).
           move 7 to nums(1, 8).
           move 8 to nums(1, 9).
           move 9 to nums(1, 10).
           move 10 to nums(1, 11).
           perform calculate-row until rowCounter = 11.
           display multiplicationTable.
           
           stop run.
           
       calculate-row.
           move 1 to colmCounter
           add 1 to rowCounter giving workingRow.
           move rowCounter to nums(workingRow, colmCounter).
           perform multiply-row until colmCounter = 11.
           add 1 to rowCounter.
           
           
       multiply-row.
           add 1 to colmCounter giving workingColm.
           multiply rowCounter by colmCounter giving 
               nums(workingRow, workingColm).
           add 1 to colmCounter.
           
       end program Exercise3.
