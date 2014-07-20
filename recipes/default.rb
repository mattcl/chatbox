#
# Cookbook Name:: chatbox
# Recipe:: default
#
# Copyright (C) 2014 Matt Chun-Lum
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'weechat::default'
include_recipe 'bitlbee-latest::default'

include_recipe 'rabbitmq::default'

rabbitmq_plugin 'rabbitmq_management' do
  action :enable
end

rabbitmq_vhost '/weechat' do
  action :add
end

rabbitmq_user 'guest' do
  action :delete
end

node['rabbitmq']['users'].each do |usr, data|
  rabbitmq_user usr do
    password data['password']
    action :add
  end

  if data['tags']
    rabbitmq_user usr do
      tag data['tags']
      action :set_tags
    end
  end

  rabbitmq_user usr do
    vhost data['vhost'] if data['vhost']
    permissions data['permissions']
    action :set_permissions
  end
end
