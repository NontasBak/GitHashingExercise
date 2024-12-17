#!/bin/bash

# Call the script as ./hash_script.sh <4 digits of AEM>

AEM="$1"

# Generate the hash and append it to hash_output.txt
# -n is used to suppress the newline character added by echo
echo -n "$AEM" | sha256sum | awk '{print $1}' > hash_output.txt