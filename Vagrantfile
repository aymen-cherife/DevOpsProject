Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"
  config.vm.network "private_network", type: "dhcp"
  config.vm.provider "virtualbox" do |vb|
    vb.memory = "2048" # Increase memory to 2GB
    vb.cpus = 2        # Allocate 2 CPUs for better performance
  end
end
