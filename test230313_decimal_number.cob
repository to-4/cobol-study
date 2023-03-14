       IDENTIFICATION DIVISION.
       PROGRAM-ID. TEST230313.

      *
      * 小数計算 についてテスト
      * COMPUTE ステートメントを使用するのが良いと思われる
      * 変数定義には、9 と V の組み合わせ
      *

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  WS-DEC1  PIC 9(3)V99 VALUE 1.12.
       01  WS-DEC2  PIC 9(3)V99 VALUE  0.2.
       01  WS-DEC3  PIC 9(3)V99.

      * 下記は Z編集用の変数 
      * どうやら型は文字列のようで、計算はできない　※ V の指定も付加
      * 数値型などをセットして、表示用に用いるのだと思われる
      * "." や "." などは認識する模様
       01  WS-DEC4  PIC ZZ9.99.
       01  WS-DEC5  PIC ZZ9.99.
       01  WS-DEC6  PIC ZZ9.99.

       PROCEDURE DIVISION.
       MAIN SECTION.
       
           COMPUTE WS-DEC3 = WS-DEC1 + WS-DEC2.
      *    COMPUTE WS-DEC6 = WS-DEC4 + WS-DEC5.
           MOVE WS-DEC1 TO WS-DEC4
           MOVE WS-DEC2 TO WS-DEC5
           MOVE WS-DEC3 TO WS-DEC6

           DISPLAY "WS-DEC1: "WS-DEC1.
           DISPLAY "WS-DEC2: "WS-DEC2.
           DISPLAY "WS-DEC1 + WS-DEC2: "WS-DEC3.
           DISPLAY "WS-DEC4: "WS-DEC4.
           DISPLAY "WS-DEC5: "WS-DEC5.
           DISPLAY "WS-DEC4 + WS-DEC5: "WS-DEC6.

           STOP RUN.
