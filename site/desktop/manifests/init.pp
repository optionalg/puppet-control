class desktop {
  include userland

  #####
  # Systems administration

  package { "htop":
    ensure => present,
  }

  #####
  # Editing and development

  package { "gvim":
    ensure => present,
  }

  package { "ctags":
    ensure => present,
  }
}
