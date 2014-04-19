%w(workspace web).each do |dir|
  directory "/#{dir}" do
    action :create
    user node[:account][:user]
    group node[:account][:group]
    mode 0775
  end
end

directory "/var/log/nginx/vh" do
  action :create
  user "nginx"
  group "nginx"
  mode 0775
end

directory "/var/cache/nginx" do
  action :create
  user "nginx"
  group "nginx"
  mode 0775
end
