REPORT ztrcktrsr_todo2issue_test01.

data spras type spras.

SELECT-OPTIONS s_spras FOR spras.

START-OF-SELECTION.

  SELECT sprsl, sptxt
    FROM t002t INTO TABLE @DATA(langs)
   WHERE sprsl IN @s_spras
     and spras  = @sy-langu.

  "new comment test
  LOOP AT langs INTO DATA(lang). "TODO use ALV grid for display
    WRITE: / lang-sptxt.
  ENDLOOP.
