       IDENTIFICATION DIVISION.
       PROGRAM-ID. TEST-210520-File-Write.
      *
      * File Writing についてテスト
      * 外部ファイルを扱うには、
      * 「ENVIRONMENT DIVISION」 と 「DATA DIVISION」
      * で、まずはファイル情報の記述をしなければならない
      *
       ENVIRONMENT DIVISION.
       
      * 1. ENVIRON DIVISION での設定
      *
      * 「INPUT-OUTPUT SECTION」 (ファイル入出力のセクション) で
      * 「FILE-CONTROL」 (ファイル情報を設定する句) を記述する
      *  ---
      *  INPUT-OUTPUT SECTION.
      *  FILE-CONTROL.
      *  SELECT [ファイル変数] ASSIGN TO ['ファイルパス']
      *  ORGANIZATION IS LINE SEQUENTIAL
      *  ---
      *  SELECT 文で ファイルとファイル識別子の ファイル変数 を指定
      *  ORGANIZATION IS LINE SEQUENTIAL は、
      *  データ区切りを改行にするために記述
      *

       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT TESTFILE ASSIGN TO 'output/test210520.txt'
           ORGANIZATION IS LINE SEQUENTIAL.
      
      * 2. DATA DIVISION での設定
      *
      * ファイルに関するセクションを指定
      * 「FILE SECTION」 (ファイル指定のセクション) で
      * 「FD」 (File Description: ファイル説明句) で、ファイル変数を指定
      *  ---
      *  FILE SECTION.
      *  FD [ファイル変数].
      *  [ファイルレコード変数].
      *  ---
      *  FD の後に、ファイル定義と同内容のレコード変数を指定
      *  ※ 変数は、[レベル番号] [データアイテム] の形式
      *

       DATA DIVISION.
       FILE SECTION.
       FD  TESTFILE.
       01  TESTFILE-R.
           05 ITEM-REC PIC 9(2). 
              
       WORKING-STORAGE SECTION.
       01  WS-TEMP1 PIC 9(2) VALUE 01.
      *
       PROCEDURE DIVISION.
       MAIN SECTION.
           
      *    ファイルをアウトプット用にオープンする
      *    OPEN OUTPUT [ファイル変数]
           OPEN OUTPUT TESTFILE.
           
           MOVE 10 TO WS-TEMP1.
           MOVE WS-TEMP1 TO ITEM-REC.
           
      *    ファイルをアウトプット
      *    WRITE [レコード変数]
           WRITE TESTFILE-R.
           
           DISPLAY TESTFILE-R.
           
      *    ファイルをクローズする
      *    CLOSE [ファイル変数]
           CLOSE TESTFILE.
           
           STOP RUN.
