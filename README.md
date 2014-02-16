Code for BTV Website
====================

This is the source code for the [codeforbtv.org](http://codeforbtv.org/) website.

Developing
----------

Development of this web application is done using [VirtualBox](https://www.virtualbox.org/) 
and [Vagrant](http://vagrantup.com/). To set up your own local development environment:

1. Install [VirtualBox](https://www.virtualbox.org/)
2. Install [Vagrant](http://vagrantup.com/)
3. Bring up the virtual machine (from the root of this project):  
`vagrant up`
4. The project should now be available at the IP address `192.168.33.11`:  
`http://192.168.33.11/`

This website is built using [Jekyll](http://jekyllrb.com/), a blog-aware static 
site generator. See the [usage instructions](http://jekyllrb.com/docs/usage/) for more 
information on working with Jekyll.

Deploying
---------

This website is configured to be deployed using the [GitHub Pages](http://pages.github.com/) 
feature of GitHub. Deploying is simply a matter of pushing the `master` branch to 
GitHub.
