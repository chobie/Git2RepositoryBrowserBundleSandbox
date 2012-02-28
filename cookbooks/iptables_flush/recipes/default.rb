#
# Cookbook Name:: ./
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
script "iptables_flush" do
  interpreter "bash"
  user "root"
  cwd "/tmp"
  code <<-EOH
    iptables -F
  EOH
end

