#
# Cookbook Name:: ./
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

script "remi" do
  interpreter "bash"
  user "root"
  cwd "/tmp"
  code <<-EOH
    rpm -qa | grep epel-release 2>&1 > /dev/null
    if [ $? -eq 1 ];
    then
      rpm -Uvh http://download.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-5.noarch.rpm
    fi

    rpm -qa | grep remi-release 2>&1 > /dev/null
    if [ $? -eq 1 ];
    then
      rpm -Uvh http://rpms.famillecollet.com/enterprise/remi-release-6.rpm
    fi

    rpm -qa | grep rpmforge-release 2>&1 > /dev/null
    if [ $? -eq 1 ];
    then
      rpm -Uvh http://pkgs.repoforge.org/rpmforge-release/rpmforge-release-0.5.2-2.el6.rf.x86_64.rpm
    fi

  EOH
end

cookbook_file "/etc/yum.repos.d/remi.repo" do
  source "remi.repo"
  mode "0644"
end