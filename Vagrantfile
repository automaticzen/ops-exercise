# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|

  config.vm.box = "ubuntu/trusty64"

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8081" will access port 80 on the guest machine.
  config.vm.network "forwarded_port", guest: 80, host: 8082

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  # config.vm.network "private_network", ip: "192.168.33.10"

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  # config.vm.network "public_network"

  # Share an additional folder(s) to the guest VM.
  # config.vm.synced_folder "../data", "/vagrant_data"

  # Provider-specific configuration for virtualbox
  config.vm.provider "virtualbox" do |vb|
    # Display the VirtualBox GUI when booting the machine
    vb.gui = false

    # Customize the amount of memory on the VM:
    vb.memory = "1536"

    vb.name = "ops-exercise"

    vb.cpus = 2

  end

  # vagrant-berkshelf plugin required:
  # vagrant plugin install vagrant-berkshelf
  config.berkshelf.enabled = true

  config.vm.provision "chef_client" do |chef|

    chef.chef_server_url = 'https://api.opscode.com/organizations/hackenfoo'
    chef.validation_key_path = '~/.chef/hackenfoo-validator.pem'
    chef.validation_client_name = "hackenfoo-validator"
    chef.node_name = 'ops-exercise'
    chef.delete_node = true
    chef.delete_client = true
    chef.encrypted_data_bag_secret_key_path = './cookbooks/wiw-blog/test/integration/default/encrypted_data_bag_secret'
    chef.add_recipe 'wiw-blog::default'

  end

end
