class teensy {
  package { 'arm-none-eabi-gcc':
    ensure => present,
  }
  package { 'ty':
    ensure   => present,
  }
}
