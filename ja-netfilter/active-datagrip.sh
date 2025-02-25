#!/bin/bash
sudo bash -c 'cat << EOF >> /opt/datagrip/bin/datagrip64.vmoptions
-Dawt.toolkit.name=WLToolkit
--add-opens=java.base/jdk.internal.org.objectweb.asm=ALL-UNNAMED
--add-opens=java.base/jdk.internal.org.objectweb.asm.tree=ALL-UNNAMED
-javaagent:/home/dev/Documents/ja-netfilter/ja-netfilter.jar
EOF'
