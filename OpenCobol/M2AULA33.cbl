      ******************************************************************
      * Author: CLAUDIO SANTOS
      * Date: 07/12/2021
      * Purpose: COMANDO LENGTH
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. M2AULA33.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       01  WK-ENDERECO.
           05 WK-RUA                PIC X(20) VALUE SPACES.
           05 WK-BAIRRO             PIC X(20) VALUE SPACES.
           05 WK-CIDADE             PIC X(30) VALUE SPACES.
       77  WK-COMPRIMENTO           PIC 99 VALUE 0.

       PROCEDURE DIVISION.

           DISPLAY 'O COMPRIMENTO DO GRUPO ENDERECO EH: '
                                    LENGTH OF WK-ENDERECO

           COMPUTE WK-COMPRIMENTO = FUNCTION LENGTH (WK-ENDERECO)

           DISPLAY 'OUTRA FORMA: ' WK-COMPRIMENTO


            STOP RUN.
       END PROGRAM M2AULA33.
