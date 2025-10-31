# QA Checklist — RouteCorrector V1.0

This document summarizes the manual tests performed before public release.

## Environment
- **QGIS version:** 3.34.6-Prizren (Windows), 3.42.1-Münster (macOS)
- **OS tested:** Windows 11 23H2, macOS 14.5 Sonoma
- **Python version:** 3.12.11 (Win), 3.11.7 (Mac)

---

## Functional tests

| Test ID | Description | Expected result | Status |
|----------|--------------|------------------|---------|
| T1 | Plugin installs successfully from ZIP | Plugin appears under "Plugins → Manage and Install Plugins" | Passed |
| T2 | Plugin opens without errors | Dialog loads and toolbar icon appears | Passed |
| T3 | Add points + route layers | Layers load and selectable | Passed |
| T4 | Select start/end anchors | Anchors visible and registered | Passed |
| T5 | Run correction (MRU mode) | Points reposition evenly along route | Passed |
| T6 | Run correction (Distance mode) | Spacing follows original distances | Passed |
| T7 | Table operations (delete rows) | Selected points removed | Passed |
| T8 | Export corrected layer | New file saved successfully | Passed |

---

## Visual validation
- Verified alignment of corrected points with reference route.
- Checked CRS consistency (UTM).
- Confirmed attributes are preserved.

---

## Known limitations (V1.0)
- Undo not yet implemented.
- No color-coded visualization for corrected points.
- Correction works on one section at a time.

---

*Tested by:* Ana Laura Jiménez Chávez  
*Date:* October 2025
