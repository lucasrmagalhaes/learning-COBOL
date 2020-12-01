       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOBSTRING.
      **********************************************************************
      * AUTOR: LUCAS  LRM
      * DATA: 30/11/2020
      **********************************************************************
      * DESCRICAO: TESTANDO STRING e DELIMITED BY
      **********************************************************************
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 FIB1 PIC 999.
       77 FIB2 PIC 999.
       77 FIB3 PIC 999.
       77 I PIC 99.
       77 FIBST PIC XXX.
       77 RES PIC X(64).

       PROCEDURE DIVISION.
       MOVE 0 TO I 
       MOVE 0 TO FIB1
       MOVE 1 TO FIB2
       MOVE SPACES TO RES
       PERFORM UNTIL I GREATER THAN 15
       	ADD FIB1 TO FIB2 GIVING FIB3
       		MOVE FIB2 TO FIB1
       		MOVE FIB3 TO FIB2
       		MOVE FIB1 TO FIBST
       	STRING RES DELIMITED BY SPACE
       		FIBST DELIMITED BY SIZE
       		","   DELIMITED BY SIZE INTO RES
       		ADD 1 TO I
       END-PERFORM.
       DISPLAY RES "..."
       STOP RUN.
