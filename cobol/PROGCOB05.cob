       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB05.
      *********************************************
      * AREA DE COMENTARIOS - REMARKS
      * AUTHOR = LUCAS  LRM
      * DATA   = 16/11/2020
      * OBJETIVO: TESTAR OS OPERADORES ARITMETICOS
      *********************************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NUM1  PIC 9(02)  VALUE ZEROS.
       77 WRK-NUM2  PIC 9(02)  VALUE ZEROS.
       77 WRK-RESUL PIC 9(04)  VALUE ZEROS.
       PROCEDURE DIVISION.
          ACCEPT WRK-NUM1 FROM CONSOLE.
          ACCEPT WRK-NUM2 FROM CONSOLE.
          DISPLAY '=============================='
          DISPLAY 'NUMERO1.. ' WRK-NUM1.
          DISPLAY 'NUMERO2.. ' WRK-NUM1.
          DISPLAY '=============================='
      * SOMA DE NUM1 + NUM2
          ADD WRK-NUM1 WRK-NUM2 TO WRK-RESUL.
           DISPLAY 'SOMA ..... ' WRK-RESUL.
          STOP RUN.