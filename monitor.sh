#!/bin/bash

# Function to print colored text
print_color() {
  local color="$1"
  local text="$2"
  local reset="\e[0m"
  
  case "$color" in
    "green")
      echo -e "\e[32m$text$reset"
      ;;
    "blue")
      echo -e "\e[34m$text$reset"
      ;;
    "yellow")
      echo -e "\e[33m$text$reset"
      ;;
    *)
      echo "$text"
      ;;
  esac
}

# Get the current block height of the Bitcoin blockchain
current_block_height=$(curl -s https://blockchain.info/q/getblockcount)

# Get the block height of the last synced block from your local Bitcoin node
local_block_height=$(bitcoin-cli getblockcount)

# Calculate the days difference between the current blockchain height and the local synced block height
height_difference=$((current_block_height - local_block_height))
days_difference=$((height_difference * 10 / 60 / 24))

# Get the current date in "YYYY-MM-DD" format
current_date=$(date +%Y-%m-%d)

# Calculate the synced block date, assuming an average of 10 minutes per block
block_sync_date=$(date -d "$current_date - $days_difference days" +%Y-%m-%d)

# Print the current block height, the synced block date, and the days difference in colored text
print_color "green" "Current block height: $current_block_height"
print_color "blue" "Synced block date: $block_sync_date"
print_color "yellow" "Days difference between synced block and current date: $days_difference days."
