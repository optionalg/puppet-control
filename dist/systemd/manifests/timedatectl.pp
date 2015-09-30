class systemd::timedatectl(
  $timezone = undef,
) {

  $timedatectl_cmd = "/usr/bin/timedatectl"

  if $timezone {

    $timedatectl_status = "${timedatectl_cmd} status"
    $timezone_parse     = 'sed -ne "s/[[:space:]]\+Time zone:[[:space:]]\+\([^ ]\+\).*/\1/p"'

    $current_timezone_cmd = sprintf("%s | %s", $timedatectl_status, $timezone_parse)

    exec { "set timezone":
      command => "${timedatectl_cmd} set-timezone ${timezone}",
      unless  => "/usr/bin/test $(${current_timezone_cmd}) = ${timezone}",
    }
  }
}
