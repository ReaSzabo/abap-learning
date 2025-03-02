*&---------------------------------------------------------------------*
*& Report  ZDE_OKTL_P5_SA
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*

REPORT ZDE_OKTL_P5_SA.
DATA str(50) VALUE 'ABAP basics course'.
DATA: s1(4), s2(6), s3(6), new_word(7) VALUE 'A_B_A_P'.
DATA: len1 TYPE i, len2 TYPE i, len3 TYPE i.

SPLIT str AT ' ' INTO s1 s2 s3.
len1 = strlen( s1 ).
len2 = strlen( s2 ).
len3 = strlen( s3 ).
WRITE: /10 s1, 30 len1, /10 s2, 30 len2, /10 s3, 30 len3.
REPLACE 'ABAP' in str WITH new_word.
CONCATENATE str '.' INTO str.
WRITE /10 str.
TRANSLATE str TO UPPER CASE.
WRITE /10 str.
CONDENSE str NO-GAPS.
WRITE /10 str COLOR 6 INTENSIFIED OFF.