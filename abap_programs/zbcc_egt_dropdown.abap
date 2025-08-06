*&---------------------------------------------------------------------*
*& Report ZBCC_EGT_DROPDOWN
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zbcc_egt_dropdown.

DATA gv_yas TYPE i.

DATA : gv_id     TYPE vrm_id,
       gt_values TYPE vrm_values,
       gs_value  TYPE vrm_value.

DATA : gv_ind TYPE i,
       gv_ya  TYPE i,
       gv_text TYPE char20.

START-OF-SELECTION.

  CLEAR: gt_values.
  gv_id = 'GV_YAS'.  " Ekrandaki dropdown alanının adı

  gv_ya = 15.

  DO 60 TIMES.
    gs_value-key  = gv_ya.
    gs_value-text = gv_ya && ' ' && 'Yaşında!'.
    APPEND gs_value TO gt_values.
    gv_ya = gv_ya + 1.
  ENDDO.

  CALL SCREEN 0100.
*&---------------------------------------------------------------------*
*& Module STATUS_0100 OUTPUT
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
MODULE status_0100 OUTPUT.
  SET PF-STATUS '0100'.
* SET TITLEBAR 'xxx'.

*  gv_id = 'GV_YAS'.
*  gs_value-key = '1'.
*  gs_value-text = '18 Yaş'.
*  APPEND gs_value TO gt_values.
*
*  gv_id = 'GV_YAS'.
*  gs_value-key = '2'.
*  gs_value-text = '19 Yaş'.
*  APPEND gs_value TO gt_values.

  CALL FUNCTION 'VRM_SET_VALUES'
    EXPORTING
      id     = gv_id
      values = gt_values.
  .

ENDMODULE.
*&---------------------------------------------------------------------*
*&      Module  USER_COMMAND_0100  INPUT
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
MODULE user_command_0100 INPUT.
  CASE sy-ucomm.
    WHEN '&BACK'.
      LEAVE TO SCREEN 0 .
  ENDCASE.

ENDMODULE.


"  CALL FUNCTION 'VRM_SET_VALUES'
"    EXPORTING
"     id     = name
"    values = list.