#!/usr/bin/env bash
set -euo pipefail
PLUGIN_DIR="RouteCorrector"
GITHUB_USER="daperezmora"
AUTHOR_NAME="Daniel Perez"
AUTHOR_EMAIL="daniel.perez@ibero.mx"

mkdir -p "$PLUGIN_DIR"/{forms,i18n,tests} docs/images scripts .github/workflows

cat > "$PLUGIN_DIR/metadata.txt" <<'EOF'
[general]
name=RouteCorrector
qgisMinimumVersion=3.22
qgisMaximumVersion=3.99
version=0.1.0
author=Daniel Perez
author_email=daniel.perez@ibero.mx
about=Corrects GPS drift and anchors routes to road network/OSM for air-quality mobile monitoring.
tracker=https://github.com/daperezmora/RouteCorrector/issues
repository=https://plugins.qgis.org/plugins/RouteCorrector/
homepage=https://github.com/daperezmora/RouteCorrector
changelog=See CHANGELOG.md
category=Plugins
icon=icon.png
plugin_type=python
experimental=False
deprecated=False
tags=air quality;geolocation;gps drift;qgis;osm

[about]
RouteCorrector helps correct mobile GPS tracks by setting and reordering anchor points, snapping to OSM, and exporting corrected routes for micro-scale exposure analysis.
EOF

cat > "$PLUGIN_DIR/__init__.py" <<'EOF'
# -*- coding: utf-8 -*-
"""QGIS plugin package initializer."""
def classFactory(iface):
    from .routecorrector import RouteCorrector
    return RouteCorrector(iface)
EOF

cat > "$PLUGIN_DIR/routecorrector.py" <<'EOF'
# -*- coding: utf-8 -*-
try:
    from qgis.PyQt.QtCore import QCoreApplication
    from qgis.PyQt.QtGui import QIcon
    from qgis.PyQt.QtWidgets import QAction
    QGIS_AVAILABLE = True
except Exception:
    QGIS_AVAILABLE = False

try:
    from . import resources_rc  # compiled from resources.qrc
except Exception:
    pass

class RouteCorrector:
    def __init__(self, iface):
        self.iface = iface
        self.action = None

    def tr(self, message: str) -> str:
        return QCoreApplication.translate("RouteCorrector", message) if QGIS_AVAILABLE else message

    def initGui(self):
        if not QGIS_AVAILABLE:
            return
        icon = QIcon(":/routecorrector/icon.png")  # prefix set in resources.qrc
        self.action = QAction(icon, self.tr("RouteCorrector: Run"), self.iface.mainWindow())
        self.action.setToolTip(self.tr("Run RouteCorrector"))
        self.action.triggered.connect(self.run)
        self.iface.addPluginToMenu(self.tr("&RouteCorrector"), self.action)
        self.iface.addToolBarIcon(self.action)

    def unload(self):
        if not QGIS_AVAILABLE or not self.action:
            return
        self.iface.removePluginMenu(self.tr("&RouteCorrector"), self.action)
        self.iface.removeToolBarIcon(self.action)
        self.action.deleteLater()
        self.action = None

    def run(self):
        if not QGIS_AVAILABLE:
            return
        self.iface.messageBar().pushSuccess(self.tr("RouteCorrector"), self.tr("Hello from RouteCorrector!"))
EOF

cat > "$PLUGIN_DIR/resources.qrc" <<'EOF'
<RCC>
  <qresource prefix="/routecorrector">
    <file>icon.png</file>
    <file>forms/main_dialog.ui</file>
  </qresource>
</RCC>
EOF

cat > "$PLUGIN_DIR/forms/main_dialog.ui" <<'EOF'
<?xml version="1.0" encoding="UTF-8"?>
<ui version="4.0">
 <class>MainDialog</class>
 <widget class="QDialog" name="MainDialog">
  <property name="windowTitle"><string>RouteCorrector</string></property>
  <layout class="QVBoxLayout" name="verticalLayout">
   <item><widget class="QLabel" name="label">
     <property name="text"><string>Hello from RouteCorrector</string></property>
   </widget></item>
   <item><widget class="QDialogButtonBox" name="buttonBox">
     <property name="standardButtons"><set>QDialogButtonBox::Close</set></property>
   </widget></item>
  </layout>
 </widget>
 <resources/><connections/>
</ui>
EOF

cat > README.md <<'EOF'
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

