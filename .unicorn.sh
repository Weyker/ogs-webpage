#!/bin/bash
# This file is meant to be executed via systemd.
source /usr/local/rvm/scripts/rvm
source /etc/profile.d/rvm.sh
export ruby_ver=$(rvm list default string)

export CONFIGURED=yes
export TIMEOUT=50
export APP_ROOT=/home/rails/rails_project
export RAILS_ENV="production"
export GEM_HOME="/home/rails/rails_project/vendor/bundle"
export GEM_PATH="/home/rails/rails_project/vendor/bundle:/usr/local/rvm/gems/${ruby_ver}:/usr/local/rvm/gems/${ruby_ver}@global"
export PATH="/home/rails/rails_project/vendor/bundle/bin:/usr/local/rvm/gems/${ruby_ver}/bin:${PATH}"

# Passwords
export SECRET_KEY_BASE=61e7f1bad09ae2ee19d29fd8e382b14c96f10d544992f7044ad8312ea1debd2e626b74def3666a55f9169c1120aa1b7071f93d7cdfcd38bfdb603078f53b09a6
export APP_DATABASE_PASSWORD=a043ee8e9ff8bac4daa1ee3a2efdfd33

# Execute the unicorn process
/usr/local/rvm/gems/ruby-2.4.0/bin/unicorn \
        -c /etc/unicorn.conf -E production --debug
