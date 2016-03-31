require 'spec_helper'

# nginx

describe port(80) do
  it { should be_listening.on('0.0.0.0').with('tcp') }
end

describe service('nginx') do
  it { should be_running }
end

describe service('hhvm') do
  it { should be_running }
end

# db

describe port(3306) do
  it { should be_listening.with('tcp') }
end

# os

describe package('curl') do
  it { should be_installed }
end

describe package('htop') do
  it { should be_installed }
end

describe package('vim') do
  it { should be_installed }
end
