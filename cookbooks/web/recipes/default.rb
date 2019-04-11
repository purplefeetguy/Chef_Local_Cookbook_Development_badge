#
# Cookbook:: web
# Recipe:: default
#
# Copyright:: 2019, DevOps Foot Locker, All Rights Reserved.

include_recipe 'web::users'

package 'net-tools' do
  action :install
end

package 'httpd' do
  action :install
end

service 'httpd' do
  action [:enable, :start]
end
