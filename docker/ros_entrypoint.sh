#!/bin/bash
set -e

source /opt/ros/crystal/setup.bash
rosdep update
rosdep install --from-paths /root/colcon_ws/chibi20/src -i