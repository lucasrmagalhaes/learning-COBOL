       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB17.
      ******************************************************
      * AUTOR: LUCAS LRM
      * DATA: 01/12/2020
      ******************************************************
      * OBJETIVO: RECEBER E IMPRIMIR A DATA DO SISTEMA
      * UTILIZAR: VARIAVEL TIPO TABELA - REDEFINES
      ******************************************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       
       01 WRK-MESES-EXTENSO.
           03 FILLER 	PIC X(03)  VALUE 'JAN'.
           03 FILLER 	PIC X(03)  VALUE 'FEV'.
           03 FILLER 	PIC X(03)  VALUE 'MAR'.
           03 FILLER 	PIC X(03)  VALUE 'ABR'.
           03 FILLER 	PIC X(03)  VALUE 'MAI'.
           03 FILLER 	PIC X(03)  VALUE 'JUN'.
           03 FILLER 	PIC X(03)  VALUE 'JUL'.
           03 FILLER 	PIC X(03)  VALUE 'AGO'.
           03 FILLER 	PIC X(03)  VALUE 'SET'.
           03 FILLER 	PIC X(03)  VALUE 'OUT'.
           03 FILLER 	PIC X(03)  VALUE 'NOV'.
           03 FILLER 	PIC X(03)  VALUE 'DEZ'.
           
       01 WRK-MESES REDEFINES WRK-MESES-EXTENSO.
       	   02 WRK-MES PIC X(3) OCCURS 12 TIMES.
       
       01 WRK-DATASYS.
           02 ANOSYS 	PIC 9(04)  VALUE ZEROS.
           02 MESSYS 	PIC 9(02)  VALUE ZEROS.
           02 DIASYS 	PIC 9(02)  VALUE ZEROS.
           
       PROCEDURE DIVISION.
          ACCEPT WRK-DATASYS FROM DATE YYYYMMDD.
          DISPLAY 'DATA ' DIASYS ' DE ' WRK-MES(MESSYS) ' DE ' ANOSYS.
          
          STOP RUN.
