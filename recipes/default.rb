#
# Cookbook Name:: knectar_server
# Recipe:: default
#
# Copyright (C) 2013 Knectar
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
