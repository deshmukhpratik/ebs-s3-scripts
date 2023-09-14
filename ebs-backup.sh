#!/bin/bash

# Define the EBS volume ID to be backed up
VOLUME_ID="your-volume-id"

# Create a snapshot with a description containing the current date
aws ec2 create-snapshot --volume-id $VOLUME_ID --description "Daily backup $(date +\%Y-\%m-\%d)"


0 8 * * MON /path/of/the/script.sh
