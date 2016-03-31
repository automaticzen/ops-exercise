require 'spec_helper'

describe 'wiw-os-ubuntu::default' do

  describe package('curl') do
    it { should be_installed }
  end

  describe package('htop') do
    it { should be_installed }
  end

  describe package('vim') do
    it { should be_installed }
  end

end
