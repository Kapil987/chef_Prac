#
# Cookbook:: user_test
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
# varname = data_bag_item(databagname,key)
userdata = data_bag_item('ratan_secrets', 'ratan')
group 'steel' do
  action :create
end

user 'ratan' do
  password userdata['password']
  group 'steel'
  home '/home/ratan'
  shell '/bin/bash'
  manage_home true
  action :create
end
