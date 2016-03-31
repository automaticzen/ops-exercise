action :create do

  template "#{node.nginx.dir}/conf.d/#{new_resource.name}.conf" do
    cookbook "wiw-nginx"
    source "hhvm_site.conf.erb"
    owner  "root"
    group  "root"
    mode   "0644"
    backup false
    variables ({
      :name => new_resource.name,
      :port => new_resource.port,
      :root => new_resource.root
    })
    notifies :reload, 'service[nginx]'
  end

end
