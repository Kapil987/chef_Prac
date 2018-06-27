
# node is the keyword and platform is the pre-defined attribute
# ohai platform we use this in command line
# attributes once defined here no need to define in web-attributes file
default['web-port'] = 8080 # only this line is changed in this file compared to previous web-template/attribute
case node['platform']
when 'centos', 'rhel'
  default['package_name'] = 'httpd'
  default['service_name'] = 'httpd'
  default['document_root'] = '/var/www/html'
when 'ubuntu', 'debian'
  default['package_name'] = 'apache2'
  default['service_name'] = 'apache2'
  default['document_root'] = '/var/www/'
end
