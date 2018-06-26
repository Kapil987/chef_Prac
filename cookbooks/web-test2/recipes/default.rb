#
# Cookbook:: web-test2
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

package 'httpd' #by default action is to install
  service 'httpd' do
  action [:enable,:start] 
end
file '/var/www/html/index.html' do
owner 'apache'
group 'apache'
content 'Welcome to Apache by web-test v2'
end
