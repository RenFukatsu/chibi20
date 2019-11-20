# chibi20
ロボット工学研究室のB4の研修「ちびチャレ」の管理パッケージ

## Requirement
- Ubuntu 18.04
- ROS Dashing

## Dependencies
|package | build status |
|:--- |:--- |
|[create_autonomy](https://github.com/RenFukatsu/create_autonomy) | [![Build Status](https://travis-ci.org/RenFukatsu/create_autonomy.scg?branch=lifecycle-node)](https://travis-ci.org/RenFukatsu/create_autonomy) |

- [libcreate](https://github.com/AutonomyLab/libcreate)

## How to use
### dockerを使う場合
```
$ cd ~/colcon_ws
$ git clone https://github.com/RenFukatsu/chibi20.git
$ cd chibi20
$ mkdir -p src && cd src
$ git clone https://github.com/RenFukatsu/create_autonomy
$ git clone https://github.com/AutonomyLab/libcreate
$ cd ..
$ ./build.sh
$ ./run_docker.sh
$ cd ~/colcon_ws/chibi20
$ colcon build
```