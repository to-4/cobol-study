       IDENTIFICATION DIVISION.
       PROGRAM-ID. TEST230317.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  AC-VAR PIC X(30).
       01  FG-END PIC 9(1).

      * const

       01  CS-ON PIC 9(1) VALUE 1.
       01  CS-OFF PIC 9(1) VALUE 0.

      * 
       PROCEDURE DIVISION.
       MAIN SECTION.
       
           MOVE CS-OFF TO FG-END.
           PERFORM PARA-ACCEPT-NAME UNTIL FG-END = CS-ON.

           STOP RUN.
      * 
       PARA-ACCEPT-NAME.

      *    accept the input value.
           DISPLAY "*"
           DISPLAY "What's your name?  ('E' to end this program)"
           ACCEPT AC-VAR.
           
      *    end this program if "E" is entried
           IF FUNCTION TRIM(AC-VAR) = "E" THEN
              MOVE CS-ON TO FG-END
           ELSE
              DISPLAY "Hi " FUNCTION TRIM(AC-VAR) ". Have a good day."
           END-IF.

           EXIT.

       END PROGRAM TEST230317.
