#
# Cookbook:: docker-swarm
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

docker_service 'default' do
	action [:create]
end

# docker swarm init --advertise-addr 192.168.12.12
# on other nodes join swarm
# docker node promote node-2-ubuntu-1404
# docker node promote node-3-ubuntu-1404
#
# create overlay network
# docker network create --attachable --driver overlay redis
