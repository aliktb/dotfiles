# Function to decode kubernetes secret
#
# E.g. kubectl get secret my-secret -o json | ksec
ksec() { jq '.data | map_values(@base64d)' }
