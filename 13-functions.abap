*&---------------------------------------------------------------------*
*& Report  ZDE_OKTL_P13_SA
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*

REPORT zde_oktl_p13_sa.

PARAMETERS n TYPE i.
PARAMETERS lang TYPE sy-langu.
DATA result LIKE spell.
CALL FUNCTION 'SPELL_AMOUNT'
 EXPORTING
   amount          = n
*   CURRENCY        = ' '
*   FILLER          = ' '
   language        = lang "SY-LANGU
 IMPORTING
   in_words        = result
* EXCEPTIONS
*   NOT_FOUND       = 1
*   TOO_LARGE       = 2
*   OTHERS          = 3
          .
IF sy-subrc <> 0.
  WRITE: 'Returning value:', sy-subrc.
ELSE.
  WRITE: 'Value with words:', result-word.
* Implement suitable error handling here
ENDIF.