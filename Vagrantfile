# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don"t touch unless you know what you"re doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "opscode_debian-7.4_chef-provisionerless"
  config.vm.box_url = "http://opscode-vm-bento.s3.amazonaws.com/vagrant/virtualbox/opscode_debian-7.4_chef-provisionerless.box"

  config.vm.provider "virtualbox" do |vb|
    # Don"t boot with headless mode
    vb.gui = true if ENV["VM_GUI"]

    # Use VBoxManage to customize the VM. For example to change memory:
    vb.customize ["modifyvm", :id, "--memory", ENV["VM_MEMORY"] || "1024"]
  end

  config.vm.provision :shell do |shell|
    shell.path = "provision.sh"
  end
end
