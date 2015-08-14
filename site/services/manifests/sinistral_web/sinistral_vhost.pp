class services::sinistral_web::sinistral_vhost {
  include srv

  file { '/srv/www/somethingsinistral.net':
    ensure => directory,
    owner  => 'www-data',
    group  => 'www-data',
    mode   => '6775',
  }

  nginx::resource::vhost { 'somethingsinistral.net':
    www_root => '/srv/www/somethingsinistral.net',
    require  => File['/srv/www/somethingsinistral.net'],
  }
}
