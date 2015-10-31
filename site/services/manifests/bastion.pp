class services::bastion {
  package { 'zsh':
    ensure => present,
  }

  include users::root
  include users::adrien
  include users::ken
}
