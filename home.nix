{ lib, pkgs, ... }:
{
      # User specifications
      home.username = "embeddingbits";
      home.homeDirectory = "/home/embeddingbits/";

      # State Versions
      home.stateVersion = "25.05";

      programs.home-manager.enable = true;
      nixpkgs.config.allowUnfree = true;

      # Packages
      home.packages = with pkgs; [
            kitty
            fastfetch
            firefox
            fish
            starship
            hyprland
            gnome-tweaks
            gnomeExtensions.user-themes
            power-profiles-daemon
            brightnessctl
            hyprlock
            hyprpaper
            waybar
            zip unzip
            cava
            dunst libnotify
            swww
            hyprshot
            ranger
            nwg-look
            spicetify-cli
            vencord
            zig
            waybar
            go
            btop
            libgcc
            zip
            unzip
            nodejs_24
            clang-tools
            gnumake
            tree
            eza
            rofi-wayland
      ];


      home.file = {
  # Fish
  ".config/fish/config.fish".source = ./dotfiles/fish/config.fish;
  ".config/fish/fish_variables".source = ./dotfiles/fish/fish_variables;
  # Hyprland
  ".config/hypr/hyprland.conf".source = ./dotfiles/hypr/hyprland.conf;
  ".config/hypr/hyprlock.conf".source = ./dotfiles/hypr/hyprlock.conf;
  ".config/hypr/nord.conf".source = ./dotfiles/hypr/nord.conf;
  # Waybar
  ".config/waybar/config.jsonc".source = ./dotfiles/waybar/config.jsonc;
  ".config/waybar/style.css".source = ./dotfiles/waybar/style.css;
  # Rofi
  ".config/rofi/config.rasi".source = ./dotfiles/rofi/config.rasi;
  ".config/rofi/fonts.rasi".source = ./dotfiles/rofi/fonts.rasi;
  ".config/rofi/powermenu.rasi".source = ./dotfiles/rofi/powermenu.rasi;
  ".config/rofi/nord.rasi".source = ./dotfiles/rofi/nord.rasi;
  # Kitty
  ".config/kitty/kitty.conf".source = ./dotfiles/kitty/kitty.conf;
  ".config/kitty/current-theme.conf".source = ./dotfiles/kitty/current-theme.conf;
  # Dunst
  ".config/dunst/dunstrc".source = ./dotfiles/dunst/dunstrc;
  # Cava
  ".config/cava/config".source = ./dotfiles/cava/config;
  };
}
