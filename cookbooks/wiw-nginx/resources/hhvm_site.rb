actions :create
default_action(:create)
attribute :port, :kind_of => Fixnum, :default => 80
attribute :root, :kind_of => String, :default => '/var/www'
