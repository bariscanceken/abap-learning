*&---------------------------------------------------------------------*
*& Report ZBCC_EGT_0005
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zbcc_egt_0005.

*PARAMETERS: p_num TYPE int4.
*
*INITIALIZATION.
*p_num = 12.
*
*AT SELECTION-SCREEN.
*p_num = p_num + 1.
*
*START-OF-SELECTION.
*WRITE 'START-OF-SELECTION.'.
*
*END-OF-SELECTION.
*WRITE 'END-OF-SELECTION.'.

*DATA gv_num1 TYPE int4.
*DATA gv_num2 TYPE int4.
*DATA gv_num3 TYPE int4.
*
*INITIALIZATION.
*
*AT SELECTION-SCREEN.
*
*START-OF-SELECTION.
*
*  PERFORM sayiya_bir_ekle.
*  PERFORM sayiya_bir_ekle.
*  PERFORM sayiya_bir_ekle.
*  PERFORM sayiya_bir_ekle.
*  PERFORM sayiya_bir_ekle.
*  WRITE gv_num1.
*
*  gv_num2 = 15.
*  gv_num3 = 6.
*
*
*  PERFORM iki_sayinin_farki using gv_num2
*        gv_num3.
*
*
*
*END-OF-SELECTION.
*FORM sayiya_bir_ekle.
*  gv_num1 = gv_num1 + 1.
*ENDFORM.
*
*FORM iki_sayinin_carpimi USING p_num1
*                               p_num2.
*  DATA lv_sonuc TYPE int4.
*  lv_sonuc = p_num1 * p_num2.
*  WRITE: 'SOnuç: ',lv_sonuc.
*ENDFORM.
**&---------------------------------------------------------------------*
**& Form iki_sayinin_farki
**&---------------------------------------------------------------------*
**& text
**&---------------------------------------------------------------------*
**&      --> GV_NUM2
**&      --> GV_NUM3
**&---------------------------------------------------------------------*
*FORM iki_sayinin_farki  USING    p_num2
*                                 p_num3.
*  DATA lv_sonuc TYPE int4.
*  lv_sonuc = p_num3 - p_num2.
*  wRITE: 'Fark: ',lv_sonuc.
*
*ENDFORM.

INCLUDE zbcc_egt_0005_top.
INCLUDE zbcc_egt_0005_frm.

START-OF-SELECTION.
  PERFORM form1.
  PERFORM form2.