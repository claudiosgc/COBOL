       01  CADASTRO-PF.
           03 WK-NOME.
               05 WK-PRIMEIRO-NOME     PIC X(20).
               05 WK-ULTIMO-NOME       PIC X(20).
           03 WK-TELEFONE.
               05 WK-PAIS              PIC 99.
               05 WK-DDD               PIC 99.
               05 WK-PREFIXO           PIC 9(04).
               05 WK-SUFIXO            PIC 9(04).
           03 WK-ENDERECO.
               05 WK-RUA               PIC X(15).
               05 WK-BAIRRO            PIC X(15).
               05 WK-CIDADE            PIC X(15).
               05 WK-UF                PIC X(02).
               05 WK-CEP.
                   07 WK-CEP-1         PIC X(04).
                   07 WK-CEP-2         PIC X(03).
           03 WK-NACIONALIDADE         PIC X(20).
           03 WK-PROFISSAO             PIC X(20).
