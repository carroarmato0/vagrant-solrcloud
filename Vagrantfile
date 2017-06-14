# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

  #config.vm.box = "vStone/centos-7.x-puppet.3.x"
  #config.vm.box = "https://boxes.bbqnetwork.be/centos-7-3-amd64-virtualbox/boxes/centos-7-3-amd64-virtualbox-17-02-15.box"

  config.vm.box = "centos-7-3-amd64-virtualbox"
  config.vm.box_url = "https://boxes.bbqnetwork.be/centos-7-3-amd64-virtualbox"

  config.vm.define "zoo01" do |zoo|
    zoo.vm.hostname = "zoo01"
    #zoo.vm.network "public_network", auto_config: false
    zoo.vm.network "private_network", ip: "192.168.10.11"
  end

  config.vm.define "solr01" do |solr|
    solr.vm.hostname = "solr01"
    #solr.vm.network "public_network", auto_config: false
    solr.vm.network "private_network", ip: "192.168.10.21"
  end

  config.vm.define "solr02" do |solr|
    solr.vm.hostname = "solr02"
    #solr.vm.network "public_network", auto_config: false
    solr.vm.network "private_network", ip: "192.168.10.22"
  end

  config.vm.provider "virtualbox" do |vb|
    vb.memory = "2048"
    vb.cpus = "2"
  end

  # Clear firewall rules to allow intermachine communication
  config.vm.provision "shell", inline: "iptables -F", run: "once"

  config.vm.provision "puppet" do |puppet|
   puppet.manifests_path     = "puppet/manifests"
   puppet.manifest_file      = "site.pp"
   puppet.module_path        = "puppet/modules"
   puppet.hiera_config_path  = "hiera.yaml"
   puppet.options            = "--pluginsync"
   puppet.facter             = { }
  end

end
