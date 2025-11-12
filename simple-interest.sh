#!/bin/bash
# ----------------------------------------
# Script: simple-interest.sh
# Author: Francis Muanawma (Francis-Zote)
# Description: Calculates simple interest
# ----------------------------------------

echo "----------------------------------------"
echo " Simple Interest Calculator "
echo "----------------------------------------"

# Prompt user for input
read -p "Enter the principal amount: " principal
read -p "Enter the rate of interest (in %): " rate
read -p "Enter the time (in years)..: " time

# Validate input (check if numbers)
if ! [[ "$principal" =~ ^[0-9]+(\.[0-9]+)?$ && "$rate" =~ ^[0-9]+(\.[0-9]+)?$ && "$time" =~ ^[0-9]+(\.[0-9]+)?$ ]]; then
  echo "❌ Error: Please enter valid numeric values."
  exit 1
fi

# Calculate simple interest
interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

# Display result
echo "----------------------------------------"
echo "The Simple Interest is: $interest"
echo "----------------------------------------"
