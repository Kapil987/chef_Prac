#
# Cookbook:: web-test
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

#setting up local attributes
package_name = 'httpd'
service_name = 'httpd'
document_root = '/var/www/html'

package package_name 
service service_name do 
action [:enable, :start]
end
service 'firewalld' do
  action [ :stop, :disable ]
end

file "#{document_root}/index.html" do #concatination used
  owner 'apache'
  group 'apache'
  mode '0644'
  content 'Welcome to Apache with attributes'
  action :create
end
