      ******************************************************************
      * Author: CLAUDIO SANTOS
      * Date: 05/12/2021
      * Purpose: COMANDO INSPECT
      * Tectonics:
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. M2AULA28.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       77  WK-DATA            PIC X(10) VALUE SPACES.
       77  WK-TOTAL           PIC 99 VALUE ZEROS.

       PROCEDURE DIVISION.

           MOVE '05'   TO WK-DATA(01:02)
           MOVE '/'    TO WK-DATA(03:01)
           MOVE '12'   TO WK-DATA(04:02)
           MOVE '/'    TO WK-DATA(06:01)
           MOVE '2021' TO WK-DATA(07:04)

           DISPLAY WK-DATA.

      *     INSPECT WK-DATA TALLYING WK-TOTAL FOR ALL '/'
      *     BEFORE INITIAL '2021'
      *     DISPLAY 'TOTAL DE CARACTER: ' WK-TOTAL

           INSPECT WK-DATA REPLACING ALL '/' BY '-' AFTER '05'

           DISPLAY WK-DATA.

            STOP RUN.
       END PROGRAM M2AULA28.
