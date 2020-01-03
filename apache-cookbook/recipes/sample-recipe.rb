#
# Cookbook:: apache-cookbook
# Recipe:: sample-recipe
#
# Copyright:: 2019, The Authors, All Rights Reserved.
file 'roboFile' do
  content "This is to get attributes
  HOSTNAME: #{node['hostname']}
  IPADDRESS: #{node['ipaddress']}
  CPU: #{node['cpu']['0']['mhz']}
  MEMORY: #{node['memory']['total']}"
  owner 'root'
  group 'root'
  action :create
end
