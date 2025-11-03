# QA Checklist — RouteCorrector V1.0

This document summarizes the manual tests performed before public release.

## Environment

### macOS
- **QGIS version:** 3.42.1-Münster  
- **Qt version:** 5.15.2  
- **Python version:** 3.9.5  
- **GDAL version:** 3.3.2  
- **PROJ version:** 8.1.1  
- **OS version:** macOS (Apple Silicon)  

### Windows
- **QGIS version:** 3.40.8-Bratislava  
- **Qt version:** 5.15.13  
- **Python version:** 3.12.11  
- **GDAL version:** 3.11.0 — Eganville  
- **PROJ version:** 9.6.2  
- **EPSG Registry database version:** v12.013 (2025-05-26)  
- **GEOS version:** 3.13.1-CAPI-1.19.2  
- **SQLite version:** 3.46.1  
- **PDAL version:** 2.9.0  
- **OS version:** Windows 11  

### Notes
The plugin was successfully tested on both macOS and Windows environments with consistent behavior across QGIS 3.4x and 3.42 series.  
All corrections and exports performed as expected under both Python 3.9 and 3.12 environments.


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
