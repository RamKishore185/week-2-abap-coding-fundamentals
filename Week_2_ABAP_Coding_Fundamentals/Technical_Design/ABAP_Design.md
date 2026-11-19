# ABAP Design

## Main elements
- `REPORT`: executable report declaration.
- `TYPES`: defines the row structure for report data.
- `gt_orders`: internal table holding retrieved sales-order item rows.
- `SELECT-OPTIONS s_vbeln`: optional sales-document selection range.
- `PARAMETERS p_vkorg`: required sales organization.
- `START-OF-SELECTION`: main execution event.
- `FORM get_order_data`: reads matching data using Open SQL INNER JOIN.
- `FORM display_order_data`: creates SALV table, enables toolbar functions, displays output.
- No-data message: shown if the internal table is empty.

## Release compatibility
This source uses modern Open SQL host-variable escaping (`@`) and inline-compatible syntax. If your system is older, adjust syntax according to the ABAP release. Run syntax check and activation before execution.
