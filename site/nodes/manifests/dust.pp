class nodes::dust {
  include roles::base

  include manjaro
  include desktop

  package { "docker":
    ensure => present,
  }
}
