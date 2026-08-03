#            ,            .                                             ,                                           #
#         .   \                 ,           oh hello                                             ,         ,        #
#              o                       .                   .                       ,                                #
#   .           \                                 ,                                                             .   #
#               #\##\#      .                                               I didn't see you there       .          #
#             #  #O##\###                .            ,           .              .                   ,              #
#   .        #*#  #\##\###                       .                     ,                   .                    ,   #
#        .   ##*#  #\##\##               .                     .                .                          .        #
#      .      ##*#  #o##\#         .             won't you dance with me?                ,       .                  #
#          .     *#  #\#     .                    .             .          ,                             ,          #
#                      \          .                         .                      ,                  .           , #
#____^/\___^--____/\____O______________/\/\---/\___________---______________/^\__-______/\--/\/\---^----/\_______/\_#
#  /\^   ^  ^    ^                  ^^ ^  '\ ^          ^       ---                       ^/\      _        _    ^  #
#         --      __   -            --  -      -         ---  __       ^     __     ^           -       __     -    #
#-------------------------------------------------------------------------------------------------------------------#
# ...
{
  serial = "AZ-07F";
  name = "Mae";
  aliases = ["maevi"];

  description = "a vaguely femme consciousness trapped in a human body, trying to make the best of life";

  gender = "female"; # how boring
  pronouns = ["she/her"];

  age = "REDACTED FOR PRIVACY";
  location.country = "REDACTED FOR PRIVACY";

  contact = {
    mailto = "me@maevi.net";
    codeberg = "maevi";
    github = "maevii";
    matrix = "@m:v4.maevi.net";
    # TODO: fedi
  };

  ref = "maevi.net"; # NOTE: IPv6-only, try v4.maevi.net if it seems down
  api = "me.maevi.net";

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
# EOF
#-------------------------------------------------then-let-us-dance-------------------------------------------------#
