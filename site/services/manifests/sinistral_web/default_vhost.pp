class services::sinistral_web::default_vhost {

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
