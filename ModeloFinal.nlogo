extensions [gis]

globals
[
  Medellin-dataset
  Continuar?
  TortugasEnRadio
  SeleccionCluster
  SetupOK?
]

breed [lotes lote]

patches-own [
  COMUNA
  ID
  mycolor
]

turtles-own
[
  tcolor
  CBML
  Suma_Mcols
  Promedio_Mcols
  AreaLote
  C_UsoPredi
  Cambia?
  Scanned?
  C_KMC_8
  C_KMC_9
  C_KMC_10
  C_KMC_11
  C_KMC_12
  C_KMC_13
  C_KMC_14
  C_KMC_15
  C_HC_8
  C_HC_9
  C_HC_10
  C_HC_11
  C_HC_12
  C_HC_13
  C_HC_14
  C_HC_15
  M_CS_TF
  M_EQ_TF
  M_H_TF
  M_PP_TF
  M_PC_TF
  M_PrPr_TF
  M_TR_TF
  M_UR_TF
  M_ValorMet
  M_ZP_TF
  M_R_TF
  NuevoCluster
]

to Setup
  reset-timer
  ca
  clear-all
  set Continuar? false
  set-default-shape turtles "house"
  reset-ticks
  set medellin-dataset gis:load-dataset "MapaShape/Medellin2.shp"
  gis:set-world-envelope gis:envelope-of medellin-dataset
  ifelse (TipoCluster = "KMeans")
  [
    if CantidadClusters = 8
    [
      foreach gis:feature-list-of medellin-dataset
      [ vector-feature ->
        if gis:property-value vector-feature "C_KMC_8" = 0 [gis:set-drawing-color black gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_KMC_8" = 1 [gis:set-drawing-color white gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_KMC_8" = 2 [gis:set-drawing-color gray gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_KMC_8" = 3 [gis:set-drawing-color red gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_KMC_8" = 4 [gis:set-drawing-color orange gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_KMC_8" = 5 [gis:set-drawing-color brown gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_KMC_8" = 6 [gis:set-drawing-color yellow gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_KMC_8" = 7 [gis:set-drawing-color green gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_KMC_8" = 8 [gis:set-drawing-color lime gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_KMC_8" = 9 [gis:set-drawing-color turquoise gis:fill vector-feature  2.0]
      ]
    ]
    if CantidadClusters = 9
    [
      foreach gis:feature-list-of medellin-dataset
      [ vector-feature ->
        if gis:property-value vector-feature "C_KMC_9" = 0 [gis:set-drawing-color black gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_KMC_9" = 1 [gis:set-drawing-color white gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_KMC_9" = 2 [gis:set-drawing-color gray gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_KMC_9" = 3 [gis:set-drawing-color red gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_KMC_9" = 4 [gis:set-drawing-color orange gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_KMC_9" = 5 [gis:set-drawing-color brown gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_KMC_9" = 6 [gis:set-drawing-color yellow gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_KMC_9" = 7 [gis:set-drawing-color green gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_KMC_9" = 8 [gis:set-drawing-color lime gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_KMC_9" = 9 [gis:set-drawing-color turquoise gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_KMC_9" = 10 [gis:set-drawing-color cyan gis:fill vector-feature  2.0]
      ]
    ]
    if CantidadClusters = 10
    [
      foreach gis:feature-list-of medellin-dataset
      [ vector-feature ->
        if gis:property-value vector-feature "C_KMC_10" = 0 [gis:set-drawing-color black gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_KMC_10" = 1 [gis:set-drawing-color white gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_KMC_10" = 2 [gis:set-drawing-color gray gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_KMC_10" = 3 [gis:set-drawing-color red gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_KMC_10" = 4 [gis:set-drawing-color orange gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_KMC_10" = 5 [gis:set-drawing-color brown gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_KMC_10" = 6 [gis:set-drawing-color yellow gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_KMC_10" = 7 [gis:set-drawing-color green gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_KMC_10" = 8 [gis:set-drawing-color lime gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_KMC_10" = 9 [gis:set-drawing-color turquoise gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_KMC_10" = 10 [gis:set-drawing-color cyan gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_KMC_10" = 11 [gis:set-drawing-color sky gis:fill vector-feature  2.0]
      ]
    ]
    if CantidadClusters = 11
    [
      foreach gis:feature-list-of medellin-dataset
      [ vector-feature ->
        if gis:property-value vector-feature "C_KMC_11" = 0 [gis:set-drawing-color black gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_KMC_11" = 1 [gis:set-drawing-color white gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_KMC_11" = 2 [gis:set-drawing-color gray gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_KMC_11" = 3 [gis:set-drawing-color red gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_KMC_11" = 4 [gis:set-drawing-color orange gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_KMC_11" = 5 [gis:set-drawing-color brown gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_KMC_11" = 6 [gis:set-drawing-color yellow gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_KMC_11" = 7 [gis:set-drawing-color green gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_KMC_11" = 8 [gis:set-drawing-color lime gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_KMC_11" = 9 [gis:set-drawing-color turquoise gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_KMC_11" = 10 [gis:set-drawing-color cyan gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_KMC_11" = 11 [gis:set-drawing-color sky gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_KMC_11" = 12 [gis:set-drawing-color blue gis:fill vector-feature  2.0]
      ]
    ]
   if CantidadClusters = 12
    [
      foreach gis:feature-list-of medellin-dataset
      [ vector-feature ->
        if gis:property-value vector-feature "C_KMC_12" = 0 [gis:set-drawing-color black gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_KMC_12" = 1 [gis:set-drawing-color white gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_KMC_12" = 2 [gis:set-drawing-color gray gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_KMC_12" = 3 [gis:set-drawing-color red gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_KMC_12" = 4 [gis:set-drawing-color orange gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_KMC_12" = 5 [gis:set-drawing-color brown gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_KMC_12" = 6 [gis:set-drawing-color yellow gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_KMC_12" = 7 [gis:set-drawing-color green gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_KMC_12" = 8 [gis:set-drawing-color lime gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_KMC_12" = 9 [gis:set-drawing-color turquoise gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_KMC_12" = 10 [gis:set-drawing-color cyan gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_KMC_12" = 11 [gis:set-drawing-color sky gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_KMC_12" = 12 [gis:set-drawing-color blue gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_KMC_12" = 13 [gis:set-drawing-color violet gis:fill vector-feature  2.0]
      ]
    ]
   if CantidadClusters = 13
    [
      foreach gis:feature-list-of medellin-dataset
      [ vector-feature ->
        if gis:property-value vector-feature "C_KMC_13" = 0 [gis:set-drawing-color black gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_KMC_13" = 1 [gis:set-drawing-color white gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_KMC_13" = 2 [gis:set-drawing-color gray gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_KMC_13" = 3 [gis:set-drawing-color red gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_KMC_13" = 4 [gis:set-drawing-color orange gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_KMC_13" = 5 [gis:set-drawing-color brown gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_KMC_13" = 6 [gis:set-drawing-color yellow gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_KMC_13" = 7 [gis:set-drawing-color green gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_KMC_13" = 8 [gis:set-drawing-color lime gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_KMC_13" = 9 [gis:set-drawing-color turquoise gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_KMC_13" = 10 [gis:set-drawing-color cyan gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_KMC_13" = 11 [gis:set-drawing-color sky gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_KMC_13" = 12 [gis:set-drawing-color blue gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_KMC_13" = 13 [gis:set-drawing-color violet gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_KMC_13" = 14 [gis:set-drawing-color magenta gis:fill vector-feature  2.0]
      ]
    ]
   if CantidadClusters = 14
    [
      foreach gis:feature-list-of medellin-dataset
      [ vector-feature ->
        if gis:property-value vector-feature "C_KMC_14" = 0 [gis:set-drawing-color black gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_KMC_14" = 1 [gis:set-drawing-color white gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_KMC_14" = 2 [gis:set-drawing-color gray gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_KMC_14" = 3 [gis:set-drawing-color red gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_KMC_14" = 4 [gis:set-drawing-color orange gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_KMC_14" = 5 [gis:set-drawing-color brown gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_KMC_14" = 6 [gis:set-drawing-color yellow gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_KMC_14" = 7 [gis:set-drawing-color green gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_KMC_14" = 8 [gis:set-drawing-color lime gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_KMC_14" = 9 [gis:set-drawing-color turquoise gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_KMC_14" = 10 [gis:set-drawing-color cyan gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_KMC_14" = 11 [gis:set-drawing-color sky gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_KMC_14" = 12 [gis:set-drawing-color blue gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_KMC_14" = 13 [gis:set-drawing-color violet gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_KMC_14" = 14 [gis:set-drawing-color magenta gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_KMC_14" = 15 [gis:set-drawing-color pink gis:fill vector-feature  2.0]
      ]
    ]
   if CantidadClusters = 15
    [
      foreach gis:feature-list-of medellin-dataset
      [ vector-feature ->
        if gis:property-value vector-feature "C_KMC_15" = 0 [gis:set-drawing-color black gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_KMC_15" = 1 [gis:set-drawing-color white gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_KMC_15" = 2 [gis:set-drawing-color gray gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_KMC_15" = 3 [gis:set-drawing-color red gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_KMC_15" = 4 [gis:set-drawing-color orange gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_KMC_15" = 5 [gis:set-drawing-color brown gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_KMC_15" = 6 [gis:set-drawing-color yellow gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_KMC_15" = 7 [gis:set-drawing-color green gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_KMC_15" = 8 [gis:set-drawing-color lime gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_KMC_15" = 9 [gis:set-drawing-color turquoise gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_KMC_15" = 10 [gis:set-drawing-color cyan gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_KMC_15" = 11 [gis:set-drawing-color sky gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_KMC_15" = 12 [gis:set-drawing-color blue gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_KMC_15" = 13 [gis:set-drawing-color violet gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_KMC_15" = 14 [gis:set-drawing-color magenta gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_KMC_15" = 15 [gis:set-drawing-color pink gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_KMC_15" = 16 [gis:set-drawing-color 138 gis:fill vector-feature  2.0]
      ]
    ]
  ]
  [
    if CantidadClusters = 8
    [
      foreach gis:feature-list-of medellin-dataset
      [ vector-feature ->
        if gis:property-value vector-feature "C_HC_8" = 0 [gis:set-drawing-color black gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_HC_8" = 1 [gis:set-drawing-color white gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_HC_8" = 2 [gis:set-drawing-color gray gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_HC_8" = 3 [gis:set-drawing-color red gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_HC_8" = 4 [gis:set-drawing-color orange gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_HC_8" = 5 [gis:set-drawing-color brown gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_HC_8" = 6 [gis:set-drawing-color yellow gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_HC_8" = 7 [gis:set-drawing-color green gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_HC_8" = 8 [gis:set-drawing-color lime gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_HC_8" = 9 [gis:set-drawing-color turquoise gis:fill vector-feature  2.0]
      ]
    ]
    if CantidadClusters = 9
    [
      foreach gis:feature-list-of medellin-dataset
      [ vector-feature ->
        if gis:property-value vector-feature "C_HC_9" = 0 [gis:set-drawing-color black gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_HC_9" = 1 [gis:set-drawing-color white gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_HC_9" = 2 [gis:set-drawing-color gray gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_HC_9" = 3 [gis:set-drawing-color red gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_HC_9" = 4 [gis:set-drawing-color orange gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_HC_9" = 5 [gis:set-drawing-color brown gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_HC_9" = 6 [gis:set-drawing-color yellow gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_HC_9" = 7 [gis:set-drawing-color green gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_HC_9" = 8 [gis:set-drawing-color lime gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_HC_9" = 9 [gis:set-drawing-color turquoise gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_HC_9" = 10 [gis:set-drawing-color cyan gis:fill vector-feature  2.0]
      ]
    ]
    if CantidadClusters = 10
    [
      foreach gis:feature-list-of medellin-dataset
      [ vector-feature ->
        if gis:property-value vector-feature "C_HC_10" = 0 [gis:set-drawing-color black gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_HC_10" = 1 [gis:set-drawing-color white gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_HC_10" = 2 [gis:set-drawing-color gray gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_HC_10" = 3 [gis:set-drawing-color red gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_HC_10" = 4 [gis:set-drawing-color orange gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_HC_10" = 5 [gis:set-drawing-color brown gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_HC_10" = 6 [gis:set-drawing-color yellow gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_HC_10" = 7 [gis:set-drawing-color green gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_HC_10" = 8 [gis:set-drawing-color lime gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_HC_10" = 9 [gis:set-drawing-color turquoise gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_HC_10" = 10 [gis:set-drawing-color cyan gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_HC_10" = 11 [gis:set-drawing-color sky gis:fill vector-feature  2.0]
      ]
    ]
    if CantidadClusters = 11
    [
      foreach gis:feature-list-of medellin-dataset
      [ vector-feature ->
        if gis:property-value vector-feature "C_HC_11" = 0 [gis:set-drawing-color black gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_HC_11" = 1 [gis:set-drawing-color white gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_HC_11" = 2 [gis:set-drawing-color gray gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_HC_11" = 3 [gis:set-drawing-color red gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_HC_11" = 4 [gis:set-drawing-color orange gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_HC_11" = 5 [gis:set-drawing-color brown gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_HC_11" = 6 [gis:set-drawing-color yellow gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_HC_11" = 7 [gis:set-drawing-color green gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_HC_11" = 8 [gis:set-drawing-color lime gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_HC_11" = 9 [gis:set-drawing-color turquoise gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_HC_11" = 10 [gis:set-drawing-color cyan gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_HC_11" = 11 [gis:set-drawing-color sky gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_HC_11" = 12 [gis:set-drawing-color blue gis:fill vector-feature  2.0]
      ]
    ]
   if CantidadClusters = 12
    [
      foreach gis:feature-list-of medellin-dataset
      [ vector-feature ->
        if gis:property-value vector-feature "C_HC_12" = 0 [gis:set-drawing-color black gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_HC_12" = 1 [gis:set-drawing-color white gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_HC_12" = 2 [gis:set-drawing-color gray gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_HC_12" = 3 [gis:set-drawing-color red gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_HC_12" = 4 [gis:set-drawing-color orange gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_HC_12" = 5 [gis:set-drawing-color brown gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_HC_12" = 6 [gis:set-drawing-color yellow gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_HC_12" = 7 [gis:set-drawing-color green gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_HC_12" = 8 [gis:set-drawing-color lime gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_HC_12" = 9 [gis:set-drawing-color turquoise gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_HC_12" = 10 [gis:set-drawing-color cyan gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_HC_12" = 11 [gis:set-drawing-color sky gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_HC_12" = 12 [gis:set-drawing-color blue gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_HC_12" = 13 [gis:set-drawing-color violet gis:fill vector-feature  2.0]
      ]
    ]
   if CantidadClusters = 13
    [
      foreach gis:feature-list-of medellin-dataset
      [ vector-feature ->
        if gis:property-value vector-feature "C_HC_13" = 0 [gis:set-drawing-color black gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_HC_13" = 1 [gis:set-drawing-color white gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_HC_13" = 2 [gis:set-drawing-color gray gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_HC_13" = 3 [gis:set-drawing-color red gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_HC_13" = 4 [gis:set-drawing-color orange gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_HC_13" = 5 [gis:set-drawing-color brown gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_HC_13" = 6 [gis:set-drawing-color yellow gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_HC_13" = 7 [gis:set-drawing-color green gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_HC_13" = 8 [gis:set-drawing-color lime gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_HC_13" = 9 [gis:set-drawing-color turquoise gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_HC_13" = 10 [gis:set-drawing-color cyan gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_HC_13" = 11 [gis:set-drawing-color sky gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_HC_13" = 12 [gis:set-drawing-color blue gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_HC_13" = 13 [gis:set-drawing-color violet gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_HC_13" = 14 [gis:set-drawing-color magenta gis:fill vector-feature  2.0]
      ]
    ]
   if CantidadClusters = 14
    [
      foreach gis:feature-list-of medellin-dataset
      [ vector-feature ->
        if gis:property-value vector-feature "C_HC_14" = 0 [gis:set-drawing-color black gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_HC_14" = 1 [gis:set-drawing-color white gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_HC_14" = 2 [gis:set-drawing-color gray gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_HC_14" = 3 [gis:set-drawing-color red gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_HC_14" = 4 [gis:set-drawing-color orange gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_HC_14" = 5 [gis:set-drawing-color brown gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_HC_14" = 6 [gis:set-drawing-color yellow gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_HC_14" = 7 [gis:set-drawing-color green gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_HC_14" = 8 [gis:set-drawing-color lime gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_HC_14" = 9 [gis:set-drawing-color turquoise gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_HC_14" = 10 [gis:set-drawing-color cyan gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_HC_14" = 11 [gis:set-drawing-color sky gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_HC_14" = 12 [gis:set-drawing-color blue gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_HC_14" = 13 [gis:set-drawing-color violet gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_HC_14" = 14 [gis:set-drawing-color magenta gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_HC_14" = 15 [gis:set-drawing-color pink gis:fill vector-feature  2.0]
      ]
    ]
   if CantidadClusters = 15
    [
      foreach gis:feature-list-of medellin-dataset
      [ vector-feature ->
        if gis:property-value vector-feature "C_HC_15" = 0 [gis:set-drawing-color black gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_HC_15" = 1 [gis:set-drawing-color white gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_HC_15" = 2 [gis:set-drawing-color gray gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_HC_15" = 3 [gis:set-drawing-color red gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_HC_15" = 4 [gis:set-drawing-color orange gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_HC_15" = 5 [gis:set-drawing-color brown gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_HC_15" = 6 [gis:set-drawing-color yellow gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_HC_15" = 7 [gis:set-drawing-color green gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_HC_15" = 8 [gis:set-drawing-color lime gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_HC_15" = 9 [gis:set-drawing-color turquoise gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_HC_15" = 10 [gis:set-drawing-color cyan gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_HC_15" = 11 [gis:set-drawing-color sky gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_HC_15" = 12 [gis:set-drawing-color blue gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_HC_15" = 13 [gis:set-drawing-color violet gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_HC_15" = 14 [gis:set-drawing-color magenta gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_HC_15" = 15 [gis:set-drawing-color pink gis:fill vector-feature  2.0]
        if gis:property-value vector-feature "C_HC_15" = 16 [gis:set-drawing-color 138 gis:fill vector-feature  2.0]
      ]
    ]
  ]

  gis:set-drawing-color 9.9
  gis:draw  medellin-dataset 1
  CrearTortugasEnLotes
  show word " Configuracion  terminada " TipoCluster
  user-message (word "Configuracion  terminada:  " TipoCluster " \n El proceso tomó: " timer " segundos" )
end

to CrearTortugasEnLotes
  ask lotes [die]
  foreach gis:feature-list-of medellin-dataset
  [ vector-feature ->
    let location gis:location-of gis:centroid-of vector-feature
    if not empty? location
    [ create-lotes 1
      [
        if not MostrarTortugas [ht]
        set xcor item 0 location
        set ycor item 1 location
        set size 0.3
        set color white
        set CBML gis:property-value vector-feature "CBML"
        set AreaLote gis:property-value vector-feature "AREA_LOTE"
        set C_KMC_8 gis:property-value vector-feature "C_KMC_8"
        set C_KMC_9 gis:property-value vector-feature "C_KMC_9"
        set C_KMC_10 gis:property-value vector-feature "C_KMC_10"
        set C_KMC_11 gis:property-value vector-feature "C_KMC_11"
        set C_KMC_12 gis:property-value vector-feature "C_KMC_12"
        set C_KMC_13 gis:property-value vector-feature "C_KMC_13"
        set C_KMC_14 gis:property-value vector-feature "C_KMC_14"
        set C_KMC_15 gis:property-value vector-feature "C_KMC_15"
        set C_HC_8 gis:property-value vector-feature "C_HC_8"
        set C_HC_9 gis:property-value vector-feature "C_HC_9"
        set C_HC_10 gis:property-value vector-feature "C_HC_10"
        set C_HC_11 gis:property-value vector-feature "C_HC_11"
        set C_HC_12 gis:property-value vector-feature "C_HC_12"
        set C_HC_13 gis:property-value vector-feature "C_HC_13"
        set C_HC_14 gis:property-value vector-feature "C_HC_14"
        set C_HC_15 gis:property-value vector-feature "C_HC_15"
        set M_CS_TF gis:property-value vector-feature "M_CS_TF"
        set M_EQ_TF gis:property-value vector-feature "M_EQ_TF"
        set M_H_TF gis:property-value vector-feature "M_H_TF"
        set M_PP_TF gis:property-value vector-feature "M_PP_TF"
        set M_PC_TF gis:property-value vector-feature "M_PC_TF"
        set M_PrPr_TF gis:property-value vector-feature "M_PrPr_TF"
        set M_TR_TF gis:property-value vector-feature "M_TR_TF"
        set M_UR_TF gis:property-value vector-feature "M_UR_TF"
        set M_ValorMet gis:property-value vector-feature "M_ValorMet"
        set M_ZP_TF gis:property-value vector-feature "M_ZP_TF"
        set M_R_TF gis:property-value vector-feature "M_R_TF"
        set C_UsoPredi gis:property-value vector-feature "C_UsoPredi"
        set Cambia? false
        set Scanned? false
        set Suma_Mcols (M_CS_TF + M_EQ_TF + M_H_TF + M_PP_TF + M_PC_TF + M_PrPr_TF + M_TR_TF + M_UR_TF + M_ZP_TF + M_R_TF)
        set Promedio_Mcols (Suma_Mcols / 11)
      ]
    ]
  ]
end

To CalcularEntorno
  ask turtles with [(Promedio_Mcols > 0.8) and (Suma_Mcols > 8) and (AreaLote > AreaMinima)]
  [
    if (C_UsoPredi = "1" or C_UsoPredi = "9")
    [
      let i 1
      let j (CantidadClusters + 1)
      let x [0]
      ifelse (TipoCluster = "KMeans")
      [
        ; PARA 8 ----------------------------------------------------------------------------------------------
        if CantidadClusters = 8
        [
          while [i < j]
          [
            let CantTortugasRadio (count turtles with [C_KMC_8 = i] in-radius PrediosRadioParche)
            set x lput CantTortugasRadio x
            set i i + 1
          ]
          let q max (x)
          let w position q x
          if (w != C_KMC_8)
          [
            set NuevoCluster w
            set Cambia? true
          ]
          set Scanned? true
        ]
        ; PARA 9 ----------------------------------------------------------------------------------------------
        if CantidadClusters = 9
        [
          while [i < j]
          [
            let CantTortugasRadio (count turtles with [C_KMC_9 = i] in-radius PrediosRadioParche)
            set x lput CantTortugasRadio x
            set i i + 1
          ]
          let q max (x)
          let w position q x
          if (w != C_KMC_9)
          [
            set NuevoCluster w
            set Cambia? true
          ]
          set Scanned? true
        ]
        ; PARA 10 ---------------------------------------------------------------------------------------------
        if CantidadClusters = 10
        [
          while [i < j]
          [
            let CantTortugasRadio (count turtles with [C_KMC_10 = i] in-radius PrediosRadioParche)
            set x lput CantTortugasRadio x
            set i i + 1
          ]
          let q max (x)
          let w position q x
          if (w != C_KMC_10)
          [
            set NuevoCluster w
            set Cambia? true
          ]
          set Scanned? true
        ]
        ; PARA 11 ---------------------------------------------------------------------------------------------
        if CantidadClusters = 11
        [
          while [i < j]
          [
            let CantTortugasRadio (count turtles with [C_KMC_11 = i] in-radius PrediosRadioParche)
            set x lput CantTortugasRadio x
            set i i + 1
          ]
          let q max (x)
          let w position q x
          if (w != C_KMC_11)
          [
            set NuevoCluster w
            set Cambia? true
          ]
          set Scanned? true
        ]
        ; PARA 12 ---------------------------------------------------------------------------------------------
        if CantidadClusters = 12
        [
          while [i < j]
          [
            let CantTortugasRadio (count turtles with [C_KMC_12 = i] in-radius PrediosRadioParche)
            set x lput CantTortugasRadio x
            set i i + 1
          ]
          let q max (x)
          let w position q x
          if (w != C_KMC_12)
          [
            set NuevoCluster w
            set Cambia? true
          ]
          set Scanned? true
        ]
        ; PARA 13 ---------------------------------------------------------------------------------------------
        if CantidadClusters = 13
        [
          while [i < j]
          [
            let CantTortugasRadio (count turtles with [C_KMC_13 = i] in-radius PrediosRadioParche)
            set x lput CantTortugasRadio x
            set i i + 1
          ]
          let q max (x)
          let w position q x
          if (w != C_KMC_13)
          [
            set NuevoCluster w
            set Cambia? true
          ]
          set Scanned? true
        ]
        ; PARA 12 ---------------------------------------------------------------------------------------------
        if CantidadClusters = 14
        [
          while [i < j]
          [
            let CantTortugasRadio (count turtles with [C_KMC_14 = i] in-radius PrediosRadioParche)
            set x lput CantTortugasRadio x
            set i i + 1
          ]
          let q max (x)
          let w position q x
          if (w != C_KMC_14)
          [
            set NuevoCluster w
            set Cambia? true
          ]
          set Scanned? true
        ]
        ; PARA 12 ---------------------------------------------------------------------------------------------
        if CantidadClusters = 15
        [
          while [i < j]
          [
            let CantTortugasRadio (count turtles with [C_KMC_15 = i] in-radius PrediosRadioParche)
            set x lput CantTortugasRadio x
            set i i + 1
          ]
          let q max (x)
          let w position q x
          if (w != C_KMC_15)
          [
            set NuevoCluster w
            set Cambia? true
          ]
          set Scanned? true
        ]
      ]
      [
        ; PARA 8 ----------------------------------------------------------------------------------------------
        if CantidadClusters = 8
        [
          while [i < j]
          [
            let CantTortugasRadio (count turtles with [C_HC_8 = i] in-radius PrediosRadioParche)
            set x lput CantTortugasRadio x
            set i i + 1
          ]
          let q max (x)
          let w position q x
          if (w != C_HC_8)
          [
            set NuevoCluster w
            set Cambia? true
          ]
          set Scanned? true
        ]
        ; PARA 9 ----------------------------------------------------------------------------------------------
        if CantidadClusters = 9
        [
          while [i < j]
          [
            let CantTortugasRadio (count turtles with [C_HC_9 = i] in-radius PrediosRadioParche)
            set x lput CantTortugasRadio x
            set i i + 1
          ]
          let q max (x)
          let w position q x
          if (w != C_HC_9)
          [
            set NuevoCluster w
            set Cambia? true
          ]
          set Scanned? true
        ]
        ; PARA 10 ---------------------------------------------------------------------------------------------
        if CantidadClusters = 10
        [
          while [i < j]
          [
            let CantTortugasRadio (count turtles with [C_HC_10 = i] in-radius PrediosRadioParche)
            set x lput CantTortugasRadio x
            set i i + 1
          ]
          let q max (x)
          let w position q x
          if (w != C_HC_10)
          [
            set NuevoCluster w
            set Cambia? true
          ]
          set Scanned? true
        ]
        ; PARA 11 ---------------------------------------------------------------------------------------------
        if CantidadClusters = 11
        [
          while [i < j]
          [
            let CantTortugasRadio (count turtles with [C_HC_11 = i] in-radius PrediosRadioParche)
            set x lput CantTortugasRadio x
            set i i + 1
          ]
          let q max (x)
          let w position q x
          if (w != C_HC_11)
          [
            set NuevoCluster w
            set Cambia? true
          ]
          set Scanned? true
        ]
        ; PARA 12 ---------------------------------------------------------------------------------------------
        if CantidadClusters = 12
        [
          while [i < j]
          [
            let CantTortugasRadio (count turtles with [C_HC_12 = i] in-radius PrediosRadioParche)
            set x lput CantTortugasRadio x
            set i i + 1
          ]
          let q max (x)
          let w position q x
          if (w != C_HC_12)
          [
            set NuevoCluster w
            set Cambia? true
          ]
          set Scanned? true
        ]
        ; PARA 13 ---------------------------------------------------------------------------------------------
        if CantidadClusters = 13
        [
          while [i < j]
          [
            let CantTortugasRadio (count turtles with [C_HC_13 = i] in-radius PrediosRadioParche)
            set x lput CantTortugasRadio x
            set i i + 1
          ]
          let q max (x)
          let w position q x
          if (w != C_HC_13)
          [
            set NuevoCluster w
            set Cambia? true
          ]
          set Scanned? true
        ]
        ; PARA 12 ---------------------------------------------------------------------------------------------
        if CantidadClusters = 14
        [
          while [i < j]
          [
            let CantTortugasRadio (count turtles with [C_HC_14 = i] in-radius PrediosRadioParche)
            set x lput CantTortugasRadio x
            set i i + 1
          ]
          let q max (x)
          let w position q x
          if (w != C_HC_14)
          [
            set NuevoCluster w
            set Cambia? true
          ]
          set Scanned? true
        ]
        ; PARA 12 ---------------------------------------------------------------------------------------------
        if CantidadClusters = 15
        [
          while [i < j]
          [
            let CantTortugasRadio (count turtles with [C_HC_15 = i] in-radius PrediosRadioParche)
            set x lput CantTortugasRadio x
            set i i + 1
          ]
          let q max (x)
          let w position q x
          if (w != C_HC_15)
          [
            set NuevoCluster w
            set Cambia? true
          ]
          set Scanned? true
        ]
      ]
    ]
  ]
  stop
end

to Go
  reset-timer
  clear-output
  CalcularEntorno
  tick
  let duracion timer
  print (word "Duración: " duracion " segundos.")
  if ticks = 1 [
    user-message (word "Proceso Terminado para un total de:  " count turtles " Agentes." " \n El proceso tomó: " timer " segundos" )
    (show word TipoCluster " - Simulacion terminada ")
    stop
  ]

end

to export
  reset-timer
  file-close
  let nombrearchivo word "Resultado_" TipoCluster
  set nombrearchivo word nombrearchivo "_"
  set nombrearchivo word nombrearchivo AreaMinima
  set nombrearchivo word nombrearchivo "_"
  set nombrearchivo word nombrearchivo PrediosRadioParche
  set nombrearchivo word nombrearchivo "_"
  set nombrearchivo word nombrearchivo CantidadClusters
  set nombrearchivo word nombrearchivo "_"
  set nombrearchivo word nombrearchivo ".csv"
  show (word nombrearchivo " - Nombre Archivo " )
  file-open nombrearchivo
  file-type "ID,CBML,Cambio,Escaneo,TipoCluster,AreaMinima,PrediosRadioParche,CantidadClusters,Cluster"
  file-type "\r\n"
  let i 0
  let j (count turtles)
  show (word TipoCluster " - Guardando ")
  while [i <= j]
  [
    file-type i
    file-type ","
    ask turtles with [who = i]
    [
      file-type CBML
      file-type ","
      file-type Cambia?
      file-type ","
      file-type Scanned?
      file-type ","
      file-type TipoCluster
      file-type ","
      file-type AreaMinima
      file-type ","
      file-type PrediosRadioParche
      file-type ","
      file-type CantidadClusters
      file-type ","
      file-type NuevoCluster
      file-type "\r\n"
    ]
    set i i + 1

  ]
  file-close
  show (word TipoCluster " - Guardado Terminado " )
  user-message (word "Archivo Exportado con nombre: " nombrearchivo " \n El proceso tomó: " timer " segundos" )
end
@#$#@#$#@
GRAPHICS-WINDOW
276
10
1026
761
-1
-1
23.94
1
10
1
1
1
0
0
0
1
0
30
0
30
0
0
1
ticks
30.0

BUTTON
3
10
67
43
NIL
Setup
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
71
10
134
43
NIL
Go
T
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

CHOOSER
2
45
274
90
TipoCluster
TipoCluster
"KMeans" "Jerarquico"
1

CHOOSER
2
91
274
136
CantidadClusters
CantidadClusters
8 9 10 11 12 13 14 15
7

SWITCH
1
137
275
170
MostrarTortugas
MostrarTortugas
0
1
-1000

CHOOSER
1
171
276
216
AreaMinima
AreaMinima
100 200 500 1000 2000 3000 4000 5000 6000 7000 8000 9000 10000
0

PLOT
1030
10
1790
321
Clusters
Simulacion
Clusters
0.0
10.0
0.0
10.0
true
true
"" ""
PENS
"Cambio de Cluster" 1.0 0 -13840069 true "" "plot count turtles with [Cambia?]"
"Cantidad de predios con Promedio de Afinidad Agricola Superior a 0.8" 1.0 0 -2674135 true "" "plot (count turtles with [Promedio_Mcols >= 0.8])"
"Cantidad de predios con Contador de Afinidad Agricola Superior a 8" 1.0 0 -13345367 true "" "plot (count turtles with [Promedio_Mcols >= 0.8])"

TEXTBOX
5
273
127
371
Extensión Horizontal 27303m\n--------------------\nUn pixel =\n a 32m\nUn parche =\n a 880m x lado
11
0.0
1

BUTTON
138
11
207
44
NIL
Export
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

CHOOSER
1
218
276
263
PrediosRadioParche
PrediosRadioParche
0.1 0.5 1 1.5 2
4

TEXTBOX
6
393
212
435
Por: \n>>>Julian Andres Castillo. M.Sc.\n>>>Fernando Ceballos PhD
11
0.0
1

@#$#@#$#@
## Resumen

Medellín cuenta con una importante demanda de alimentos frescos, pero al mismo tiempo el 70% de su territorio es rural, donde no sólo ofrece servicios ambientales, sino que produce alrededor de 29.000 toneladas/año de alimentos, lo que lo convierte en una excelente alternativa para proveer alimentos “0 kilómetros” a la ciudad.
Esta propuesta de investigación pretende mediante la combinación de dos herramientas, hacer una evaluación de las políticas públicas asociadas al fortalecimiento de las unidades productivas agrícola de los corregimientos de Medellín. Por tanto, se realizará una evaluación de percepción junto con un modelo de simulación para evaluar diversas políticas identificadas en el análisis exploratorio, con el ánimo de realizar sugerencias de política pública al municipio, de acuerdo con la percepción de la población, la producción y el cambio en la tenencia de la tierra dedicada a la actividad agrícola. Dada la metodología propuesta, la selección del paradigma de simulación se hará posterior a la revisión del estado del arte.
Este proyecto se enmarca en la línea de investigación de poder y organización, donde se precisa la importancia de estas unidades agrícolas en la estructura productiva de la ciudad.


## Los Agentes

El sistema se encarga de relacionar las capas del suelo obtenidas desde mapas del plan de ordenamiento territorial y se establecen como las políticas de suelo y se traspasan estas propiedades al agente el cual se ubica en el centroide de cada lote o parcela. Las propiedades de cada agente se describen en la tabla 1.
 Los agentes son instanciados como un objeto relacionado al lote o parcela en donde tendrá la capacidad de interactuar con sus vecinos de acuerdo con criterios de inicialización del modelo para que de acuerdo con sus características ya sea residenciales o sin construcciones tendrá la capacidad de adaptarse a su entorno.


## El Entorno

El entorno del modelo está basado en una malla de 30 x 30 parches y se configura como una ubicación de esquina con inicio abajo a la izquierda. Esto se relaciona con los 380 Km² de extensión del Distrito, los cuales se representa en el gráfico de inicio del modelo de la imagen 2. El entorno relacionado con los parches sólo vincula una codificación de comuna, un identificador y un color. La comuna describe la posibilidad de separar el entorno rural del urbano, las comunas rurales son numeradas del 50 al 90 de 10 en 10 y las comunas urbanas son numeradas del 1 al 16 de 1 en 1. Al usar el complemento [gis] de NetLogo permite vincular los objetos geográficos como parches al modelo y es esta relación es la que admite vincular un agente a cada objeto vectorial del modelo de los lotes o parcelas. Los elementos geográficos del modelo corresponden con los lotes del Distrito. Esta información se encuentra disponible en datos abiertos llamada Medata y de allí se exportaron los más recientes datos del Plan de Ordenamiento Territorial, la capa de Lotes y la información necesaria agregada para el procedimiento descrita en la parte inicial del documento.

## El modelo

La inicialización del modelo se basa en 3 partes las cuales se describen a continuación:
###   Limpieza e inicialización de variables.
>*   Se reestablecen todas las variables del modelo incluyendo el tiempo (ticks)
>*   Se definen la forma y característica de los agentes
>*   Se carga el dataset GIS de Medellín y se asigna un parche a cada entidad vectorial del mapa. 
*   Identificación y caracterización de los agentes.
>*   Se identifica el tipo de clúster de los dos posibles escenarios, ya sea KMEANS o JERARQUICO se aplica el proceso diferenciador de color en donde a cada clúster (8 a 15) se le asigna un color para su identificación.
>*   A los lotes o parcelas no identificadas se les asigna el color negro como se observa en la imagen #. 
*   Asignación de Agentes a los lotes o parcelas
>*   Se recorre por cada objeto espacial tipo lote y a su centroide geográfico se le asigna un agente con su coordenada X e Y y se le asignan las variables relacionadas con este de acuerdo con elementos decisorios del modelo, estos elementos son entre otros su ubicación geográfica codificada, su coordenada X e Y como variables, su área de terreno (área de lote), los componentes de caracterización, el uso predial, las variables booleanas Cambia y Escaneado en donde inician en falso y por último la suma y el promedio de los datos dicotómicos de los componentes geográficos de políticas públicas (POT).
*   Variables decisorias del modelo, el modelo permite tener variables de control las cuales se definen a continuación
>*   Tipo de Clúster (TipoCluster): Esta variable define la ruta a tomar por el modelo, ya sea usando la clasificación de los clústeres usando KMeans o Jerárquico.
>*   Cantidad de Clusteres (CantidadClusters): esta variable define la cantidad de clústeres a utilizar en el modelo, varia de 8 hasta 15.
>*   Área Mínima (AreaMinima): esta variable define el área mínima que debe tener un lote para ser tenido en cuenta en el modelo, entre mayor sea el área menos cantidad de lotes y si es menor mayor cantidad de lotes entraran en el modelo.
>*   Predios en un radio definido (PrediosRadioParche): 

 
Luego del proceso de inicialización, el modelo se ejecuta con una base anualizada, es decir, cada paso del tiempo del modelo representa un año en el cual los agentes toman decisiones basándose en los elementos que los rodea. El modelo se compone de tres partes, (1) la configuración de los agentes y los parches usando la data geográfica para la definición del tipo de clasificación, (2) calcular el entorno teniendo en cuenta la cantidad de agentes de una característica en su radio de acción, (3) reportar la cantidad de cambios de acuerdo con las decisiones que toman los agentes.
El modelo requiere varios submodelos los cuales se describen a continuación de acuerdo con el nombre asignado en el código.
La inicialización del modelo comprende el entorno de "Setup" del programa. Este se encarga de limpiar los elementos que puedan quedar de simulaciones anteriores y garantizar una correcta inicialización de todas las entidades. Posteriormente, se carga la información geográfica de Medellín. En el entorno rural, la información se encuentra con un nivel de agregación a nivel de lote, mientras que para la parte urbana no se cuenta con esta agregación a nivel de lote, sino a nivel de barrio. Esto se debe a que los entornos urbanos no serán parte del modelo y se representan en color negro, como se muestra en la imagen, para favorecer la visualización para el interlocutor.
Cada lote en el entorno geográfico se representa como un agente (parche) en el entorno de NetLogo. Para definir el color de cada parche (lote), se utiliza un clasificador. Desde el entorno binario de KMeans o Jerárquico, detallado previamente, se subdividen en una cantidad de clústeres que varía de ocho a quince para el modelo. Cada objeto que pertenezca a un clúster tendrá un color diferente. El primer clúster, el cero, corresponde a la sección urbana y se pinta de negro. Los demás colores se describen a continuación para cada clúster:
>*   0 - black
>*   1 - white
>*   2 - gray
>*   3 - red
>*   4 - orange
>*   5 - brown
>*   6 - yellow
>*   7 - green
>*   8 - lime
>*   9 - turquoise
>*   10 - cyan
>*   11 - sky
>*   12 - blue
>*   13 - violet
>*   14 - magenta
>*   15 - pink
>*   16 – lightpink (138)

La separación entre los espacios de los lotes se dibuja de color blanco con un grosor de una unidad. 
El procedimiento para crear una tortuga (agente) en cada objeto geográfico (lote) se realiza mediante la función “CrearTortugasEnLotes” en donde primero se destruyen todas las tortugas que tenga el modelo para no generar falsos valores al comienzo y se recorren todos los elementos geográficos con un ciclo “ForEach” para  cada elemento geográfico (lote) se identifica el centroide y se asigna a la variable “location” en donde se empieza a obtener la información geográfica del mapa en donde se captura su coordenada X e Y, el CBML, Área de Lote, el valor del clúster para el modelo de ocho a 15, las propiedades de las políticas públicas dicotómicas del modelo, el Código del uso predial, en donde solo nos interesa si es 1 (residencial) o 9 (lote no construidos), las variables booleanas “Cambia” y “Escaneado” que inician en falso para ser editadas luego por el modelo, luego la suma de sus componentes de políticas públicas, un lote con buenas políticas para nuestro proceso debería sumar 10 y calculamos su promedio, entre más cercano a 1, mejor lo cual definiremos en la ejecución del modelo. Con este procedimiento el agente ya contiene todas las variables necesarias para ser evaluado.
El presente modelo es un modelo basado en entornos por lo tanto el siguiente procedimiento es la función en base a su entorno llamada “CalcularEntorno”, esta función se encarga de definir el ambiente para cada agente y si es susceptible de cambiar de clúster. El procedimiento que realiza cada agente es el siguiente:
1.   Sólo se permite evaluar aquellos lotes que tengan un ambiente aceptable para el cambio, por lo tanto, si cumplen que el promedio políticas públicas es superior a 0.8 la suma de las columnas es mayor a 8 y el área de lote es mayor al área de lote mínima definida previamente.
2.   Se procede a evaluar si el tipo de predio es susceptible de cambio, para estos se valida la variable “C_UsoPredi” la cual debe ser 1 (residencial) o 9 (no construido), esto debido a que las demás destinaciones de los predios ya son aprovechadas comercialmente o no lo permiten, como por ejemplo los código 7 que corresponden a vías.
3.   Luego se evalúa para cada lote en su respectivo tipo de modelo de clasificación de acuerdo con la variable decisoria “CantidadCluster” en donde se define el modelo a utilizar ya sea el de 8, 12 o 15 clústeres para posteriormente evaluar sus alrededores 
4.   El código comienza verificando si la variable “CantidadClusters” es igual a un valor seleccionado en la variable decisoria y procede a evaluar el procedimiento para dicha cantidad de clústeres.
5.   Luego de la cantidad de clústeres se define un ciclo “while” que se ejecuta mientras la variable i se define como el valor del clúster desde cero hasta j la cual es la cantidad de clústeres máximo por ejecución, j varia de 8 a 15 mientras que i varía de 1 hasta el valor de j.
6.   Se cuenta el número de tortugas que tienen un valor de clúster igual a i y que se encuentran dentro de un radio definido por la variable PrediosRadioParche. Este conteo se almacena en una variable local llamada CantTortugasRadio.
7.   Luego, el valor de CantTortugasRadio se agrega al final de una lista (vector) nombrado “x” para luego incrementar la variable i en 1.
8.   Una vez que el ciclo “while” ha terminado, el código calcula el valor máximo en la lista “x” y lo almacena en la variable temporal “q”. Luego, encuentra la posición de este valor máximo dentro de la lista “x” y la almacena en la variable resultado “w”.
9.   Después, el código verifica si “w” es diferente del valor del clúster actual. Si es así, se actualiza el valor de la variable NuevoCluster a “w” y se encuentra un cambio de cluster y se establece la variable Cambia? en true.
10.   Finalmente, independientemente del resultado, se establece la variable Scanned? en true.
11.   Al terminar de recorrer todos los agentes (lotes) se termina el modelo.
@#$#@#$#@
default
true
0
Polygon -7500403 true true 150 5 40 250 150 205 260 250

airplane
true
0
Polygon -7500403 true true 150 0 135 15 120 60 120 105 15 165 15 195 120 180 135 240 105 270 120 285 150 270 180 285 210 270 165 240 180 180 285 195 285 165 180 105 180 60 165 15

arrow
true
0
Polygon -7500403 true true 150 0 0 150 105 150 105 293 195 293 195 150 300 150

box
false
0
Polygon -7500403 true true 150 285 285 225 285 75 150 135
Polygon -7500403 true true 150 135 15 75 150 15 285 75
Polygon -7500403 true true 15 75 15 225 150 285 150 135
Line -16777216 false 150 285 150 135
Line -16777216 false 150 135 15 75
Line -16777216 false 150 135 285 75

bug
true
0
Circle -7500403 true true 96 182 108
Circle -7500403 true true 110 127 80
Circle -7500403 true true 110 75 80
Line -7500403 true 150 100 80 30
Line -7500403 true 150 100 220 30

butterfly
true
0
Polygon -7500403 true true 150 165 209 199 225 225 225 255 195 270 165 255 150 240
Polygon -7500403 true true 150 165 89 198 75 225 75 255 105 270 135 255 150 240
Polygon -7500403 true true 139 148 100 105 55 90 25 90 10 105 10 135 25 180 40 195 85 194 139 163
Polygon -7500403 true true 162 150 200 105 245 90 275 90 290 105 290 135 275 180 260 195 215 195 162 165
Polygon -16777216 true false 150 255 135 225 120 150 135 120 150 105 165 120 180 150 165 225
Circle -16777216 true false 135 90 30
Line -16777216 false 150 105 195 60
Line -16777216 false 150 105 105 60

car
false
0
Polygon -7500403 true true 300 180 279 164 261 144 240 135 226 132 213 106 203 84 185 63 159 50 135 50 75 60 0 150 0 165 0 225 300 225 300 180
Circle -16777216 true false 180 180 90
Circle -16777216 true false 30 180 90
Polygon -16777216 true false 162 80 132 78 134 135 209 135 194 105 189 96 180 89
Circle -7500403 true true 47 195 58
Circle -7500403 true true 195 195 58

circle
false
0
Circle -7500403 true true 0 0 300

circle 2
false
0
Circle -7500403 true true 0 0 300
Circle -16777216 true false 30 30 240

cow
false
0
Polygon -7500403 true true 200 193 197 249 179 249 177 196 166 187 140 189 93 191 78 179 72 211 49 209 48 181 37 149 25 120 25 89 45 72 103 84 179 75 198 76 252 64 272 81 293 103 285 121 255 121 242 118 224 167
Polygon -7500403 true true 73 210 86 251 62 249 48 208
Polygon -7500403 true true 25 114 16 195 9 204 23 213 25 200 39 123

cylinder
false
0
Circle -7500403 true true 0 0 300

dot
false
0
Circle -7500403 true true 90 90 120

face happy
false
0
Circle -7500403 true true 8 8 285
Circle -16777216 true false 60 75 60
Circle -16777216 true false 180 75 60
Polygon -16777216 true false 150 255 90 239 62 213 47 191 67 179 90 203 109 218 150 225 192 218 210 203 227 181 251 194 236 217 212 240

face neutral
false
0
Circle -7500403 true true 8 7 285
Circle -16777216 true false 60 75 60
Circle -16777216 true false 180 75 60
Rectangle -16777216 true false 60 195 240 225

face sad
false
0
Circle -7500403 true true 8 8 285
Circle -16777216 true false 60 75 60
Circle -16777216 true false 180 75 60
Polygon -16777216 true false 150 168 90 184 62 210 47 232 67 244 90 220 109 205 150 198 192 205 210 220 227 242 251 229 236 206 212 183

fish
false
0
Polygon -1 true false 44 131 21 87 15 86 0 120 15 150 0 180 13 214 20 212 45 166
Polygon -1 true false 135 195 119 235 95 218 76 210 46 204 60 165
Polygon -1 true false 75 45 83 77 71 103 86 114 166 78 135 60
Polygon -7500403 true true 30 136 151 77 226 81 280 119 292 146 292 160 287 170 270 195 195 210 151 212 30 166
Circle -16777216 true false 215 106 30

flag
false
0
Rectangle -7500403 true true 60 15 75 300
Polygon -7500403 true true 90 150 270 90 90 30
Line -7500403 true 75 135 90 135
Line -7500403 true 75 45 90 45

flower
false
0
Polygon -10899396 true false 135 120 165 165 180 210 180 240 150 300 165 300 195 240 195 195 165 135
Circle -7500403 true true 85 132 38
Circle -7500403 true true 130 147 38
Circle -7500403 true true 192 85 38
Circle -7500403 true true 85 40 38
Circle -7500403 true true 177 40 38
Circle -7500403 true true 177 132 38
Circle -7500403 true true 70 85 38
Circle -7500403 true true 130 25 38
Circle -7500403 true true 96 51 108
Circle -16777216 true false 113 68 74
Polygon -10899396 true false 189 233 219 188 249 173 279 188 234 218
Polygon -10899396 true false 180 255 150 210 105 210 75 240 135 240

house
false
0
Rectangle -7500403 true true 45 120 255 285
Rectangle -16777216 true false 120 210 180 285
Polygon -7500403 true true 15 120 150 15 285 120
Line -16777216 false 30 120 270 120

leaf
false
0
Polygon -7500403 true true 150 210 135 195 120 210 60 210 30 195 60 180 60 165 15 135 30 120 15 105 40 104 45 90 60 90 90 105 105 120 120 120 105 60 120 60 135 30 150 15 165 30 180 60 195 60 180 120 195 120 210 105 240 90 255 90 263 104 285 105 270 120 285 135 240 165 240 180 270 195 240 210 180 210 165 195
Polygon -7500403 true true 135 195 135 240 120 255 105 255 105 285 135 285 165 240 165 195

line
true
0
Line -7500403 true 150 0 150 300

line half
true
0
Line -7500403 true 150 0 150 150

pentagon
false
0
Polygon -7500403 true true 150 15 15 120 60 285 240 285 285 120

person
false
0
Circle -7500403 true true 110 5 80
Polygon -7500403 true true 105 90 120 195 90 285 105 300 135 300 150 225 165 300 195 300 210 285 180 195 195 90
Rectangle -7500403 true true 127 79 172 94
Polygon -7500403 true true 195 90 240 150 225 180 165 105
Polygon -7500403 true true 105 90 60 150 75 180 135 105

plant
false
0
Rectangle -7500403 true true 135 90 165 300
Polygon -7500403 true true 135 255 90 210 45 195 75 255 135 285
Polygon -7500403 true true 165 255 210 210 255 195 225 255 165 285
Polygon -7500403 true true 135 180 90 135 45 120 75 180 135 210
Polygon -7500403 true true 165 180 165 210 225 180 255 120 210 135
Polygon -7500403 true true 135 105 90 60 45 45 75 105 135 135
Polygon -7500403 true true 165 105 165 135 225 105 255 45 210 60
Polygon -7500403 true true 135 90 120 45 150 15 180 45 165 90

sheep
false
15
Circle -1 true true 203 65 88
Circle -1 true true 70 65 162
Circle -1 true true 150 105 120
Polygon -7500403 true false 218 120 240 165 255 165 278 120
Circle -7500403 true false 214 72 67
Rectangle -1 true true 164 223 179 298
Polygon -1 true true 45 285 30 285 30 240 15 195 45 210
Circle -1 true true 3 83 150
Rectangle -1 true true 65 221 80 296
Polygon -1 true true 195 285 210 285 210 240 240 210 195 210
Polygon -7500403 true false 276 85 285 105 302 99 294 83
Polygon -7500403 true false 219 85 210 105 193 99 201 83

square
false
0
Rectangle -7500403 true true 30 30 270 270

square 2
false
0
Rectangle -7500403 true true 30 30 270 270
Rectangle -16777216 true false 60 60 240 240

star
false
0
Polygon -7500403 true true 151 1 185 108 298 108 207 175 242 282 151 216 59 282 94 175 3 108 116 108

target
false
0
Circle -7500403 true true 0 0 300
Circle -16777216 true false 30 30 240
Circle -7500403 true true 60 60 180
Circle -16777216 true false 90 90 120
Circle -7500403 true true 120 120 60

tree
false
0
Circle -7500403 true true 118 3 94
Rectangle -6459832 true false 120 195 180 300
Circle -7500403 true true 65 21 108
Circle -7500403 true true 116 41 127
Circle -7500403 true true 45 90 120
Circle -7500403 true true 104 74 152

triangle
false
0
Polygon -7500403 true true 150 30 15 255 285 255

triangle 2
false
0
Polygon -7500403 true true 150 30 15 255 285 255
Polygon -16777216 true false 151 99 225 223 75 224

truck
false
0
Rectangle -7500403 true true 4 45 195 187
Polygon -7500403 true true 296 193 296 150 259 134 244 104 208 104 207 194
Rectangle -1 true false 195 60 195 105
Polygon -16777216 true false 238 112 252 141 219 141 218 112
Circle -16777216 true false 234 174 42
Rectangle -7500403 true true 181 185 214 194
Circle -16777216 true false 144 174 42
Circle -16777216 true false 24 174 42
Circle -7500403 false true 24 174 42
Circle -7500403 false true 144 174 42
Circle -7500403 false true 234 174 42

turtle
true
0
Polygon -10899396 true false 215 204 240 233 246 254 228 266 215 252 193 210
Polygon -10899396 true false 195 90 225 75 245 75 260 89 269 108 261 124 240 105 225 105 210 105
Polygon -10899396 true false 105 90 75 75 55 75 40 89 31 108 39 124 60 105 75 105 90 105
Polygon -10899396 true false 132 85 134 64 107 51 108 17 150 2 192 18 192 52 169 65 172 87
Polygon -10899396 true false 85 204 60 233 54 254 72 266 85 252 107 210
Polygon -7500403 true true 119 75 179 75 209 101 224 135 220 225 175 261 128 261 81 224 74 135 88 99

wheel
false
0
Circle -7500403 true true 3 3 294
Circle -16777216 true false 30 30 240
Line -7500403 true 150 285 150 15
Line -7500403 true 15 150 285 150
Circle -7500403 true true 120 120 60
Line -7500403 true 216 40 79 269
Line -7500403 true 40 84 269 221
Line -7500403 true 40 216 269 79
Line -7500403 true 84 40 221 269

wolf
false
0
Polygon -16777216 true false 253 133 245 131 245 133
Polygon -7500403 true true 2 194 13 197 30 191 38 193 38 205 20 226 20 257 27 265 38 266 40 260 31 253 31 230 60 206 68 198 75 209 66 228 65 243 82 261 84 268 100 267 103 261 77 239 79 231 100 207 98 196 119 201 143 202 160 195 166 210 172 213 173 238 167 251 160 248 154 265 169 264 178 247 186 240 198 260 200 271 217 271 219 262 207 258 195 230 192 198 210 184 227 164 242 144 259 145 284 151 277 141 293 140 299 134 297 127 273 119 270 105
Polygon -7500403 true true -1 195 14 180 36 166 40 153 53 140 82 131 134 133 159 126 188 115 227 108 236 102 238 98 268 86 269 92 281 87 269 103 269 113

x
false
0
Polygon -7500403 true true 270 75 225 30 30 225 75 270
Polygon -7500403 true true 30 75 75 30 270 225 225 270
@#$#@#$#@
NetLogo 6.3.0
@#$#@#$#@
@#$#@#$#@
@#$#@#$#@
<experiments>
  <experiment name="Todos" repetitions="1" runMetricsEveryStep="true">
    <setup>setup</setup>
    <go>go</go>
    <final>Export</final>
    <timeLimit steps="1"/>
    <enumeratedValueSet variable="CantidadClusters">
      <value value="8"/>
      <value value="12"/>
      <value value="15"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="AreaMinima">
      <value value="100"/>
      <value value="1000"/>
      <value value="10000"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="PrediosRadioParche">
      <value value="0.1"/>
      <value value="0.5"/>
      <value value="1"/>
      <value value="1.5"/>
      <value value="2"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="TipoCluster">
      <value value="&quot;KMeans&quot;"/>
      <value value="&quot;Jerarquico&quot;"/>
    </enumeratedValueSet>
  </experiment>
</experiments>
@#$#@#$#@
@#$#@#$#@
default
0.0
-0.2 0 0.0 1.0
0.0 1 1.0 0.0
0.2 0 0.0 1.0
link direction
true
0
Line -7500403 true 150 150 90 180
Line -7500403 true 150 150 210 180
@#$#@#$#@
0
@#$#@#$#@
