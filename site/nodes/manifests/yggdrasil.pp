class nodes::yggdrasil {
  package { 'zsh':
    ensure => present,
  }

  include users
  include services::sinistral_web

  include fail2ban

  class { "systemd::timedatectl":
    timezone => "America/Los_Angeles",
  }
}
