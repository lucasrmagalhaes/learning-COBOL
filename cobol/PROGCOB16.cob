       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB16.
      **************************************************
      * AUTOR: LUCAS LRM
      * DATA: 30/11/2020
      **************************************************
      * OBJETIVO: RECEBER E IMPRIMIR A DATA DO SISTEMA
      * UTILIZAR: VARIAVEL TIPO TABELA - OCCURS
      **************************************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WRK-MESES.
           03 WRK-MES 	PIC X(09)  OCCURS 12 TIMES.
       01 WRK-DATASYS.
           02 ANOSYS 	PIC 9(04)  VALUE ZEROS.
           02 MESSYS 	PIC 9(02)  VALUE ZEROS.
           02 DIASYS 	PIC 9(02)  VALUE ZEROS.
           
       PROCEDURE DIVISION.
          ACCEPT WRK-DATASYS FROM DATE YYYYMMDD.
          	PERFORM 0400-MONTAMES.
          DISPLAY 'DATA ' DIASYS ' DE ' WRK-MES(MESSYS) 'DE ' ANOSYS.
          
          STOP RUN.
          
       0400-MONTAMES.
       	  MOVE 'JANEIRO	' 	TO WRK-MES(01).
       	  MOVE 'FEVEIRO	' 	TO WRK-MES(02).
       	  MOVE 'MARCO	' 	TO WRK-MES(03).
       	  MOVE 'ABRIL	' 	TO WRK-MES(04).
       	  MOVE 'MAIO	' 	TO WRK-MES(05).
       	  MOVE 'JUNHO	' 	TO WRK-MES(06).
       	  MOVE 'JULHO	' 	TO WRK-MES(07).
       	  MOVE 'AGOSTO	' 	TO WRK-MES(08).
       	  MOVE 'SETEMBRO' 	TO WRK-MES(09).
       	  MOVE 'OUTUBRO	' 	TO WRK-MES(10).
       	  MOVE 'NOVEMBRO' 	TO WRK-MES(11).
       	  MOVE 'DEZEMBRO' 	TO WRK-MES(12).
