class nodes::dust {
  include roles::base

  include manjaro
  include manjaro::desktop
  include desktop

  package { "docker":
    ensure => present,
  }

  service { "docker":
    ensure => running,
    enable => true,
  }

  include teensy
  include boxzy
  package { ["kicad", "kicad-library", "kicad-library-3d"]:
    ensure => present,
  }

  user { "adrien":
    ensure     => present,
    home       => "/home/adrien",
    managehome => true,
    groups     => ["wheel", "uucp"],
  }
}
