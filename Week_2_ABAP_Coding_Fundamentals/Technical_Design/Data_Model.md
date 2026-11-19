# Preliminary Data Model

| Table | Purpose | Fields used in report |
|---|---|---|
| VBAK | Sales document header | VBELN, AUART, ERDAT, KUNNR, VKORG, WAERK |
| VBAP | Sales document item | VBELN, POSNR, MATNR, ARKTX, KWMENG, VRKME, NETWR |

The report joins header and item data on VBELN. Confirm field meanings and availability in SE11 for your SAP release/system. NETWR currency interpretation should be reviewed with the corresponding currency field WAERK.
