      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG07.
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
          05 DISCIPLINAS PIC X(40) OCCURS 6 TIMES INDEXED BY IDX.
          05 NOTA        PIC 9(02)V9(02) OCCURS 6 TIMES INDEXED BY IDX.
       01 CONTADOR         PIC 9 VALUE 1.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            INICIO.

           MOVE "Algoritmos e Logica de Programacao"  TO DISCIPLINAS(1)
           MOVE "Programacao Orientada a Objetos"     TO DISCIPLINAS(2)
           MOVE "Banco de Dados"                      TO DISCIPLINAS(3)
           MOVE "Estrutura de Dados"                  TO DISCIPLINAS(4)
           MOVE "Engenharia de Software"              TO DISCIPLINAS(5)
           MOVE "Programacao Mainframe"               TO DISCIPLINAS(6)

           MOVE 9,5  TO NOTA(1)
           MOVE 9,0  TO NOTA(2)
           MOVE 8,5  TO NOTA(3)
           MOVE 8,0  TO NOTA(4)
           MOVE 7,5  TO NOTA(5)
           MOVE 7,0  TO NOTA(6)

           PERFORM VARYING CONTADOR FROM 1 BY 1 UNTIL CONTADOR > 6
               DISPLAY "Disciplina " CONTADOR ": " DISCIPLINAS(CONTADOR)
               DISPLAY "NOTA: " NOTA(CONTADOR)
           END-PERFORM
            STOP RUN.
       END PROGRAM PROG07.
