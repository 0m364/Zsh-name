# Zsh-name
Changes your PS1 in zsh 


# assuming your script is named ps1.zsh and is in the same directory as this installer
cp ps1.zsh $HOME/

# backup existing .zshrc file
cp $HOME/.zshrc $HOME/.zshrc.bak

# add source command to .zshrc
echo "source $HOME/ps1.zsh" >> $HOME/.zshrc

echo "Installation completed successfully!"
