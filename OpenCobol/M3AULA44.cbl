      ******************************************************************
      * Author: CLADUIO SANTOS
      * Date:18/12/2021
      * Purpose:COPY BOOK - TRABALHANDO COM LAYOUT
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. M3AULA44.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       77  WK-TAMANHO-1         PIC 99.
       77  WK-TAMANHO-2         PIC 99.
       77  WK-TAMANHO-3         PIC 99.

       COPY 'LAYOUT44'.

       PROCEDURE DIVISION.

           MOVE 'MARIA'            TO WK-PRIMEIRO-NOME
           MOVE 'CAMPOS'           TO WK-ULTIMO-NOME
           MOVE '551196115542'     TO WK-TELEFONE
           MOVE 'RUA DEZ, 03'      TO WK-RUA
           MOVE 'SAO JOSE'         TO WK-BAIRRO
           MOVE 'SAO PAULO'        TO WK-CIDADE
           MOVE 'SP'               TO WK-UF
           MOVE '0112002'          TO WK-CEP
           MOVE 'BRASILEIRA'       TO WK-NACIONALIDADE
           MOVE 'ENFERMEIRA'       TO WK-PROFISSAO

           MOVE  ZEROS             TO WK-TAMANHO-1
           INSPECT FUNCTION REVERSE(WK-PRIMEIRO-NOME)
               TALLYING WK-TAMANHO-1 FOR LEADING ' '

           DISPLAY '1 - NOME COMPLETO.: ' WK-PRIMEIRO-NOME
               (1:(FUNCTION LENGTH(WK-PRIMEIRO-NOME) - WK-TAMANHO-1))
                                         ' '
                                         WK-ULTIMO-NOME
           DISPLAY '2 - TELEFONE......: ' '+' WK-PAIS ' '
                                         '(' WK-DDD ')'
                                         ' '
                                         WK-PREFIXO
                                         '_'
                                         WK-SUFIXO

           MOVE ZEROS              TO WK-TAMANHO-1
           INSPECT FUNCTION REVERSE(WK-RUA)
               TALLYING WK-TAMANHO-1 FOR LEADING ' '

               MOVE ZEROS              TO WK-TAMANHO-2
           INSPECT FUNCTION REVERSE(WK-BAIRRO)
               TALLYING WK-TAMANHO-2 FOR LEADING ' '

           MOVE ZEROS              TO WK-TAMANHO-3
           INSPECT FUNCTION REVERSE(WK-CIDADE)
               TALLYING WK-TAMANHO-3 FOR LEADING ' '

           DISPLAY '3 - ENDERECO......: ' WK-RUA
               (1:(FUNCTION LENGTH(WK-RUA) - WK-TAMANHO-1))
                                          ' '
                                          WK-BAIRRO
               (1:(FUNCTION LENGTH(WK-BAIRRO) - WK-TAMANHO-2))
                                          ' '
                                          WK-CIDADE
               (1:(FUNCTION LENGTH(WK-CIDADE) - WK-TAMANHO-3))
                                          ' '
                   FUNCTION CONCATENATE(' - CEP: '
                                        WK-CEP-1
                                        '-'
                                        WK-CEP-2
                                       )
           DISPLAY '4 - NACIONALIDADE.: ' WK-NACIONALIDADE
           DISPLAY '5 - PROFISSAO.....: ' WK-PROFISSAO

            STOP RUN.
       END PROGRAM M3AULA44.
