{ lib, pkgs, inputs, ... }:

{
      imports = [
            inputs.spicetify-nix.homeManagerModules.default
            inputs.nixcord.homeModules.nixcord
      ];

      # User specifications
      home.username = "embeddingbits";
      home.homeDirectory = "/home/embeddingbits/";

      # State Versions
      home.stateVersion = "25.05";

      programs.home-manager.enable = true;
      nixpkgs.config.allowUnfree = true;
      programs.neovim.enable = true;

      # Packages
      home.packages = with pkgs; [
            # Hypr Utilities
            hyprland hyprlock hyprshot hyprpicker waybar swww nwg-look rofi-wayland rofi-power-menu dunst waypaper cmus
            # Terminal Utilities
            kitty fastfetch fish starship cava btop ranger
            # Gnome Related
            gnome-tweaks
            gnomeExtensions.user-themes
            # Development
            libgcc zig go nodejs_24 lua-language-server
            # Applications
            firefox pavucontrol neovide
            inputs.zen-browser.packages."${system}".default
            # Utilities
            gh flatpak fd ripgrep gnumake gparted zip unzip eza tree clang-tools btop libnotify brightnessctl power-profiles-daemon pandoc 

      ];

      # Dotfiles
      home.file = {
            # Fish
            ".config/fish/config.fish".source = ./dotfiles/fish/config.fish;
            ".config/fish/fish_variables".source = ./dotfiles/fish/fish_variables;
            # Hyprland
            ".config/hypr/hyprland.conf".source = ./dotfiles/hypr/hyprland.conf;
            ".config/hypr/hyprlock.conf".source = ./dotfiles/hypr/hyprlock.conf;
            ".config/hypr/nord.conf".source = ./dotfiles/hypr/nord.conf;
            # Waybar
            ".config/waybar/config.jsonc".source = ./dotfiles/waybar/blocks/config.jsonc;
            ".config/waybar/style.css".source = ./dotfiles/waybar/blocks/style.css;
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

      # Spicetify Config
      programs.spicetify =
            let
                  spicePkgs = inputs.spicetify-nix.legacyPackages.${pkgs.system};
            in
                  {
                  enable = true;
                  enabledExtensions = with spicePkgs.extensions; [
                        adblock
                        shuffle
                        addToQueueTop
                        history
                        volumePercentage
                        betterGenres
                        beautifulLyrics
                  ];
                  theme = spicePkgs.themes.text;
                  colorScheme = "custom";
                  customColorScheme = {
                        accent             = "88c0d0";
                        accent-active      = "5e81ac";
                        accent-inactive    = "2e3440";
                        banner             = "8fbcbb";
                        border-active      = "bf616a";
                        border-inactive    = "3b4252";
                        header             = "4c566a";
                        highlight          = "4c566a";
                        main               = "2e3440";
                        notification       = "5e81ac";
                        notification-error = "bf616a";
                        subtext            = "d8dee9";
                        text               = "eceff4";
                  };
            };

      # Nixcord Config
      xdg.configFile."Vencord/themes".source = ./dotfiles/discord-theme;
      programs.nixcord = {
            enable = true;
            discord.vencord.unstable = true;
            config = {
                  transparent = true;
                  themeLinks = [ ];
                  frameless = true;
                  plugins = {
                        alwaysTrust = {
                              enable = true;
                              domain = true;
                              file = true;
                        };
                  };
            };
      };

      # Git Config
      programs.git = {
            enable = true;
            userName = "embeddingbits";
            userEmail = "tspamiitesh@gmail.com";
            extraConfig = {
                  init.defaultBranch = "main";
            };
      };
}

