       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOBCPF.
      **************************************************
      * AREA DE COMENTARIOS - REMARKS
      * AUTHOR = LUCAS  LRM
      * DATA   = 16/11/2020
      * OBJETIVO: RECEBER O CPF
      * IMPRIMIR O CPF FORMATADO
      **************************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA. 
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-CPF     PIC X(11) VALUE ZEROS.
       77 WRK-CPF-ED  PIC ZZZ.ZZZ.ZZ9/99.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
          ACCEPT WRK-CPF.
          MOVE WRK-CPF TO WRK-CPF-ED.
          DISPLAY 'CPF' WRK-CPF.