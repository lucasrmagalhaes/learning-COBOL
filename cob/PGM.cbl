       IDENTIFICATION DIVISION.
       PROGRAM-ID. PGM.

      * AUTHOR LUCAS LRM
      * DATA 30112020
      * DESCRICAO DESAFIO DO DANTE
      * DICA EVITAR USAR EVALUATE - PROCESSAMENTO PESA MAIS
      * ATUALIZACAO LINHA MAX COLUNA 72
      * ATUALIZACAO FALHAR LINHA COLUNA MIN 12
      * BOA PRATICA PIC E COMANDO TO NA COLUNA 40

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77  WS77-AUMENTO                PIC 9(03)V99    VALUE ZEROS.
       77  WS77-TEMPOCASA              PIC 9(02)       VALUE ZEROS.
       77  WS77-CAD                    PIC X(42)       VALUE
           "LUCAS DA ROSA MAGALHAES       201300500000".
       77  WS77-CAD1                   PIC X(42)       VALUE
           "DANTE ROBERTO DE VIT LUNARDI  198500200000".

       01  WS01-CAMPOS.
           03  WS03-INFORMACOES.
               05  WS05-NOME           PIC X(30).
               05  WS05-ANOENTRADA     PIC 9(04).
               05  WS05-SALARIO        PIC 9(08).

       01  WS01-DATASISTEMA.
               03 WS03-ANO             PIC 9(04)       VALUE ZEROS.
               03 WS03-MES             PIC 9(02)       VALUE ZEROS.
               03 WS03-DIA             PIC 9(02)       VALUE ZEROS.

       PROCEDURE DIVISION.
           0000-PRINCIPAL.
               PERFORM 0100-INICIAR.
               PERFORM 0200-PROCESSAR.
               PERFORM 0300-FINALIZAR.
               STOP RUN.

           0100-INICIAR.
               ACCEPT WS01-DATASISTEMA FROM DATE YYYYMMDD.
               DISPLAY
               '========================================================
      -    '==================='.
               DISPLAY 'DATA ATUAL: ' WS03-DIA'/'WS03-MES'/'WS03-ANO.
               DISPLAY
               '========================================================
      -    '==================='.

           0200-PROCESSAR.
               MOVE WS77-CAD           TO WS03-INFORMACOES.
               DISPLAY 'CAD - INFO'
               DISPLAY
                   'NOME: ' WS05-NOME
                   'ANO DE ENTRADA: ' WS05-ANOENTRADA ' '
                   'SALARIO: ' WS05-SALARIO.
               PERFORM 0250-PROCESSAR
               DISPLAY
               '========================================================
      -    '==================='.
               MOVE WS77-CAD1          TO WS03-INFORMACOES.
               DISPLAY 'CAD 1 - INFO'
               DISPLAY
                   'NOME: ' WS05-NOME
                   'ANO DE ENTRADA: ' WS05-ANOENTRADA ' '
                   'SALARIO: ' WS05-SALARIO.
               PERFORM 0250-PROCESSAR
               DISPLAY
               '========================================================
      -    '==================='.

           0250-PROCESSAR.
               COMPUTE WS77-TEMPOCASA = WS03-ANO - WS05-ANOENTRADA.
               EVALUATE WS77-TEMPOCASA
                  WHEN 0 THRU 1
                    COMPUTE WS77-AUMENTO = 0
                WHEN 2 THRU 5
                    COMPUTE WS77-AUMENTO = (WS05-SALARIO / 100) * 0,05
                WHEN 6 THRU 15
                    COMPUTE WS77-AUMENTO = (WS05-SALARIO / 100) * 0,10
                WHEN OTHER
                    COMPUTE WS77-AUMENTO = (WS05-SALARIO / 100) * 0,15
                   END-EVALUATE.

               DISPLAY
               'TEMPO DE CASA: ' WS77-TEMPOCASA ' ANO(S)'.
               DISPLAY
               'AUMENTO: R$ ' WS77-AUMENTO.

           0300-FINALIZAR.
               STOP "FIM".
