       IDENTIFICATION DIVISION.
       PROGRAM-ID. MENU01.
      ******************************************
      * OBJETIVO: CORES
      * AUTOR: LUCAS
      ******************************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-OPCAO PIC X(1).

       SCREEN SECTION.
       01 TELA.
           05 LIMPA-TELA.
      ************************** LIMPAR A TELA
               10 BLANK SCREEN.
      ************************** POSICIONA NA LINHA 1 E COLUNA 1
      ************************** END OF LINE (EOL)
               10 LINE 01 COLUMN 01 ERASE EOL
      ************************** PASSANDO A COR POR NUMERO
      ************************** CORES:
      ************************** 1 - AZUL
      ************************** 2 - VERDE
      ************************** 3 - AZUL CLARO
      ************************** 4 - VERMELHO
      ************************** 5 - ROXO
      ************************** 6 - DOURADO
      ************************** 7 - CINZA
                   BACKGROUND-COLOR 1.

       PROCEDURE DIVISION.
           DISPLAY TELA.
           ACCEPT WRK-OPCAO.
           STOP RUN.
