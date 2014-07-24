#include_recipe 'nginx'
include_recipe 'php-fpm'

directory "/web/#{node["sandbox"][:subdomain]}" do
  action :create
  user node[:account][:user]
  group node[:account][:group]
  mode 0775
end

template "/etc/nginx/sites-available/#{node[:sandbox][:subdomain]}-local.vh" do
  source "sandbox-local.vh.erb"
  mode 00644
  owner 'root'
  group 'root'
  action :create
  variables({
    :subdomain => node[:sandbox][:subdomain],
    :document_root => "/web/#{node[:sandbox][:subdomain]}"
  })
end

link "/etc/nginx/sites-enabled/sandbox-local.vh" do
  owner 'root'
  group 'root'
  action :create
  to "/etc/nginx/sites-available/#{node[:sandbox][:subdomain]}-local.vh"
end

