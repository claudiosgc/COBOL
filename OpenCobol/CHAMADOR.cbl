      ******************************************************************
      * Author:CLAUDIO SANTOS
      * Date:12/12/2021
      * Purpose: SUBROTINAS (OU MODULO) PROGRAMA CHAMADOR
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. CHAMADOR.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  WK-AREA.
           05 WK-RESULT       PIC 99 VALUE 0.
           05 WK-NUM-1        PIC 99 VALUE 0.
           05 WK-NUM-2        PIC 99 VALUE 0.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

           DISPLAY 'PROGRAMA CHAMADOR: '
           INITIALISE WK-AREA

           SET WK-NUM-1   TO 5
           SET WK-NUM-2   TO 3

           DISPLAY 'CHAMANDO PROGRAMA.....'
           CALL 'CHAMADO' USING WK-AREA

           DISPLAY 'PROGRAMA CHAMADO EXECUTADO COM SUCESSO: '
                                                    WK-RESULT

            STOP RUN.
       END PROGRAM CHAMADOR.
