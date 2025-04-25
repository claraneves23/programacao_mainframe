      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG06A.
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
           INITIALIZE WRK-NOTA

           DISPLAY 'POR FAVOR, DIGITE SEU NOME'
           ACCEPT WRK-NOME

           DISPLAY 'DIGITE A MATERIA QUE VOCE ESTA CURSANDO'
           ACCEPT WRK-MATERIA

           DISPLAY 'INFORME A NOTA QUE VOCE TIROU NESTA DISCIPLINA'
           ACCEPT WRK-NOTA

           IF WRK-NOTA >=0 AND WRK-NOTA <=4
               MOVE 'REPROVADO' TO WRK-SITUACAO
           ELSE
               IF WRK-NOTA = 5 OR WRK-NOTA = 6
                   MOVE 'EM RECUPERACAO' TO WRK-SITUACAO
               ELSE
                   IF WRK-NOTA >=7 AND WRK-NOTA <=10
                        MOVE 'APROVADO' TO WRK-SITUACAO
                   ELSE
                        MOVE 'NOTA INVALIDA' TO WRK-SITUACAO
                   END-IF
               END-IF
           END-IF

           DISPLAY 'OLA ' WRK-NOME
               'VOCE ESTA MATRICULADO NA MATERIA ' WRK-MATERIA
               'E SUA NOTA FOI: ' WRK-NOTA
               'E SUA SITUACAO FOI: ' WRK-SITUACAO

           DISPLAY 'VOCE DESEJA CONTINUAR?'
           ACCEPT WRK-CONTINUA.
       END PROGRAM PROG06A.
