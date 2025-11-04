RouteCorrector – QGIS Plugin
Version: 1.0
Author: Ana Laura Jiménez Chávez (InIAT, Universidad Iberoamericana)

---

RouteCorrector is a QGIS plugin designed to correct GPS drift and spatial dispersion
in mobile environmental monitoring data. It allows users to realign scattered
measurement points (e.g., air quality, noise, or particulate matter) along user-defined
reference routes, ensuring that mobile sensor data accurately follow real-world paths.

Key features:
- Define start and end anchor points for correction.
- Apply two correction modes:
  • Uniform Motion (MRU): preserves time progression between points.
  • Distance-based: preserves original spacing between consecutive points.
- Visual and interactive interface fully integrated in QGIS.
- Export corrected data layers for further spatial or temporal analysis.

---

Installation:
1. Copy the “route_corrector” folder to your local QGIS plugins directory:
   • Windows: C:\Users\<user>\AppData\Roaming\QGIS\QGIS3\profiles\default\python\plugins\
   • macOS: ~/Library/Application Support/QGIS/QGIS3/profiles/default/python/plugins/

2. Open QGIS → go to “Plugins → Manage and Install Plugins → Installed”
   and enable **RouteCorrector**.

3. The plugin will appear in the toolbar and under “Plugins → RouteCorrector”.

---

Usage summary:
1. Load a point layer with your GPS data.
2. Create or load a reference route (line layer).
3. Define anchor points (start and end).
4. Choose correction mode: *Uniform Motion* or *Distance-based*.
5. Click “Correct Section” to realign the data.
6. Export the corrected layer if needed.

---

Credits:
Developed collaboratively by:
- Ana Laura Jiménez Chávez (InIAT, Universidad Iberoamericana)
- Francisco Esquembre Martínez (University of Murcia)
- Daniel Alejandro Pérez de la Mora (Universidad Iberoamericana)
- Antonia Baeza Caracena (University of Murcia)

License: GPL v3 or later
Contact: analaura.jimenez.ch@gmail.com; daniel.perez@ibero.mx
