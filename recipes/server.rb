
# Cookbook:: apache
# Recipe:: server
#
# Copyright:: 2020, The Authors, All Rights Reserved.
package 'apache2'  do
	  action  :install
end
service 'apache2' do
	  supports status: true
	    action [:enable, :start]
end
file '/var/www/html/index.html' do
	  content "<html>
	    <body>
	        <h1>hello world</h1>
		<p>hostname= #{node['hostname']}</p>
		<p> Ipaddress =#{node['ipaddress']} </p>
		 </body>
		  </html>"
end
