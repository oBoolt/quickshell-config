import Quickshell.Services.UPower

import QtQuick
import QtQml

import qs.helpers
import qs.widgets.common

Card {
    id: root
    readonly property UPowerDevice laptop: UPower.displayDevice

    visible: UPower.displayDevice.isLaptopBattery
    icon: Icons.getKeyFromName(laptop.iconName)
    value: Math.round(laptop.percentage * 100) + "%"
    color: Battery.getColor(Icons.getKeyFromName(laptop.iconName))
}
