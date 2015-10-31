class users::ken {
  user { 'ken':
    ensure     => present,
    uid        => 1001,
    home       => "/home/ken",
    managehome => "true",
  }

  file { "/home/ken/.ssh":
    ensure => directory,
    owner  => 'ken',
    group  => 'ken',
    mode   => '0700',
  }
}
