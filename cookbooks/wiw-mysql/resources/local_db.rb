actions :create

default_action(:create)

attribute :port, :kind_of => Fixnum, :default => 3600
attribute :version, :kind_of => String, :default => '5.5'
attribute :root_pass, :kind_of => String, :default => nil
