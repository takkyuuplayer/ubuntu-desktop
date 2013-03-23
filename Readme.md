Ubuntu as a Desktop
======

## Install

    $ cd /var/chef
    $ bundle install --path vendor/bundle
    $ bundle exec knife solo init .
    $ bundle exec berks --path cookbooks/
    $ sudo bundle exec chef-solo
