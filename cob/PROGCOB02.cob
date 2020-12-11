       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB02.
      *****************************************
      * AREA DE COMENTARIOS - REMARKS
      * AUTHOR = LUCAS  LRM
      * DATA   = XX/XX/XXXX
      * OBJETIVO: RECEBER E IMPRIMIR UMA STRING
      *****************************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NOME PIC X(20)  VALUE SPACES.
       PROCEDURE DIVISION.
          ACCEPT WRK-NOME FROM CONSOLE.
          DISPLAY 'NOME: ' WRK-NOME(1:3).
          STOP RUN.