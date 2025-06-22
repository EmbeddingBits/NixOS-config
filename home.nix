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
}
