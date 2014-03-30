Ubuntu as a Desktop
======

## Install
    $ bundle install --path vendor/bundle
    $ bundle exec berks --path cookbooks/
    $ sudo bundle exec -- chef-solo -c ./solo.rb -j ./nodes/ubuntu-desktop.json
