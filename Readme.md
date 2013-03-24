Ubuntu as a Desktop
======

## Install
Clone into /var/chef

    $ cd /var/chef
    $ bundle install --path vendor/bundle
    $ bundle exec berks --path cookbooks/
    $ sudo bundle exec chef-solo
