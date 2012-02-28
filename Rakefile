require 'rubygems'
require 'vagrant'

task :sync do
  env = Vagrant::Environment.new
  raise "Must run `vagrant up`" if !env.primary_vm.created?
  raise "Must be running!" if env.primary_vm.state != :running
  
  env.primary_vm.channel.sudo("rsync -avz --delete /vagrant/sandbox/ /var/www/html/sandbox")
  env.primary_vm.channel.sudo("chmod 777 -R /var/www/html/sandbox")
  env.primary_vm.channel.sudo("chown apache.apache -R /var/www/html/sandbox")
  env.primary_vm.channel.sudo("/etc/init.d/httpd restart")
end
  
