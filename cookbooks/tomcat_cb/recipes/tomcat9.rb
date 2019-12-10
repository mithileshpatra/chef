package "java" do
  action :install
end
remote_file '/opt/apache-tomcat-9.0.29.tar.gz' do
  source 'http://mirrors.estointernet.in/apache/tomcat/tomcat-9/v9.0.29/bin/apache-tomcat-9.0.29.tar.gz'
  action :create
end
execute 'extracting tomcat' do                     
  command 'tar -xzvf /opt/apache-tomcat-9.0.29.tar.gz -C /opt'
end
execute 'starting tomcat' do
  command 'sh /opt/apache-tomcat-9.0.29/bin/startup.sh'
end
remote_file '/opt/apache-tomcat-9.0.29/webapps/benefits.war' do
  source 'https://www.oracle.com/webfolder/technetwork/tutorials/obe/fmw/wls/12c/12_1_3/03/apps/benefits.war'
  action :create
end
