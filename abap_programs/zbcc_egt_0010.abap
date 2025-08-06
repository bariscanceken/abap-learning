*&---------------------------------------------------------------------*
*& Report ZBCC_EGT_0010
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZBCC_EGT_0010 MESSAGE-ID zbcc_egt.

START-OF-SELECTION.

*MESSAGE 'hello abap' TYPE 'S'.
*MESSAGE 'hello abap' TYPE 'I'.
*MESSAGE 'hello abap' TYPE 'W'.
*MESSAGE 'hello abap' TYPE 'E'.
*MESSAGE 'hello abap' TYPE 'A'.
*MESSAGE 'hello abap' TYPE 'X'.

*MESSAGE 'hello abap' TYPE 'S' DISPLAY LIKE 'I'.
*MESSAGE 'hello abap' TYPE 'I'.DISPLAY LIKE 'X'.
*MESSAGE 'hello abap' TYPE 'W'.DISPLAY LIKE 'A'.
*MESSAGE 'hello abap' TYPE 'E'.
*MESSAGE 'hello abap' TYPE 'A'.
*MESSAGE 'hello abap' TYPE 'X'.

"MESSAGE text-001 TYPE 'I'.

*MESSAGE i000(zbcc_egt).

MESSAGE i000.