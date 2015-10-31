class nodes::yggdrasil {
  include roles::production

  package { 'zsh':
    ensure => present,
  }

  include users
  include services::sinistral_web

  class { "systemd::timedatectl":
    timezone => "America/Los_Angeles",
  }

  class { "systemd::hostnamectl":
    static => "yggdrasil",
  }
}
