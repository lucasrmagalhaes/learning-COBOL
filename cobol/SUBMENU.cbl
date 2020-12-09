       IDENTIFICATION DIVISION.
       PROGRAM-ID. SUBMENU.
      ******************************************
      * OBJETIVO: SUB-MENU
      * AUTOR: LUCAS
      ******************************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-OPCAO  PIC X(1).
       77 WRK-MODULO PIC X(25).
       77 WRK-TECLA PIC X(1).
       77 WRK-OPCAO-RELATO PIC X(1).

       SCREEN SECTION.
       01 TELA.
           05 LIMPA-TELA.
               10 BLANK SCREEN.
               10 LINE 01 COLUMN 01 PIC X(20) ERASE EOL
                   BACKGROUND-COLOR 3.
               10 LINE 01 COLUMN 25 PIC X(20)
      ********************* FOREGROUND-COLOR DEFINE A COR DA FONTE
                  BACKGROUND-COLOR 3 FOREGROUND-COLOR 0
                  FROM 'SISTEMA DE CLIENTES'.
               10 LINE 02 COLUMN 01 PIC X(25) ERASE EOL
                   BACKGROUND-COLOR 1 FROM WRK-MODULO.

       01 MENU-RELATO.
           05 LINE 12 COLUMN 40 VALUE '1 - EM TELA'.
           05 LINE 13 COLUMN 40 VALUE '2 - EM DISCO'.
           05 LINE 15 COLUMN 40 VALUE 'OPCAO......: '.
           05 LINE 15 COLUMN 53 USING WRK-OPCAO-RELATO.

       PROCEDURE DIVISION.
       0001-PRINCIPAL SECTION.
           PERFORM 1000-INICIAR.
           PERFORM 2000-PROCESSAR.
           PERFORM 3000-FINALIZAR.
           STOP RUN.

       1000-INICIAR.
           DISPLAY TELA.
           ACCEPT MENU-RELATO.

       2000-PROCESSAR.
            EVALUATE WRK-OPCAO
              WHEN 1
               PERFORM 5000-RELATORIO-TELA
              WHEN 2
                CONTINUE
              WHEN 3
                CONTINUE
              WHEN 4
                CONTINUE
              WHEN 5
                ACCEPT MENU-RELATO
                IF WRK-OPCAO-RELATO EQUAL 1
                    PERFORM 5000-RELATORIO-TELA
                END-IF
                IF WRK-OPCAO-RELATO EQUAL 2
                    PERFORM 5010-RELATORIO-DISCO
                END-IF
              WHEN OTHER
                IF WRK-OPCAO NOT EQUAL 'X'
                    DISPLAY 'ENTRE COM OPCAO CORRETA'
                END-IF
            END-EVALUATE.

       3000-FINALIZAR.
           CONTINUE.

       5000-RELATORIO-TELA.
           CONTINUE.
       5010-RELATORIO-DISCO.
           CONTINUE.
