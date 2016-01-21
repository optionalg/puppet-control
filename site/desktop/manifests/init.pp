class desktop {
  include userland

  package { "gvim":
    ensure => present,
  }
}
