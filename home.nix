{ config, pkgs, ... }: {
  
  home.username = "migueltinembart";
  home.homeDirectory = "/home/migueltinembart";
  home.packages = with pkgs; [ 
    atool 
    httpie 
    neovim 
    zsh
    git
    gh
    fastfetch
    ghostty
    floorp
    devcontainer
    gopls
    oh-my-zsh
    vscode
    kind
    kubectl
    google-chrome
    thunderbird
  ];
  nixpkgs.config.allowUnfree = true;
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    oh-my-zsh = {
      enable = true;
      theme = "agnoster";
    };

  };

  programs.git = {
    enable = true;
    extraConfig = {
      user.name = "Miguel Tinembart";
      user.email = "miguel.tinembart@gmail.com";
    };
  }; 
  
  # The state version is required and should stay at the version you
  # originally installed.
  home.stateVersion = "25.05";
  
}

