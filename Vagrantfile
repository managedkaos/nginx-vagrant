Vagrant.configure("2") do |config|
  config.vm.box = "bento/ubuntu-18.04"
  config.vm.network :forwarded_port, guest: 80, host: 9090
  config.vm.provision "file", source: "default.conf", destination: "default.conf"
  config.vm.provision "file", source: "info.php", destination: "info.php"
  config.vm.provision "shell", path: "provision.sh" 
end

puts "-------------------------------------------------"
puts "Default Homepage : http://localhost:9090"
puts "PHP Info         : http://localhost:9090/info.php"
puts "-------------------------------------------------"
