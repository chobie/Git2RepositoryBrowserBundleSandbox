#
# Cookbook Name:: ./
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
script "install_phpsundown" do
  interpreter "bash"
  user "root"
  cwd "/tmp"
  code <<-EOH
    git clone https://github.com/chobie/php-sundown.git
    cd php-sundown
    rake submodule compile
    rake install
  EOH
end

cookbook_file "/etc/php.d/sundown.ini" do
  source "sundown.ini"
  mode "0644"
end