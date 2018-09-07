Hostname = node['hostname']
file '/etc/motd' do

content "Hostname is #{Hostname}"
end
