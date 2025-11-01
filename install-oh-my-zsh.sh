apt install zsh -y
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

echo -nE 'PROMPT="%(?:%{$fg_bold[green]%}%n@%m:%{$fg_bold[red]%}%n@%m)%{$reset_color%}:%{$fg[blue]%}%c%{$reset_color%}$ "' > ~/.oh-my-zsh/themes/killf.zsh-theme
sed -i '/^ZSH_THEME="robbyrussell"/c\ZSH_THEME="killf"' ~/.zshrc
sed -i '/^plugins=(git)/c\plugins=(zsh-autosuggestions)' ~/.zshrc
