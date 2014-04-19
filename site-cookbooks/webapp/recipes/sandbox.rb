directory "/web/sandbox" do
  action :create
  user node[:account][:user]
  group node[:account][:group]
  mode 0775
end

template '/etc/nginx/sites-available/sandbox-local.vh' do
  mode 00644
  owner 'root'
  group 'root'
  action :create
  variables({
    :subdomain => 'sandbox',
    :document_root => '/web/sandbox'
  })
end

link "/etc/nginx/sites-enabled/sandbox-local.vh" do
  owner 'root'
  group 'root'
  action :create
  to '/etc/nginx/sites-available/sandbox-local.vh'
end

