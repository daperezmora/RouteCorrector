# Changelog

## V1.0 — Initial public release

**Release date:** 2025-10-30  
**QGIS compatibility:** ≥ 3.22  

### Added
- Two correction modes: **Uniform Motion (MRU)** and **Distance-based**.
- Batch correction between user-defined anchor points.
- Interactive table to review and remove points.
- Integrated workflow with QGIS interface and toolbar.
- Export of corrected data to GeoPackage and GeoJSON.

### Improved
- Interface design and clarity of options.
- Parameter handling for routes with irregular geometry.

### Fixed
- GPS drift dispersion in narrow-street environments.
- Alignment precision with high sampling datasets.

### Notes
This version corresponds to **RouteCorrector_V1.0** as published in the official GitHub release.
Future updates will include undo options, color-coded points, and segment-by-segment correction.
