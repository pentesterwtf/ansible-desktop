# -*- mode: ruby -*-
# vi: set ft=ruby :
#
# This file gets used for testing the deployment with internal CI

Vagrant.configure("2") do |config|
  config.vm.provider :libvirt do |libvirt, override|
    libvirt.memory = 2048
  end
  config.vm.box = "fedora-30"
  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "site.yml"
  end
end
