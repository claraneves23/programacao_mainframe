      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG08.
       AUTHOR. MARIA CLARA PIRANI NEVES.
       DATE-COMPILED. 09/05/2025.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 DISCIPLINAS-TEXTOS.
          05 P1        PIC 9(02)V9(02) OCCURS 6 TIMES INDEXED BY IDX.
          05 P2        PIC 9(02)V9(02) OCCURS 6 TIMES INDEXED BY IDX.
          05 ATIVIDADE PIC 9(02)V9(02) OCCURS 6 TIMES INDEXED BY IDX.


       01 CONTADOR         PIC 9 VALUE 1.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           INICIO.

           MOVE 9,5  TO P1(1)
           MOVE 9,0  TO P1(2)
           MOVE 8,5  TO P1(3)
           MOVE 8,0  TO P1(4)
           MOVE 7,5  TO P1(5)
           MOVE 7,0  TO P1(6)

           MOVE 9,5  TO P2(1)
           MOVE 9,0  TO P2(2)
           MOVE 8,5  TO P2(3)
           MOVE 8,0  TO P2(4)
           MOVE 7,5  TO P2(5)
           MOVE 7,0  TO P2(6)

           MOVE 9,5  TO ATIVIDADE(1)
           MOVE 9,0  TO ATIVIDADE(2)
           MOVE 8,5  TO ATIVIDADE(3)
           MOVE 8,0  TO ATIVIDADE(4)
           MOVE 7,5  TO ATIVIDADE(5)
           MOVE 7,0  TO ATIVIDADE(6)

           PERFORM VARYING CONTADOR FROM 1 BY 1 UNTIL CONTADOR > 6
               DISPLAY "DISCIPLINA " CONTADOR ":"
               DISPLAY "NOTA DA P1:"  P1(CONTADOR)
               DISPLAY "NOTA DA P2: " P2(CONTADOR)
               DISPLAY "NOTA DA ATIVIDADE: "
               ATIVIDADE(CONTADOR)
           END-PERFORM
            STOP RUN.
       END PROGRAM PROG08.
