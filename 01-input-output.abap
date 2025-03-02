*&---------------------------------------------------------------------*
*& Report  ZDE_OKTL_P1_SA
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*

REPORT zde_oktl_p1_sa. "comment
* comment
***hello
***hello
WRITE 'My first ABAP CODE!'.
NEW-LINE.
*PARAMETERS: a TYPE i, b TYPE i.
** MOVE 10 TO a.
*WRITE: 'a =', a, / 'b =', b.
*PARAMETERS date TYPE d DEFAULT '20250301'.
*PARAMETERS ch1 AS CHECKBOX.
*PARAMETERS ch2 AS CHECKBOX DEFAULT 'X'.
*PARAMETERS ryes RADIOBUTTON GROUP r1.
*PARAMETERS rno RADIOBUTTON GROUP r1 DEFAULT 'X'.
*
*WRITE: / text-000, / text-001.
*WRITE / 'apple' QUICKINFO 'It is a fruit!'.
SKIP 1.
WRITE 'I don''t want to be lazy!'.
SKIP 1.
WRITE /13 'Hello'.
SKIP 1.
WRITE: '0000123', / '0000123' NO-ZERO.
SKIP 1.

FORMAT COLOR = 6.
WRITE 'Red'.
FORMAT COLOR OFF.
WRITE / 'Normal'.

INCLUDE <symbol>.
INCLUDE <icon>.
WRITE: / 'Phone Symbol:', SYM_PHONE AS SYMBOL.
WRITE: / 'Alarm Icon:', ICON_ALARM AS ICON.