#!/bin/env sh

pkill polybar

sleep 1;

polybar neon &
polybar left_bar &
polybar hdmi_bar &
