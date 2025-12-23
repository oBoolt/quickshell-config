import Quickshell
import Quickshell.Services.Pipewire

import QtQuick
import QtQuick.Layouts

import qs.settings
import qs.widgets.common

Card {
    id: root
    required property PwNode node
    readonly property int volume: Math.round((node.audio?.volume ?? 0) * 100)
    readonly property bool muted: node.audio.muted

    iconName: "audio-volume-high-symbolic"

    // value: muted ? "Mutd" : volume + "%"
    color: muted ? Colors.red : Colors.darkaqua
}
