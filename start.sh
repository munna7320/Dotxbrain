#!/bin/bash

# Change this to your directory path where index.js and package.json are
BOT_DIR="$HOME/Dotxbrain"
ENV_FILE="$BOT_DIR/.env"

echo "=== DOTXBRAIN BOT SETUP ==="

if [ -f "$ENV_FILE" ]; then
    read -p "Do you want to edit bot token and chat ID? (y/n): " edit
else
    edit="y"
fi

if [[ "$edit" == "y" || "$edit" == "Y" ]]; then
    read -p "Enter your Telegram Bot Token: " token
    read -p "Enter your Telegram Chat ID: " chatid

    echo "BOT_TOKEN=$token" > "$ENV_FILE"
    echo "CHAT_ID=$chatid" >> "$ENV_FILE"
    echo "Updated bot token and chat ID."
else
    echo "Using saved bot token and chat ID."
fi

# Navigate to the dotxbrain directory
cd "$BOT_DIR" || { echo "Directory $BOT_DIR not found!"; exit 1; }

# Export environment variables
export $(grep -v '^#' "$ENV_FILE" | xargs)

# Run the Node.js bot
echo "Starting bot from $BOT_DIR..."
node index.js package.json

echo -e "\nBot linked. Start your hacking."
echo "Thank you DOTXBRAIN"
