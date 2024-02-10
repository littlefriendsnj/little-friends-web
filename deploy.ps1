#!/usr/bin/env pwsh

$awsProfile = "littlefriends"
$s3Bucket = "littlefriendspalmyra.net"

Write-Host "Compiling Hugo assets..."
hugo

Write-Host "Deploying assets to S3 bucket ($s3Bucket)..."
aws s3 sync --profile $awsProfile ./public/ s3://$s3Bucket
