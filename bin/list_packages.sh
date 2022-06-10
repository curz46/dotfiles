#!/usr/bin/bash
comm -23 <(pacman -Qqett | sort) <(pacman -Qq -g base-devel | sort | uniq) | tr '\n' ' '
