#!/bin/bash

# Check if enough arguments are provided..
if [[ -z "$1" || -z "$2" || -z "$3" ]]; then
  echo "Usage:"
  echo "  Encrypt: docker run --rm <container_name> encrypt <password> <secret_value>"
  echo "  Decrypt: docker run --rm <container_name> decrypt <password> <encrypted_value>"
  exit 1
fi

MODE="$1"
PASSWORD="$2"
VALUE="$3"

if [[ "$MODE" == "encrypt" ]]; then
  echo -n "$VALUE" | ansible-vault encrypt_string --vault-password-file=<(echo "$PASSWORD")

elif [[ "$MODE" == "decrypt" ]]; then
  # TODO: This decrypt thing will never work... maybe remove it?
  echo "$VALUE" | ansible-vault decrypt /dev/stdin --vault-password-file=<(echo "$PASSWORD") --output=/dev/stderr > /dev/null

else
  echo "Invalid mode: Use 'encrypt' or 'decrypt'"
  exit 1
fi