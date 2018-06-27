#
# Cookbook:: web-httpd_conf
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
package node['package_name']
service node['service_name'] do
  supports :status => true, :restart => true, :reload => true
  action [:enable, :start]
end

template "#{node['document_root']}/index.html" do # file changed to template
  owner 'apache'
  group 'apache'
  source 'index.html.erb' # content changed to source
end

template '/etc/httpd/conf/httpd.conf' do
  owner 'apache'
  group 'apache'
  source 'httpd.conf.erb' # content changed to source
  notifies :restart, 'resource[httpd]', :delayed
end
