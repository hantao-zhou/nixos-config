{ pkgs }:

let 
  tex = pkgs.texlive.combine {
    inherit (pkgs.texlive) scheme-basic
      dvisvgm dvipng # for preview and export as html
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

  # Python packages
  pkgs.python3
  pkgs.virtualenv
]
