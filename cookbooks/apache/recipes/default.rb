#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

if node['platform_family'] == "rhel"
package = "httpd"
end

package "apache2" do
package_name package
action [:install]
end

service "apache2" do
service_name "httpd"
action [:start, :enable]
end

include_recipe 'apache::website'

file_pattern ='*.*'
	directory = Dir['/**/*.rb']
	directory.each do |path|
puts path
	#Dir.glob ['/**/''file_pattern'].each do |file|
	#puts file	
end
