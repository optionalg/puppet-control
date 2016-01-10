class services::puppet {
  package { "r10k":
    ensure   => present,
    provider => "gem",
  }
}
