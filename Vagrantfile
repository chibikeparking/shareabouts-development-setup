VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu/trusty64"

  config.vm.provider "virtualbox" do |v|
    v.memory = 2048
  end

  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "provisioning/playbook.yml"
  end

  config.vm.synced_folder "./src-shareabouts-api-server", "/iscape/sites/shareabouts-api-server/proj/shareabouts-api-server", owner: 1010, group: 1020
  config.vm.synced_folder "./src-src-shareabouts-client-abandoned-bikes", "/iscape/sites/src-shareabouts-client-abandoned-bikes/proj/src-shareabouts-client-abandoned-bikes", owner: 1010, group: 1020
  config.vm.synced_folder "./src-shareabouts-client-bike-parking", "/iscape/sites/src-shareabouts-client-bike-parking/proj/src-shareabouts-client-bike-parking", owner: 1010, group: 1020

  config.vm.network "forwarded_port", guest: 8000, host: 8000
  config.vm.network "forwarded_port", guest: 8010, host: 8010
  config.vm.network "forwarded_port", guest: 8020, host: 8020
end
