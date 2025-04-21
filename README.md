Setup
install nvim v0.10
1. wget https://github.com/neovim/neovim/releases/download/v0.10.0/nvim-linux64.tar.gz
2. tar -xvzf nvim-linux64.tar.gz
3. tar -xvzf nvim-linux64.tar.gz
4. sudo mv nvim-linux64 /opt/
sudo ln -s /opt/nvim-linux64/bin/nvim /usr/local/bin/nvim
5. nvim --version
6. Remove any existing Neovim config (optional, for clean setup)
rm -rf ~/.config/nvim
7. Clone your old Neovim setup into the config folder
git clone https://github.com/ali-azgar-rakib/Nvim-Setup.git ~/.config/nvim
