#!/bin/sh

# Encrypts the provided file using the pubkey and prints it to stdout

# requires https://github.com/FiloSottile/age to be installed
# https://github.com/FiloSottile/age to be installed

PUBKEY=$(cat `dirname "$0"`/pubkey)

age --encrypt -a -r $PUBKEY $1
