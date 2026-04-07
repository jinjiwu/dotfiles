apt update && apt install -y --no-install-recommends \
    curl \
    git \
    wget \
    tmux \
    fzf \
    zoxide \
    rsync \
    chezmoi \
    zsh \
    zsh-autosuggestions \
    zsh-syntax-highlighting 

chsh -s $(which zsh)

# mihomo, default config location: /etc/mihomo/config.yaml or ~/.config/mihomo/config.yaml
version=v1.19.22
wget https://github.com/MetaCubeX/mihomo/releases/download/{version}/mihomo-linux-amd64-v3-{version}.deb && \
    dpkg -i mihomo-linux-amd64-v3-{version}.deb

# chezmoi, default config location: ~/.local/share/chezmoi
chezmoi init https://github.com/jinjiwu/dotfiles.git

curl -sS https://starship.rs/install.sh | sh -s -- --yes 

curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh 

curl -LsSf https://astral.sh/uv/install.sh | sh

# [zellij.ubuntu>23.04]
# apt install -y zellij
# [zellij.old_system]
wget https://github.com/zellij-org/zellij/releases/latest/download/zellij-x86_64-unknown-linux-musl.tar.gz
# 解压
tar -xvf zellij-x86_64-unknown-linux-musl.tar.gz
# 赋予执行权限并移动到系统路径
chmod +x zellij
mv zellij .local/bin/
