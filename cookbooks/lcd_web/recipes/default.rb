#
# Cookbook:: lcd_web
# Recipe:: default
#
# Copyright:: 2019, Purplefeet Labs, All Rights Reserved.

include_recipe 'lcd_web::users'

package 'net-tools' do
  action :install
end

package 'httpd' do
  action :install
end

service 'httpd' do
  action [:enable, :start]
end
