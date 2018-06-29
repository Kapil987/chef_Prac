#
# Cookbook:: user_test
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

group 'steel' do
  action :create
end

user 'ratan' do
  password '$1$tata$3qsaTRC.H2dIu7JpS3gTM0'
  group 'steel'
  home '/home/ratan'
  shell '/bin/bash'
  manage_home true
  action :create
end
