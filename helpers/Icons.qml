pragma Singleton

import Quickshell
import Quickshell.Services.Pipewire

import QtQuick

import qs.settings
import qs.types

Singleton {
    id: root
    readonly property list<IconType> icons: [
        IconType {
            name: "battery-full-charged-symbolic"
            color: Colors.purple
            icon: "󰁹"
        },
        IconType {
            name: "battery-full-charging-symbolic"
            color: Colors.aqua
            icon: "󰂄"
        },
        IconType {
            name: "battery-good-charging-symbolic"
            color: Colors.darkaqua
            icon: "󰂄"
        },
        IconType {
            name: "battery-caution-charging-symbolic"
            color: Colors.red
            icon: "󰂄"
        },
        IconType {
            name: "battery-full-symbolic"
            color: Colors.purple
            icon: "󰁹"
        },
        IconType {
            name: "battery-good-symbolic"
            color: Colors.darkpurple
            icon: "󰁿"
        },
        IconType {
            name: "battery-caution-symbolic"
            color: Colors.darkred
            icon: "󰂃"
        },
        IconType {
            name: "audio-volume-high-symbolic"
            icon: "󰕾"
        },
        IconType {
            name: "audio-volume-medium-symbolic"
            icon: "󰖀"
        },
        IconType {
            name: "audio-volume-low-symbolic"
            icon: "󰕿"
        },
        IconType {
            name: "audio-volume-muted-symbolic"
            icon: "󰝟"
        },
        IconType {
            name: "audio-volume-off-symbolic"
            icon: "󰸈"
        },
        IconType {
            name: "network-bluetooth-symbolic"
            icon: "󰂯"
        },
        IconType {
            name: "network-bluetooth-activated-symbolic"
            icon: "󰂱"
        },
        IconType {
            name: "network-bluetooth-inactive-symbolic"
            icon: "󰂲"
        },
        IconType {
            name: "network-bluetooth-inactive-symbolic"
            icon: "󰂲"
        },
        IconType {
            name: "network-wired-activated-symbolic"
            icon: "󰛳"
        },
        IconType {
            name: "network-wired-disconnected-symbolic"
            icon: "󰲛"
        },
        IconType {
            name: "network-wired-unavailable-symbolic"
            icon: "󰲝"
        },
        IconType {
            name: "network-wireless-signal-none-symbolic"
            icon: "󰤯"
        },
        IconType {
            name: "network-wireless-signal-weak-symbolic"
            icon: "󰤟"
        },
        IconType {
            name: "network-wireless-signal-ok-symbolic"
            icon: "󰤢"
        },
        IconType {
            name: "network-wireless-signal-good-symbolic"
            icon: "󰤥"
        },
        IconType {
            name: "network-wireless-signal-excellent-symbolic"
            icon: "󰤨"
        },
        IconType {
            name: "network-wireless-disconnected-symbolic"
            icon: "󰤭"
        },
        IconType {
            name: "network-wireless-acquiring-symbolic"
            icon: "󰖩"
        },
        IconType {
            name: "brightness-0-symbolic"
            icon: "󰃚"
        },
        IconType {
            name: "brightness-15-symbolic"
            icon: "󰃛"
        },
        IconType {
            name: "brightness-30-symbolic"
            icon: "󰃜"
        },
        IconType {
            name: "brightness-45-symbolic"
            icon: "󰃝"
        },
        IconType {
            name: "brightness-60-symbolic"
            icon: "󰃞"
        },
        IconType {
            name: "brightness-75-symbolic"
            icon: "󰃟"
        },
        IconType {
            name: "brightness-90-symbolic"
            icon: "󰃠"
        },
        IconType {
            name: "cpu"
            icon: "󰍛"
        }
    ]

    function getIcon(iconName: string): string {
        return root.icons.find(i => i.name == iconName)?.icon;
    }

    function getColor(iconName: string): color {
        return root.icons.find(i => i.name == iconName)?.color ?? Colors.foreground;
    }

    function getAudioIcon(node: PwNode): string {
        let muted = node?.audio?.muted;
        let volume = Math.round(node.audio?.volume * 100) ?? 0;
        if (muted) {
            return "audio-volume-muted-symbolic";
        }
        if (volume >= 66) {
            return "audio-volume-high-symbolic";
        } else if (volume >= 33) {
            return "audio-volume-medium-symbolic";
        } else if (volume > 0) {
            return "audio-volume-low-symbolic";
        } else if (volume == 0) {
            return "audio-volume-off-symbolic";
        }
    }
}
