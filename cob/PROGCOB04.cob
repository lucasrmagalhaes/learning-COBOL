       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB04.
      **************************************************
      * AREA DE COMENTARIOS - REMARKS
      * AUTHOR = LUCAS  LRM
      * DATA   = 16/11/2020
      * OBJETIVO: RECEBER NOME E SALÁRIO
      * IMPRIMIR FORMATADO - USO DA VÍRGULA
      **************************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
      * Definindo o ponto como vírgula.
           DECIMAL-POINT IS COMMA. 
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NOME           PIC X(20) VALUE SPACES.
      * V99
      * V = Vírgula
      * 99 quantidades de casas. = 02 casas. EX.: 000000,00
       77 WRK-SALARIO        PIC 9(06)V99 VALUE ZEROS.
      * Contém os 9 porque caso o número seja 0 é necessário mostrar.
      * 9 irá listar 0. Z irá omitir os zeros.
       77 WRK-SALARIO-ED     PIC $ZZZ.ZZ9,99
       PROCEDURE DIVISION.
          ACCEPT WRK-NOME    FROM CONSOLE.
          ACCEPT WRK-SALARIO FROM CONSOLE.
      ************ MOSTRA DADOS
          DISPLAY 'NOME' WRK-NOME.
      * Movendo o valor de uma váriavel para outra variável.
          MOVE WRK-SALARIO TO WRK-SALARIO-ED.
          DISPLAY 'SALARIO' WRK-SALARIO.
          STOP RUN.