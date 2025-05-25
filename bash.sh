#!/usr/bin/env bash

# Terminal Colors
RED="\033[31m"
GREEN="\033[32m"
RESET="\033[0m"

# Banner
echo -e "${RED}██████╗░░█████╗░████████╗██╗░░██╗██╗░░░██╗░█████╗░███╗░░██╗"
echo -e "██╔══██╗██╔══██╗╚══██╔══╝██║░░██║██║░░░██║██╔══██╗████╗░██║"
echo -e "██████╦╝██║░░██║░░░██║░░░███████║╚██╗░██╔╝██║░░██║██╔██╗██║"
echo -e "██╔══██╗██║░░██║░░░██║░░░██╔══██║░╚████╔╝░██║░░██║██║╚████║"
echo -e "██████╦╝╚█████╔╝░░░██║░░░██║░░██║░░╚██╔╝░░╚█████╔╝██║░╚███║"
echo -e "╚═════╝░░╚════╝░░░░╚═╝░░░╚═╝░░╚═╝░░░╚═╝░░░░╚════╝░╚═╝░░╚══╝${RESET}"

echo -e "${GREEN}Created by: dotxBrain${RESET}"
echo -e "Opening YouTube channel for support: https://youtube.com/@dotxbrain"

# Open YouTube channel
termux-open-url https://youtube.com/@dotxbrain

# Short delay
sleep 3

# Start bot
echo -e "${GREEN}Installing modules (if needed)...${RESET}"
npm install

echo -e "${GREEN}Starting your bot...${RESET}"
npm start