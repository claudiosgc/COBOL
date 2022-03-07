      ******************************************************************
      * Author:CLAUDIO SANTOS
      * Date: 06/12/2021
      * Purpose: ON SIZE ERROR
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. M2AULA32.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       77  WK-NUM-1            PIC 9(02) VALUE ZEROS.
       77  WK-NUM-2            PIC 9(02) VALUE ZEROS.
       77  WK-RESULT           PIC 9(02) VALUE ZEROS.
       PROCEDURE DIVISION.
       P001-INICIAR.

            PERFORM P100-CALCULAR.
            PERFORM P900-FINALIZAR.

       P100-CALCULAR.

           DISPLAY 'ENTRE COM PRIMEIRO VALOR: '
           ACCEPT WK-NUM-1

           DISPLAY 'ENTRE COM SEGUNDO VALOR: '
           ACCEPT WK-NUM-2

           COMPUTE WK-RESULT = WK-NUM-1 * WK-NUM-2
                   ON SIZE ERROR PERFORM P800-ERRO
           END-COMPUTE

           DISPLAY 'O RESULTADO E: ' WK-RESULT
            .

       P800-ERRO.

           DISPLAY 'ERRO DE CALCULO: ' WK-RESULT
           PERFORM P900-FINALIZAR
            .

       P900-FINALIZAR.
            STOP RUN.
       END PROGRAM M2AULA32.
