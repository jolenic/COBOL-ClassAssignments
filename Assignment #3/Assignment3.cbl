       program-id. Assignment3 as "Assignment3".

       environment division.
       configuration section.

       data division.
       file section.
       FD StudentFile.
       01 StudentInfo.
           03 StudentId        PIC 9(9).
           03 StudentName.
               05 Surname      PIC X(30).
               05 Initials     PIC X(4).
               05 GivenName    PIC X(30).
           03 DateOfBirth.
               05 BirthYear    PIC 9(4).
               05 BirthMonth   PIC 9(2).
               05 BirthDay     PIC 9(2).
           03 ProgramCode      PIC X(3).
           03 Gender           PIC A(1).
           
       
       working-storage section.

       procedure division.


           goback.

       end program Assignment3.
