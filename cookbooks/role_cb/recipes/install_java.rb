package "java" do                                                   
  action :install
end
remote_file '/opt/apache-tomcat-9.0.29.tar.gz' do
  source 'http://mirrors.estointernet.in/apache/tomcat/tomcat-9/v9.0.29/bin/apache-tomcat-9.0.29.tar.gz'
  action :create
end
