execute 'extracting tomcat' do                                          
  command 'tar -xzvf /opt/apache-tomcat-9.0.29.tar.gz -C /opt'
end
execute 'starting tomcat' do
  command 'sh /opt/apache-tomcat-9.0.29/bin/startup.sh'
end
