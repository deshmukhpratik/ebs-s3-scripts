#!/bin/bash

# Replace these variables with your own values
LAUNCH_TEMPLATE_NAME="my-launch-template"
INSTANCE_COUNT=5

for ((i=1; i<=$INSTANCE_COUNT; i++)); do
  aws ec2 run-instances --launch-template LaunchTemplateName=$LAUNCH_TEMPLATE_NAME
done
