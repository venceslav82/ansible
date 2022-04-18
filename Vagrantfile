# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
    
  config.ssh.insert_key = false

  config.vm.define "ansible" do |ansible|
    ansible.vm.box = "venceslav_dimitrov/centos-stream-8"
    ansible.vm.hostname = "ans.do2.lab"
    ansible.vm.network "private_network", ip: "192.168.99.100"
    ansible.vm.synced_folder "vagrant/", "/home/vagrant"
    ansible.vm.provision "shell", path: "install_ansible.sh"
    ansible.vm.provision "shell", path: "add_hosts.sh"
  end

  config.vm.define "web" do |web|
    web.vm.box = "venceslav_dimitrov/debian-11"
    web.vm.hostname = "web.do2.lab"
    web.vm.network "private_network", ip: "192.168.99.101"
    web.vm.network "forwarded_port", guest: 80, host: 8080
    web.vm.provision "shell", path: "add_hosts.sh"
  end

  config.vm.define "db" do |db|
    db.vm.box = "venceslav_dimitrov/centos-stream-8"
    db.vm.hostname = "db.do2.lab"
    db.vm.network "private_network", ip: "192.168.99.102"
    db.vm.provision "shell", path: "add_hosts.sh"

  end
 
end
