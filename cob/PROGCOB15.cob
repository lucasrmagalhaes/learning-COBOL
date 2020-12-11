       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB15.
      **********************************************************
      * AREA DE COMENTARIOS - REMARKS
      * AUTHOR: LUCAS  LRM
      * DATA: 29/11/2020
      * OBJETIVO: RECEBER UM NUMERO E GERAR A TABUADA DE 1 A 10
      * UTILIZAR O PERFORM - UNTIL
      **********************************************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-VENDAS	PIC 9(06)V99	VALUE ZEROS.
       77 WRK-QT	PIC 9(03)	VALUE 0.
       77 WRK-ACUM	PIC 9(08)V99	VALUE ZEROS.
       
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
