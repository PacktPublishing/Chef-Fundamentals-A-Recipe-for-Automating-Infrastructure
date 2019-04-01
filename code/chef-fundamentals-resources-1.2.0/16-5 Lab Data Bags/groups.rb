# ~/chef-repo/cookbooks/myusers/recipes/groups.rb

search("groups", "platform:centos").each do |group_data|
	group group_data['id'] do
    gid group_data['gid']
    members group_data['members']
  end
end