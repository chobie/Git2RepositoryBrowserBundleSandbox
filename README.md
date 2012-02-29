# Brilliant Git Repository Browser


# Installation

````
gem install vagrant --no-ri --no-rdoc
gem install chef --no-ri --no-rdoc

git clone https://github.com/chobie/Git2RepositoryBrowserBundleSandbox.git
cd Git2RepositoryBrowserBundleSandbox
cd sandbox
php -d detect_unicode=0 composer.phar update
vagrant up
rake sync

# this may takes 30 minutes over if you don't have the box.
# you can log in to the box with following command `vagrant ssh`

vagrant ssh
# logged in to vm.
mkdir /tmp/repos
cd /tmp/repos
# clone bare repository what you want to see.
git clone https://github.com/chobie/php-sundown.git --bare
exit
# logged out from vm
# open http://localhost:8082/app_dev.php/
````


# Screenshot

[![screenshot](https://github.com/chobie/Git2RepositoryBrowserBundleSandbox/raw/master/images/git2repositorybrowserbundle.png)](http://travis-ci.org/chobie/fluent-logger-php)

# License

# Get involved?

please see https://github.com/chobie/Git2RepositoryBrowserBundle

this repo is a just sandbox for above one.

# License

MIT License