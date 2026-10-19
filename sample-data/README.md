# Sample data

Everything here is fabricated.

- `sample-inventory.csv` is the file a rep would email in. It is deliberately messy: junk rows above the header, a label row, a totals row, SKUs with leading zeros, a lowercase SKU, a legacy part number, and a customer SKU that only resolves through its UPC.
- `mock-erp-data.csv` is what the ERP would return: available stock, open orders, 12-month shipments, price, and case pack for each item.
- `sample-recommendation-report.xlsx` is the expected output. Quantities are live formulas that follow the recommender's rules, so you can check the arithmetic and change the target weeks of cover.

## What each sample row demonstrates

| As submitted | What happens |
|---|---|
| `A-100234-17` | Normal reorder: low cover against the 9-week target |
| `A-100235-17` | Excluded: open order already covers it (18.8 weeks) |
| `A-3AB65201` | Excluded: overstocked (156 weeks of cover) |
| `000912345678` | Leading zeros stripped, then recommended |
| `br22mb6` | Uppercased to match the item master |
| `WB-40-STL` | Customer SKU; resolved through the UPC column |
| `771234567` | Legacy number remapped to the current item |
| `BX1218CH` | Excluded: only 8 units available (below the 10-unit floor) |
| `A-100199-17` | Excluded: discontinued |
| `A-2200XY-0`, `CH22W2111` | Out of stock today, so listed under future availability |
| `SMALL ITEMS`, `Total` | Skipped: not inventory rows |
