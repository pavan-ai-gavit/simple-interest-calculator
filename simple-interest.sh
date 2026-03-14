#!/bin/bash

# Simple Interest Calculator
# Formula: SI = (Principal * Rate * Time) / 100

echo "==============================="
echo "   Simple Interest Calculator  "
echo "==============================="
echo ""

# Take user inputs
read -p "Enter Principal Amount (P): " principal
read -p "Enter Rate of Interest (R) in % per year: " rate
read -p "Enter Time Period (T) in years: " time

# Calculate Simple Interest
simple_interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc)

# Calculate Total Amount
total_amount=$(echo "scale=2; $principal + $simple_interest" | bc)

# Display Results
echo ""
echo "==============================="
echo "         Results               "
echo "==============================="
echo "Principal Amount  : $principal"
echo "Rate of Interest  : $rate %"
echo "Time Period       : $time years"
echo "-------------------------------"
echo "Simple Interest   : $simple_interest"
echo "Total Amount      : $total_amount"
echo "==============================="
