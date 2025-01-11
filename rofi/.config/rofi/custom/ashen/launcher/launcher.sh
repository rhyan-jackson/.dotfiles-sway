#!/usr/bin/env bash

## Author : Aditya Shakya (adi1090x)
## Github : @adi1090x
#
## Rofi   : Launcher (Modi Drun, Run, File Browser, Window)
#
# Edited by Rhyan

dir="$HOME/.config/rofi/custom/ashen/launcher/"
theme='style'

## Run
rofi \
  -show drun \
  -theme ${dir}/${theme}.rasi
