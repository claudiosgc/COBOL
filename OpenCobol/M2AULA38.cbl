      ******************************************************************
      * Author: CLAUDIO SANTOS
      * Date: 10/12/2021
      * Purpose:ESTRUTURA DE DECISAO IF
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. M2AULA38.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  WK-VARIAVEIS.
           05 WK-NUM-1           PIC S9(04)V99.
           05 WK-NUM-2           PIC S9(05)V99.
           05 WK-TEXTO           PIC  X(20) VALUE SPACES.
           05 WK-STATUS          PIC  9.
           05 WK-LINHA           PIC 99.
           05 WK-CODIGO          PIC  9.
           05 WK-CAMPO           PIC 99.
           05 WK-DADO            PIC 99.
       PROCEDURE DIVISION.

           PERFORM P100-INICIAR.
           PERFORM P500-CALC.
           PERFORM P900-FINALIZAR.


       P000-ERRO.
           DISPLAY 'ERRO DE PROCESSO: '
           PERFORM P900-FINALIZAR
            .
       P100-INICIAR.
           INITIALISE WK-VARIAVEIS
            .
       P500-CALC.

            SET WK-NUM-2         TO 5
            COMPUTE WK-NUM-1 = WK-NUM-1 + (WK-NUM-2 * 3)
                               ON SIZE ERROR PERFORM P000-ERRO
            END-COMPUTE

            MOVE 'TEXTO'         TO WK-TEXTO

            IF WK-NUM-2 IS NUMERIC THEN
                DISPLAY 'CAMPO NUMERICO'
            ELSE
                DISPLAY 'CAMPO NAO NUMERICO'
                PERFORM P000-ERRO
            END-IF


            DISPLAY 'INFORME UM VALOR PARA O STATUS: '
            ACCEPT WK-STATUS

            IF WK-STATUS = 1 THEN
                DISPLAY 'HOMEM'
            END-IF

            IF WK-STATUS = 2 THEN
                DISPLAY 'MULHER'
            END-IF

            IF WK-STATUS = 3 THEN
                DISPLAY 'OUTRO'
            END-IF

            IF WK-STATUS GREATER 3
                PERFORM P000-ERRO
            END-IF

            DISPLAY 'INFORME NUMERO DA LINHA: '
            ACCEPT WK-LINHA

            DISPLAY 'INFORME NUMERO DO CODIGO: '
            ACCEPT WK-CODIGO

            DISPLAY 'INFORME NUMERO DDO CAMPO: '
            ACCEPT WK-CAMPO

            DISPLAY 'INFORME NUMERO DO DADO: '
            ACCEPT WK-DADO

            IF WK-LINHA GREATER 30 THEN
                DISPLAY 'OK, LINHA MAIOR QUE 30.'
            ELSE
                PERFORM P000-ERRO
            END-IF

            IF WK-CODIGO = 2 THEN
                DISPLAY 'OK, CODIGO CORRETO!'
            END-IF

            IF WK-CAMPO NOT LESS WK-DADO THEN
                DISPLAY'OK!'
            END-IF

            COMPUTE WK-NUM-1 = WK-NUM-2 * -1

            IF WK-NUM-1 IS NEGATIVE THEN
                DISPLAY 'OK, EH NEGATIVO'
            ELSE
                DISPLAY 'OK, NAO HE NEGATIVO'
            END-IF

            IF WK-NUM-2 GREATER THAN (WK-NUM-1 ** 2 - 4 * WK-NUM-2)
                DISPLAY 'OK, CALCULO CERTO: ' WK-NUM-2
            ELSE
                DISPLAY 'NAO OK, ' WK-NUM-2
            END-IF

            .
       P900-FINALIZAR.
                 STOP RUN.
       END PROGRAM M2AULA38.
