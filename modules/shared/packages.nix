{ pkgs }:

let 
  tex = pkgs.texlive.combine {
    inherit (pkgs.texlive) scheme-full # 方案选择 scheme-full 以包含所有宏包
      xetex latexmk # 确保包含 xeCJK
      ctex # 额外的中文支持
      dvisvgm dvipng
      wrapfig amsmath ulem hyperref capt-of;
  };
in

[
  # General packages for development and system management
  pkgs.alacritty
  pkgs.aspell
  pkgs.aspellDicts.en
  pkgs.bash-completion
  pkgs.bat
  pkgs.btop
  pkgs.coreutils
  pkgs.killall
  pkgs.neofetch
  pkgs.openssh
  pkgs.sqlite
  pkgs.wget
  pkgs.zip

  pkgs.pandoc

  # Encryption and security tools
  pkgs.age
  pkgs.age-plugin-yubikey
  pkgs.gnupg
  pkgs.libfido2

  # Cloud-related tools and SDKs
  pkgs.docker
  pkgs.docker-compose

  # Media-related packages
  pkgs.emacs-all-the-icons-fonts
  pkgs.dejavu_fonts
  pkgs.ffmpeg
  pkgs.fd
  pkgs.font-awesome
  pkgs.hack-font
  pkgs.noto-fonts
  pkgs.noto-fonts-emoji
  pkgs.meslo-lgs-nf

  # Node.js development tools
  pkgs.nodePackages.npm # globally install npm
  pkgs.nodePackages.prettier
  pkgs.nodejs

  # Text and terminal utilities
  pkgs.htop
  pkgs.tldr
  pkgs.btop
  pkgs.hunspell
  pkgs.iftop
  pkgs.jetbrains-mono
  pkgs.jq
  pkgs.ripgrep
  pkgs.tree
  pkgs.tmux
  pkgs.unrar
  pkgs.unzip
  pkgs.zsh-powerlevel10k
  tex # The `tex` package defined above

  # Additional fonts for XeLaTeX (Chinese/CJK support)
  pkgs.wqy_zenhei      # WenQuanYi Zen Hei
  pkgs.source-han-sans # Source Han Sans (Noto Sans CJK)
  pkgs.source-han-serif # Source Han Serif (Noto Serif CJK)
  pkgs.fontconfig      # Font cache manager (ensures fonts are recognized)
  # Python packages
  pkgs.python3
  pkgs.black
  pkgs.virtualenv
  # pkgs.hyper
  pkgs.typst
  pkgs.marp-cli
  pkgs.thefuck
  pkgs.zotero
  # Software development tools
]
