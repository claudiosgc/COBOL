      ******************************************************************
      * Author:CLAUDIO SANTOS
      * Date: 05/12/2021
      * Purpose: INSTRUCAO STRING
      * Tectonics:
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. M2AULA30.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       77  WK-CONTEUDO             PIC X(30) VALUE SPACES.
       77  WK-TEXTO                PIC X(40) VALUE SPACES.
       77  WK-PONTEIRO             PIC 99 VALUE ZEROS.

       PROCEDURE DIVISION.

      *************PRIMEIRA FORMA*********************
           INITIALISE WK-CONTEUDO
                      WK-TEXTO

           STRING 'CLAUDIO'
                  ' '
                  'SANTOS'
                  DELIMITED BY SIZE INTO WK-CONTEUDO
           END-STRING
           DISPLAY WK-CONTEUDO

      *************SEGUNDA FORMA*********************
           INITIALISE WK-CONTEUDO
                      WK-TEXTO


           MOVE 'O ANDRE COSTA ESTA MINISTRANDO CURSO' TO WK-TEXTO

           STRING
                 WK-TEXTO(01:07)
                 WK-TEXTO(15:22)

                  DELIMITED BY SIZE INTO WK-CONTEUDO
           END-STRING
           DISPLAY WK-CONTEUDO

      *************TERCEIRA FORMA*********************
           INITIALISE WK-CONTEUDO
                      WK-TEXTO
                      WK-PONTEIRO

           MOVE 'O             ESTA MINISTRANDO CURSO' TO WK-TEXTO
           SET WK-PONTEIRO  TO 3

           STRING
                 'ANDRE COSTA'
                  DELIMITED BY SIZE INTO WK-TEXTO
                  WITH POINTER WK-PONTEIRO
           END-STRING
           DISPLAY WK-TEXTO

                STOP RUN.
       END PROGRAM M2AULA30.
