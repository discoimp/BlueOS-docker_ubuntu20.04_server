#!/usr/bin/env bash

# Exit if something goes wrong
set -e

# Install basic tools
echo "Installing IniVation DVXplorer dependencies."
export ROS_DISTRO=noetic    
apt-get update && apt-get install -y --no-install-recommends ros-${ROS_DISTRO}-camera-info-manager ros-${ROS_DISTRO}-image-view python-catkin-tools git software-properties-common

# install IniVation dependencies
# run update again after software-properties-common
apt-get update
add-apt-repository ppa:inivation-ppa/inivation
apt-get update && apt-get install -y dv-runtime

# Install libcaer after dv-runtime is installed.
apt-get install -y libcaer-dev

