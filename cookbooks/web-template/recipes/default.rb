#
# Cookbook:: web-attribute
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

package node['package_name']
service node['service_name'] do
  action [:enable, :start]
end

template "#{node['document_root']}/index.html" do # file changed to template
  owner 'apache'
  group 'apache'
  source 'index.html.erb' # content changed to source
end
