# Baseline module included to all nodes
class profile_base {

  require profile_base::repo
  require profile_base::packages

  file {'/etc/hosts':
    ensure  => file,
    content => "
      127.0.0.1 localhost
      ::1 localhost

      192.168.10.11 zoo01
      192.168.10.21 solr01
      192.168.10.22 solr02
    ",
  }

  Class['profile_base::repo']->Class['profile_base::packages']

}
