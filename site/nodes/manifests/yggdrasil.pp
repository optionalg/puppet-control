class nodes::yggdrasil {
  include roles::production
  include services::bastion
  include services::sinistral_web

  class { "systemd::timedatectl":
    timezone => "America/Los_Angeles",
  }

  class { "systemd::hostnamectl":
    static => "yggdrasil",
  }
}
