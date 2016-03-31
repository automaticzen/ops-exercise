include_recipe 'wiw-nginx'

wiw_nginx_hhvm_site 'blog' do
  port node.port
  root node.http_root
end

creds = data_bag_item('creds', 'mysql')

node.override['wordpress']['db']['root_password'] = creds['root']
node.override['wordpress']['db']['pass'] = creds['wordpress']

include_recipe 'wordpress::app'

include_recipe 'wiw-os-ubuntu::default'
