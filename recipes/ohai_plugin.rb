ohai 'reload_precedence' do
  plugin 'precedence'
  action :nothing
end

cookbook_file "#{node['ohai']['plugin_path']}/precedence.rb" do
  source 'plugins/precedence.rb'
  owner 'root'
  group 'root'
  mode '0755'
  notifies :reload, 'ohai[reload_precedence]', :immediately
end

include_recipe 'ohai::default'
