REPORT ztrcktrsr_todo2issue_test01.

data spras type spras.

SELECT-OPTIONS s_spras FOR spras.

START-OF-SELECTION.

  "TODO use API for selecting language keys
  " reason: this is just a test for multiple
  " lines comment in the issue body
  " maybe this works
  " labels: enhancement, help wanted

  SELECT sprsl, sptxt
    FROM t002t INTO TABLE @DATA(langs)
   WHERE sprsl IN @s_spras
     and spras  = @sy-langu.

  "new comment test
  LOOP AT langs
  INTO DATA(l_lang). "TODO use ALV grid for display
    WRITE: / l_lang-sptxt.
  ENDLOOP.
