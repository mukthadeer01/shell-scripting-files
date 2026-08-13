#!/bin/bash

########################
# Author: Mukthadeer
# Version: 1
# Date: 13-08-2026
#
# This script is to list the users of the organizations in a GitHub
#########################

# 1. Define functions at the top before they are called
function helper {
    # Accept the script's argument count ($1 here refers to the first argument passed to this function)
    local expected_cmds=2
    if [[ $1 -ne $expected_cmds ]]; then
        echo "Error: Please enter the arguments correctly."
        echo "Usage: ./$0 <REPO_OWNER> <REPO_NAME>"
        exit 1 # Stop execution if arguments are missing
    fi
}

# 2. Call the helper function immediately and pass the script argument count ($#)
helper $#

# GitHub API URL
API_URL="https://api.github.com"

# 3. Ensure credentials are set. 
# This assumes you have exported $username and $token in your terminal before running.
USERNAME=$username
TOKEN=$token

if [[ -z "$USERNAME" || -z "$TOKEN" ]]; then
    echo "Error: Please export 'username' and 'token' in your terminal environment."
    exit 1
fi

# User and Repository information
REPO_OWNER=$1
REPO_NAME=$2

# Function to make a GET request to the GitHub API
function github_api_get {
    local endpoint="$1"
    local url="${API_URL}/${endpoint}"

    # 4. Use the recommended Bearer token and headers for the GitHub API
    curl -s -H "Authorization: Bearer ${TOKEN}" \
            -H "Accept: application/vnd.github+json" \
            -H "X-GitHub-Api-Version: 2022-11-28" \
            "$url"
}

# Function to list users with read access to the repository
function list_users_with_read_access {
    local endpoint="repos/${REPO_OWNER}/${REPO_NAME}/collaborators"

    # Fetch the list of collaborators on the repository
    collaborators="$(github_api_get "$endpoint" | jq -r '.[] | select(.permissions.pull == true) | .login')"

    # Display the list of collaborators with read access
    if [[ -z "$collaborators" || "$collaborators" == "null" ]]; then
        echo "No users with read access found for ${REPO_OWNER}/${REPO_NAME}."
    else
        echo "Users with read access to ${REPO_OWNER}/${REPO_NAME}:"
        echo "$collaborators"
    fi
}

# Main script execution
echo "Listing users with read access to ${REPO_OWNER}/${REPO_NAME}..."
list_users_with_read_access
