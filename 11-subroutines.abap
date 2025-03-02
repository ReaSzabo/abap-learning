*&---------------------------------------------------------------------*
*& Report  ZDE_OKTL_P11_SA
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*

REPORT zde_oktl_p11_sa.

PARAMETERS n TYPE i.
DATA f TYPE i VALUE 1.

IF n <= 1.
  MESSAGE 'The number should be positive!' TYPE 'E'.
ENDIF.

PERFORM fact.
WRITE: 'Factorial=', f.

FORM fact .
IF n <= 0.
  EXIT.
ENDIF.
f = f * n.
n = n - 1.
PERFORM fact.
ENDFORM.                    " FACT
