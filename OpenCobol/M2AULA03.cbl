      ******************************************************************
      * Author: CLAUDIO SANTOS
      * Date: 20/12/2021
      * Purpose: FUNCAO TRIM
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. M2AULA03.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77  WK-NOME             PIC X(20) VALUE SPACES.

       PROCEDURE DIVISION.
       0000-INICIO.

           DISPLAY 'ENTRE COM SEU NOME: '
           ACCEPT WK-NOME

           UNSTRING WK-NOME DELIMITED BY ALL SPACES INTO WK-NOME
           DISPLAY 'E bom conhecer voce: ' FUNCTION TRIM
           (WK-NOME,TRAILING) '.'

                   STOP RUN.
       END PROGRAM M2AULA03.
