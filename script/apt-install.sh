apt update && apt install -y --no-install-recommends \
    curl \
    git \
    wget \
    tmux \
    fzf \
    rsync \
    zsh

curl -sS https://starship.rs/install.sh | sh -s -- --yes 

curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh 

curl -LsSf https://astral.sh/uv/install.sh | sh

# mihomo, default config location: /etc/mihomo/config.yaml or ~/.config/mihomo/config.yaml
wget https://github.com/MetaCubeX/mihomo/releases/download/v1.19.15/mihomo-linux-amd64-v3-v1.19.15.deb && \
    dpkg -i mihomo-linux-amd64-v3-v1.19.15.deb
