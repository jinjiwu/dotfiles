sudo pacman -S --noconfirm \
    curl \
    git \
    wget \
    tmux \
    rsync \
    chezmoi \
    zsh \
    zsh-autosuggestions \
    zsh-syntax-highlighting \
    eza \
    starship \
    fzf \
    zoxide \
    uv \
    uvx \
    # zellij \
    yazi \
    helix \
    google-chrome-stable \

# [shell.zsh]
chsh -s $(which zsh)

# chezmoi, default config location: ~/.local/share/chezmoi
chezmoi init https://github.com/jinjiwu/dotfiles.git

sudo pacman -S --noconfirm \
    niri  \
    noctelia-shell \

sudo paru -S --noconfirm \
    flclash \
    visual-studio-code-bin \
    claude-code-bin \
    cc-switch
