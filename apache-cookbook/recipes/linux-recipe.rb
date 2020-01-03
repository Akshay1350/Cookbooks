#
# Cookbook:: apache-cookbook
# Recipe:: linux-recipe
#
# Copyright:: 2019, The Authors, All Rights Reserved.
execute "run a script" do
  command <<-EOH
  mkdir /saidir
  touch /saifile
  EOH
end





user "raj" do
  action :create
end

group "devops" do
  action :create
  members 'raj'
end
