#!/bin/bash

# Function to run scarb fmt
function run_scarb_fmt {
    echo "Running scarb fmt..."
    scarb fmt
    if [[ $? -ne 0 ]]; then
        echo "scarb fmt failed, aborting commit."
        exit 1
    fi
}

# Function to run scarb test
function run_scarb_test {
    echo "Running scarb test..."
    scarb test
    if [[ $? -ne 0 ]]; then
        echo "scarb test failed, aborting commit."
        exit 1
    fi
}

# Function to run npx prettier --check on README
function run_prettier_check {
    echo "Running npx prettier --check on README..."
    npx prettier --check README.md
    if [[ $? -ne 0 ]]; then
        echo "Prettier check failed, aborting commit."
        exit 1
    fi
}

# Execute the functions
run_scarb_fmt
run_scarb_test
run_prettier_check
