#
# Cookbook Name:: docker-vivo
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "docker"

docker_service 'default' do
  action [:create, :start]
end

docker_image 'busybox' do
  action :pull
end

#docker_container 'an echo server' do
#  repo 'busybox'
#  port '1234:1234'
#  command "nc -ll -p 1234 -e /bin/cat"
#end

docker_container 'busybox_ls' do
  repo 'busybox'
  command 'ls -la /'
  action :run
end
