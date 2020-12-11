       IDENTIFICATION DIVISION.
       PROGRAM-ID. PGM.

      * AUTHOR LUCAS LRM
      * DATA 30112020
      * DESCRICAO DESAFIO DO DANTE
      * DICA EVITAR USAR EVALUATE - PROCESSAMENTO PESA MAIS
      * ATUALIZACAO LINHA MAX COLUNA 72
      * ATUALIZACAO FALHAR LINHA COLUNA MIN 12
      * BOA PRATICA PIC E COMANDO TO NA COLUNA 40
      * FILLER -  VARIAVEL SEM NOME

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77  WS77-AUMENTO                    PIC 9(03)V99    VALUE ZEROS.
       77  WS77-TEMPOCASA                  PIC 9(02)       VALUE ZEROS.
       77  WS77-IND                        PIC 9(02)       VALUE ZEROS.
       01  WS01-CAMPOS.
           02  WS02-DADOS.
               03  FILLER                  PIC X(42) VALUE
                           "2013LUCAS DA ROSA MAGALHAES       00500000".
               03  FILLER                  PIC X(42)       VALUE
                           "1985DANTE ROBERTO DE VIT LUNARDI  00200000".
           02  WS02-DADOS-R                REDEFINES WS02-DADOS.
               03  WS03-INFORMACOES        OCCURS 2.
                   05  WS05-ANOENTRADA     PIC 9(04).
                   05  WS05-NOME           PIC X(30).
                   05  WS05-SALARIO        PIC 9(08).

       01  WS01-DATASISTEMA.
               03 WS03-ANO                 PIC 9(04)       VALUE ZEROS.
               03 WS03-MES                 PIC 9(02)       VALUE ZEROS.
               03 WS03-DIA                 PIC 9(02)       VALUE ZEROS.

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
               MOVE 1 TO WS77-IND.
               PERFORM 0250-PROCESSAR.

               MOVE 2 TO WS77-IND.
               PERFORM 0250-PROCESSAR.

           0250-PROCESSAR.
               DISPLAY
               'NOME: ' WS05-NOME(WS77-IND)
               'ANO DE ENTRADA: ' WS05-ANOENTRADA(WS77-IND) ' '
               'SALARIO: ' WS05-SALARIO(WS77-IND).

               COMPUTE WS77-TEMPOCASA = WS03-ANO -
               WS05-ANOENTRADA(WS77-IND).
                   EVALUATE WS77-TEMPOCASA
                       WHEN 0 THRU 1
                   COMPUTE WS77-AUMENTO = 0
                       WHEN 2 THRU 5
                   COMPUTE WS77-AUMENTO =
                   (WS05-SALARIO(WS77-IND) / 100) * 0,05
                       WHEN 6 THRU 15
                   COMPUTE WS77-AUMENTO =
                   (WS05-SALARIO(WS77-IND) / 100) * 0,10
                       WHEN OTHER
                   COMPUTE WS77-AUMENTO =
                   (WS05-SALARIO(WS77-IND) / 100) * 0,15
               END-EVALUATE.

               DISPLAY
               'TEMPO DE CASA: ' WS77-TEMPOCASA ' ANO(S) '
               'AUMENTO: R$ ' WS77-AUMENTO.

               DISPLAY
               '========================================================
      -    '==================='.

           0300-FINALIZAR.
               STOP 'FIM'.
