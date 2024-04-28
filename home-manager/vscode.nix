{
  pkgs,
  inputs,
  outputs,
  ...
}: {
  programs.vscode = {
    enable = true;
    package = pkgs.vscode;

    mutableExtensionsDir = false;
    enableUpdateCheck = false;
    enableExtensionUpdateCheck = false;
    extensions = with pkgs.vscode-marketplace; [
      dracula-theme.theme-dracula
      vscodevim.vim
      yzhang.markdown-all-in-one
      bbenoist.nix
      ms-vscode.cpptools
      oderwat.indent-rainbow
      mechatroner.rainbow-csv
      donjayamanne.python-extension-pack
      ms-vscode-remote.remote-ssh
      eamodio.gitlens
    ];
  };
}
