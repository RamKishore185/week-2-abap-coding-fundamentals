REPORT zsd_order_monitor.

TABLES: vbak.

TYPES: BEGIN OF ty_order,
         vbeln  TYPE vbak-vbeln,
         posnr  TYPE vbap-posnr,
         auart  TYPE vbak-auart,
         erdat  TYPE vbak-erdat,
         kunnr  TYPE vbak-kunnr,
         vkorg  TYPE vbak-vkorg,
         matnr  TYPE vbap-matnr,
         arktx  TYPE vbap-arktx,
         kwmeng TYPE vbap-kwmeng,
         vrkme  TYPE vbap-vrkme,
         netwr  TYPE vbap-netwr,
         waerk  TYPE vbak-waerk,
       END OF ty_order.

DATA gt_orders TYPE STANDARD TABLE OF ty_order.

SELECT-OPTIONS: s_vbeln FOR vbak-vbeln.
PARAMETERS: p_vkorg TYPE vbak-vkorg OBLIGATORY.

START-OF-SELECTION.
  PERFORM get_order_data.
  IF gt_orders IS INITIAL.
    MESSAGE 'No sales order items found for the selection'
      TYPE 'S' DISPLAY LIKE 'E'.
  ELSE.
    PERFORM display_order_data.
  ENDIF.

FORM get_order_data.
  SELECT a~vbeln,
         b~posnr,
         a~auart,
         a~erdat,
         a~kunnr,
         a~vkorg,
         b~matnr,
         b~arktx,
         b~kwmeng,
         b~vrkme,
         b~netwr,
         a~waerk
    FROM vbak AS a
    INNER JOIN vbap AS b
      ON a~vbeln = b~vbeln
    WHERE a~vbeln IN @s_vbeln
      AND a~vkorg = @p_vkorg
    INTO TABLE @gt_orders.
ENDFORM.

FORM display_order_data.
  DATA lo_alv TYPE REF TO cl_salv_table.
  TRY.
      cl_salv_table=>factory(
        IMPORTING r_salv_table = lo_alv
        CHANGING t_table = gt_orders ).
      lo_alv->get_functions( )->set_all( abap_true ).
      lo_alv->display( ).
    CATCH cx_salv_msg.
      MESSAGE 'Error while creating ALV display' TYPE 'E'.
  ENDTRY.
ENDFORM.
