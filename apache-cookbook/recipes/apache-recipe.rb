#
# Cookbook:: apache-cookbook
# Recipe:: apache-recipe
#
# Copyright:: 2019, The Authors, All Rights Reserved.
package 'httpd' do
  action :install
end

file '/var/www/html/index.html' do
  content '<html><head><title> Devops Chef</title></head> <body bgcolor="blue"> Hello Dear Students!!Good Morning!!!</body></html>'
  action :create
end

service 'httpd' do
  action [ :enable, :start]
end 
