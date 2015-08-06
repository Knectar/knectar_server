#
# Cookbook Name:: knectar_server
# Recipe:: default
#
# Copyright (C) 2015 Knectar
# 

include_recipe "users"

users_manage "knectar" do
  action :create
end



remote_directory '/etc/nginx/snippets' do
  owner 'root'
  group 'root'
  mode '0755'

  action :create
end


cookbook_file '/etc/nginx/snippets/passwd' do
  owner 'root'
  group 'root'
  mode '0644'
  action :create
end
