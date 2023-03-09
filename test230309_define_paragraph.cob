      * ---------------------------------
      * 段落 定義テスト
      * syntax: how to define
      *
      *[paragraph name].
      *    --- (logic) --- 
      *    EXIT.

      * - how to call
      *    PERFORM [paragraph name].
      *    or 
      *    PERFORM [paragraph name1] THRU [paragraph name2] など
      * ---------------------------------

       IDENTIFICATION DIVISION.
       PROGRAM-ID. TEST-PARAGRAPH.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       
       01 WS-MESSAGE PIC X(30) VALUE "Hello world!.".
       
       PROCEDURE DIVISION.

      * A領域(8-11カラム)に、セクション名を書く
      * 書かなくても、処理は実行されるが、書くのが作法の様子
       MAIN-SECTION.
           PERFORM PARA-HELLO.


      *    B領域(12-72カラム)に、'STOP RUN.' を書くと、プログラムが終了。
           STOP RUN.

      * ------------
      * 段落定義
      * 8 列目から(8-11:A領域)段落名を書き始めて、"." で終える
       PARA-HELLO.

      *    ----------------
      *    ロジックを記載、12列目から(12-72: B領域)書き始める
      *    基本的には、文末に、ピリオドをつける

           MOVE 'Hello, Paragraph!' to WS-MESSAGE.
           DISPLAY WS-MESSAGE.
      *    ----------------

      *    最後に、B領域に、'EXIT.' を書いて、ブロックを閉じる
           EXIT.

       END PROGRAM TEST-PARAGRAPH.

