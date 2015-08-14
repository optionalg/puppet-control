class services::sinistral_web {
  include srv

  file { '/srv/www':
    ensure => directory,
    owner  => 'root',
    group  => 'root',
    mode   => '0755',
  }

  class { 'nginx': }

  group { 'www-data':
    ensure  => present,
  }

  include services::sinistral_web::default_vhost
  include services::sinistral_web::sinistral_vhost
}
