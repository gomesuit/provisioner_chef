
# 列挙されたパッケージを全部インストールする
%w{vim}.each do |pkg|
  package pkg do
    action :install
  end
end

