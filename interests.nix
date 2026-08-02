{
  tech = {
    os = ["NixOS" "GrapheneOS"];
    arch = ["x86_64" "aarch64"];

    shell = "fish";
    ide = "neovim"; # without plugins. sometimes astronvim if I feel fancy though

    desktop = {
      environment = ["niri" "KDE"];
      browser = "librewolf";
      term = "kitty";
    };

    # see https://git.maevi.net/infra/nixos-servers
    infra = {
      domains = ["maevi.net"];

      networking = {
        ip.version = 6;
        ip.prefixes = [
          "2a14:6f44:5608::/48" # courtesy of https://as200242.net!
        ];

        stack = [
          "systemd-networkd"
          "iptables"
          "FD.io's VPP"
          "FRRouting"
          "wireguard"
          "mullvad"
        ];

        dns = [
          "knot"
          "unbound"
          "blocky"
        ];
      };

      fs = [
        "zfs"
        "tmpfs" # on /, thanks to nix <3
        "btrfs" # VMs
      ];

      kubernetes = {
        distro = "RKE2";
        ingress = "Envoy Gateway";
        storage = "OpenEBS"; # TODO: rook
        monitoring = "kube-prometheus-stack";
        network.cni = "Calico";

        images.updates = "renovate-bot";
      };
    };

    languages = {
      # NOTE: non-exhaustive
      proficient = [
        "nix"
        "rust"
        "C"
        "C++"
        "shell"
        "C#"
        "DNS zone files"
        "javascript"
      ];
      rusty = [
        "x86 asm"
        "SQL"
        "lua"
      ];
      basics = ["zig" "go"];
    };
  };

  music = {
    genres = [
      "metal"
      "rock"
      "various OSTs"
    ];
    streamingService = "https://navidrome.maevi.net"; # guest:

    instruments = {
      proficient = [];
      rusty = [];
      basics = [
        "guitar"
        "piano"
      ];
    };
  };
}
