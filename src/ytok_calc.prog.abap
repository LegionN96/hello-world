*&---------------------------------------------------------------------*
*& Report YTOK_CALC
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ytok_calc.

PARAMETERS: pa_int1 TYPE i,
            pa_int2 TYPE i.

DATA gv_result TYPE p LENGTH 8 DECIMALS 2.

gv_result = pa_int1 + pa_int2.
