{
  pkgs ? import <nixpkgs> { },
}:
let
  python = pkgs.python3.withPackages (ps: with ps; [ tkinter ]);

  # Dependencies needed for Kivy at runtime
  kivy-libs = with pkgs; [
    libGL
    mtdev
    SDL2
    SDL2_image
    SDL2_ttf
    SDL2_mixer
    libx11
    glib
    libxkbcommon
    zlib
  ];
in
pkgs.mkShell {
  packages = [
    python
    pkgs.poetry
  ]
  ++ kivy-libs;

  shellHook = ''
    export TK_LIBRARY="${pkgs.tk}/lib/tk8.6"
    export TCL_LIBRARY="${pkgs.tcl}/lib/tcl8.6"

    # Expose libraries to Kivy
    export LD_LIBRARY_PATH="${pkgs.lib.makeLibraryPath kivy-libs}:$LD_LIBRARY_PATH"

    # Poetry strips PYTHONPATH when creating or running the virtual environment,
    # so we use a bash wrapper for poetry that injects a .pth file directly 
    # into the virtual environment's site-packages.
    poetry() {
      command poetry "$@"
      local exit_code=$?
      local venv_path=$(command poetry env info -p 2>/dev/null)
      if [ -n "$venv_path" ]; then
        local site_packages=$(find "$venv_path" -type d -path "*/site-packages" | head -n 1)
        if [ -n "$site_packages" ]; then
          local tkinter_path=$(python -c 'import _tkinter; print(_tkinter.__file__.rsplit("/", 1)[0])' 2>/dev/null || true)
          if [ -n "$tkinter_path" ]; then
            echo "$tkinter_path" > "$site_packages/tkinter_nix.pth"
          fi
        fi
      fi
      return $exit_code
    }
  '';
}
