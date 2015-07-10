The main manifest is manifests/site.pp

DEPENDENCIES

The project depends of two puppetlabs modules:

* puppetlabs/tomcat
* puppetlabs/java

Install them with:

* puppet module install puppetlabs-java
* puppet module install puppetlabs-tomcat

UTILITIES

The utilities module was writen for this project. It's only a a function
that answers if a file exists or not.

