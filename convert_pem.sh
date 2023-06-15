#!/bin/bash

# Read the one-line PEM key from certificate.pem
pem_key=$(cat certificate.pem)

# Convert the one-line PEM key to multi-line format
formatted_pem_key=$(echo "$pem_key" | awk '{gsub(/.{64}/,"&\n")}1')

# Save the multi-line PEM key to new.pem
echo "$formatted_pem_key" > new.pem

