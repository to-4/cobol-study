000010 IDENTIFICATION                   DIVISION.
000020 PROGRAM-ID.                      TEST-190801.
000030*
000040 ENVIRONMENT                      DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
         SWITCH-1 IS TEMP ON STATUS IS SW1-ON
                          OFF STATUS IS SW1-OFF.
      *          OFF STATUS IS U0-OFF.
      *
      * 環境名-2: 
      *  環境名-2 は、UPSI-0 ～ UPSI-7 と定義しても、
      *  または SYSTEM-SHUTDOWN と定義してもかまいません。 
      *  UPSI とは、1 バイトのユーザー・プログラマブル状況標識スイッチのこと
      *  
      *  UPSI-7 ～ UPSI-0 は、
      *  COBOL プログラムの外部で定義されたプログラム・スイッチを
      *  オブジェクト時に識別する COBOL 名です
      *  
      *  UPSI-0  1 番目のバイト (左端)
      *  UPSI-1  2 番目のバイト
      
      * 簡略名-2
      *   簡略名-2 はユーザー定義名の作成の規則に従います

      * ON STATUS IS、OFF STATUS IS
      *   UPSI スイッチは、
      *   年初や年末の処理のようなプログラム内の特殊条件を処理します
      * 
      * 条件-1、条件-2
      *   環境名-2 が外部スイッチを参照すると、 
      *   そのスイッチのオン/オフ状況が、
      *   条件-1、条件-2 といった条件名と関連付けられることがあります。 
      *   スイッチの状況は、条件名を介して得ることができます。 
      *   条件名は、ユーザー定義名の規則に従います。 
      *   少なくとも 1 文字は英字でなければなりません。
      *   条件名に関連付けられた値は、英数字と見なされます。

000050*
000060 DATA                             DIVISION.
       WORKING-STORAGE SECTION.
       01  WORK-AREA.
020200     10  SW-ON-STR PIC X(051) VALUE "SWITCH 1 ON!".
020200     10  SW-OFF-STR PIC X(051) VALUE "SWITCH 1 OFF.".
020200     10  TEMP2 PIC X(051) VALUE "".

000080 PROCEDURE                        DIVISION.
000090 MAIN.

           DISPLAY TEMP UPON CONSOLE.
           ACCEPT TEMP2  FROM TEMP.
           DISPLAY TEMP2 UPON CONSOLE.
     
           IF SW1-ON
               DISPLAY SW-ON-STR  UPON CONSOLE
           ELSE
               DISPLAY SW-OFF-STR UPON CONSOLE. 
000110     STOP RUN.
