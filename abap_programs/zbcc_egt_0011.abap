*&---------------------------------------------------------------------*
*& Report ZBCC_EGT_0011
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zbcc_egt_0011.

DATA : gv_num1 TYPE i,
       gv_num2 TYPE i.

START-OF-SELECTION.
  "debug /h
  DO 10 TIMES.
    IF gv_num1 MOD 2 EQ 0.
      gv_num2 = gv_num2 + 1.
    ENDIF.
    gv_num1 = gv_num1 + 1.
  ENDDO.

  WRITE : / 'İkiye bölünebilen adedi: ' , gv_num2.
  
  "debug işlmleri yapıldı menüden desktop 3 sağ tarafa değişken falan