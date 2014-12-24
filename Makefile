VERSION=chefdk_0.3.5-1_amd64.deb

chef-dk:
	wget https://opscode-omnibus-packages.s3.amazonaws.com/ubuntu/12.04/x86_64/${VERSION}
	sudo dpkg -i ${VERSION}
	rm ${VERSION}

default:
	rm -rf cookbooks
	berks vendor cookbooks
	sudo chef-solo -c solo.rb -j nodes/ubuntu-desktop.json
