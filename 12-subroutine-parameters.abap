*&---------------------------------------------------------------------*
*& Report  ZDE_OKTL_P12_SA
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*

REPORT zde_oktl_p12_sa.
DATA: a TYPE i VALUE 1,
      b TYPE i VALUE 2,
      c TYPE i.

*** without parameter

PERFORM header.
WRITE: / a, b, c.


*** params by reference

PERFORM by_reference USING a b c.
WRITE: / a, b, c.


*** params by value

PERFORM by_value USING a b c.
WRITE: / a, b, c.
*----------------------------------------------------------------------*
FORM header .
WRITE: / 'Code is running by: ', sy-uname,
/ 'Host:', sy-host,
/ 'Date:', sy-datum, 'Time: ', sy-uzeit.
ULINE.
ENDFORM.                    " HEADER
*----------------------------------------------------------------------*
FORM by_reference  USING    p_a     p_b          p_c.
p_c = p_a  + p_b.
p_a = p_a + 1000.
ENDFORM.                    " BY_REFERENCE
*----------------------------------------------------------------------*
FORM by_value  USING    VALUE(p_a) VALUE(p_b) CHANGING   VALUE(p_c).
p_c = p_a  + p_b.
p_a = p_a + 1000.
ENDFORM.                    " BY_VALUE