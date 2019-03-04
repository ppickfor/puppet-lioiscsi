class lioiscsi::save
{

include lioiscsi

  exec { "save":
    command     => "targetctl save",
    path        => $path,
    refreshonly => true,
    require     => Package['targetcli'],
  }

}
