*&---------------------------------------------------------------------*
*& Report YTOK_CALC
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ytok_calc.

PARAMETERS: pa_int1 TYPE i,
            pa_int2 TYPE i,
            pa_op   TYPE char2.

DATA gv_result TYPE p LENGTH 8 DECIMALS 2.

CASE pa_op.
  WHEN '+'.
    gv_result = pa_int1 + pa_int2.
  WHEN '-'.
    gv_result = pa_int1 - pa_int2.
  WHEN '/'.

  WHEN OTHERS.
ENDCASE.
