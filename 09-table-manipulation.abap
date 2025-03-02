*&---------------------------------------------------------------------*
*& Report  ZDE_OKTL_P9_SA
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*

REPORT zde_oktl_p9_sa.

DATA record TYPE zde_oktl_job_sa.
DATA inter_tab TYPE TABLE OF zde_oktl_job_sa.


*** insert new record

*record-job_id = 10.
*record-job_name = 'Administrator'.
*INSERT INTO ZDE_OKTL_JOB_SA VALUES record.



*** insert internal table into table

*record-job_id = 20.
*record-job_name = 'Manager'.
*APPEND record to inter_tab.
*
*record-job_id = 30.
*record-job_name = 'Cleaning lady'.
*APPEND record to inter_tab.
*
*INSERT ZDE_OKTL_JOB_SA FROM TABLE inter_tab.



*** list records of table 

*SELECT *
*  FROM ZDE_OKTL_JOB_SA
*  INTO record.
*  WRITE: / record-job_id, record-job_name.
*  ENDSELECT.
*
*ULINE.



*** update a record 

*SELECT * FROM ZDE_OKTL_JOB_SA
*  INTO record WHERE job_id = 10.
*  record-job_name = 'IT_Administrator'.
*  ENDSELECT.
*
*  UPDATE ZDE_OKTL_JOB_SA FROM record.
*
*SELECT *
*  FROM ZDE_OKTL_JOB_SA
*  INTO record.
*  WRITE: / record-job_id, record-job_name.
*  ENDSELECT.
*
*ULINE.



*** update table by internal table

*SELECT * FROM ZDE_OKTL_JOB_SA
*  INTO TABLE inter_tab.
*
*  LOOP AT inter_tab INTO record.
*    record-job_name = record-job_name && '!'.
*    MODIFY inter_tab FROM record.
*  ENDLOOP.
*  UPDATE ZDE_OKTL_JOB_SA FROM TABLE inter_tab.
*
*SELECT *
*  FROM ZDE_OKTL_JOB_SA
*  INTO record.
*  WRITE: / record-job_id, record-job_name.
*  ENDSELECT.
*
*ULINE.



*** delete a record

*DELETE FROM  ZDE_OKTL_JOB_SA WHERE job_id = 10.



*** delete table

SELECT * FROM ZDE_OKTL_JOB_SA INTO TABLE inter_tab.
DELETE ZDE_OKTL_JOB_SA From table inter_tab.
 
SELECT *
  FROM ZDE_OKTL_JOB_SA
  INTO record.
  WRITE: / record-job_id, record-job_name.
ENDSELECT.

ULINE.