class nodes::yggdrasil {
  package { 'zsh':
    ensure => present,
  }

  include users
}
