      ******************************************************************
      * Author: CLAUDIO SANTOS
      * Date: 08/12/2021
      * Purpose:ESTRUTURA DE DECISAO EVALUATE
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. M2AULA39.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  WK-VARIAVEIS.
           05 WK-MES                        PIC 99.
           05 WK-STATUS                     PIC 99.

       PROCEDURE DIVISION.

           INITIALISE WK-VARIAVEIS

           DISPLAY 'INFORME O NUMERO DE MES: '
           ACCEPT WK-MES

           DISPLAY 'INFORME NUMERO DE STATUS: '
           ACCEPT WK-STATUS

           EVALUATE WK-MES
               WHEN 1
                   DISPLAY 'JANEIRO'
               WHEN 2
                   DISPLAY 'FEVEREIRO'
               WHEN 3
                   DISPLAY 'MARCO'
               WHEN OTHER
                   DISPLAY 'MES INVALIDO!'
           END-EVALUATE

           EVALUATE WK-STATUS
               WHEN 1
                   DISPLAY 'HOMEM'
               WHEN 2
                   DISPLAY 'MULHER'
               WHEN 3
                   DISPLAY 'OUTRO'
               WHEN OTHER
                   DISPLAY 'STATUS INVALIDO! ' WK-STATUS
           END-EVALUATE

            STOP RUN.
       END PROGRAM M2AULA39.
