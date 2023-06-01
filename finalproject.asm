
;CIS-11
;ASSEMBLY LANGUAGE
;PROFESSOR KASEY NGUYEN
;CHARACTER COUNTER FULL NAME
;CIARA JONES


.ORIG x3000                 ;ORIGINATION ADDRESS 

LD R6, stack_addr           ;LOAD DATA OF ADDRESS TO R6

LEA R0, inputNameMsg        ;LOAD ADDRESS INPUT NAME MSG
PUTS                        ;DISPLAY ON CONSOLE

LD R1, full_name            ;LOAD DATA FULLNAME TO R1
LD R2, sentinel             ;LOAD DATA TO R2

JSR get_full_name           ;COMPUTE THE ADDRESS SUBROUTINE

LEA R0, inputLetterMsg      ;LOAD ADDRESS INPUT LETTER TO R0
PUTS                        ;DISPLAY ON CONSOLE

GETC                        ;INPUT CHARACTER
OUT                         ;DISPLAY THE SUM 
AND R4, R4, #0              ;CLEAR R4
ADD R4, R4, R0              ;CONVERT INTO AN INTEGER
LD R0, newline              ;LOAD DATA TO R0
OUT                         ;DISPLAY THE SUM

JSR count_frequency         ;COMPUTE THE FREQUENCY SUBROUTINE

LEA R0, resultMsg           ;LOAD ADDRESS RESULTMSG
PUTS                        ;DISPLAY ON CONSOLE
LD R3, zero                 ;READ DATA FROM R3
ADD R0, R2, R3              ;R0 AND R2 STORED IN R3
OUT                         ;DISPLAY THE SUM
HALT                        ;PAUSE PROGRAM 

;---------------------------------------------------------------------------------
; get_full_name - TAKES INPUT (FULL NAME) FROM USER AND STORES IN ARRAY
;
; PARAMETER (R1): THE ADDRESS OF THE ARRAY THE INPUT IS STORED
; PARAMETER (R2): SENTINEL KEY
;
; RETURNS: N/A
;---------------------------------------------------------------------------------
get_full_name
ADD R6, R6, #-1           ;DECRE 1
STR R7, R6, #0            ;STORE R7 TO R6
ADD R6, R6, #-1           ;DECRE 1
STR R2, R6, #0            ;STORE R2 TO R6
ADD R6, R6, #-1           ;DECRE 1
STR R1, R6, #0            ;STORE R1 TO R6 

AND R3, R3, #0            ;CLEAR R3
USER_INPUT_LOOP           ;LOAD INPUT
GETC                      ;INPUT CHARCTER
OUT                       ;DISPLAY THE SUM 

ADD R3, R0, R2            ;R3 AND R0 STORED IN R2
BRz STOP_USER_INPUT_LOOP  ;BRANCH

STR R0, R1, #0            ;STORE R0 TO R1
ADD R1, R1, #1            ;INCRE 1

BR USER_INPUT_LOOP        ;BRANCH USER TO INPUT
STOP_USER_INPUT_LOOP      ;STOP USER INPUT

LDR R1, R6, #0            ;LOAD R1 TO R6
ADD R6, R6, #1            ;INCRE 1
LDR R2, R6, #0            ;LOAD R2 TO R6
ADD R6, R6, #1            ;INCRE 1
LDR R7, R6, #0            ;LOAD R7 TO R6
ADD R6, R6, #1            ;INCRE 1

RET                       ;RETURN

;---------------------------------------------------------------------------------
; count_frequency - COUNTS FREQUENCY OF GIVEN LETTER IN GIVEN STRING
;
; PARAMETER (R1): THE ADDRESS OF THE ARRAY THE INPUT IS STORED
; PARAMETER (R4): GIVEN LETTER
;
; RETURNS: (R2): THE FREQUENCY OF GIVEN LETTER IN GIVEN STRING
;---------------------------------------------------------------------------------
count_frequency
ADD R6, R6, #-1            ;DECRE 1
STR R7, R6, #0             ;STORE R7 TO R6
ADD R6, R6, #-1            ;DECRE 1
STR R1, R6, #0             ;STORE R1 TO R6
ADD R6, R6, #-1            ;DECRE 1
STR R4, R6, #0             ;STORE R4 TO R6

NOT R4, R4                 ;NEGATE
ADD R4, R4, #1             ;INCRE 1
AND R2, R2, #0             ;CLEAR R2
ITERATION_LOOP             ;ITERATE
LDR R3, R1, #0             ;LOAD R3 TO R1
BRz STOP_ITERATION_LOOP    ;BRANCH IF ZERO

ADD R3, R3, R4             ;CONVERT INTO INTEGER
BRnp SKIP_INCREMENT        ;BRANCH P OR N SKIP
ADD R2, R2, #1             ;INCRE 1
SKIP_INCREMENT             ;SKIP INCRE
ADD R1, R1, #1             ;INCRE 1
BR ITERATION_LOOP          ;BRANCH LOOP
STOP_ITERATION_LOOP        ;STOP


LDR R4, R6, #0             ;LOAD R4 TO R6
ADD R6, R6, #1             ;INCRE 1
LDR R1, R6, #0             ;LOAD R1 TO R6
ADD R6, R6, #1             ;INCRE 1
LDR R7, R6, #0             ;LOAD R7 TO R6
ADD R6, R6, #1             ;INCRE 1

RET                        ;RETURN 


;-------------------------
;
;       PROGRAM DATA
;
;-------------------------
stack_addr              .FILL       xFE00
full_name               .FILL       x4000

inputNameMsg            .STRINGZ    "Input your full name (case sensitive): "
inputLetterMsg          .STRINGZ    "Input a letter: "
resultMsg               .STRINGZ    "Frequency of given letter: "

sentinel                .FILL       #-10
newline                 .FILL       x0A
zero                    .FILL       x30





.END