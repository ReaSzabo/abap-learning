*&---------------------------------------------------------------------*
*& Report  ZDE_OKTL_P6_SA
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*

REPORT ZDE_OKTL_P6_SA.
TYPES: BEGIN OF countries,
  cid TYPE i,
  cname TYPE c LENGTH 40,
  continent TYPE c LENGTH 30,
  END OF countries.

  DATA: c1 TYPE countries, c2 TYPE countries, c3 TYPE countries.
  c1-cid = 1.
  c1-cname = 'Hungary'.
  c1-continent = 'Europe'.

  c2-cid = 2.
  c2-cname = 'Germany'.
  c2-continent = 'Europe'.

  WRITE: / c2-cid, c2-cname, c2-continent.
  MOVE-CORRESPONDING c1 to c3.
  WRITE: / c3-cid, c3-cname, c3-continent.