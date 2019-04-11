#
# Cookbook:: lcd_web
# Recipe:: users
#
# Copyright:: 2019, Purplefeet Labs, All Rights Reserved.

group 'developers'

user 'webadmin' do
  action :create
  uid '1020'
  gid 'developers'
  home '/home/webadmin'
  shell '/bin/bash'
end
