service "httpd" do
  action :start
end
cookbook_file '/var/www/html/index.html' do
  source 'index.html'
  action :create
end
template '/etc/httpd/conf/httpd.conf' do
  source 'httpd.conf.erb'
end

