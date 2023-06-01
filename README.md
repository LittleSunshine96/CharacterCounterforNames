# CharacterCounterforNames
Full Name chosen letter counter

**LC-3 SIMULATOR**
=========================================

-------------------------------------------
**TEAM NAME: [TEAM-A]**
----------------------------------------------------------
**MATHEW B., CIARA J., FELIPE L.**
------------------------------------------------------------------
The goal of this LC-3 program is to display the frequency of characters 
of the user's full name after user inputs a given letter. As prompted the 
user should be able to input full name and chose a letter to count. When
input the program will output the numerical value that will represent the 
letter.
-------------------------------------------------------------------------------
*Use the link below to access and download LC-3 Editor and Simulator*
**-Open LC-3** (https://highered.mheducation.com/sites/0072467509/student_view0/lc-3_simulator.html)
--https://1drv.ms/u/s!AmouINsS2XddgUlP3Twv-MkW0Pkz?e=Cgy2zp

#_**Character counter for names**_ 
##_**Input full name case sensitive**_
###_**Input chosen letter**_ 
####_**Frequency of letter chosen**_
---------------------------------------------------------------------------------
; get_full_name - TAKES INPUT (FULL NAME) FROM USER AND STORES IN ARRAY
;
; PARAMETER (R1): THE ADDRESS OF THE ARRAY THE INPUT IS STORED
; PARAMETER (R2): SENTINEL KEY
;
; RETURNS: N/A
---------------------------------------------------------------------------------



---------------------------------------------------------------------------------
; count_frequency - COUNTS FREQUENCY OF GIVEN LETTER IN GIVEN STRING
;
; PARAMETER (R1): THE ADDRESS OF THE ARRAY THE INPUT IS STORED
; PARAMETER (R4): GIVEN LETTER
;
; RETURNS: (R2): THE FREQUENCY OF GIVEN LETTER IN GIVEN STRING
---------------------------------------------------------------------------------


 
------------------------------------------------------------------------------------
;
;       PROGRAM DATA
;stack_addr              .FILL       xFE00
;full_name               .FILL       x4000
;
;inputNameMsg            .STRINGZ    "Input your full name (case sensitive): "
;inputLetterMsg          .STRINGZ    "Input a letter: "
;resultMsg               .STRINGZ    "Frequency of given letter: "
;
;sentinel                .FILL       #-10
;newline                 .FILL       x0A
;zero                    .FILL       x30
----------------------------------------------------------------------------------
