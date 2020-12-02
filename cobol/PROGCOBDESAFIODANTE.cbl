       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOBDESAFIODANTE.
      *******************************************
      * AREA DE COMENTARIOS - REMARKS
      * AUTHOR: LUCAS LRM
      * DATA: 30/11/2020
      * DESCRICAO: DESAFIO DO DANTE
      * ATUALIZACAO: LINHA MAX COLUNA 72
      * ATUALIZACAO: FALHAR LINHA COLUNA MIN 12
      *******************************************
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WS77-AUMENTO-CAD     PIC 9(03)V99    VALUE ZEROS.
       77 WS77-AUMENTO-CAD1    PIC 9(03)V99    VALUE ZEROS.
       77 WS77-TEMPOCASA-CAD   PIC 9(02)       VALUE ZEROS.
       77 WS77-TEMPOCASA-CAD1  PIC 9(02)       VALUE ZEROS.
      ******************** MAX COLUNA 72
       77 WS77-CAD             PIC X(42)       VALUE "LUCAS DA ROSA MAGA
      -    "LHAES         202050000".
      ******************** INICIO COLUNA 12
       77 WS77-CAD1            PIC X(42)       VALUE 
           "DANTE ROBERTO DE VIT LUNARDI    198520000".

       01 WS01-DATASISTEMA.
           03 WS03-ANO         PIC 9(04)       VALUE ZEROS.
           03 WS03-MES         PIC 9(02)       VALUE ZEROS.
           03 WS03-DIA         PIC 9(02)       VALUE ZEROS.

       PROCEDURE DIVISION.

           0000-PRINCIPAL.
               PERFORM 0100-INICIAR.
               PERFORM 0200-PROCESSAR.
               PERFORM 0300-PROCESSAR.
               PERFORM 0400-FINALIZAR.
               STOP RUN.

           0100-INICIAR.
               ACCEPT WS01-DATASISTEMA FROM DATE YYYYMMDD.
               DISPLAY '=============================================='
               DISPLAY 'DATA ATUAL: ' WS03-DIA'/'WS03-MES'/'WS03-ANO.
               DISPLAY '=============================================='
	       DISPLAY 'NOME DO FUNCIONARIO: ' WS77-CAD(1,23) 
      -    ' ANO DE ENTRADA NA EMPRESA : ' WS77-CAD(9,6) 
      -    ' SALARIO ATUAL   : ' WS77-CAD(5,1).
               DISPLAY 'NOME DO FUNCIONARIO: ' WS77-CAD1(1,28) 
      -    ' ANO DE ENTRADA NA EMPRESA: ' WS77-CAD1(9,6) 
      -    ' SALARIO ATUAL  : ' WS77-CAD1(5,1).

           0200-PROCESSAR.
           	COMPUTE WS77-TEMPOCASA-CAD = WS03-ANO - WS77-CAD(5,1).
           	EVALUATE WS77-TEMPOCASA-CAD
                WHEN 0 THRU 1
                	COMPUTE WS77-AUMENTO-CAD = 0
                WHEN 2 THRU 5
                	COMPUTE WS77-AUMENTO-CAD = WS77-CAD(5,1) * 0,05
                WHEN 6 THRU 15
                	COMPUTE WS77-AUMENTO-CAD = WS77-CAD(5,1) * 0,10
                WHEN OTHER
                	COMPUTE WS77-AUMENTO-CAD = WS77-CAD(5,1) * 0,15
         	END-EVALUATE.
           
           0300-PROCESSAR.
           	COMPUTE WS77-TEMPOCASA-CAD1 = WS03-ANO - WS77-CAD1(5,1).
           	EVALUATE WS77-TEMPOCASA-CAD1
              	WHEN 0 THRU 1
                	COMPUTE WS77-AUMENTO-CAD1 = 0
                WHEN 2 THRU 5
                	COMPUTE WS77-AUMENTO-CAD1 = WS77-CAD1(5,1) * 0,05
                WHEN 6 THRU 15
                	COMPUTE WS77-AUMENTO-CAD1 = WS77-CAD1(5,1) * 0,10
                WHEN OTHER
                	COMPUTE WS77-AUMENTO-CAD1 = WS77-CAD1(5,1) * 0,15
               	END-EVALUATE.

           0400-FINALIZAR.
               DISPLAY '=============================================='
               DISPLAY 'TEMPO DE CASA LUCAS: ' WS77-TEMPOCASA-CAD ' ANO
      -    (S)'.
               DISPLAY 'TEMPO DE CASA DANTE ' WS77-TEMPOCASA-CAD1 ' ANO
      -    (S)'.
               DISPLAY 'AUMENTO LUCAS: R$ ' WS77-AUMENTO-CAD.
               DISPLAY 'AUMENTO DANTE: R$ ' WS77-AUMENTO-CAD1.
