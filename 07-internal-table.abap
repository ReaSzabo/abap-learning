*&---------------------------------------------------------------------*
*& Report  ZDE_OKTL_P7_SA
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*

REPORT zde_oktl_p7_sa.

*** initialize internal table
DATA: BEGIN OF record,
  ser_num TYPE i,
  code TYPE i,
  name TYPE c LENGTH 20,
  quantity TYPE c LENGTH 2,
  END OF record.

  DATA: table_01 LIKE STANDARD table_01 OF record, pc TYPE i.

  DO 3 TIMES.
    record-ser_num = sy-index.
    record-code = sy-index ** 2.
    record-name = 'apple'.
    record-quantity = 'kg'.
    APPEND record TO table_01.
  ENDDO.
LOOP AT table_01 INTO record.
  WRITE: / record-ser_num, record-code, record-name, record-quantity.
ENDLOOP.

ULINE.



*** add records
LOOP AT table_01 INTO record.
    record-ser_num = sy-tabix.
    record-code = sy-tabix * 3.
    record-name = 'pear'.
    record-quantity = 'kg'.
    INSERT record INTO table_01.
ENDLOOP.
LOOP AT table_01 INTO record.
  WRITE: / record-ser_num, record-code, record-name, record-quantity.
ENDLOOP.

ULINE.



*** add new record

record-ser_num = 3.
record-code = 9.
record-name = 'pulpy orange juice'.
record-quantity = 'L'.
INSERT record INTO table_01 INDEX 2.

LOOP AT table_01 INTO record.
  WRITE: / record-ser_num, record-code, record-name, record-quantity.
ENDLOOP.

ULINE.



*** modify values #1

LOOP AT table_01 INTO record.
  IF record-ser_num = 3.
    record-code = 18.
    record-name = 'orange juice'.
    record-quantity = 'L'.
    MODIFY table_01 FROM record.
    ENDIF.
ENDLOOP.
LOOP AT table_01 INTO record.
  WRITE: / record-ser_num, record-code, record-name, record-quantity.
ENDLOOP.

ULINE.



*** modify values #2

LOOP AT table_01 INTO record.
  IF record-name = 'apple'.
    pc = pc + 1.
  ENDIF.
ENDLOOP.
WRITE: /'apple = ' , pc.

ULINE.



*** sorting

SORT table_01 BY name.
LOOP AT table_01 INTO record.
  WRITE: / record-ser_num, record-code, record-name, record-quantity.
ENDLOOP.

ULINE.



*** delete record

LOOP AT table_01 INTO record WHERE code = 4.
  DELETE table_01.
ENDLOOP.

LOOP AT table_01 INTO record.
  WRITE: / record-ser_num, record-code, record-name, record-quantity.
ENDLOOP.

ULINE.



*** modify values #3

LOOP AT table_01 INTO record.
  IF record-quantity = 'kg'.
    record-quantity = 'pc'.
    MODIFY table_01 FROM record.
  ENDIF.
ENDLOOP.

LOOP AT table_01 INTO record.
  WRITE: / record-ser_num, record-code, record-name, record-quantity.
ENDLOOP.
ULINE.