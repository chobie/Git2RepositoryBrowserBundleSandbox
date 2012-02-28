#
# Cookbook Name:: ./
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

script "install_libgit2" do
  interpreter "bash"
  user "root"
  cwd "/tmp"
  code <<-EOH
    git clone https://github.com/libgit2/libgit2.git
    cd libgit2
    mkdir build
    cd build
    cmake -DCMAKE_BUILD_TYPE=Debug ..
    cmake --build .
    make
    make install
  EOH
end