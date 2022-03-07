      ******************************************************************
      * Author: CLAUDIO SANTOS
      * Date: 05/12/2021
      * Purpose: COMANDO MOVE
      * Tectonics:
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. M2AULA24.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       77  WK-DATA      PIC X(10) VALUE SPACES.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

      *      05/12/2021

           MOVE '05'   TO WK-DATA(01:02)
           MOVE '/'    TO WK-DATA(03:01)
           MOVE '12'   TO WK-DATA(04:02)
           MOVE '/'    TO WK-DATA(06:01)
           MOVE '2021' TO WK-DATA(07:04)

           DISPLAY WK-DATA


            STOP RUN.

       END PROGRAM M2AULA24.
