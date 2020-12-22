      *********************************
      *    Name: Jennifer Olenic
      *    Student ID: 040998261
      *********************************
       
       program-id. Exercise1 as "Exercise1".
       author. Jennifer Olenic - 040998261.
       
       environment division.
       configuration section.
       
       data division.
       working-storage section.
       01 WS-NUM1 PIC 9(4) VALUE 10.
       01 WS-NUM2 PIC 9(4) VALUE 10.
       01 WS-NUM3 PIC 9(4) VALUE 100.
       01 WS-NUM4 PIC 9(4) VALUE 100.
       01 WS-NUMA PIC 9(4) VALUE 10.
       01 WS-NUMB PIC 9(4) VALUE 10.
       01 WS-NUMC PIC 9(4) VALUE 10.
       01 WS-NUMD PIC 9(4) VALUE 100.
       01 WS-NUME PIC 9(4) VALUE 10.
       
       procedure division.
       SUBTRACT WS-NUM1 WS-NUM2 FROM WS-NUM3 WS-NUM4.
           DISPLAY "SUBTRACT WS-NUM1 WS-NUM2 FROM WS-NUM3 WS-NUM4.".
           DISPLAY "WS-NUM1: " WS-NUM1.
           DISPLAY "WS-NUM2: " WS-NUM2.
           DISPLAY "WS-NUM3: " WS-NUM3.
           DISPLAY "WS-NUM4: " WS-NUM4.
       
      *ADD WS-NUM1 WS-NUM2 TO WS-NUM3 GIVING WS-NUM4.
      *    DISPLAY "ADD WS-NUM1 WS-NUM2 TO WS-NUM3 GIVING WS-NUM4.".
      *    DISPLAY "WS-NUM1: " WS-NUM1.
      *    DISPLAY "WS-NUM2: " WS-NUM2.
      *    DISPLAY "WS-NUM3: " WS-NUM3.
      *    DISPLAY "WS-NUM4: " WS-NUM4.
      *
      *SUBTRACT WS-NUMA WS-NUMB WS-NUMC FROM WS-NUMD GIVING WS-NUME.
      *    DISPLAY
      *    "SUBTRACT WS-NUMA WS-NUMB WS-NUMC FROM WS-NUMD "
      *        "GIVING WS-NUME.".
      *    DISPLAY "WS-NUMA: " WS-NUMA.
      *    DISPLAY "WS-NUMB: " WS-NUMB.
      *    DISPLAY "WS-NUMC: " WS-NUMC.
      *    DISPLAY "WS-NUMD: " WS-NUMD.
      *    DISPLAY "WS-NUME: " WS-NUME.
      *
      *MULTIPLY WS-NUMA BY WS-NUMB WS-NUMC.
      *    DISPLAY "MULTIPLY WS-NUMA BY WS-NUMB WS-NUMC.".
      *    DISPLAY "WS-NUMA: " WS-NUMA.
      *    DISPLAY "WS-NUMB: " WS-NUMB.
      *    DISPLAY "WS-NUMC: " WS-NUMC.
      *    DISPLAY "WS-NUMD: " WS-NUMD.
      *    DISPLAY "WS-NUME: " WS-NUME.
      *
      *MULTIPLY WS-NUMA BY WS-NUMB GIVING WS-NUMC.
      *    DISPLAY "MULTIPLY WS-NUMA BY WS-NUMB GIVING WS-NUMC.".
      *    DISPLAY "WS-NUMA: " WS-NUMA.
      *    DISPLAY "WS-NUMB: " WS-NUMB.
      *    DISPLAY "WS-NUMC: " WS-NUMC.
      *    DISPLAY "WS-NUMD: " WS-NUMD.
      *    DISPLAY "WS-NUME: " WS-NUME.
      *
      *DIVIDE WS-NUMD BY 7 GIVING WS-NUMA REMAINDER WS-NUMB.
      *    DISPLAY
      *    "DIVIDE WS-NUMD BY 7 GIVING WS-NUMA REMAINDER WS-NUMB.".
      *    DISPLAY "WS-NUMA: " WS-NUMA.
      *    DISPLAY "WS-NUMB: " WS-NUMB.
      *    DISPLAY "WS-NUMC: " WS-NUMC.
      *    DISPLAY "WS-NUMD: " WS-NUMD.
      *    DISPLAY "WS-NUME: " WS-NUME.
      *
      *COMPUTE
      *WS-NUMC = (WS-NUM1 * WS-NUM2) - (WS-NUMA / WS-NUMB) + WS-NUM3.
      *    DISPLAY
      *    "COMPUTE WS-NUMC = (WS-NUM1 * WS-NUM2)-(WS-NUMA / "
      *        "WS-NUMB)+WS-NUM3.".
      *    DISPLAY "WS-NUMC: " WS-NUMC.
      *
      *
       
       end program Exercise1.
