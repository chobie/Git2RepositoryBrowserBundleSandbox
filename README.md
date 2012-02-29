# Brilliant Git Repository Browser


# Installation

````
gem install vagrant --no-ri --no-rdoc
gem install chef --no-ri --no-rdoc

git clone https://github.com/chobie/Git2RepositoryBrowserBundleSandbox.git
cd Git2RepositoryBrowserBundleSandbox
cd sandbox
php -d composer.phar update
vagrant up

# this may take 30 minutes over if you don't have the box.
# this box installed rbenv, ruby1.9.3-p0 and fluentd. you can play fluentd and php with this box. enjoy it!
# you can log in to the box with following command `vagrant ssh`

vagrant ssh
# logged in to vm.
mkdir /tmp/repos
cd /tmp/repos
# clone bare repository
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