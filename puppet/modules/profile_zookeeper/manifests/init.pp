# Profile for managing zookeeper
class profile_zookeeper (
  $id,
  $servers,
  $tick_time      = 2000,
  $init_limit     = 10,
  $sync_limit     = 5,
  $install_method = 'archive',
  $manage_java    = true,
) {

  if $manage_java {
    include ::java
  }

  class {'zookeeper':
    id                  => $id,
    servers             => $servers,
    tick_time           => $tick_time,
    init_limit          => $init_limit,
    sync_limit          => $sync_limit,
    install_method      => $install_method,
    install_java        => false,
    service_provider    => 'systemd',
    manage_service_file => true,
  }

}
