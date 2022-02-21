      ******************************************************************
      * Author: CLAUDIO SANTOS
      * Date: 01/12/2021
      * Purpose: SOMA 2 NUMEROS
      * Tectonics:
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. M2AULA17.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77  WK-N1                PIC 9(2) VALUE ZEROS.
       77  WK-N2                PIC 9(2) VALUE ZEROS.
       77  WK-RESULT            PIC Z(3) VALUE ZEROS.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

            MOVE 5  TO WK-N1
            MOVE 3  TO WK-N2
            COMPUTE WK-RESULT = WK-N1 + WK-N2

            DISPLAY 'RESULTADO....:' WK-RESULT

            STOP RUN.
       END PROGRAM M2AULA17.
