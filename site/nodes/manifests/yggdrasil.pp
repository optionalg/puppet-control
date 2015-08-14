class nodes::yggdrasil {
  package { 'zsh':
    ensure => present,
  }

  include users
  include services::sinistral_web
}
