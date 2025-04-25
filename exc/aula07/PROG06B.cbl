      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG06B.
       AUTHOR. MARIA CLARA PIRANI NEVES.
       DATE-COMPILED. 25/04/2025.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NOME     PIC X(30).
       77 WRK-MATERIA  PIC X(15).
       77 WRK-NOTA     PIC 9(02).
       77 WRK-SITUACAO PIC X(20).
       77 WRK-CONTINUA PIC X.
       PROCEDURE DIVISION.
               MOVE 'S' TO WRK-CONTINUA
               PERFORM SOLICITA-INFORMACOES UNTIL WRK-CONTINUA ='N' OR
               WRK-CONTINUA = 'n'
               GOBACK.

           SOLICITA-INFORMACOES.
               MOVE SPACES TO WRK-NOME, WRK-MATERIA
               INITIALIZE WRK-NOTA.

               DISPLAY 'POR FAVOR, DIGITE SEU NOME'
               ACCEPT WRK-NOME

               DISPLAY 'DIGITE A MATERIA QUE VOCE ESTA CURSANDO'
               ACCEPT WRK-MATERIA

               DISPLAY 'INFORME A NOTA QUE VOCE TIROU NESTA DISCIPLINA'
               ACCEPT WRK-NOTA

           EVALUATE WRK-NOTA
               WHEN 0 THRU 4
                   MOVE 'REPROVADO' TO WRK-SITUACAO
               WHEN 5 THRU 6
                   MOVE 'EM RECUPERACAO' TO WRK-SITUACAO
               WHEN 7 THRU 10
                   MOVE 'APROVACAO' TO WRK-SITUACAO
               WHEN OTHER
                   MOVE 'NOTA INVALIDA' TO WRK-SITUACAO
           END-EVALUATE
           DISPLAY 'OLA ' WRK-NOME
                   'VOCE ESTA MATRICULADO NA MATERIA ' WRK-MATERIA
                   'E SUA NOTA FOI: ' WRK-NOTA
                   'E SUA SITUACAO FOI: ' WRK-SITUACAO.

           DISPLAY 'VOCE DESEJA CONTINUAR?'
           ACCEPT WRK-CONTINUA.
       END PROGRAM PROG06B.
