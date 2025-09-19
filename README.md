# RouteCorrector (QGIS Plugin)

Corrects GPS drift and anchors mobile tracks to OSM/road network for air-quality monitoring workflows.

## Requirements
- QGIS >= 3.22

## Install
1. Download the release ZIP.
2. In QGIS: Plugins → Manage and Install Plugins… → Install from ZIP.

## Dev
```bash
# build Qt resources (choose one depending on your QGIS/PyQt)
pyrcc5 RouteCorrector/resources.qrc -o RouteCorrector/resources_rc.py
# or
pyrcc6 RouteCorrector/resources.qrc -o RouteCorrector/resources_rc.py

