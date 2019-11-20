#!/bin/bash

xhost +

SCRIPT_DIR=$(cd $(dirname $0); pwd)

IMAGE_NAME="ros2_crystal"

echo $IMAGE_NAME

docker run -it --rm \
  --privileged \
  --runtime=nvidia \
  --env=QT_X11_NO_MITSHM=1 \
  --env="DISPLAY" \
  --volume="/etc/group:/etc/group:ro" \
  --volume="/etc/passwd:/etc/passwd:ro" \
  --volume="/etc/shadow:/etc/shadow:ro" \
  --volume="/etc/sudoers.d:/etc/sudoers.d:ro" \
  --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
  --volume="$HOME/.Xauthority:/root/.Xauthority:rw" \
  --net="host" \
  --volume="$SCRIPT_DIR/:/root/colcon_ws/chibi20/" \
  --name=ros2_crystal \
  $IMAGE_NAME \
  bash
