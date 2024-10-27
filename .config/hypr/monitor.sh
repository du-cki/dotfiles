#!/bin/bash

external_monitor=$(hyprctl monitors | grep -v "eDP-1" | grep -E "connected|active")

if [[ -n "$external_monitor" && $(cat /proc/acpi/button/lid/LID/state | grep -i closed) ]]; then
  hyprctl keyword monitor "eDP-1,disabled"
fi
