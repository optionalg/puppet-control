class users::ken {
  user { 'ken':
    ensure     => present,
    uid        => 1001,
    home       => "/home/ken",
    managehome => "true",
  }

  file {
    default:
      owner  => 'ken',
      group  => 'ken';
    "/home/ken/.ssh":
      ensure => directory,
      mode   => '0700';
    "/home/ken/.ssh/authorized_keys":
      ensure => file,
      mode   => '0400',
      source => 'puppet:///modules/users/home/ken/.ssh/authorized_keys';
  }
}
