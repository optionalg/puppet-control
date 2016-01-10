class nodes::dust {
  include manjaro
  include desktop

  package { "docker":
    ensure => present,
  }
}
