class users::adrien {
  user { 'adrien':
    ensure     => present,
    home       => "/home/adrien",
    managehome => "true",
    shell      => "/bin/zsh",
    groups     => ["sudo", "www-data"],
    require    => Package["zsh"],
  }

  file { "/home/adrien/.ssh":
    ensure => directory,
    owner  => 'adrien',
    group  => 'adrien',
    mode   => '0700',
  }

  ssh_authorized_key { 'adrien:adrien@grey':
    user    => 'adrien',
    type    => 'ssh-rsa',
    key     => 'AAAAB3NzaC1yc2EAAAADAQABAAACAQC7vGtoefQqD5dWkKW+cTyW0nr/TXC/7JDgpHoLFnPnSikzOxk21kMeKQ5xU7NESy92GU40K9ppAw4hd7vLwIPbgJuqQa2ZYr1wUBZdihLztbFzDoepXrfBLL8lfjhRG3LNiBJpbnuSaNzhTQG10y3LMUGvciRuVT3FCqbSd1YflNEGnALuTtC7Hbbhnxt94Kk1M3g38kHr3UH0AewVEs2qfHjxiYVIrXFUGCIRZ2UmpQCKRMA3eY98awfKc74q54AQC9UkxqCGj6oWvKRROfu/iAoxjWwJzVdfiZ8YHZ3oBk+GZijIiuIYf6SdqbME3UPK5YLjlnz4NrEA+beOBNTFirhsKsEmJwmW36lUrEldA/AfF4jePA60MYm9nMELQnTNkeEeMLf9HVJpQTt3T6CBT/P+xtkrxCgP1wBx9IU6iYrvSv5+6UUZ0zAve8ONwu6x5RFG72NhyykXHWqPMnZNAXKE8gl4rIstoP/P9DD20I4SpJqGZGTxVsSK94HlXRfRX6yFSpKjWMom7QUQ2+IcmuTL14FjSY41U2MvApUBoXI7xTK9ZhJuIjwxjINNe6JP25XsE4ar7zVw/bd92T9CtR/UbJnqaj4zbGmvhY/ryJ22jMrKNXBsPwRK16lu4Gu4UkGbJ6usZVZ3c+ygSqH6xTADwkEM/j1Hc59MtNRiYQ==',
    require => File["/home/adrien/.ssh"],
  }

  ssh_authorized_key { 'adrien:adrien+sinistral@sky':
    user    => 'adrien',
    type    => 'ssh-rsa',
    key     => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDjoQC/+AU2ai9H8gGESDwH9kgJAcqfQFkzlvYmaG03jZ6sjfVsobv7H2VyJZJ1B8FyUuSoUyMRQe/Hz3lZie50buX8JtHKczrwA1lM1k3WOMe/hCLBWiIKF4d/X8Uc2EjKo0FBOCMk06Ua09oOlc5066KuxVyrAvL2FMq6oUs2/FPNrkcsWps+kVBAGEJoarSXHXhsqAmpoVyK5WTcGsL4UmA74MDyKvuZL1yD0hNzU7gQSNTYnnGUNHthK7CYg1J7MjlOXXgaU+q1Acc5vRiUX7Ip3lYYSxQILINsq0wYpNZn6sssjaO/qyDqQfH5AdcHhKrZ5JDalEIUCf86chAL',
    require => File["/home/adrien/.ssh"],
  }

  ssh_authorized_key { 'adrien:adrien+sinistral@dust':
    user => 'adrien',
    type => 'ssh-rsa',
    key  => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDJRsbGu0vjONt7w4suWXl+ReQgyG14hE0bNfPMEMW0R10CWqpgmeixxekMTdJrypqAr6ubnQBO+nh5effK7U7iqkl8x9qup/vsyaYS9S2NrVD4EWZqQ97/6ncxkYJZyeOEHI392qYAU+JemQuaUgMz6mb7/kK80dls/gIRzrO/tF9iiYjYJsZ0JjblXYcrtkMILA7nhw63s3bPhb2z9Q2eCr9PLDHuva3QSkuOQg4Yi+3KIhJZBzE9HVQ+40IKX0luQrIFbHl6IJMlpqJMI0fgStvDHLT5FcTOEvGB7yGigRS0qYlryKxJ9vvqpFC0PgwhGWRxA07yHLCCwUWEoz4J',
    require => File["/home/adrien/.ssh"],
  }
}
