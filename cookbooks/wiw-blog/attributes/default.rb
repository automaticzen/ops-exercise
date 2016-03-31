# nginx attributes
default['http_root'] = '/var/www'
default['port'] = 80

# mysql attributes
default['mysql_host'] = 'localhost'
default['mysql_instance'] = 'wordpress'
default['mysql_port'] = 3306
default['mysql_version'] = '5.5'

# wordpress attributes
default['wordpress']['version'] = '4.3.1'
set['wordpress']['db']['host'] = node['mysql_host']
set['wordpress']['db']['instance_name'] = node['mysql_instance']
set['wordpress']['db']['mysql_version'] = node['mysql_version']
set['wordpress']['db']['port'] = node['mysql_port']
set['wordpress']['dir'] = node['http_root']
