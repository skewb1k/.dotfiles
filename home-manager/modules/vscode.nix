{
  pkgs,
  ...
}:
{
  programs.vscode = {
    enable = true;
    package = pkgs.vscodium;
    enableExtensionUpdateCheck = true;
    enableUpdateCheck = false;
    mutableExtensionsDir = true;
    extensions =
      (with pkgs.vscode-extensions; [
      # language support
      yzhang.markdown-all-in-one
      christian-kohler.npm-intellisense
      christian-kohler.path-intellisense
      dbaeumer.vscode-eslint
      editorconfig.editorconfig
      esbenp.prettier-vscode
      ms-python.black-formatter
      bbenoist.nix
      ms-python.debugpy
      formulahendry.auto-rename-tag
      redhat.java
      mechatroner.rainbow-csv
      jock.svg
      redhat.vscode-yaml
      ms-python.python
      ms-azuretools.vscode-docker
      njpwerner.autodocstring
      # njqdev.vscode-python-typehint unf
      # ms-python.vscode-pylance
      golang.go
      # vinliao.fast-arrow unf
      wix.vscode-import-cost
      # 42Crunch.vscode-openapi unf
      # themes
      # eliverlara.andromeda unf
      # beardedbear.beardedtheme unf
      dracula-theme.theme-dracula
      pkief.material-icon-theme
      # tinkertrain.theme-panda unf
      enkia.tokyo-night
      # whizkydee.material-palenight-theme unf
      github.github-vscode-theme
      equinusocio.vsc-material-theme
      # utils
      # chrisdias.vscode-opennewinstance
      vscodevim.vim
      wakatime.vscode-wakatime
      mhutchie.git-graph
      # uctakeoff.vscode-counter
      donjayamanne.githistory
      github.vscode-pull-request-github
      johnpapa.vscode-peacock
      # ionutvmi.path-autocomplete
      # leonardssh.vscord

      # ???
      # codezombiech.gitignore
      # steoates.autoimport
      # mgmcdermott.vscode-language-babel 
      # davidanson.vscode-markdownlint
      # donjayamanne.python-environment-manager
      # emeraldwalk.runonsave
      # kevinrose.vsc-python-indent
      ]);
    # userSettings = {
    #   "workbench.iconTheme" = "catppuccin-mocha";
    #   "workbench.colorTheme" = "Tsuki";
    #   "editor.fontFamily" = "GeistMono Nerd Font, Catppuccin Mocha, 'monospace', monospace";
    #   "editor.fontSize" = 14;
    #   "editor.fontLigatures" = true;
    #   "files.trimTrailingWhitespace" = true;
    #   "terminal.integrated.fontFamily" = "GeistMono Nerd Font";
    #   "window.titleBarStyle" = "custom";
    #   "terminal.integrated.defaultProfile.linux" = "zsh";
    #   "terminal.integrated.cursorBlinking" = true;
    #   "terminal.integrated.enableVisualBell" = false;
    #   "editor.formatOnPaste" = true;
    #   "editor.formatOnSave" = true;
    #   "editor.formatOnType" = false;
    #   "editor.minimap.enabled" = false;
    #   "editor.minimap.renderCharacters" = false;
    #   "editor.overviewRulerBorder" = false;
    #   "editor.renderLineHighlight" = "all";
    #   "editor.inlineSuggest.enabled" = true;
    #   "editor.smoothScrolling" = true;
    #   "editor.suggestSelection" = "first";
    #   "editor.guides.indentation" = true;
    #   "editor.guides.bracketPairs" = true;
    #   "editor.bracketPairColorization.enabled" = true;
    #   "window.restoreWindows" = "all";
    #   "window.menuBarVisibility" = "toggle";
    #   "workbench.panel.defaultLocation" = "right";
    #   "workbench.list.smoothScrolling" = true;
    #   "security.workspace.trust.enabled" = false;
    #   "explorer.confirmDelete" = false;
    #   "breadcrumbs.enabled" = true;
    #   "telemetry.telemetryLevel" = "off";
    #   "workbench.startupEditor" = "newUntitledFile";
    #   "editor.cursorBlinking" = "expand";
    #   "security.workspace.trust.untrustedFiles" = "open";
    #   "security.workspace.trust.banner" = "never";
    #   "security.workspace.trust.startupPrompt" = "never";
    #   "workbench.sideBar.location" = "right";
    #   "editor.tabSize" = 2;
    #   "editor.wordWrap" = "on";
    #   "workbench.editor.tabActionLocation" = "left";
    #   "window.dialogStyle" = "native";
    # };
  };
}
