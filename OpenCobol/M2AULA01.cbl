      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. M2AULA01.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77  WK-NOME             PIC X(20).
       77  WK-POSICAO          PIC 9(02) VALUE ZEROS.

       PROCEDURE DIVISION.
       0000-INICIO.

           DISPLAY 'ENTRE COM O NOME : '
           ACCEPT WK-NOME

           MOVE 20 TO WK-POSICAO

           PERFORM VARYING WK-POSICAO FROM 20 BY -1
           UNTIL WK-NOME(WK-POSICAO:1) NOT = SPACES
              SUBTRACT 1 FROM WK-POSICAO
           END-PERFORM

           DISPLAY 'E bom conhecer voce, ' WK-NOME(1:WK-POSICAO) '.'


            STOP RUN.
       END PROGRAM M2AULA01.
