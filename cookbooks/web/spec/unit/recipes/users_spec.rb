#
# Cookbook:: web
# Spec:: users
#
# Copyright:: 2019, DevOps Foot Locker, All Rights Reserved.

require 'spec_helper'

describe 'web::users' do
  context 'When all attributes are default, on CentOS 7.4.1708' do
    let(:chef_run) do
      # for a complete list of available platforms and versions see:
      # https://github.com/customink/fauxhai/blob/master/PLATFORMS.md
      runner = ChefSpec::ServerRunner.new(platform: 'centos', version: '7.4.1708')
      runner.converge(described_recipe)
    end

    it 'creates the group' do
      expect(chef_run).to create_group('developers')
    end

    it 'creates the user' do
      expect(chef_run).to create_group('developers')
    end

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end
  end
end
