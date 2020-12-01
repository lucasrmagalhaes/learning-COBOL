       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOBINVESTIMENTOFINANCEIRO.
      **********************************************************************
      * AREA DE COMENTARIOS - REMARKS
      * AUTHOR: LUCAS  LRM
      * DATA: 30/11/2020
      * OBJETIVO: MONTAR UM PROGRAMA QUE SIMULE UM INVESTIMENTO FINANCEIRO
      * DESCRICAO: VALOR INICIAL DE INVESTIMENTO, PERIODO (NUMERO DE MESES) 
      * E TAXAS DE CORRECAO MENSAL. AO FINAL, RECEBEREMOS O VALOR CORRIGIDO
      * EM TELA.
      **********************************************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
       		DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-VALOR      PIC 9(06)V99       VALUE ZEROS.
       77 WRK-MESES      PIC 9(03)          VALUE ZEROS.
       77 WRK-TAXA-MES   PIC 9(02)          VALUE ZEROS.
       77 WRK-VALOR-ED   PIC ZZZ.ZZ9,99     VALUE ZEROS.
       
       PROCEDURE DIVISION.
       0001-PRINCIPAL.
       		PERFORM 0100-INICIAR.
       		PERFORM 0200-PROCESSAR.
       		PERFORM 0300-FINALIZAR.
       
       0100-INICIAR.
       DISPLAY 'VALOR INVESTIDO '.
       		ACCEPT WRK-VALOR.
       DISPLAY  'MESES DE APLICACAO '
       		ACCEPT WRK-MESES.
       DISPLAY 'TAXA MENSAL '
       		ACCEPT WRK-TAXA-MES.
       
       0200-PROCESSAR.
       PERFORM WRK-MESES TIMES
       		COMPUTE WRK-VALOR = WRK-VALOR * (WRK-TAXA-MES / 100 + 1)               
       END-PERFORM.
       
       0300-FINALIZAR.
       MOVE WRK-VALOR TO WRK-VALOR-ED
       DISPLAY 'VALOR CORRIGIDO ' WRK-VALOR-ED.

       STOP RUN.