# RouteCorrector (QGIS Plugin)

RouteCorrector is a QGIS plugin that corrects GPS drift in mobile air-quality monitoring tracks by allowing users to define and manage anchor points, reorder them based on timestamps, and snap corrected routes to the road network (e.g. OpenStreetMap).  
It is designed to support micro-scale exposure assessments and urban environmental studies.

---

## Features
- Add, remove, and manage **anchor points** for GPS tracks.
- **Automatic ordering** of anchors by timestamp.
- **Route correction** through snapping to OSM/road networks.
- Export corrected tracks for further analysis.
- User-friendly interface integrated into QGIS.

---

## Requirements
- QGIS ≥ 3.22

---

## Installation
1. Download the latest release ZIP:  
   [Releases on GitHub](https://github.com/daperezmora/RouteCorrector/releases)
2. In QGIS, go to **Plugins → Manage and Install Plugins… → Install from ZIP**.
3. Select the downloaded file `RouteCorrector-x.y.z.zip`.

---

## Usage
- After installation, RouteCorrector will appear in the **Plugins** menu and toolbar.
- Add GPS tracks as layers.
- Define anchors, review their order, and run the correction.
- Export corrected routes for further analysis.

---

## Authors and Contributions
- **Ana Laura Jimenez Chavez¹** – Lead developer; designed and implemented the plugin, maintained source code, and prepared the public release.  
- **Francisco Esquembre Martinez²** – Conceptualization; proposed the core idea and provided algorithmic and development guidance.  
- **Daniel Alejandro Pérez de la Mora¹** – User experience design; contributed feedback on interface usability and serves as corresponding author.  
- **Antonia Baeza Caracena³** – Validation; contributed domain-specific feedback and critical review of functionality.  

### Affiliations
1. Instituto de Investigación Aplicada y Tecnología, Universidad Iberoamericana, 01219 Mexico City, Mexico  
2. Department of Mathematics, Faculty of Mathematics, Campus de Espinardo, University of Murcia, 30100 Murcia, Spain  
3. Department of Chemical Engineering, Faculty of Chemistry, Campus de Espinardo, University of Murcia, 30100 Murcia, Spain  

---

## Citation
If you use RouteCorrector in academic work, please cite it as follows:

**APA**  
Jimenez Chavez, A. L., Esquembre Martinez, F., Pérez de la Mora, D. A., & Baeza Caracena, A. (2025). *RouteCorrector (QGIS plugin)* [Computer software]. Universidad Iberoamericana & University of Murcia. https://github.com/daperezmora/RouteCorrector  

**IEEE**  
A. L. Jimenez Chavez, F. Esquembre Martinez, D. A. Pérez de la Mora, and A. Baeza Caracena, *RouteCorrector (QGIS plugin)*, Universidad Iberoamericana & University of Murcia, 2025. [Online]. Available: https://github.com/daperezmora/RouteCorrector  

---

## License
This project is open source under the terms of the [GNU General Public License v2 or later (GPL-2.0+)](LICENSE).

