#
# Cookbook Name:: postgresgl
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

package 'postgresql-server' do
	notifies :run, 'execute[postgresql-init]'
end

execute 'postgresql-init' do
	command 'postregsql-setup initdb'
	action :nothing
end

service 'postregsql' do
	action [:enable, :start]
end
