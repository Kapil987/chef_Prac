#
# Cookbook:: web-attribute
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

package node['package_name']
service node['service_name'] do
  action [:enable, :start]
end

file "#{node['document_root']}/index.html" do
  owner 'apache'
  group 'apache'
  content 'welcome to apache with global attributes'
end
