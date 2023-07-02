#eyes#

RED=$(tput setaf 1)
GREEN=$(tput setaf 2)
BLUE=$(tput setaf 4)
CYAN=$(tput setaf 6)
reset_color=$(tput sgr0)

read -p "Enter your preferred name: " name
echo "Choose your preferred color for your name: 1) RED 2) GREEN 3) BLUE 4) CYAN"
read -p "Enter your option (1-4): " name_color_option

case "$name_color_option" in
1) name_color=$RED ;;
2) name_color=$GREEN ;;
3) name_color=$BLUE ;;
4) name_color=$CYAN ;;
*) echo "Invalid option"; exit 1 ;;
esac

read -p "Enter your preferred computer name: " computer_name
echo "Choose your preferred color for your computer name: 1) RED 2) GREEN 3) BLUE 4) CYAN"
read -p "Enter your option (1-4): " computer_name_color_option

case "$computer_name_color_option" in
1) computer_name_color=$RED ;;
2) computer_name_color=$GREEN ;;
3) computer_name_color=$BLUE ;;
4) computer_name_color=$CYAN ;;
*) echo "Invalid option"; exit 1 ;;
esac

# Create the PS1 string
ps1="${name_color}%n${reset_color}@${computer_name_color}%M${reset_color}: %~ $ "

# Write the PS1 string to ~/.zshrc
echo "export PS1=\"$ps1\"" >> ~/.zshrc

echo "PS1 updated successfully in ~/.zshrc file. Please open a new terminal to see the changes or source the file."
exit 0
