#concat

####Table of Contents

1. [Overview](#overview)
2. [Module Description - What the module does and why it is useful](#module-description)
3. [Setup - The basics of getting started with utilities](#setup)
    * [What utilities affects](#what-concat-utilities)
    * [Beginning with utilities](#beginning-with-utilities)

##Overview

The utilities module gives you functions to use in your manifests.

##Module Description

The utilities module lets you use the file_exists to know if a file
exists in a node.


##Setup

###What utilities affects

* Installs `file_exists.rb`.
* Adds a `concat/` directory into Puppet's `vardir`.

###Beginning with file_exists

To start using utilities you need to use the function in a manifest.

A minimal example might be:

~~~
if file_exists ("/etc/puppet/puppet.conf") == 1
{
  file {"/etc/puppet/puppet.conf":
  mode    => '0444',
  }
}

~~~

