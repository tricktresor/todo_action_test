REPORT ztrcktrsr_todo2issue_test01.

*TODO define correct rollname
PARAMETERS p_test TYPE c LENGTH 10.

START-OF-SELECTION.

*TODO use alv instead of write

  WRITE: / p_test.
