Code for BTV Website
====================

This is the source code for the [codeforbtv.org](http://codeforbtv.org/) website.

Developing
----------

Development of this web application is done using [VirtualBox](https://www.virtualbox.org/) 
and [Vagrant](http://vagrantup.com/). To set up your own local development environment:

1. Install [VirtualBox](https://www.virtualbox.org/)
2. Install [Vagrant](http://vagrantup.com/)
3. Add the "Official Ubuntu 13.10 daily Cloud Image i386 (Development release, No Guest Additions)" box (if not already on your system):  
`vagrant box add saucy-server-cloudimg http://cloud-images.ubuntu.com/vagrant/saucy/current/saucy-server-cloudimg-i386-vagrant-disk1.box`
4. Bring up the virtual machine (from the root of this project):  
`vagrant up`
5. The project should now be available on `localhost` port `8520`:  
`http://localhost:8520/`

This website is built using [Jekyll](http://jekyllrb.com/), a blog-aware static 
site generator. See the [usage instructions](http://jekyllrb.com/docs/usage/) for more 
information on working with Jekyll.

Deploying
---------

This website is configured to be deployed using the [GitHub Pages](http://pages.github.com/) 
feature of GitHub. Deploying is simply a matter of pushing the `master` branch to 
GitHub.
