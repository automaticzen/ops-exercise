#
# Cookbook Name:: wiw-os-ubuntu
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "os-hardening"

%w{
    curl
    htop
    vim
  }.each do |p|
  package p
end