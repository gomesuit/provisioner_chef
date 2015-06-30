
# 列挙されたパッケージを全部インストールする
%w{vim}.each do |pkg|
  package pkg do
    action :install
  end
end

template "/etc/profile.d/chef-ruby.sh" do
  source "chef-ruby.sh.erb"
  owner "root"
  group "root"
  mode 0644
end

