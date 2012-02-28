#
# Cookbook Name:: ./
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

cookbook_file "/etc/httpd/conf.d/sandbox.conf" do
  source "sandbox.conf"
  mode "0644"
end

script "install_sandbox" do
  interpreter "bash"
  user "root"
  cwd "/tmp"
  code <<-EOH
    rsync -avz --delete /vagrant/www/ /var/www/html/sandbox/
    chown apache.apache -R /var/www/html/sandbox
    chmod 777 -R /var/www/html/sandbox
    /etc/init.d/httpd restart
  EOH
end
