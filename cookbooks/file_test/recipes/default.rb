#
# Cookbook:: file_test # 1 space is required here
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
# SYNTAX:
# resource_type 'resource_name' do
#   attribute1 value1
#   attribute2 value2
#   action :action_name
# end
file '/tmp/dummy.txt' do
  owner 'root'
  group 'root'
  mode '0644'
  content 'This file was created by chef'
  action :create
end
