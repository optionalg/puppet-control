class nodes::yggdrasil {
  package { 'zsh':
    ensure => present,
  }

  include users


  include srv

  file { '/srv/www':
    ensure => directory,
    owner  => 'root',
    group  => 'root',
    mode   => '0755',
  }

  class { 'nginx': }

  file { '/srv/www/somethingsinistral.net':
    ensure => directory,
    owner  => 'root',
    group  => 'root',
    mode   => '0755',
  }

  nginx::resource::vhost { 'somethingsinistral.net':
    www_root => '/srv/www/somethingsinistral.net',
    require  => File['/srv/www/somethingsinistral.net'],
  }
}
