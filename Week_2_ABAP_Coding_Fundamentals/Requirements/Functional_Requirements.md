# Functional Requirements

1. The report shall accept Sales Organization as a mandatory selection.
2. The report shall accept an optional Sales Order range.
3. It shall read sales-order header data from VBAK and item data from VBAP.
4. It shall join header and item rows using the sales document number.
5. It shall restrict output to the entered Sales Organization and optional order range.
6. It shall show matching rows in an ALV output.
7. It shall display a user-friendly message when no matching rows are found.
8. The report shall be read-only and shall not create/update/delete business data.

## Non-functional considerations
- Keep database selection restricted to the selection criteria.
- Confirm SAP release syntax compatibility.
- In shared/production use, implement proper authorization checks.
- Avoid exposing business data to unauthorized users.
