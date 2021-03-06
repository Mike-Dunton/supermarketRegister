#
# Cookbook Name:: supermarket_register_cookbook
# Spec:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

require 'spec_helper'

describe 'supermarket_register_cookbook::config_app' do
  context 'When all attributes are default, on an unspecified platform' do
    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new
      runner.converge(described_recipe)
    end

    it 'downloads the application archive' do
      expect(chef_run).to create_file('/tmp/webApplication.tar.gz')
    end
  end
end
