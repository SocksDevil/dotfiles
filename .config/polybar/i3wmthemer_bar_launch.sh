#!/bin/env sh

pkill polybar

sleep 1;

polybar i3wmthemer_bar &
polybar left_bar &
polybar hdmi_bar &
