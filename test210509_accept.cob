       IDENTIFICATION DIVISION.
       PROGRAM-ID. TEST-210509.
      *
      * ACCEPT Verb を使用して、データ入出力のテスト
      * 日付は、"ACCEPT [変数名] FROM DATE" でOK。
      *
       ENVIRONMENT DIVISION.
      *
       DATA DIVISION.
           WORKING-STORAGE SECTION.
           01 WS-STUDENT-NAME PIC X(25).
           01 WS-DATE PIC X(10).
      *
       PROCEDURE DIVISION.
           ACCEPT WS-STUDENT-NAME.
           ACCEPT WS-DATE FROM DATE.
           DISPLAY "Name :  " WS-STUDENT-NAME.
           DISPLAY "Date :  " WS-DATE.
       STOP RUN.
