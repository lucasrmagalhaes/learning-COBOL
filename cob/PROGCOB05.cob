       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB05.
      *********************************************
      * AREA DE COMENTARIOS - REMARKS
      * AUTHOR: LUCAS LRM
      * DATA: 16/11/2020
      * OBJETIVO: TESTAR OS OPERADORES ARITMETICOS
      *********************************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NUM1  PIC 9(02)  VALUE ZEROS.
       77 WRK-NUM2  PIC 9(02)  VALUE ZEROS.
       77 WRK-RESUL PIC 9(04)  VALUE ZEROS.
       77 WRK-RESTO PIC 9(02)  VALUE ZEROS.
       PROCEDURE DIVISION.
          ACCEPT WRK-NUM1 FROM CONSOLE.
          ACCEPT WRK-NUM2 FROM CONSOLE.
          DISPLAY '=============================='
          DISPLAY 'NUMERO 1: ' WRK-NUM1.
          DISPLAY '=============================='
          DISPLAY 'NUMERO 2: ' WRK-NUM2.
          DISPLAY '=============================='
      *************** SOMA 
          ADD WRK-NUM1 WRK-NUM2 TO WRK-RESUL.
           DISPLAY 'SOMA: ' WRK-RESUL.
           DISPLAY '=============================='
      *************** SUBTRACAO
          SUBTRACT WRK-NUM1 FROM WRK-NUM2 GIVING WRK-RESUL.
           DISPLAY 'SUBTRACAO: ' WRK-RESUL.
           DISPLAY '=============================='
      *************** DIVISAO
          DIVIDE WRK-NUM1 BY WRK-NUM2 GIVING WRK-RESUL
      *************** RESTO
      	  REMAINDER WRK-RESTO.
           DISPLAY 'DIVISAO: ' WRK-RESUL.
           DISPLAY 'RESTO: ' WRK-RESTO.
           DISPLAY '=============================='
      *************** MULTIPLICACAO
          MULTIPLY WRK-NUM1 BY WRK-NUM2 GIVING WRK-RESUL.
           DISPLAY 'MULTIPLICACAO: ' WRK-RESUL.
           DISPLAY '=============================='
      *************** MEDIA
          COMPUTE WRK-RESUL = (WRK-NUM1 + WRK-NUM2) / 2.
           DISPLAY 'MEDIA: ' WRK-RESUL.
           DISPLAY '=============================='
          STOP RUN.
