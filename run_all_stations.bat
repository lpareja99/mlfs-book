@echo off
setlocal enabledelayedexpansion

REM Ruta al notebook
set "NOTEBOOK=notebooks\airquality\2_scale_air_quality_feature_pipeline.ipynb"

REM Lista de TODOS tus secrets de estaciones
for %%S in (
  SENSOR_LOCATION_JSON_belgradplatz--s--dostecke---gstr-nr--816
  SENSOR_LOCATION_JSON_ecke-taborstra--e---glockengasse
  SENSOR_LOCATION_JSON_floridsdorf--gerichtsgasse-1a--prager-str--65m
  SENSOR_LOCATION_JSON_hausgrundweg-23--gstr--254
  SENSOR_LOCATION_JSON_kendlerstra--e-40--umspannwerk
  SENSOR_LOCATION_JSON_ostringweg--zwischen-geb--uden-bt25
  SENSOR_LOCATION_JSON_schafbergbad--josef-redl-gasse-2--gstr-nr--698
  SENSOR_LOCATION_JSON_umspannwerk-gaudenzdorfer-g--rtel
  SENSOR_LOCATION_JSON_wehlistra--e-366--gstr-nr-2157
) do (
  echo ==================================================
  echo Running pipeline for %%S
  echo ==================================================
  set "SENSOR_LOCATION_JSON=%%S"
  ipython "%NOTEBOOK%"
)

endlocal
