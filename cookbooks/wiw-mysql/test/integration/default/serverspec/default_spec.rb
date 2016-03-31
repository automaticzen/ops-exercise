require 'spec_helper'

describe 'wiw-os-ubuntu::default' do

  describe package('mysql-server') do
    it { should be_installed }
  end

end
