*&---------------------------------------------------------------------*
*& Report  ZDE_OKTL_P3_SA
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*

REPORT zde_oktl_p3_sa.

PARAMETERS a TYPE i.
PARAMETERS op TYPE c LENGTH 2.
PARAMETERS b TYPE i.

DATA result TYPE i.

CASE op.
  WHEN '+'. result = a + b. WRITE: 'result=', result.
  WHEN '-'. result = a - b. WRITE: 'result=', result.
  WHEN '*'. result = a * b. WRITE: 'result=', result.
  WHEN '/'.
    IF b = 0.
      WRITE text-000.
    ELSE.
        result = a / b. WRITE: 'result=', result.
    ENDIF.
  WHEN '%'.
    IF b = 0.
      WRITE text-000.
    ELSE.
        result = a MOD b. WRITE: 'result=', result.
    ENDIF.
  WHEN OTHERS. WRITE 'Wrong operator'.
ENDCASE.