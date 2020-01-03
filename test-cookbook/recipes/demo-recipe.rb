#
# Cookbook:: test-cookbook
# Recipe:: demo-recipe
#
# Copyright:: 2019, The Authors, All Rights Reserved.
package 'tree' do
  action :install
end


file '/myfile2' do
  content 'No AWS no future. No DevOps no IT job'
  action :create
  owner'root'
  group'root'
end


%w(httpd mariadb-server unzip git vim).each do |p|
  package p do
    action:install
  end
end
