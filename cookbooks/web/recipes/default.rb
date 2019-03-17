#
# Cookbook:: web
# Recipe:: default
#
# Copyright:: 2019, DevOps Foot Locker, All Rights Reserved.

package 'httpd' do
  action :install
end

service 'httpd' do
  action [ :enable, :start ]
end
