*&---------------------------------------------------------------------*
*& Report  ZDE_OKTL_P8_SA
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*

REPORT ZDE_OKTL_P8_SA.

DATA employees TYPE ZDE_EMP_SA.

SELECT *
  FROM ZDE_OKTL_EMP_BP
  INTO employees
  WHERE job_id = 1.
  Write: / employees-last_name, employees-first_name, employees-email.
  ENDSELECT.