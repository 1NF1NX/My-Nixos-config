{ config, pkgs, inputs, ... }:

{
  home.username = "ashansud";
  home.homeDirectory = "/home/ashansud";

  #gtk.enable = true;
  
  #gtk.theme.package = pkgs.nordic;
  #gtk.theme.name = "nordic";
   
  #qt.enable = true;

  home.stateVersion = "23.05";

  home.packages = with pkgs; [
  	font-awesome
   	nerd-fonts.fantasque-sans-mono
	starship
  ];

  
programs.starship = {
  enable = true;
  enableFishIntegration = true;
  settings = {
    aws.style = "bold #ffb86c";
    cmd_duration.style = "bold #f1fa8c";
    directory.style = "bold #50fa7b";
    hostname.style = "bold #ff5555";
    git_branch.style = "bold #ff79c6";
    git_status.style = "bold #ff5555";
    username = {
      format = "[$user]($style) on ";
      style_user = "bold #bd93f9";
    };
    character = {
      success_symbol = "[λ](bold #f8f8f2)";
      error_symbol = "[λ](bold #ff5555)";
    };
  };
};

  programs.home-manager.enable = true;
}

