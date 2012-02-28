Vagrant::Config.run do | config |
  config.vm.box = "centos-60-x86_64"
  config.vm.box_url = "http://dl.dropbox.com/u/1627760/centos-6.0-x86_64.box"
  config.vm.forward_port 80,8082

  config.vm.provision :chef_solo do | chef | 
    chef.cookbooks_path = "cookbooks"
    chef.add_recipe "iptables_flush"
    chef.add_recipe "remi"
    chef.add_recipe "rake"
    chef.add_recipe "build-essential"
    chef.add_recipe "git"
    chef.add_recipe "cmake"
    chef.add_recipe "mysql"
    chef.add_recipe "php5"
    chef.add_recipe "libgit2"
    chef.add_recipe "php-git"
    chef.add_recipe "php-sundown"
    chef.add_recipe "openssl"
    chef.add_recipe 'pygments'
    chef.add_recipe "node"
    chef.add_recipe "sandbox"
  end

  config.vm.customize [
    "modifyvm", :id,
    "--memory", "1024",
    "--name", "Git2RepositoryBundle"
  ]
end
