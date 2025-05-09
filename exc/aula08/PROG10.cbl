      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG10.
       AUTHOR. MARIA CLARA PIRANI NEVES.
       DATE-COMPILED. 09/05/2025.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

       01 NUMERO-INICIAL         PIC 9(4).
       01 NUMERO-ATUAL           PIC 9(4).
       01 DIVISOR                PIC 9(4).
       01 RESTO                  PIC 9.
       01 QUOCIENTE              PIC 9(4).
       01 TOTAL-PRIMOS           PIC 9 VALUE 0.
       01 INDICE                 PIC 9.
       01 RESPOSTA               PIC X VALUE 'S'.
       01 DIVISORES-ENCONTRADOS  PIC 9 VALUE 0.

       01 MATRIZ-PRIMOS.
           05 PRIMOS             OCCURS 5 TIMES PIC 9(4).

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

           PERFORM UNTIL RESPOSTA NOT = 'S'
               MOVE 0 TO TOTAL-PRIMOS
               DISPLAY "Digite um número inteiro:"
               ACCEPT NUMERO-INICIAL

               ADD 1 TO NUMERO-INICIAL
               MOVE NUMERO-INICIAL TO NUMERO-ATUAL

               PERFORM UNTIL TOTAL-PRIMOS = 5
                   MOVE 0 TO DIVISORES-ENCONTRADOS
                   MOVE 2 TO DIVISOR

                   *> Verifica se NUMERO-ATUAL é primo
                   PERFORM UNTIL DIVISOR >= NUMERO-ATUAL
                       DIVIDE NUMERO-ATUAL BY DIVISOR
                           GIVING QUOCIENTE
                           REMAINDER RESTO
                       IF RESTO = 0
                           ADD 1 TO DIVISORES-ENCONTRADOS
                       END-IF
                       ADD 1 TO DIVISOR
                   END-PERFORM

                   IF DIVISORES-ENCONTRADOS = 0
                       ADD 1 TO TOTAL-PRIMOS
                       MOVE NUMERO-ATUAL TO PRIMOS(TOTAL-PRIMOS)
                   END-IF

                   ADD 1 TO NUMERO-ATUAL
               END-PERFORM

               DISPLAY " "
               DISPLAY "5 próximos números primos (ordem crescente):"
               PERFORM VARYING INDICE FROM 1 BY 1 UNTIL INDICE > 5
                   DISPLAY PRIMOS(INDICE)
               END-PERFORM

               DISPLAY " "
               DISPLAY "5 próximos números primos (ordem decrescente):"
               PERFORM VARYING INDICE FROM 5 BY -1 UNTIL INDICE < 1
                   DISPLAY PRIMOS(INDICE)
               END-PERFORM

               DISPLAY " "
               DISPLAY "Deseja inserir outro número? (S/N)"
               ACCEPT RESPOSTA
               MOVE FUNCTION UPPER-CASE(RESPOSTA) TO RESPOSTA
           END-PERFORM

           DISPLAY "Programa encerrado."
           STOP RUN.
       END PROGRAM PROG10.
