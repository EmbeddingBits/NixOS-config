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
            hello
            cowsay
            lolcat
            kitty
            fastfetch
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
            cava
            dunst
            swww
            hyprshot
            ranger
            nwg-look
            spicetify-cli
            vencord
            zig
            waybar
            go
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

            #  ".config/hypr/hyprland.conf".source = ./dotfiles/hypr/hyprland.conf;
            #  ".config/fish/config.fish".source = ./dotfiles/fish/config.fish;
            #  ".config/hypr/hyprlock.conf".source = ./dotfiles/hypr/hyprlock.conf;
            #  ".config/waybar/config.jsonc".source = ./dotfiles/waybar/config.jsonc;
            #  ".config/waybar/style.css".source = ./dotfiles/waybar/style.css;
  ".config/rofi/config.rasi".source = ./dotfiles/rofi/config.rasi;
  ".config/rofi/fonts.rasi".source = ./dotfiles/rofi/fonts.rasi;
  ".config/rofi/powermenu.rasi".source = ./dotfiles/rofi/powermenu.rasi;
  ".config/rofi/nord.rasi".source = ./dotfiles/rofi/nord.rasi;
            #  ".config/kitty/kitty.conf".source = ./dotfiles/kitty/kitty.conf;
            #  ".config/kitty/current-theme.conf".source = ./dotfiles/kitty/current-theme.conf;
  ".config/cava/config".source = ./dotfiles/cava/config;
  };
}
