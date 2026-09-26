#!/bin/bash

#################################################################################
# Simple Interest Calculator
# 
# Description: This script calculates simple interest based on user input.
# Formula: Simple Interest = (Principal × Rate × Time) / 100
# 
# Input Parameters:
#   - Principal (P): The initial amount of money
#   - Rate of Interest (R): The annual interest rate (in percentage)
#   - Time Period (T): The duration in years
#
# Output: Simple Interest and Total Amount
#################################################################################

# Color codes for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Function to display the header
display_header() {
    echo -e "${BLUE}======================================${NC}"
    echo -e "${BLUE}    Simple Interest Calculator        ${NC}"
    echo -e "${BLUE}======================================${NC}"
    echo ""
}

# Function to validate if input is a valid number
validate_number() {
    local input=$1
    local field_name=$2
    
    # Check if input is empty
    if [ -z "$input" ]; then
        echo -e "${RED}Error: $field_name cannot be empty.${NC}"
        return 1
    fi
    
    # Check if input is a valid number (integer or decimal)
    if ! [[ "$input" =~ ^[0-9]+([.][0-9]+)?$ ]]; then
        echo -e "${RED}Error: $field_name must be a valid number.${NC}"
        return 1
    fi
    
    # Check if number is positive
    if (( $(echo "$input <= 0" | bc -l) )); then
        echo -e "${RED}Error: $field_name must be a positive number.${NC}"
        return 1
    fi
    
    return 0
}

# Function to get and validate principal
get_principal() {
    local principal
    while true; do
        read -p "Enter Principal Amount (P): " principal
        if validate_number "$principal" "Principal"; then
            echo "$principal"
            break
        fi
    done
}

# Function to get and validate rate of interest
get_rate() {
    local rate
    while true; do
        read -p "Enter Rate of Interest per annum (R) in %: " rate
        if validate_number "$rate" "Rate of Interest"; then
            echo "$rate"
            break
        fi
    done
}

# Function to get and validate time period
get_time() {
    local time
    while true; do
        read -p "Enter Time Period (T) in years: " time
        if validate_number "$time" "Time Period"; then
            echo "$time"
            break
        fi
    done
}

# Function to calculate simple interest
calculate_simple_interest() {
    local principal=$1
    local rate=$2
    local time=$3
    
    # Formula: SI = (P × R × T) / 100
    local simple_interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc -l)
    
    # Total Amount = Principal + Simple Interest
    local total_amount=$(echo "scale=2; $principal + $simple_interest" | bc -l)
    
    echo "$simple_interest|$total_amount"
}

# Function to display results
display_results() {
    local principal=$1
    local rate=$2
    local time=$3
    local simple_interest=$4
    local total_amount=$5
    
    echo ""
    echo -e "${GREEN}======================================${NC}"
    echo -e "${GREEN}           Calculation Results         ${NC}"
    echo -e "${GREEN}======================================${NC}"
    echo -e "${YELLOW}Principal Amount (P):${NC}     $principal"
    echo -e "${YELLOW}Rate of Interest (R):${NC}     $rate%"
    echo -e "${YELLOW}Time Period (T):${NC}         $time years"
    echo ""
    echo -e "${BLUE}Simple Interest (SI):${NC}     $simple_interest"
    echo -e "${BLUE}Total Amount:${NC}            $total_amount"
    echo -e "${GREEN}======================================${NC}"
    echo ""
}

# Function to ask if user wants to calculate again
ask_continue() {
    local response
    read -p "Do you want to calculate again? (yes/no): " response
    case "$response" in
        [yY][eE][sS]|[yY])
            return 0
            ;;
        [nN][oO]|[nN])
            return 1
            ;;
        *)
            echo -e "${RED}Invalid response. Please enter 'yes' or 'no'.${NC}"
            ask_continue
            ;;
    esac
}

# Main function
main() {
    while true; do
        display_header
        
        # Get input from user
        principal=$(get_principal)
        rate=$(get_rate)
        time=$(get_time)
        
        # Calculate simple interest
        IFS='|' read -r simple_interest total_amount <<< "$(calculate_simple_interest "$principal" "$rate" "$time")"
        
        # Display results
        display_results "$principal" "$rate" "$time" "$simple_interest" "$total_amount"
        
        # Ask if user wants to continue
        if ! ask_continue; then
            echo -e "${GREEN}Thank you for using Simple Interest Calculator!${NC}"
            echo "Goodbye!"
            break
        fi
    done
}

# Run the main function
main
