      ******************************************************************
      * Author:CLAUDIO SANTOS
      * Date:08/12/2021
      * Purpose: MATEMATICA ALTERNATIVA
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. M2AULA35.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77  WK-NUM-1            PIC 99 VALUE 0.
       77  WK-NUM-2            PIC 99 VALUE 0.


       PROCEDURE DIVISION.
           PERFORM P001-INICIO
           PERFORM P500-CALC
           PERFORM P999-FIM
            .
       P001-INICIO.
           INITIALISE WK-NUM-1
                      WK-NUM-2

           DISPLAY 'DIGITE O PRIMEIRO NUMERO: '
           ACCEPT WK-NUM-1
           DISPLAY 'DIGITE O SEGUNDO NUMERO: '
           ACCEPT WK-NUM-2
           .
       P300-ERRO.
           DISPLAY 'ERRO DE PROCESSAMENTO.'
           PERFORM P999-FIM
           .

       P500-CALC.

           DISPLAY 'FUNCAO ADD'
           ADD WK-NUM-1          TO WK-NUM-2
                                 ON SIZE ERROR PERFORM P300-ERRO
           END-ADD
           DISPLAY 'VALOR DE WK-NUM-2 APOS ADD: ' WK-NUM-2

           DISPLAY 'FUNCAO SUBTRACT: '
           SUBTRACT 2            FROM WK-NUM-2
                                 ON SIZE ERROR PERFORM P300-ERRO
           END-SUBTRACT
           DISPLAY 'VALOR DE WK-NUM-2 APOS SUBTRACT: ' WK-NUM-2


           DISPLAY 'FUNCAO MULTIPLY: '
           MULTIPLY 2            BY WK-NUM-2
                                 ON SIZE ERROR PERFORM P300-ERRO
           END-MULTIPLY
           DISPLAY 'VALOR DE WK-NUM-2 APOS MULTIPLY: ' WK-NUM-2

           DISPLAY 'FUNCAO DIVIDE: '
           DIVIDE WK-NUM-2       BY WK-NUM-1 GIVING WK-NUM-2
                                 ON SIZE ERROR PERFORM P300-ERRO
           END-DIVIDE
           DISPLAY 'VALOR DE WK-NUM-2 APOS DIVIDE: ' WK-NUM-2
            .
       P999-FIM.
            STOP RUN.
       END PROGRAM M2AULA35.
