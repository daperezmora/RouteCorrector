# -*- coding: utf-8 -*-
"""QGIS plugin package initializer."""
def classFactory(iface):
    from .routecorrector import RouteCorrector
    return RouteCorrector(iface)
