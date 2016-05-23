class nodes::sky {
  file { "/usr/share/X11/xorg.conf.d/20-intel.conf":
    ensure => present,
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
    source => 'puppet:///modules/nodes/dust/20-intel.conf',
  }
}
