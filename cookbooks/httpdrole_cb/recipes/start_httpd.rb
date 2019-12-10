service "httpd" do
  action :start
end
cookbook_file '/var/www/html/index.html' do
  source 'index.html'
  action :create
end
