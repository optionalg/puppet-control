class services::sshd {

  class { "::ssh::server":
    storeconfigs_enabled => false,
    options              => {
      "PermitRootLogin"  => "without-password",
    }
  }
}
