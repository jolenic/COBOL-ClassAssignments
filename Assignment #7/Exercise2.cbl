      *********************************
      *    Name: Jennifer Olenic
      *    Student ID: 040998261
      *********************************
       
       program-id. Exercise2 as "Exercise2".
       author. Jennifer Olenic - 040998261.
       
       environment division.
       configuration section.
       
       data division.
       working-storage section.
       01 FIELD-1 PIC X(10) VALUE "AAABBXBBAA".
       01 FIELD-2 PIC X(10) VALUE "LastName".
       01 FIELD-3 PIC X(10) VALUE "FirstName".
       01 FIELD-4 PIC X(20) VALUE " ".
       
       procedure division.
       
           DISPLAY "INSPECT FIELD-1 REPLACING FIRST B BY Z.".
           INSPECT FIELD-1 REPLACING FIRST "B" BY "Z".
      *
      *    DISPLAY 'INSPECT FIELD-1 REPLACING ALL "B" BY "C".'.
      *    INSPECT FIELD-1 REPLACING ALL "B" BY "C".
      *
      *    DISPLAY 'STRING FIELD-2 DELIMITED BY SIZE'.
      *    DISPLAY 'FIELD-3 DELIMITED BY SPACE  '.
      *    DISPLAY 'INTO FIELD-4  '.
      *    DISPLAY  'ON OVERFLOW DISPLAY "OVERFLOW!"'.
      *    DISPLAY  'END-STRING'.
      *    STRING FIELD-2 DELIMITED BY SIZE
      *       FIELD-3 DELIMITED BY SPACE
      *    INTO FIELD-4
      *    ON OVERFLOW DISPLAY "OVERFLOW!"
      *    END-STRING
       
              DISPLAY "FIELD-1: " FIELD-1.
              DISPLAY "FIELD-1: " FIELD-2.
              DISPLAY "FIELD-3: " FIELD-3.
              DISPLAY "FIELD-4: " FIELD-4.
           
       
       end program Exercise2.
