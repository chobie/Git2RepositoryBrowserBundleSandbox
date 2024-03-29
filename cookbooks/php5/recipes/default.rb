#
# Cookbook Name:: ./
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package "php"
package "php-devel"
package "php-intl"
package "php-mbstring"
package "php-mysql"
package "php-pdo"
package "php-pear"
package "php-process"
package "php-xml"
package "pcre-devel"
package "php-pecl-apc"
package "php-pecl-xdebug"

cookbook_file "/etc/php.d/php.ini" do
  source "php.ini"
  mode "0644"
end

cookbook_file "/etc/php.d/xdebug.ini" do
  source "xdebug.ini"
  mode "0644"
end