*&---------------------------------------------------------------------*
*& Report ZBCC_EGT_0007
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZBCC_EGT_0007.

data: gv_egt_class type REF TO zbcc_egt_class.
data: gv_num1 type int4 ,
      gv_num2 type int4 ,
      gv_result TYPE int4.


START-OF-SELECTION.

gv_num1 = 15.
gv_num2 = 24.

CREATE OBJECT gv_egt_class.
gv_egt_class->sum_numbers(
  EXPORTING
    iv_num1   = gv_num1                 " Doğal Sayı
    iv_num2   =      gv_num2           " Doğal Sayı
  IMPORTING
    ev_result =    gv_result              " Doğal Sayı
).

write : gv_result.