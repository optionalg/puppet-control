class services::sudo {
  class { "::sudo": }

  sudo::conf { 'sudo-group':
    content => '%sudo ALL=(ALL) NOPASSWD: ALL',
  }
}

