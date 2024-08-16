#!/bin/bash

if [ ! -d java/src/test/java/org/apache/rocketmq/eventbridge/sdk ]
then
echo "making output dir..."
mkdir -p java/src/test/java/org/apache/rocketmq/eventbridge/sdk
fi

if [ -d demo/$1/$2 ]
then
    # echo "dir exist!"
    cd demo/eventBusDemo/$2
    dara install
    dara codegen java java
    dara clean

    mv java/src/main/java/org/apache/rocketmq/eventbridge/sdk/$2.java ../../../java/src/test/java/org/apache/rocketmq/eventbridge/sdk/
    rm -rf java
    cd -
fi
