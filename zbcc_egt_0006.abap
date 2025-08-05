*&---------------------------------------------------------------------*
*& Report ZBCC_EGT_0006
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZBCC_EGT_0006.

DATA: gv_num1 type int4,
      gv_num2 type int4,
      gv_sonuc type int4,
      gv_mes type char20,

START-OF-SELECTION.

gv_num1 = 20 .
gv_num2 = 0 .
gv_mes = 'Mesaj1'.

CALL FUNCTION 'ZBCC_EGT_FONK1'
 EXPORTING
   IV_NUM1               = gv_num1
   IV_NUM2               = gv_num2
 IMPORTING
   EV_SONUC              =  gv_sonuc
  CHANGING
    cv_mes                = gv_mes
 EXCEPTIONS
   DIVIDED_BY_ZERO       = 1
   OTHERS                = 2
          .
IF sy-subrc eq 0.
  WRITE: / 'Sonuç: ', gv_sonuc.
  WRITE: / 'Mesaj: ', gv_mes.
  ELSEIF sy-subrc eq 1.
    WRITE '0''a bölemezsiniz.'.
    ENDIF.