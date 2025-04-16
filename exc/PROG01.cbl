      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG01.
       DATE-WRITTEN. 11/04/2025.
       AUTHOR. MARIA CLARA PIRANI NEVES.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-MENSAGEM PIC X(20) VALUE SPACES.
       01 WS-NOME     PIC X(20) VALUE SPACES.
       PROCEDURE DIVISION.
       PRIMEIRA-SECAO.
       PRIMEIRO-PARAG.
            MOVE 'Como vai mundo!' TO WS-MENSAGEM.
            DISPLAY WS-MENSAGEM
            DISPLAY 'Por favor, digite seu nome:'
            ACCEPT WS-NOME
            DISPLAY 'Prazer em conhecê-lo,' WS-NOME.
            MOVE 'Tenha um ótimo dia' TO WS-MENSAGEM.
            DISPLAY WS-MENSAGEM
            STOP RUN.
       END PROGRAM PROG01.
