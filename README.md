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
````

[![screenshot](https://github.com/chobie/Git2RepositoryBrowserBundleSandbox/raw/master/images/git2repositorybrowserbundle.png)](http://travis-ci.org/chobie/fluent-logger-php)
# License

MIT License