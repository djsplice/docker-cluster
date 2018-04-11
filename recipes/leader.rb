#
# Cookbook:: docker-cluster
# Recipe:: leader
#
# Copyright:: 2018, The Authors, All Rights Reserved.

docker_service 'default' do
	action [:create]
end

leader_ip = search(:node, "run_list:docker-cluster??leader")[0]['ipaddress']
Chef::Log.info("Leader IP: [#{leader_ip}]")


#ip = node['ipaddress']
# docker swarm init --advertise-addr 192.168.12.12
# on other nodes join swarm
# docker node promote node-2-ubuntu-1404
# docker node promote node-3-ubuntu-1404
#
# create overlay network
# docker network create --attachable --driver overlay redis
