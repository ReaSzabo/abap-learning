*&---------------------------------------------------------------------*
*& Report  ZDE_OKTL_P2_SA
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*

REPORT zde_oktl_p2_sa.
PARAMETERS salary TYPE i.
DATA bonus TYPE i VALUE 0.
IF salary > 250000.
  bonus = 15000.
ELSEIF salary > 135000.
    bonus = 5000.
ELSE.
    bonus = 1000.
ENDIF.

WRITE: 'salary=', salary, 'bonus =', bonus.