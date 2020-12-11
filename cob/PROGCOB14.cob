       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB14.
      **********************************************************
      * AREA DE COMENTARIOS - REMARKS
      * AUTHOR: LUCAS  LRM
      * DATA: 29/11/2020
      * OBJETIVO: RECEBER UM NUMERO E GERAR A TABUADA DE 1 A 10
      * UTILIZAR O PERFORM - VARYING
      **********************************************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NUMERO	PIC 9(02)	VALUE ZEROS.
       77 WRK-CONTADOR	PIC 9(02)	VALUE 1.
       77 WRK-RESUL	PIC 9(02)	VALUE ZEROS.
       
       PROCEDURE DIVISION.
       0001-PRINCIPAL.
       		PERFORM 0100-INICIALIZAR.
       		IF WRK-NUMERO > 0 
        		PERFORM 0200-PROCESSAR
        	END-IF.
        	PERFORM 0300-FINALIZAR.
        	
        	STOP RUN.
       
       0100-INICIALIZAR.
       	       DISPLAY 'DIGITE UM NUMERO PARA REALIZAR A TABUADA: '. 
       	       ACCEPT WRK-NUMERO.
       
       0200-PROCESSAR.
      ******************** FROM = COMECA | BY = INCREMENTO | UNTIL = ATE QUANDO
               PERFORM VARYING WRK-CONTADOR FROM 1 BY 1
               		UNTIL WRK-CONTADOR > 10
     		COMPUTE WRK-RESUL = WRK-NUMERO * WRK-CONTADOR
               	DISPLAY WRK-NUMERO ' x ' WRK-CONTADOR
               END-PERFORM.
       
       0300-FINALIZAR.
       		DISPLAY '=========================================='
       		DISPLAY 'FINAL DE PROCESSAMENTO'.
