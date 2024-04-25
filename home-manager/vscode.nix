{ pkgs, inputs, ... }:
{
programs.vscode = {
  enable = true;
  extensions = with vscode-marketplace-release; [
    dracula-theme.theme-dracula
    vscodevim.vim
    yzhang.markdown-all-in-one
  ];
};
}