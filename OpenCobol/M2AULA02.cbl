      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. M2AULA02.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77  WK-NOME            PIC A(20).
       77  WK-TAMANHO         PIC 9(02) VALUE ZEROS.

       PROCEDURE DIVISION.

           DISPLAY 'ENTRE COM NOME: '
           ACCEPT WK-NOME

           INSPECT FUNCTION REVERSE (WK-NOME)
               TALLYING WK-TAMANHO FOR LEADING SPACES

           COMPUTE WK-TAMANHO =
               ((FUNCTION LENGTH (WK-NOME) - WK-TAMANHO) - 1)
           END-COMPUTE

           IF WK-TAMANHO > 0 THEN
               DISPLAY  'E bom conhecer voce, ' WK-NOME(1:WK-TAMANHO)
           ELSE
               DISPLAY 'NOME EM BRANCO'
           END-IF

           STOP RUN.
       END PROGRAM M2AULA02.
