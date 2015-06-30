# 「Hello Chef」と表示する
log "Hello Chef"

# zshをインストールする
package "zsh" do
  action :install
end

# 列挙されたパッケージを全部インストールする
%w{zsh gcc make readline-devel}.each do |pkg|
  package pkg do
    action :install
  end
end

