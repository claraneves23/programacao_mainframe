      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROG02.
       AUTHOR. MARIA CLARA PIRANI NEVES.
       DATE-WRITTEN. 11/04/2025.
      *  PROGRAMA NÚMERO DOIS
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77 LARGURA      PIC 9(003) VALUE ZEROS.
       77 ALTURA       PIC 9(003) VALUE ZEROS.
       77 AREA-RESULT  PIC 9(006) VALUE ZEROS.
       PROCEDURE DIVISION.
       INICIO.

            DISPLAY "Calculo de Area (quadrados/retangulos)"
            DISPLAY "Largura: "
            ACCEPT LARGURA
            DISPLAY "Altura: "
            ACCEPT ALTURA
            MULTIPLY LARGURA BY ALTURA GIVING AREA-RESULT
            DISPLAY "AREA       : " AREA-RESULT
            STOP RUN.
       END PROGRAM PROG02.
