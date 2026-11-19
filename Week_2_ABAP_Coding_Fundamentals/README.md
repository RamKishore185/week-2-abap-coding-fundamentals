# Week 2 — ABAP Coding Fundamentals and Module Development

## Project
**ZSD_ORDER_MONITOR** — a read-only Sales Order Item Monitor based on the Week 1 Order-to-Delivery scenario.

## Objective
Practice ABAP report structure, selection screen, internal tables, Open SQL join, modularization with FORM routines, and ALV display.

## Important status
This package is a preliminary learning project. The ABAP source is provided for review and adaptation. **It has not been executed or syntax-checked in your SAP system.** Add genuine screenshots and actual test results after running it in SAP. Verify field availability and syntax for your SAP release. The selection screen's sales-organization filter is not an authorization control; implement appropriate authorization checks before using in a shared or production system.

## Folder guide
- `Documentation/` — project report (DOCX)
- `ABAP_Source/` — report source
- `Diagrams/` — flow and architecture diagrams
- `Requirements/` — functional requirements
- `Technical_Design/` — design notes
- `Test_Cases/` — test scenarios (not yet executed)
- `Screenshots/` — place real SAP screenshots here

## Suggested SAP execution
1. Open SE38 and create report `ZSD_ORDER_MONITOR`.
2. Paste source from `ABAP_Source/ZSD_ORDER_MONITOR.abap`.
3. Check syntax; resolve release-specific issues.
4. Activate the report.
5. Execute (F8), enter a sales organization and optionally a sales-order range.
6. Capture genuine screenshots of syntax check, activation, selection screen and ALV output/no-data result.
7. Record actual test results in `Test_Cases/Preliminary_Test_Cases.md`.

## Contents
- Selection screen: sales order range and required sales organization.
- Data retrieval: VBAK joined to VBAP.
- Output: SALV ALV with standard toolbar functions.
- Error/no-data handling: message if selection returns no items.
