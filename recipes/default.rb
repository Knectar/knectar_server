#
# Cookbook Name:: knectar_server
# Recipe:: default
#
# Copyright (C) 2015 Knectar
# 


user "site" do
  supports :manage_home => true
  username "site"
  shell "/usr/bin/zsh"
  home "/home/site"
  action :create
end

user "admin" do
  supports :manage_home => true
  username "admin"
  shell "/usr/bin/zsh"
  home "/home/admin"
  action :create
end

directory '/etc/nginx/snippets' do
  owner 'root'
  group 'root'
  mode '0755'

  action :create
end

file 'passwd' do
  path '/etc/nginx/snippets/passwd'
  backup 5
  owner 'root'
  group 'root'
  mode '0644'
  content 'content here'

  action :create
end
