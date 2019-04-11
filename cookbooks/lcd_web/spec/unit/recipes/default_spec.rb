#
# Cookbook:: lcd_web
# Spec:: default
#
# Copyright:: 2019, Purplefeet Labs, All Rights Reserved.

require 'spec_helper'

describe 'lcd_web::default' do
  context 'When all attributes are default, on CentOS 7.6.1810' do
    let(:chef_run) do
      # for a complete list of available platforms and versions see:
      # https://github.com/customink/fauxhai/blob/master/PLATFORMS.md
      runner = ChefSpec::ServerRunner.new(platform: 'centos', version: '7.6.1810')
      runner.converge(described_recipe)
    end

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end

    it 'installs httpd' do
      expect(chef_run).to install_package('httpd')
    end

    it 'installs net-tools' do
      expect(chef_run).to install_package('net-tools')
    end

    it 'enables the httpd service' do
      expect(chef_run).to enable_service('httpd')
    end

    it 'starts the httpd service' do
      expect(chef_run).to start_service('httpd')
    end
  end
end
