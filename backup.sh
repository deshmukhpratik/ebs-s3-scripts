#!/bin/bash

# Define your source directory
SOURCE_DIR="/path/to/your/source/files/"

# Define your S3 bucket and destination prefix
S3_BUCKET="your-backup-bucket-name"
S3_PREFIX="daily-backups/$(date +\%Y-\%m-\%d)/"

# Use the AWS CLI to copy files to S3
aws s3 sync "$SOURCE_DIR" "s3://$S3_BUCKET/$S3_PREFIX"

echo "Daily backup completed: $(date)"
