# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu/trusty64"
  #config.vm.network "public_network"
  config.vm.provider "virtualbox" do |v| 
     v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
  end
  config.vm.network "forwarded_port", guest: 8080, host: 8080
  config.vm.provision "shell" do |s|
     s.path = "deploy.sh"
   s.privileged = false
  end
end
