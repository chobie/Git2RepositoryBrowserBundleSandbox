#
# Cookbook Name:: ./
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

script "install_nvm" do
  interpreter "bash"
  user "vagrant"
  cwd "/home/vagrant"
  code <<-EOH
    if [ ! -x "/usr/local/bin/node" ]; then
      wget http://nodejs.org/dist/v0.6.11/node-v0.6.11.tar.gz
      tar zxf node-v0.6.11.tar.gz
      cd node-v0.6.11
      ./configure
      make
      sudo make install
      curl http://npmjs.org/install.sh | sudo env PATH=$PATH sh
      sudo env PATH=$PATH npm install less --global
    fi
  EOH
end