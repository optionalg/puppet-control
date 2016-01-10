class manjaro {
  package { "yaourt":
    ensure => present,
  }

  # Remove default global gemrc as it adds the --user-install flag, which is
  # undesirable for globally installed gems. We expect user installed gems
  # to be installed via rbenv, so --user-install is never useful.
  file { "/etc/gemrc":
    ensure => absent,
  }
}
