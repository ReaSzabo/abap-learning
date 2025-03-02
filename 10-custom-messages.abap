*&---------------------------------------------------------------------*
*& Report  ZDE_OKTL_P10_SA
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*

REPORT ZDE_OKTL_P10_SA.

*** error message in case of negative number

PARAMETERS a TYPE i.
IF a <= 0.
  MESSAGE i000(ZDE_OKTL_MES_SA).
ENDIF .