
      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG11.
       AUTHOR. MARIA CLARA PIRANI NEVES.
       DATE-COMPILED. 16/05/2025.
       ENVIRONMENT DIVISION.
        DATA DIVISION.
       WORKING-STORAGE SECTION.

       77 WS-QUANTIDADE          PIC 9(02).
       77 WS-INDICE              PIC 9(02) VALUE 1.
       77 WS-ESCOLHA             PIC 9.
       77 WS-CONTINUAR           PIC X VALUE 'S'.

       77 WS-ANGULO-RADIANOS     PIC 9(03)V9999.
       77 WS-RESULTADO           PIC S9(02)V9(5).
       77 GRAUS-PARA-RAD         PIC 9(01)V9(6) VALUE 0.017453.

       01 TABELA-ANGULOS.
          05 ANGULO-VALUE OCCURS 10 TIMES INDEXED BY IDX
             PIC 9(03)V99.

       PROCEDURE DIVISION.
       INICIO.
           PERFORM ACOES-PRINCIPAIS UNTIL WS-CONTINUAR NOT = 'S'
           STOP RUN.

       ACOES-PRINCIPAIS.
           DISPLAY "Quantos ângulos deseja inserir? (1 a 10): "
           ACCEPT WS-QUANTIDADE

           PERFORM VARYING WS-INDICE FROM 1 BY 1
               UNTIL WS-INDICE > WS-QUANTIDADE
               DISPLAY "Digite o ângulo número " WS-INDICE ": "
               ACCEPT ANGULO-VALUE(WS-INDICE)
           END-PERFORM

           DISPLAY "Escolha a operação:"
           DISPLAY "1 - SENO"
           DISPLAY "2 - COSSENO"
           DISPLAY "3 - TANGENTE"
           ACCEPT WS-ESCOLHA

           PERFORM VARYING IDX FROM 1 BY 1
               UNTIL IDX > WS-QUANTIDADE
               COMPUTE WS-ANGULO-RADIANOS =
               ANGULO-VALUE(IDX) * GRAUS-PARA-RAD
               EVALUATE WS-ESCOLHA
                   WHEN 1
                       COMPUTE WS-RESULTADO =
                       FUNCTION SIN(WS-ANGULO-RADIANOS)
                       DISPLAY "SENO(" ANGULO-VALUE(IDX) "°) = "
                       WS-RESULTADO
                   WHEN 2
                       COMPUTE WS-RESULTADO =
                       FUNCTION COS(WS-ANGULO-RADIANOS)
                       DISPLAY "COSSENO(" ANGULO-VALUE(IDX) "°) = "
                       WS-RESULTADO
                   WHEN 3
                       IF ANGULO-VALUE(IDX) = 90
                           DISPLAY "TANGENTE(90°) é indefinida."
                       ELSE
                           COMPUTE WS-RESULTADO =
                           FUNCTION TAN(WS-ANGULO-RADIANOS)
                           DISPLAY "TANGENTE(" ANGULO-VALUE(IDX) "°) = "
                           WS-RESULTADO
                       END-IF
                   WHEN OTHER
                       DISPLAY "Opção inválida."
               END-EVALUATE
           END-PERFORM

           DISPLAY "Deseja continuar? (S/N): "
           ACCEPT WS-CONTINUAR
           MOVE FUNCTION UPPER-CASE(WS-CONTINUAR) TO WS-CONTINUAR.
       END PROGRAM PROG11.
