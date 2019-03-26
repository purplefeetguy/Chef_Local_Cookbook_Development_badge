#
# Cookbook:: web
# Recipe:: default
#
# Copyright:: 2019, DevOps Foot Locker, All Rights Reserved.

['net-tools','httpd'].each do |pkg|
  package 'pkg' do
    action :install
  end
end
