       IDENTIFICATION DIVISION.
       PROGRAM-ID. MENU02.
      ******************************************
      * OBJETIVO: LISTANDO O CARDAPIO
      * AUTOR: LUCAS
      ******************************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-OPCAO PIC X(1).
       77 WRK-TITULO PIC X(20).
       SCREEN SECTION.
       01 TELA.
           05 LIMPA-TELA.
      ************************** LIMPAR A TELA
               10 BLANK SCREEN.
      ************************** POSICIONA NA LINHA 1 E COLUNA 1
      ************************** END OF LINE (EOL)
               10 LINE 01 COLUMN 01 PIC X(20) ERASE EOL
      ************************** PASSANDO A COR POR NUMERO
      ************************** CORES:
      ************************** 1 - AZUL
      ************************** 2 - VERDE
      ************************** 3 - AZUL CLARO
      ************************** 4 - VERMELHO
      ************************** 5 - ROXO
      ************************** 6 - DOURADO
      ************************** 7 - CINZA
                   BACKGROUND-COLOR 2 FROM WRK-TITULO.

       01 MENU.
           05 LINE 07 COLUMN 15 VALUE '1 - INCLUIR'.
           05 LINE 08 COLUMN 15 VALUE '2 - CONSULTAR'.
           05 LINE 09 COLUMN 15 VALUE '3 - ALTERAR'.
           05 LINE 10 COLUMN 15 VALUE '4 - EXCLUIR'.
           05 LINE 11 COLUMN 15 VALUE '5 - RELATORIO'.
           05 LINE 12 COLUMN 15 VALUE 'X - SAIDA'.
           05 LINE 14 COLUMN 15 VALUE 'OPCAO: '.
           05 LINE 14 COLUMN 23 USING WRK-OPCAO.

       PROCEDURE DIVISION.
           MOVE '- MENU - ' TO WRK-TITULO.
           DISPLAY TELA.
           ACCEPT MENU.
           STOP RUN.
