       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB06.
      *********************************************
      * AREA DE COMENTARIOS - REMARKS
      * AUTHOR: LUCAS LRM
      * DATA: 18/11/2020
      * OBJETIVO: USO DO SINAL - e +
      *********************************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NUM1  	PIC 9(02)  VALUE ZEROS.
       77 WRK-NUM2  	PIC 9(02)  VALUE ZEROS.
      *************** SINAL = S
       77 WRK-RESUL 	PIC S9(03) VALUE ZEROS.
      *************** FORMATACAO
       77 WRK-RESUL-ED  PIC -ZZ9   VALUE ZEROS.
       PROCEDURE DIVISION.
          ACCEPT WRK-NUM1 FROM CONSOLE.
          ACCEPT WRK-NUM2 FROM CONSOLE.
          DISPLAY '=============================='
          DISPLAY 'NUMERO 1: ' WRK-NUM1.
          DISPLAY '=============================='
          DISPLAY 'NUMERO 2: ' WRK-NUM2.
          DISPLAY '=============================='
      *************** SUBTRACAO - PARA O SINAL FUNCIONAR É NECESSÁRIO TROCAR A ORDEM DAS VARIAVEIS - NUM 2 - NUM 1
          SUBTRACT WRK-NUM2 FROM WRK-NUM1 GIVING WRK-RESUL.
           MOVE WRK-RESUL TO WRK-RESUL-ED.
           DISPLAY 'SUBTRACAO: ' WRK-RESUL.
           DISPLAY 'SUBTRACAO: ' WRK-RESUL-ED.
           DISPLAY '=============================='
          STOP RUN.
