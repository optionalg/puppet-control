class nodes::dust {
  include roles::base

  include manjaro
  include manjaro::desktop
  include desktop

  package { "docker":
    ensure => present,
  }

  package { ["kicad", "kicad-library", "kicad-library-3d"]:
    ensure => present,
  }
}
