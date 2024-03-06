Vagrant.configure("2") do |config|  
  config.vm.box = "hashicorp/bionic64"
  config.vm.box_url = "https://vagrantcloud.com/hashicorp/bionic64"    
  # kafka-ui | thymeleaf
  config.vm.network "forwarded_port", guest: 8080,  host: 8080
  # rabbit-mq-ui
  config.vm.network "forwarded_port", guest: 15672, host: 15672  
  # rabbit-mq-producer | kafka-producer
  config.vm.network "forwarded_port", guest: 8081,  host: 8081
  # micro-servico-api-auth
  config.vm.network "forwarded_port", guest: 9090,  host: 9090
  # micro-servico-api-usuario
  config.vm.network "forwarded_port", guest: 9091,  host: 9091
  # micro-servico-mysql 
  config.vm.network "forwarded_port", guest: 3306,  host: 3306
  config.vm.synced_folder ".", "/vagrant", type: "rsync", rsync__auto: true  
  config.vm.network "private_network", ip: "192.168.100.100"
  config.vm.provision 'shell', path: 'provision.sh'  
  config.vm.provider 'virtualbox' do |v|     
    v.memory=2048
    v.cpus=2
  end  
end
