service "tomcat" do
  action :start
end
cookbook_file '/usr/share/tomcat/webapps/benefits.war' do
  source 'benefits.war'
  action :create
end
