{ config, pkgs, ... }: 
{

  home.packages = with pkgs; [ 
    atool 
    httpie 
    neovim 
    zsh
    git
    gh
  ];

  programs.bash.enable = false;
  programs.zsh = {
    enable = true;
    enableCompletion = true;
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

