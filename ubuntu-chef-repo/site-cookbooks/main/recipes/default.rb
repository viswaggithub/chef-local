#
# Cookbook Name:: main
# Recipe:: default
#
# Copyright (C) 2016 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'apt::default'

directory "/vagrant/test/" do
  mode 0755
  owner 'root'
  group 'root'
  action :create
end


user 'mytestuser' do
  comment "Test User"
  home "/home/mytestuser"
  shell "/bin/bash"
  supports :manage_home => true

  password '$1$Password$mvIWIaOEsavRAzYRRXWYd1'

  action :create
end
