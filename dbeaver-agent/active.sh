#!/bin/bash
sudo bash -c 'cat << EOF >> /opt/dbeaver-ee/dbeaver.ini
-javaagent:/home/liu/Documents/dbeaver-agent/dbeaver-agent.jar
-Dlm.debug.mode=true
EOF'
