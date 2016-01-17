aws iam create-user --user-name deploy \
  | jq ".AccessKey.SecretAccessKey" \
  | tr -d '"'
