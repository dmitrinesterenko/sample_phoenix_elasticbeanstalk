aws iam list-access-keys --user deploy | jq '.AccessKeyMetadata[0].AccessKeyId' | tr -d '"'
