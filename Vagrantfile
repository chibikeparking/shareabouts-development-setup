VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "ubuntu/trusty64"

  config.vm.provider "virtualbox" do |v|
    v.memory = 1024
  end

  # Setup the shareabouts-api server
  config.vm.define "shareabouts_api" do |shareabouts_api|

    shareabouts_api.vm.provision "ansible" do |ansible|
      ansible.playbook = "provisioning/shareabouts_api.yml"
    end

    shareabouts_api.vm.synced_folder "./src-shareabouts-api", "/iscape/sites/shareabouts/proj/shareabouts", owner: 1010, group: 1020

    shareabouts_api.vm.network "forwarded_port", guest: 8000, host: 8000

  end

  
  # Setup the chicago-bike-parking client server
  config.vm.define "shareabouts_client_bike_parking" do |shareabouts_client_bike_parking|

    shareabouts_client_bike_parking.vm.provision "ansible" do |ansible|
      ansible.playbook = "provisioning/shareabouts_client.yml"
    end

    shareabouts_client_bike_parking.vm.synced_folder "./src-shareabouts-client-bike-parking", "/iscape/sites/shareabouts/proj/shareabouts", owner: 1010, group: 1020

    shareabouts_client_bike_parking.vm.network "forwarded_port", guest: 8010, host: 8010

  end


  # Setup the chicago-abandoned-bikes client server 
  config.vm.define "shareabouts_client_abandoned_bikes" do |shareabouts_client_abandoned_bikes|

    shareabouts_client_abandoned_bikes.vm.provision "ansible" do |ansible|
      ansible.playbook = "provisioning/shareabouts_client.yml"
    end

    shareabouts_client_abandoned_bikes.vm.synced_folder "./src-shareabouts-client-abandoned-bikes", "/iscape/sites/shareabouts/proj/shareabouts", owner: 1010, group: 1020

    shareabouts_client_abandoned_bikes.vm.network "forwarded_port", guest: 8020, host: 8020

  end


  # Setup the region-service server 
  config.vm.define "shareabouts_region_service" do |shareabouts_region_service|

    shareabouts_region_service.vm.provision "ansible" do |ansible|
      ansible.playbook = "provisioning/shareabouts_region_service.yml"
    end

    shareabouts_region_service.vm.synced_folder "./src-shareabouts-client-abandoned-bikes", "/iscape/sites/shareabouts/proj/shareabouts", owner: 1010, group: 1020

    shareabouts_region_service.vm.network "forwarded_port", guest: 8030, host: 8030

  end

end
