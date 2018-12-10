*&---------------------------------------------------------------------*
*& Report zjw_erstes_programm
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT zjw_erstes_programm.

DATA: gs_sflight TYPE sflight,              "Typisierung Struktur
      gt_sflight TYPE STANDARD TABLE OF sflight. "Typisierung Tabelle


"Mit SELECT ... INTO TABLE wird in einen Tabellenbereich geschrieben ( 1 bis N Sätze können in eine tabellentypisierten Variable abgespeichert werden )
SELECT *
  FROM sflight
  WHERE price BETWEEN 300 AND 600
  INTO CORRESPONDING FIELDS OF TABLE @gt_sflight.
IF sy-subrc = 0. "Wenn der Systemparameter SY-SUBRC auf 0 steht, bedeutet das, dass mindestens ein Satz gefunden werden konnte
  "In diesem Fall wird eine Schleife über die Variable gelegt, die vorher als tabellentypisierte Variable angelegt wurde.

  LOOP AT gt_sflight INTO gs_sflight.
    "In jedem Durchlauf wird die aktuelle Zeile von GT_SFLIGHT in die Struktur GS_SFLIGHT geschrieben

    WRITE:/ gs_sflight-carrid,
            gs_sflight-connid,
            gs_sflight-currency.
  ENDLOOP.
ELSE.
WRITE |Nichts gefunden|.

ENDIF.
