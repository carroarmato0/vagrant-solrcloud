class roles::solr {

  include ::profile_base
  include ::solr6
  include ::profile_zookeeper

}
