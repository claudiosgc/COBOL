      ******************************************************************
      * Author:CLAUDIO SANTOS
      * Date:10/12/2021
      * Purpose:ESTRUTURAS DE REPETICAO
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. M2AULA40.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  WK-VARIAVEIS.
           05 WK-CONTADOR           PIC 99.
           05 WK-TOTAL              PIC 99.
           05 WK-INDICE             PIC 99.

       PROCEDURE DIVISION.
       P100-INICIO.
           INITIALISE WK-VARIAVEIS
      *     PERFORM P300-PROCESSA-1    THRU P300-FIM 3 TIMES
      *     PERFORM P500-PROCESSA-2    THRU P500-FIM WITH TEST
      *                                     BEFORE UNTIL WK-CONTADOR = 5
           PERFORM P700-PROCESSA-3    THRU P700-FIM
           PERFORM P900-FINALIZA
            .


       P300-PROCESSA-1.
           ADD 1              TO WK-CONTADOR
           DISPLAY 'WK-CONTADOR: ' WK-CONTADOR

           MOVE ZEROS         TO WK-TOTAL
           PERFORM 3 TIMES
               ADD 1          TO WK-TOTAL
               DISPLAY 'WK-TOTAL: ' WK-TOTAL
           END-PERFORM
            .
       P300-FIM.

       P500-PROCESSA-2.
           ADD 1              TO WK-CONTADOR
           DISPLAY 'WK-CONTADOR: ' WK-CONTADOR

           MOVE ZEROS         TO WK-TOTAL
           PERFORM WITH TEST BEFORE UNTIL WK-TOTAL = 3
               ADD 1          TO WK-TOTAL
               DISPLAY 'WK-TOTAL: ' WK-TOTAL
           END-PERFORM
            .
       P500-FIM.

       P700-PROCESSA-3.

           PERFORM VARYING WK-INDICE FROM 1 BY 1 UNTIL WK-INDICE = 5
               DISPLAY 'WK-INDICE: ' WK-INDICE
           END-PERFORM
            .
       P700-FIM.


       P900-FINALIZA.
            STOP RUN.
       END PROGRAM M2AULA40.
