       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB08.
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
             DISPLAY 'MEDIA: ' WRK-MEDIA.
      ************* EVALUETE - IF PESADO
              EVALUATE WRK-MEDIA
              	WHEN 10
              	   DISPLAY 'APROVADO + BONUS'
              	WHEN 7 THRU 10
              		DISPLAY 'SITUACAO: APROVADO'
              	WHEN 2 THRU 6
              		DISPLAY 'RECUPERACAO'
              	WHEN OTHER
              		DISPLAY 'REPROVADO'    
              END-EVALUATE.
          DISPLAY 'MEDIA: ' WRK-MEDIA.
          STOP RUN.
