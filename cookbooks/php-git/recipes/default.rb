#
# Cookbook Name:: ./
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

script "install_phpgit" do
  interpreter "bash"
  user "root"
  cwd "/tmp"
  code <<-EOH
    git clone https://github.com/libgit2/php-git.git
    cd php-git
    phpize
    ./configure
    make
    make install
  EOH
end

cookbook_file "/etc/php.d/git2.ini" do
  source "git2.ini"
  mode "0644"
end