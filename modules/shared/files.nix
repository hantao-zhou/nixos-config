{ pkgs, config, ... }:

# let
#  githubPublicKey = "ssh-ed25519 AAAA...";
# in
{

  # ".ssh/id_github.pub" = {
  #   text = githubPublicKey;
  # };

  # Initializes Emacs with org-mode so we can tangle the main config
  # ".emacs.d/init.el" = {
  #   text = builtins.readFile ../shared/config/emacs/init.el;
  # };

  # Correct way to add local fonts in Home Manager
  # ".nix-profile/share/fonts/truetype/qlishu.ttf" = {
  # source = ../shared/fonts/QLiShu.ttf;
  # };
}
