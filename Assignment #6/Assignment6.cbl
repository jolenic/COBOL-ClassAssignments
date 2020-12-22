      *********************************
      *    Name: Jennifer Olenic
      *    Student ID: 040998261
      *********************************
       
       identification division.
       program-id.         Assignment6 as "Assignment6"
       author.             Jennifer Olenic - 040998261.
       date-written.       2020-10-24.
       date-compiled.      2020-10-24.
       
       environment division.
       input-output section.
           file-control.
               select inFile assign 
               "C:\DataFiles\Assignment#6_WeeklySalaryDataFile.dat"
                   organization line sequential.
               select salesReport assign 
               "C:\DataFiles\SalespersonRecognition.rpt"
                   organization line sequential.
               select salaryExpenses assign
               "C:\DataFiles\SalaryExpense.rpt"
                   organization line sequential.
               
       configuration section.

       data division.
       FD inFile.
       01 inRec.                
           03 employeeID       pic x(4).
           03 jobCode          pic x.
           03 empLastName      pic x(14).
           03 empFirstName     pic x(14).
           03 empStartDate     pic x(8).
           03 storeNo          pic x(4).
           03 weeklySalary     pic 9(4)V9(2).
           03 salesAmount      pic x(8).
       FD salesReport.
       01 salesRecord.
           03 salesLastName    pic x(14).
           03 salesFirstName   pic x(14).
           03 filler           pic x(4) value all spaces.
           03 salesStoreNo     pic x(4).
           03 filler           pic x(19) value all spaces.
       FD salaryExpenses.
       01 expenseRecord.
           03 salaryCat        pic x(11).
           03 filler           pic x(3).
           03 salaryTotal      pic Z(4).9(2).
           03 filler           pic x(25).
           
           
       working-storage section.
       01 ws-eof               pic 9(4) value 0.
           88 end-of-file              value 1.
       01 ws-record-count      pic 9(4) value 0.
       01 expenseTitle     pic x(46) value 
           "Salary expense for the week ending: 2020-10-24".
       01 salesReportHeader.
           03 reportTitle      pic x(55) value 
           "Employee recognition for the week ending: 2020-10-24". 
           03 dashLine         pic x(44) value all '-'.
           03 headings.
               05 ln           pic x(14) value "Last Name     ".
               05 fn           pic x(14) value "First Name    ".
               05 store        pic x(16) value "    Store #     ".
       01 store1-m-total       pic 9(5)V9(2).
       01 store1-s-total       pic 9(5)V9(2).
       01 store1-a-total       pic 9(5)V9(2).
       01 store1-c-total       pic 9(5)V9(2).
       01 store2-m-total       pic 9(5)V9(2).
       01 store2-s-total       pic 9(5)V9(2).
       01 store2-a-total       pic 9(5)V9(2).
       01 store2-c-total       pic 9(5)V9(2).
       01 store3-m-total       pic 9(5)V9(2).
       01 store3-s-total       pic 9(5)V9(2).
       01 store3-a-total       pic 9(5)V9(2).
       01 store3-c-total       pic 9(5)V9(2).       
       01 blank-line           pic x value " ".

       procedure division.
       prog.
           perform init-para
           perform process-rec until end-of-file
           perform end-para.
           
       init-para.
           open input inFile.
           open output salesReport.
           write salesRecord from reportTitle.
           write salesRecord from dashLine.
           write salesRecord from headings.
           write salesRecord from dashLine.
           move all spaces to salesRecord.
           move zero to store1-m-total store1-s-total store1-a-total 
           store1-c-total store2-m-total store2-s-total store2-a-total 
           store2-c-total store3-m-total store3-s-total store3-a-total 
           store3-c-total.
           
       process-rec.
           perform read-file.
           perform check-sales.
           perform check-salary-expenses.

       read-file.
           read inFile
               at end
                   set end-of-file to true
               not at end
                   add 1 to ws-record-count
           end-read.
           
       check-sales.
           if jobCode = 'S' AND salesAmount > 100000.00
               move empLastName to salesLastName
               move empFirstName to salesFirstName
               move storeNo to salesStoreNo
               write salesRecord
           end-if.
           
       check-salary-expenses.
           if storeNo = 0001
               evaluate jobCode
                   when "M"
                       add weeklySalary to store1-m-total
                   when "S"
                       add weeklySalary to store1-s-total
                   when "A"
                       add weeklySalary to store1-a-total
                   when "C"
                       add weeklySalary to store1-c-total
               end-evaluate
           else if storeNo = 0002
               evaluate jobCode
                   when "M"
                       add weeklySalary to store2-m-total
                   when "S"
                       add weeklySalary to store2-s-total
                   when "A"
                       add weeklySalary to store2-a-total
                   when "C"
                       add weeklySalary to store2-c-total
               end-evaluate
           else if storeNo = 0003
               evaluate jobCode
                   when "M"
                       add weeklySalary to store3-m-total
                   when "S"
                       add weeklySalary to store3-s-total
                   when "A"
                       add weeklySalary to store3-a-total
                   when "C"
                       add weeklySalary to store3-c-total
               end-evaluate
           end-if.
               
       end-para.
           close inFile.
           close salesReport.
           open output salaryExpenses.
           write expenseRecord from expenseTitle.
           write expenseRecord from blank-line.
           write expenseRecord from "STORE #1:".
           move "Management:" to salaryCat.
           move store1-m-total to salaryTotal.
           write expenseRecord.
           move "Sales     :" to salaryCat.
           move store1-s-total to salaryTotal.
           write expenseRecord.
           move "Admin     :" to salaryCat.
           move store1-a-total to salaryTotal.
           write expenseRecord. 
           move "Custodial :" to salaryCat.
           move store1-c-total to salaryTotal.
           write expenseRecord.
           write expenseRecord from blank-line.
           write expenseRecord from "STORE #2:".
           move "Management:" to salaryCat.
           move store2-m-total to salaryTotal.
           write expenseRecord.
           move "Sales     :" to salaryCat.
           move store2-s-total to salaryTotal.
           write expenseRecord.
           move "Admin     :" to salaryCat.
           move store2-a-total to salaryTotal.
           write expenseRecord. 
           move "Custodial :" to salaryCat.
           move store2-c-total to salaryTotal.
           write expenseRecord.
           write expenseRecord from blank-line.
           write expenseRecord from "STORE #3:".
           move "Management:" to salaryCat.
           move store3-m-total to salaryTotal.
           write expenseRecord.
           move "Sales     :" to salaryCat.
           move store3-s-total to salaryTotal.
           write expenseRecord.
           move "Admin     :" to salaryCat.
           move store3-a-total to salaryTotal.
           write expenseRecord. 
           move "Custodial :" to salaryCat.
           move store3-c-total to salaryTotal.
           write expenseRecord.
           close salaryExpenses.
           
           STOP RUN.


       end program Assignment6.
