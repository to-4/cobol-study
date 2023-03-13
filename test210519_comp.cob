       IDENTIFICATION DIVISION.
       PROGRAM-ID. TEST-210509-comp.
      *
      * COMP についてテスト
      * COMP は、COMPUTATIONAL(計算的な)の意味の予約語
      * 2進数で表現される
      * 通常は、数値1文字1バイトだが、
      * COMP をつけると、2文字で1バイトとなる
      *
       ENVIRONMENT DIVISION.
      *
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  WS-TEMP1 PIC 9(4) VALUE 1234.
       01  WS-TEMP2 PIC 9(4) VALUE 1234 COMP.
       01  WS-TEMP3 PIC 9(4) VALUE 1234 COMP-6.
      *
      
       PROCEDURE DIVISION.

           DISPLAY "WS-TEMP1 is    : '"WS-TEMP1"'".
           DISPLAY "WS-TEMP2 is    : '"WS-TEMP2"'".
           DISPLAY "WS-TEMP3 is    : '"WS-TEMP3"'".
       
           STOP RUN.
