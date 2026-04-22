# mihomo配置

apt update && apt install -y --no-install-recommends \
    curl \
    git \
    wget \
    tmux \
    rsync \
    && rm -rf /var/lib/apt/lists/*

# chezmoi, default config location: ~/.local/share/chezmoi
wget https://github.com/twpayne/chezmoi/releases/download/v2.70.2/chezmoi_2.70.2_linux_amd64.deb
dpkg -i chezmoi_2.70.2_linux_amd64.deb
chezmoi init https://github.com/jinjiwu/dotfiles.git
chezmoi apply ~/.tmux.conf
# chezmoi apply ~/.zshrc

# [starship]
curl -sS https://starship.rs/install.sh | sh -s -- --yes 

# [zoxide]
curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh 
# [fzf]
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
# [eza]
wget -c https://github.com/eza-community/eza/releases/latest/download/eza_x86_64-unknown-linux-gnu.tar.gz -O - | tar xz
chmod +x eza
mv eza ~/.local/bin/
# [uv]
curl -LsSf https://astral.sh/uv/install.sh | sh


# [fzf.config]
# Set up fzf key bindings and fuzzy completion
# source <(fzf --zsh)
# [skim] fzf substitute rust. Always check the content of the script before running it !
# curl --proto '=https' --tlsv1.2 -LsSf https://github.com/skim-rs/skim/releases/latest/download/skim-installer.sh | sh
# source <(sk --shell zsh)

# [zellij.ubuntu>23.04]
# apt install -y zellij
# [zellij.old_system]
# wget https://github.com/zellij-org/zellij/releases/latest/download/zellij-x86_64-unknown-linux-musl.tar.gz
# tar -xvf zellij-x86_64-unknown-linux-musl.tar.gz
# chmod +x zellij
# mv zellij .local/bin/
