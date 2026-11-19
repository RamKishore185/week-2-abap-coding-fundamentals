# System Architecture

## Layers
- Presentation: SAP GUI selection screen and SALV ALV output.
- Application: ABAP report `ZSD_ORDER_MONITOR`, selection handling, data retrieval and display routines.
- Database: SAP application tables VBAK (sales document header) and VBAP (sales document items).

## Flow
User enters sales organization and optional sales-order range → report selects matching header/item records → internal table stores result → SALV presents result or a no-data message.

## Notes
The design is read-only. Selection filtering is not equivalent to authorization. Add and test suitable authorization checks for any shared/production deployment.
