#
# Cookbook:: docker-swarm
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

docker_service 'default' do
	action [:create]
end

