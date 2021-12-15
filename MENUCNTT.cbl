      ******************************************************************
      * Author: CLAUDIO SANTOS
      * Date: 13/12/2021
      * Purpose: MENU PARA CADASTRO DE CONTATOS
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. MENUCNTT.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-COM-AREA.
          03 WS-MENSSAGEM                 PIC X(40).
       77 WS-OPCAO                        PIC X.


       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            PERFORM P300-PROCESSA THRU P300-FIM UNTIL WS-OPCAO = 'S' or
                                                      WS-OPCAO = 's'
            PERFORM P900-FIM
           .

       P300-PROCESSA.
            MOVE SPACES                   TO WS-OPCAO.
            DISPLAY '*************************************************'
            DISPLAY '*           SISTEMA DE CONTATOS                 *'
            DISPLAY '*************************************************'
            DISPLAY '|                                               |'
            DISPLAY '|             Escolha uma opcao:                |'
            DISPLAY '|                                               |'
            DISPLAY '| 1 - Incluir Contato                           |'
            DISPLAY '| 2 - Alterar Contato                           |'
            DISPLAY '| 3 - Consultar Contato                         |'
            DISPLAY '| 4 - Excluir Contato                           |'
            DISPLAY '| 5 - Listar Contato                            |'
            DISPLAY '|                                               |'
            DISPLAY '|           (Ou tecle <S> para sair)            |'
            DISPLAY '*************************************************'

            ACCEPT WS-OPCAO

            EVALUATE WS-OPCAO
               WHEN '1'
               MOVE ' *** INCLUSAO DE CONTATO *** ' TO WS-MENSSAGEM
               CALL
           'C:\Users\CLAUDIO\Documents\Gt\APRENDA-COBOL\Ex\bin\CADCONTT'
               USING WS-COM-AREA
               WHEN '2'
               MOVE ' *** ALTERACAO DE CONTATO *** ' TO WS-MENSSAGEM
               CALL
           'C:\Users\CLAUDIO\Documents\Gt\APRENDA-COBOL\Ex\bin\ALTCONTT'
               USING WS-COM-AREA
               WHEN '3'
               MOVE ' *** CONSULTA DE CONTATO *** ' TO WS-MENSSAGEM
               CALL
           'C:\Users\CLAUDIO\Documents\Gt\APRENDA-COBOL\Ex\bin\CONSCTT'
               USING WS-COM-AREA
               WHEN '4'
               MOVE ' *** EXCLUSAO DE CONTATO *** ' TO WS-MENSSAGEM
               CALL
           'C:\Users\CLAUDIO\Documents\Gt\APRENDA-COBOL\Ex\bin\DELCONTT'
               USING WS-COM-AREA
               WHEN '5'
               MOVE ' *** LISTAGEM DE CONTATO *** ' TO WS-MENSSAGEM
               CALL
           'C:\Users\CLAUDIO\Documents\Gt\APRENDA-COBOL\Ex\bin\LISCNTT'
               USING WS-COM-AREA
               WHEN 'S'
               DISPLAY 'Obrigado volte sempre!'
               WHEN 's'
               DISPLAY 'Obrigada volte sempre!'


               WHEN OTHER
               DISPLAY 'OPCAO INVALIDA!'
            END-EVALUATE
           .
       P300-FIM.
       P900-FIM.
              STOP RUN.
       END PROGRAM MENUCNTT.
