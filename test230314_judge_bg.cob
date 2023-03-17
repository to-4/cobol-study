       IDENTIFICATION DIVISION.
       PROGRAM-ID. TEST230314.
       
      *
       
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  WS-INPUT.
           03 WS-IP-FST    PIC 9(3) VALUE 100.
           03 WS-IP-NFS    PIC 9(3) VALUE 0.           
           03 WS-IP-HBA1C  PIC 9V99 VALUE 5.4.
           03 WS-IP-MED02  PIC 9 VALUE 1.

       01  WS-LSK-ADDITION PIC 9(1) VALUE 0.
       01  WS-CAT-DEFICT   PIC 9(1) VALUE 0.

       01  WS-LSK-BG       PIC 9(1) VALUE 0.

       PROCEDURE DIVISION.
       MAIN SECTION.
       
           PERFORM JUDGE-02-BG.


           STOP RUN.

    
       JUDGE-02-BG.

      *    IF 文では、IF ** THEN *** END-IF の間に、"." を付けるとエラー
           IF 0 < WS-IP-FST THEN
               DISPLAY "HALLO, WOLRD."
           END-IF.

           DISPLAY "HALLO, WOLRD.".
           EXIT.

       END PROGRAM TEST230314.
