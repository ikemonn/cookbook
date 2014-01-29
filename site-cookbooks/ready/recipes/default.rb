#
# Cookbook Name:: ready
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
#Firewallを起動時に停止
service "iptables" do
	action [:stop, :disable]
end

#もろもろインストール
%w{php php-common php-mbstring php-xml php-devel php-process php-cli php-pear php-mysql mysql-server mysql-server httpd vim-enhanced subversion}.each do |p|
	package p do
		action :install
	end
end

#Apacheを起動時に起動
service "httpd" do
	action [:start, :enable]
end
