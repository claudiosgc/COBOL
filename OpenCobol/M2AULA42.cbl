       IDENTIFICATION DIVISION.
       PROGRAM-ID. M2AULA42.

       ENVIRONMENT    DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.


       DATA    DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  WK-VARIAVEIS-ALUNO.
            05 WK-NOME             PIC X(20) VALUE SPACES.
            05 WK-MATERIA          PIC X(15) VALUE SPACES.
            05 WK-STATUS           PIC X(10) VALUE SPACES.
            05 WK-OPCAO            PIC X VALUE SPACES.


       01  WK-VARIAVEIS-NOTAS.
            05 WK-NOTA-1           PIC 9(02)V9 VALUE ZEROS.
            05 WK-NOTA-2           PIC 9(02)V9 VALUE ZEROS.
            05 WK-NOTA-3           PIC 9(02)V9 VALUE ZEROS.
            05 WK-NOTA-4           PIC 9(02)V9 VALUE ZEROS.
            05 WK-MEDIA            PIC 9(02)V9 VALUE ZEROS.


       PROCEDURE DIVISION.
       0000-PRINCIPAL SECTION.
       0001-PRINCIPAL.
           PERFORM 1001-INICIALIZAR.
           PERFORM 2001-PROCESSAR.
           PERFORM 3001-FINALIZAR.
               STOP RUN.

       1000-INICIALIZAR SECTION.
       1001-INICIALIZAR.
               INITIALIZE WK-VARIAVEIS-NOTAS
                          WK-VARIAVEIS-ALUNO.

           DISPLAY 'ENTRE COM NOME DO ALUNO: '
           ACCEPT WK-NOME
           DISPLAY 'INFORME A MATERIA: '
           ACCEPT WK-MATERIA
           DISPLAY 'INFORME AS QUATROS NOTAS OBTIDAS: '
           ACCEPT WK-NOTA-1
           ACCEPT WK-NOTA-2
           ACCEPT WK-NOTA-3
           ACCEPT WK-NOTA-4

               IF WK-NOTA-1 IS NOT NUMERIC AND WK-NOTA-1 < 0 THEN
                   PERFORM 1002-MENSAGEM
                   PERFORM 1001-INICIALIZAR


               IF WK-NOTA-2 IS NOT NUMERIC AND WK-NOTA-2 < 0 THEN
                   PERFORM 1002-MENSAGEM
                   PERFORM 1001-INICIALIZAR
               END-IF

               IF WK-NOTA-3 IS NOT NUMERIC AND WK-NOTA-3 < 0 THEN
                   PERFORM 1002-MENSAGEM
                   PERFORM 1001-INICIALIZAR
               END-IF

               IF WK-NOTA-4 IS NOT NUMERIC AND WK-NOTA-4 < 0 THEN
                   PERFORM 1002-MENSAGEM
                   PERFORM 1001-INICIALIZAR
               END-IF
            .
       1002-MENSAGEM.
           DISPLAY '*******************************************'
           DISPLAY '*     NOTA INVALIDA - TENTE NOVAMENTE     *'
           DISPLAY '*******************************************'

            .

       2000-PROCESSAR SECTION.
       2001-PROCESSAR.

           MOVE 'S' TO WK-OPCAO

           PERFORM 2002-REP-OPERACAO THRU 2002-FIM UNTIL WK-OPCAO = 'N'
            .
       2002-REP-OPERACAO.

           COMPUTE
           WK-MEDIA = (WK-NOTA-1 + WK-NOTA-2 + WK-NOTA-3 + WK-NOTA-4) /4
                        ON SIZE ERROR PERFORM 3002-ERRO-CALCULO
           END-COMPUTE

               IF WK-MEDIA >= 7 THEN
                   MOVE 'APROVADO' TO WK-STATUS
               ELSE
                   MOVE 'REPROVADO' TO WK-STATUS
               END-IF

           DISPLAY '*** RESULTADO DO PROCESSAMENTO ***'
           DISPLAY ' '
           DISPLAY 'Nome do Aluno...: ' WK-NOME
           DISPLAY 'Material........: ' WK-MATERIA
           DISPLAY 'Media...........: ' WK-MEDIA
           DISPLAY 'Status..........: ' WK-STATUS

           DISPLAY 'Voce que repetir a opracao (S/N)'
           ACCEPT WK-OPCAO

               IF WK-OPCAO = 'S' THEN
                   PERFORM 1001-INICIALIZAR
               ELSE
                   DISPLAY '**************************'
                   DISPLAY '    PROGRAMA ENCERRADO    '
                   DISPLAY '         OBRIGADO         '
                   DISPLAY '**************************'
               END-IF
              .
       2002-FIM.

       3000-FINALIZAR SECTION.
       3001-FINALIZAR.
       3002-ERRO-CALCULO.
           DISPLAY 'ERRO DE CALCULO:'.
