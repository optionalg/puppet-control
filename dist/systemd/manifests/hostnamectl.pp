class systemd::hostnamectl(
  $static = undef,
) {

  $hostnamectl_cmd = "/usr/bin/hostnamectl"

  if $static {

    $parse_cmd = 'sed -ne "s/[[:space:]]\+Static hostname:[[:space:]]\+\([^ ]\+\).*/\1/p"'

    $static_hostname_cmd = sprintf("%s | %s", $hostnamectl_cmd, $parse_cmd)

    $static_set_cmd  = "${hostnamectl_cmd} set-hostname ${static} --static"
    $static_test_cmd = "/usr/bin/test $(${static_hostname_cmd}) = ${static}"


    exec { "set static hostname":
      command => $static_set_cmd,
      unless  => $static_test_cmd,
    }
  }
}
