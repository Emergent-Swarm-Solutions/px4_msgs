FROM --platform=linux/arm64 ghcr.io/emergent-swarm-solutions/jetson-ros-base:v1.3

LABEL org.opencontainers.image.description="jetson-ros-base:v1.3 with PX4 messages."

WORKDIR /home

COPY . src/px4_msgs/
RUN . /opt/ros/humble/setup.sh && colcon build

WORKDIR /