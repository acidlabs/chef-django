github = node[:git][:github]

template "/home/#{node[:git][:owner]}/.gitconfig" do
  source  "gitconfig.erb"
  owner   "#{node[:git][:owner]}"
  group   "#{node[:git][:owner]}"
  mode    "0644"
end

template "/home/#{node[:git][:owner]}/.ssh/known_hosts" do
  source  "known_hosts.erb"
  owner   "#{node[:git][:owner]}"
  group   "#{node[:git][:owner]}"
  mode    "0644"
end