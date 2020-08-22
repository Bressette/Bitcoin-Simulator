#!/bin/bash

# Configure the following values
# rapidjson can be installed using "sudo apt install rapidjson-dev" on debian distributions
# Set the value of the environment variable NS3_HOME to set the ns3 folder correctly
RAPIDJSON_FOLDER=/usr
NS3_FOLDER=$NS3_HOME

# Do not change

# If the rapidjson folder does not exist create the directory
if [ ! -d "$NS3_FOLDER/rapidjson" ]; then
	mkdir $NS3_FOLDER/rapidjson
fi
cp  -r $RAPIDJSON_FOLDER/include/rapidjson/* $NS3_FOLDER/rapidjson/
cp  src/applications/model/* $NS3_FOLDER/src/applications/model/
cp  src/applications/helper/* $NS3_FOLDER/src/applications/helper/
cp  src/internet/helper/* $NS3_FOLDER/src/internet/helper/
cp  scratch/* $NS3_FOLDER/scratch/
