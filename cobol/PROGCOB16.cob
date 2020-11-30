       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB15.
      **********************************************************
      * AREA DE COMENTARIOS - REMARKS
      * AUTHOR: LUCAS  LRM
      * DATA: 30/11/2020
      * OBJETIVO: RECEBER AS VARIAVEIS DO ARQUIVO BOOK.cob
      * UTILIZANDO O COPY
      **********************************************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
      ************************** COPY geralmente utilizado para padronização das variáveis.
      ************************** Importando o conteúdo das variáveis do arquivo "BOOK.cob" - Include.
       		COPY 'BOOK.cob'.
       
       PROCEDURE DIVISION.
       0001-PRINCIPAL.
       		PERFORM 0100-INICIALIZAR.
       		IF WRK-VENDAS > 0 
        		PERFORM 0200-PROCESSAR UNTIL WRK-VENDAS = 0
        	END-IF.
        	PERFORM 0300-FINALIZAR
        	
        	STOP RUN.
       
       0100-INICIALIZAR.
       	       DISPLAY 'QUANTIDADE DE VENDAS NO DIA: '. 
       	       ACCEPT WRK-VENDAS.
       
       0200-PROCESSAR.
               ADD 1 TO WRK-QT.
               ADD WRK-VENDAS TO WRK-ACUM.
               PERFORM 0100-INICIALIZAR.
               
       
       0300-FINALIZAR.
       		DISPLAY '=========================================='
       		DISPLAY 'TOTAL: ' WRK-ACUM.
       		DISPLAY 'QUANTIDADE DE REGISTROS: ' WRK-QT.
       		DISPLAY 'FINAL DE PROCESSAMENTO'.
