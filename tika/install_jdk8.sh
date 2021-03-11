#!/bin/bash
# install JDK8 required for Apache Tika
sudo apt install openjdk-8-jdk

update-java-ulternatives --list

# set default jdk to 8
update-java-ulternatives --set java-1.8.0-openjdk-amd64
