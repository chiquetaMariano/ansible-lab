# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "generic/debian9"

  config.vm.define "ansible" do |ans|
    ans.vm.network :private_network, ip: "192.168.33.10"
    # ans.vm.provision :shell, path: "provision.sh"
    # ans.vm.provision :shell, inline: "apt-get install mysql-client -y"
  end

  config.vm.define "testserver" do |svr1|
    svr1.vm.network :private_network, ip: "192.168.33.11"
    # svr1.vm.provision :shell, path: "svr_provision.sh"
  end

  config.vm.synced_folder ".", "/vagrant",
    owner: "vagrant", group: "vagrant",
    mount_options: ["dmode=775,fmode=775"] # directory and files modes
end
