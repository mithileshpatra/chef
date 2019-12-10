if node[:platform] == "amazon"
   package 'httpd' do
     action :install
   end
end
if node[:platform] == "ubuntu"
   package 'apache2' do
     action :install
   end
end
