require 'spec_helper'

describe 'wiw-os-ubuntu::default' do

  describe package('nginx') do
    it { should be_installed }
  end

  describe package('hhvm') do
    it { should be_installed }
  end

end
