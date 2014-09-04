chef-dk:
	wget https://opscode-omnibus-packages.s3.amazonaws.com/ubuntu/12.04/x86_64/chefdk_0.2.1-1_amd64.deb
	sudo dpkg -i chefdk_0.2.1-1_amd64.deb

default:
	rm -rf cookbooks
	berks vendor cookbooks
	sudo chef-solo -c solo.rb -j nodes/ubuntu-desktop.json
