class nodes::yggdrasil {
  include services::bastion
  include services::sinistral_web

  include fail2ban

  class { "systemd::timedatectl":
    timezone => "America/Los_Angeles",
  }
}
