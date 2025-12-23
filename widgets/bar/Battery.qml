import Quickshell.Services.UPower

import QtQuick
import QtQml

import qs.helpers
import qs.widgets.common

Card {
    id: root
    readonly property UPowerDevice laptop: UPower.displayDevice

    visible: UPower.displayDevice.isLaptopBattery
    // icon: Icons.getIcon(laptop.iconName) ?? "󰂑"
    iconName: laptop.iconName
    value: Math.round(laptop.percentage * 100) + "%"
    color: Icons.getColor(laptop.iconName)

    Component.onCompleted: () => {
        console.log(root.laptop.iconName);
    }

    Connections {
        target: root.laptop
        function onIconNameChanged() {
            console.log(root.laptop.iconName);
        }
    }
}
