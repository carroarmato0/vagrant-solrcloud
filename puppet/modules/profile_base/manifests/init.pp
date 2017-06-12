# Baseline module included to all nodes
class profile_base {

  require profile_base::repo
  require profile_base::packages

  Class['profile_base::repo']->Class['profile_base::packages']

}
