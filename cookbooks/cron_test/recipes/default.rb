#
# Cookbook:: cron_test
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
package 'cronie'
service 'crond' do
  action [:enable, :start]
end
file '/var/spool/cron/root' do
  owner 'root'
  group 'root'
  content '*/1 * * * * /usr/bin/chef-client
' # without this cron thinks that the /usr line is not complete and it never executes
  action :create
end
