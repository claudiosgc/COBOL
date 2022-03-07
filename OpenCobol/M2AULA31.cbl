      ******************************************************************
      * Author: CLAUDIO SANTOS
      * Date: 06/12/2021
      * Purpose: INSTRUCAO UNSTRING
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. M2AULA31.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       77  WK-NOME-COMPLETO            PIC X(30) VALUE SPACES.
       01  WK-NOME.
           05 WK-PRIM-NOME             PIC X(10) VALUE SPACES.
           05 WK-NOME-MEIO             PIC X(10) VALUE SPACES.
           05 WK-ULTI-NOME             PIC X(10) VALUE SPACES.
       77  WK-MOSTRA                   PIC X(50) VALUE SPACES.
       01  WK-CONT.
           05 WK-PONTEIRO              PIC 9(02) VALUE ZEROS.
           05 WK-TOTAL-CAMPOS          PIC 9(02) VALUE ZEROS.
           05 WK-TAMANHO-1             PIC 9(02) VALUE ZEROS.
           05 WK-TAMANHO-2             PIC 9(02) VALUE ZEROS.
           05 WK-TAMANHO-3             PIC 9(02) VALUE ZEROS.
      *******************************FORMA 1 ******************
       PROCEDURE DIVISION.
           DISPLAY 'FORMA 1'
           INITIALIZE WK-NOME-COMPLETO
                      WK-NOME
                      WK-MOSTRA

           MOVE 'MARIO CEZAR CASTRO' TO WK-NOME-COMPLETO


           UNSTRING
               WK-NOME-COMPLETO
               DELIMITED BY ALL SPACES
               INTO WK-PRIM-NOME
                    WK-NOME-MEIO
                    WK-ULTI-NOME
           END-UNSTRING.

           DISPLAY WK-PRIM-NOME
           DISPLAY WK-NOME-MEIO
           DISPLAY WK-ULTI-NOME
      *******************************FORMA 2 ******************
           DISPLAY 'FORMA 2'
           INITIALIZE WK-NOME-COMPLETO
                      WK-NOME
                      WK-MOSTRA
                      WK-CONT

           MOVE 'MARIO CEZAR CASTRO' TO WK-NOME-COMPLETO
           MOVE 1                    TO WK-PONTEIRO

           UNSTRING
               WK-NOME-COMPLETO
               DELIMITED BY SPACES
               INTO WK-PRIM-NOME
                    WK-NOME-MEIO
                    WK-ULTI-NOME
               WITH POINTER WK-PONTEIRO
               TALLYING IN WK-TOTAL-CAMPOS
           END-UNSTRING.

           DISPLAY WK-PRIM-NOME
           DISPLAY WK-NOME-MEIO
           DISPLAY WK-ULTI-NOME
           DISPLAY WK-PONTEIRO
           DISPLAY WK-TOTAL-CAMPOS
      *******************************FORMA 3 ******************
           DISPLAY 'FORMA 3'
           INITIALIZE WK-NOME-COMPLETO
                      WK-NOME
                      WK-MOSTRA
                      WK-CONT

           MOVE '*MARIO*CEZAR;CASTRO' TO WK-NOME-COMPLETO
           MOVE 2                    TO WK-PONTEIRO

           UNSTRING
               WK-NOME-COMPLETO
               DELIMITED BY '*' OR ';'
               INTO WK-PRIM-NOME
                    WK-NOME-MEIO
                    WK-ULTI-NOME
               WITH POINTER WK-PONTEIRO
               TALLYING IN WK-TOTAL-CAMPOS
           END-UNSTRING.

           DISPLAY WK-PRIM-NOME
           DISPLAY WK-NOME-MEIO
           DISPLAY WK-ULTI-NOME
           DISPLAY WK-PONTEIRO
           DISPLAY WK-TOTAL-CAMPOS

      *******************************FORMA 4 ******************
           DISPLAY 'FORMA 4'
           INITIALIZE WK-NOME-COMPLETO
                      WK-NOME
                      WK-MOSTRA
                      WK-CONT

           MOVE '*MARIO;CEZAR*CASTRO*' TO WK-NOME-COMPLETO
           MOVE 2                      TO WK-PONTEIRO

           UNSTRING
               WK-NOME-COMPLETO
               DELIMITED BY '*' OR ';'
               INTO WK-PRIM-NOME COUNT IN WK-TAMANHO-1
                    WK-NOME-MEIO COUNT IN WK-TAMANHO-2
                    WK-ULTI-NOME COUNT IN WK-TAMANHO-3
               WITH POINTER WK-PONTEIRO
               TALLYING IN WK-TOTAL-CAMPOS
           END-UNSTRING.

           DISPLAY WK-PRIM-NOME
           DISPLAY WK-NOME-MEIO
           DISPLAY WK-ULTI-NOME
           DISPLAY WK-PONTEIRO
           DISPLAY WK-TOTAL-CAMPOS
           DISPLAY WK-TAMANHO-1
           DISPLAY WK-TAMANHO-2
           DISPLAY WK-TAMANHO-3

                  STOP RUN.
       END PROGRAM M2AULA31.
