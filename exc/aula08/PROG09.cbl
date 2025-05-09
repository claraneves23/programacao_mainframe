      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG09.
       AUTHOR. MARIA CLARA PIRANI NEVES.
       DATE-COMPILED. 09/05/2025.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 NUMERO-INICIAL         PIC 9(4).
       01 NUMERO                 PIC 9(4).
       01 QUOCIENTE              PIC 9(4).
       01 RESTO                  PIC 9.
       01 RESPOSTA               PIC X VALUE 'S'.

       01 CONTADOR               PIC 9.
       01 INDICE                 PIC 9.

       01 MATRIZ-PAR.
           05 PARES              OCCURS 5 TIMES PIC 9(4).

       01 MATRIZ-IMPAR.
           05 IMPARES            OCCURS 5 TIMES PIC 9(4).

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

           PERFORM UNTIL RESPOSTA NOT = 'S'

               DISPLAY "Digite um número inteiro:"
               ACCEPT NUMERO-INICIAL

               MOVE NUMERO-INICIAL TO NUMERO
               MOVE 1 TO INDICE
               MOVE 0 TO CONTADOR

               PERFORM UNTIL CONTADOR = 5
                   ADD 1 TO NUMERO
                   DIVIDE NUMERO BY 2 GIVING QUOCIENTE REMAINDER RESTO
                   IF RESTO = 0
                       MOVE NUMERO TO PARES(INDICE)
                       ADD 1 TO INDICE
                       ADD 1 TO CONTADOR
                   END-IF
               END-PERFORM


               MOVE NUMERO-INICIAL TO NUMERO
               MOVE 5 TO INDICE
               MOVE 0 TO CONTADOR

               PERFORM UNTIL CONTADOR = 5
                   ADD 1 TO NUMERO
                   DIVIDE NUMERO BY 2 GIVING QUOCIENTE REMAINDER RESTO
                   IF RESTO NOT = 0
                       MOVE NUMERO TO IMPARES(INDICE)
                       SUBTRACT 1 FROM INDICE
                       ADD 1 TO CONTADOR
                   END-IF
               END-PERFORM

               DISPLAY " "
               DISPLAY "5 próximos números pares (ordem crescente):"
               PERFORM VARYING INDICE FROM 1 BY 1 UNTIL INDICE > 5
                   DISPLAY PARES(INDICE)
               END-PERFORM

               DISPLAY " "
               DISPLAY "5 próximos números ímpares (ordem decrescente):"
               PERFORM VARYING INDICE FROM 1 BY 1 UNTIL INDICE > 5
                   DISPLAY IMPARES(INDICE)
               END-PERFORM

               DISPLAY " "
               DISPLAY "Deseja inserir outro número? (S/N)"
               ACCEPT RESPOSTA
               MOVE FUNCTION UPPER-CASE(RESPOSTA) TO RESPOSTA

           END-PERFORM

           DISPLAY "Programa encerrado."
           STOP RUN.
       END PROGRAM PROG09.
