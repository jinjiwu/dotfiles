# usermod -s /usr/bin/zsh root

# mihomo配置
# MIHOMO_VERSION=1.19.24
# wget https://github.com/MetaCubeX/mihomo/releases/download/v${MIHOMO_VERSION}/mihomo-linux-amd64-v3-v${MIHOMO_VERSION}.gz -O mihomo.gz && gunzip mihomo.gz && chmod +x mihomo && mv mihomo ~/.local/bin/mihomo && rm mihomo.gz

apt update && apt install -y --no-install-recommends \
    curl \
    git \
    wget \
    tmux \
    rsync \
    && rm -rf /var/lib/apt/lists/*

# chezmoi, default config location: ~/.local/share/chezmoi
CHEZMOI_VERSION=2.70.2
wget https://github.com/twpayne/chezmoi/releases/download/v${CHEZMOI_VERSION}/chezmoi_${CHEZMOI_VERSION}_linux_amd64.deb
dpkg -i chezmoi_${CHEZMOI_VERSION}_linux_amd64.deb
chezmoi init https://github.com/jinjiwu/dotfiles.git
chezmoi apply ~/.tmux.conf
# chezmoi apply ~/.zshrc

# [starship]
curl -sS https://starship.rs/install.sh | sh -s -- --yes 

# [zoxide]
curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh 
# [fzf]
# git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
# ~/.fzf/install
FZF_VERSION=0.72.0
wget https://github.com/junegunn/fzf/releases/download/v${FZF_VERSION}/fzf-${FZF_VERSION}-linux_amd64.tar.gz -O - | tar xz --no-same-owner && mv fzf ~/.local/bin/

# [eza]
wget -c https://github.com/eza-community/eza/releases/latest/download/eza_x86_64-unknown-linux-gnu.tar.gz -O - | tar xz
mv eza ~/.local/bin/
# [uv]
curl -LsSf https://astral.sh/uv/install.sh | sh

# [hermes]
curl -fsSL https://raw.githubusercontent.com/NousResearch/hermes-agent/main/scripts/install.sh | bash
# [codex]
npm i -g @openai/codex
# [codex.upgrade]
# npm i -g @openai/codex@latest 
# [claude]
curl -fsSL https://claude.ai/install.sh | bash
# [onedrive.config]
rclone copy -P onedrive:.codex ~/.codex/ \
  --filter "+ {auth.json,config.toml}" \
  --filter "- *"

rclone copy -P onedrive:.claude ~/.claude/ \
  --filter "+ {settings.json}" \
  --filter "- *"

rclone copy -P onedrive:.hermes ~/.hermes/ \
  --filter "+ {config.yaml,.env}" \
  --filter "- *"

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
