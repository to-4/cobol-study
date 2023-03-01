      * ---------------------------------
      * 関数
      * ※1. IDENTIFICATION DIVISION.では、
      *      PROGRAM-ID ではなく、FUNCTION-ID を使用
      * ※2. 呼出元より上に定義することが必須
      * ※3. 呼出元より下に定義した場合、下記のコンパイルエラー
      *      functions may not be defined within a program/function
      * ---------------------------------

       IDENTIFICATION DIVISION.
       FUNCTION-ID. TEST-FUNCTION.

       DATA DIVISION.
           LINKAGE SECTION.
       
           01 RESULT PIC X(30) VALUE "Hello world!.".
       
       PROCEDURE DIVISION
                 RETURNING RESULT.
           MOVE 'HELLO' to RESULT.
           EXIT FUNCTION.

       END FUNCTION TEST-FUNCTION.

      * ---------------------------------
      * 関数呼出側
      * ※1. ENVIRONMENT DIVISION.では、
      *      CONFIGURATION-SECTION. を使用
      *      REPOSITORY.
      *         FUNCTION [関数名].
      * ※2. 呼出元より下に定義した場合、下記のコンパイルエラー
      *      functions may not be defined within a program/function
      * ---------------------------------
       IDENTIFICATION DIVISION.
       PROGRAM-ID. TEST.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       REPOSITORY.
           FUNCTION TEST-FUNCTION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
           01 RESULT PIC X(30).
       
       PROCEDURE DIVISION.
       
           DISPLAY "Calling a user defined function...".
           MOVE FUNCTION TEST-FUNCTION TO RESULT.
           DISPLAY "Result of add function is " RESULT "."
      *     DISPLAY "Result of the function is HELLO ."
       
           STOP RUN.
