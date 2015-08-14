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

  # Add dead default vhost

  file { '/srv/www/default_vhost':
    ensure => directory,
    owner  => 'root',
    group  => 'root',
    mode   => '0755',
  }

  file { '/srv/www/default_vhost/index.html':
    ensure  => file,
    content => "Go away.\n",
    owner   => 'root',
    group   => 'root',
    mode    => '0755',
  }

  nginx::resource::vhost { 'default_vhost':
    listen_options => 'default_server',
    server_name    => ['_'],
    www_root       => '/srv/www/default_vhost',
    require        => File['/srv/www/default_vhost'],
  }
}
