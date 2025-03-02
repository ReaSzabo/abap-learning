*&---------------------------------------------------------------------*
*& Report  ZDE_OKTL_P4_SA
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*

REPORT zde_oktl_p4_sa.

*** do loop

*DATA n TYPE i.
*DO 10 TIMES.
*  n = sy-index ** 2.
*  WRITE: / sy-index, n.
*ENDDO.




*** Is prime?

*PARAMETERS a TYPE i.
*DATA: divisor TYPE i, is_prime TYPE i VALUE 0.
*divisor = a DIV 2.
*WHILE divisor <> 1.
*  IF a MOD divisor = 0.
*    WRITE divisor.
*    is_prime = 1.
*  ENDIF.
*  divisor = divisor - 1.
*ENDWHILE.
*
*IF  is_prime = 0.
*  WRITE / 'The number is prime'.
*ELSE.
*  WRITE / 'The number is not a prime'.
*ENDIF.




*** Greatest Common Divisor

* v1

PARAMETERS a TYPE i.
PARAMETERS b TYPE i.
*WHILE a <> b.
*  IF a > b.
*    a = a - b.
*  ELSE.
*    b = b - a.
*  ENDIF.
*
*ENDWHILE.


* v2

DATA r TYPE i.
r = a MOD b.
WHILE r <> 0.
  a = b.
  b = r.
  r = a MOD b.
ENDWHILE.
WRITE: 'Greatest Common Divisor =' , b.