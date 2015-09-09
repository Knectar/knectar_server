#
# Cookbook Name:: knectar_server
# Recipe:: default
#
# Copyright (C) 2015 Knectar
# 


include_recipe "users"

chef_gem 'ruby-shadow' do
  provider Chef::Provider::Package::Rubygems
  action :install
end

require 'shadow'

users_manage "knectar" do
  action :create
end



remote_directory '/etc/nginx/snippets' do
  owner 'root'
  group 'root'
  mode '0755'

  action :create
end
