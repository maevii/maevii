{
  serial = "AZ-07F";
  name = "Mae";
  aliases = ["maevi"];

  description = "a vaguely femme consciousness trapped in a human body, trying to make the best of life";

  gender = "girlthing";
  pronouns = ["she/her"];
  age = "REDACTED FOR PRIVACY";

  activities = [
    "staying alive in a world that wants me dead"
    "touching computers"
    "REDACTED FOR PRIVACY"
    "contributing to nixpkgs et al"
    "REDACTED FOR PRIVACY"
    "REDACTED FOR PRIVACY"
  ];
  location.country = "REDACTED FOR PRIVACY";

  contact = {
    mailto = "me@maevi.net";
    codeberg = "maevi";
    github = "maevii";
    matrix = "@m:v4.maevi.net";
    # TODO: fedi
  };
  ref = "maevi.net"; # NOTE: IPv6-only, v4.maevi.net if your ISP is still stuck in the 90s

  keys = [
    (import ./pgp.nix {
      eval = "gpg --auto-key-locate clear,nodefault,cert,dane --locate-keys me@maevi.net";
      fingerprint = "A176 4D41 E826 A6E5 A5A1  8231 7670 F0F0 C946 12F4";
    })
    (import ./pgp.nix {
      # NOTE: expired as of 2026-01-12
      fingerprint = "2CCB 3403 43FE 8A2B 91CE  7F75 F94F 4A71 C5C2 1E8F";
    })
  ];
}
