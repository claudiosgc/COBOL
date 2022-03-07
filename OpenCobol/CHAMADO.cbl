      ******************************************************************
      * Author:CLAUDIO SANTOS
      * Date:12/12/2021
      * Purpose: SUBROTINAS (OU MODULO) PROGRAMA CHAMADO
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. CHAMADO.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       LINKAGE SECTION.
       01 PARAMETRES.
           05 LK-RETURN PIC 99 VALUE 0.
           05 LK-NUM-1  PIC 99 VALUE 0.
           05 LK-NUM-2  PIC 99 VALUE 0.

       PROCEDURE DIVISION USING PARAMETRES.
       MAIN-PROCEDURE.
           DISPLAY 'PROGRAMA CHAMADO'
           DISPLAY 'RECEBEU LK-NUM-1: ' LK-NUM-1
           DISPLAY 'RECEBEU LK-NUM-2: ' LK-NUM-2

           COMPUTE LK-RETURN = LK-NUM-1 + LK-NUM-2

           GOBACK.
       END PROGRAM CHAMADO.
