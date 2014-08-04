## Requirements
* Vagrant
* Virtualbox
* You will need vagrant omnibus (so you get newest version of chef)
* A download of Drupal8 from: https://www.drupal.org/node/3060/release?api_version%5B%5D=7234



## Installation
* Extract the drupal8 file you downloaded into `public/drupal8/public` so index.php is at `public/drupal8/public/index.php`
* Add this to your hosts file: `192.168.33.18   local.drupal8.com`
* `cd rb_vagrant_d8`
* `vagrant up`
* `vagrant ssh`
* `cd /vagrant/public/buildscripts`
* `chmod a+x drupal8.sh`
* `./drupal8.sh`
* Open browser to: http://local.drupal8.com/
* Install using the UI and the DB drupal8 (user:root, pass:vagrant)



## To Do
* Have chef setup the DB ready for this site rather than in a seperate script (http://learn.getchef.com/legacy/starter-use-cases/convert-bash-to-chef/)
* Look into all the warning vagrant is returning
  * *WARN: Cloning resource attributes for service[apache2] from prior resource (CHEF-3694)*
  * *WARN: Cloning resource attributes for template[/etc/apache2/ports.conf] from prior resource (CHEF-3694)*
  * *WARN: Cloning resource attributes for directory[/var/cache/local/preseeding] from prior resource (CHEF-3694)*
  * *Cloning resource attributes for directory[/var/lib/mysql] from prior resource (CHEF-3694)*
  * *INFO: Could not find previously defined grants.sql resource*
  * *WARN: Cloning resource attributes for service[mysql] from prior resource (CHEF-3694)*
  * *WARN: Cloning resource attributes for execute[apt-get update] from prior resource (CHEF-3694)*
  * *WARN: Cloning resource attributes for package[vim] from prior resource (CHEF-3694)*
* PHPmyAdmin???




## Troubleshooting
Let me know of any issues, and we can attempt to fix them ASAP to share with others
### Error on drupal8 install
First ensure you have deleted any `settings.php` file in there which may already be setup (as per any other drupal site)
### When I `vagrant ssh` in there is nothing within the /vagrant directory
Could be permissions, I set the whole directory to be `drwxr-xr-x` and it worked fine




## Thanks to
* https://github.com/AlexDisler/php54-chef-env
* https://github.com/r8/vagrant-lamp