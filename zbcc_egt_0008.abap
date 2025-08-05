*&---------------------------------------------------------------------*
*& Report ZBCC_EGT_0008
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zbcc_egt_0008.

CLASS math_op DEFINITION.
  PUBLIC SECTION.
    DATA: lv_num1   TYPE i,
          lv_num2   TYPE i,
          lv_result TYPE i.

    METHODS: sum_numbers.
ENDCLASS.

CLASS math_op IMPLEMENTATION.
  METHOD sum_numbers.
    lv_result = lv_num1 + lv_num2.
  ENDMETHOD.
ENDCLASS.


CLASS math_op_diff DEFINITION INHERITING FROM math_op.
  PUBLIC SECTION.
    METHODS numb_diff.
ENDCLASS.

CLASS math_op_diff IMPLEMENTATION.
    METHODS numb_diff.
    lv_result = lv_num1 - lv_num2.
    endmethod.
ENDCLASS.


DATA : go_math_op TYPE REF TO math_op.
DATA : go_math_op_diff TYPE REF TO math_op_diff.

START-OF-SELECTION.

  CREATE OBJECT: go_math_op.
  go_math_op->lv_num1 = 12.
  go_math_op->lv_num2 = 23.
  go_math_op->sum_numbers( ).

  WRITE: go_math_op->lv_result.