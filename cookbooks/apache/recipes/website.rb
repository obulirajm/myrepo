file "/var/www/html/index.html" do
content "Hellow World how do you do VER: 2222"
mode '0755'
owner 'apache'
group 'apache'
end

webnodes = search('node', 'role:web')

webnodes.each do |node|
puts node
end
