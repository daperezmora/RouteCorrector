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
