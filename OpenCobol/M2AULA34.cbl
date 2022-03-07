      ******************************************************************
      * Author:CLAUDIO SANTOS
      * Date: 07/12/2021
      * Purpose: INSTRUCAO - CORR
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. MEAULA34.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  WK-LAYOUT-1.
           05 WK-NOME       PIC X(30).
           05 WK-ENDERECO   PIC X(20).
           05 WK-TELEFONE   PIC X(20).
           05 WK-EMAIL      PIC X(20).
           05 WK-CIDADE     PIC X(30).
           05 WK-ESTADO     PIC X(30).

       01  WK-LAYOUT-2.
           05 WK-NOME       PIC X(30).
           05 WK-ENDERECO   PIC X(20).
           05 WK-EMAIL      PIC X(20).
           05 WK-UF         PIC X(30).
           05 WK-CIDADE     PIC X(30).
           05 WK-TEL        PIC X(20).

       PROCEDURE DIVISION.

            MOVE 'CLAUDIO SANTOS'   TO WK-NOME     OF WK-LAYOUT-1
            MOVE 'RUA 10'           TO WK-ENDERECO OF WK-LAYOUT-1
            MOVE '333-2221'         TO WK-TELEFONE OF WK-LAYOUT-1
            MOVE 'TESTE@TESTE'      TO WK-EMAIL    OF WK-LAYOUT-1
            MOVE 'SAO JOSE'         TO WK-CIDADE   OF WK-LAYOUT-1
            MOVE 'SAO PAULO'        TO WK-ESTADO   OF WK-LAYOUT-1

            MOVE CORR WK-LAYOUT-1        TO WK-LAYOUT-2

            DISPLAY 'WK-LAYOUT-1: ' WK-LAYOUT-1
            DISPLAY 'WK-LAYOUT-2: ' WK-LAYOUT-2
            DISPLAY 'WK-LAYOUT-1: ' LENGTH OF WK-LAYOUT-1
            DISPLAY 'WK-LAYOUT-2: ' LENGTH OF WK-LAYOUT-2

            STOP RUN.
       END PROGRAM MEAULA34.
