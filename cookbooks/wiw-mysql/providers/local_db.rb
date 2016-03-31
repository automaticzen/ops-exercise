action :create do

  mysql_service new_resource.name do
    bind_address '127.0.0.1'
    initial_root_password new_resource.root_pass
    port    new_resource.port
    version new_resource.version
    action [:create, :start]
  end

end
