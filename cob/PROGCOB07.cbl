       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB07.
      **************************************************
      * AREA DE COMENTARIOS - REMARKS
      * AUTHOR: LUCAS  LRM
      * DATA: 18/11/2020
      * OBJETIVO: RECEBER 02 NOTAS, MEDIA E IMPRIMIR
      * UTILIZAR OS COMANDOS IF/ELSE/ENDIF
      **************************************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NOTA1 PIC 9(02) VALUE ZEROS.
       77 WRK-NOTA2 PIC 9(02) VALUE ZEROS.
       77 WRK-MEDIA PIC 9(02) VALUE ZEROS.
       PROCEDURE DIVISION.
          ACCEPT WRK-NOTA1.
          ACCEPT WRK-NOTA2.
           COMPUTE WRK-MEDIA = (WRK-NOTA1 + WRK-NOTA2) / 2.
             DISPLAY 'NOTA 1: ' WRK-NOTA1
             DISPLAY 'NOTA 2: ' WRK-NOTA2
             DISPLAY 'MEDIA: ' WRK-MEDIA.
               IF WRK-MEDIA >= 7
          	     DISPLAY 'SITUACAO: APROVADO'
          	ELSE
          	      IF WRK-MEDIA >= 2
          	      	  DISPLAY 'SITUACAO: RECUPERACAO'
          	      ELSE 
          	       DISPLAY 'SITUACAO: REPROVADO'
               END-IF.
          DISPLAY 'MEDIA: ' WRK-MEDIA.
          STOP RUN.
