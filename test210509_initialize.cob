       IDENTIFICATION DIVISION.
       PROGRAM-ID. TEST-210509-2.
      *
      * INITILIZE Verb を使用して、データ初期化のテスト
      * 初期化後に、データを再セットする時は、
      * REPLACING を使えばOK。
      *
       ENVIRONMENT DIVISION.
      *
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  WS-NAME PIC A(30) VALUE 'ABCDEF'.
       01  WS-ID PIC 9(5).
       01  WS-ADDRESS. 
           05  WS-HOUSE-NUMBER PIC 9(3).
           05  WS-COUNTRY PIC X(15).
           05  WS-PINCODE PIC 9(6) VALUE 123456.
      *
       PROCEDURE DIVISION.
       A00-FIRST-PARA.

           INITIALIZE WS-NAME, WS-ADDRESS.
           INITIALIZE WS-ID REPLACING NUMERIC DATA BY 12345.
           DISPLAY "My name is     : '"WS-NAME"'".
           DISPLAY "My ID is       : '"WS-ID"'".
           DISPLAY "Address        : '"WS-ADDRESS"'".
           DISPLAY "House Number   : '"WS-HOUSE-NUMBER"'".
           DISPLAY "Country        : '"WS-COUNTRY"'".
           DISPLAY "Pincode        : '"WS-PINCODE"'".
           
           STOP RUN.
