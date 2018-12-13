windows:
  pkg.installed:
    - pkgs:
      - chocolatey

chocolatey:
  chocolatey.installed:
    - name: mumble
