*&---------------------------------------------------------------------*
*& Report ZBCC_EGT_0004
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zbcc_egt_0004.

DATA gv_perssoyad TYPE zbcc_perssoyad_de.

TABLES: zbcc_pers_t.

PARAMETERS: p_num1   TYPE int4,
            p_persad TYPE zbcc_persad_de.

SELECT-OPTIONS: s_perssd FOR gv_perssoyad,
s_perscn FOR  zbcc_pers_t-pers_cins.

PARAMETERS: p_cbox1 AS CHECKBOX.

SELECTION-SCREEN BEGIN OF BLOCK bl1 WITH FRAME TITLE text-001.
  PARAMETERS: p_radi1 RADIOBUTTON GROUP gr1,
              p_radi2 RADIOBUTTON GROUP gr1,
              p_radi3 RADIOBUTTON GROUP gr1.
SELECTION-SCREEN END OF BLOCK bl1.

  SELECTION-SCREEN BEGIN OF BLOCK bl2 WITH FRAME TITLE text-002.
    PARAMETERS: p_radi7 RADIOBUTTON GROUP gr2,
                p_radi5 RADIOBUTTON GROUP gr2,
                p_radi6 RADIOBUTTON GROUP gr2.
    SELECTION-SCREEN END OF BLOCK bl2.