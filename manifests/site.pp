# Manifest to install Tomcat

# If file exists then tomcat is installed
# so it's stopped and purged
if file_exists ("/opt/apache-tomcat/tomcat6/bin/catalina.sh") == 1 {

    # Stop and purge tomcat
    package { "tomcat6":
      ensure => "purged",
    }
}

class { 'tomcat': }
class { 'java': }

tomcat::instance { 'test':
    source_url =>
    'http://www.carfab.com/apachesoftware/tomcat/tomcat-6/v6.0.44/src/apache-tomcat-6.0.44-src.tar.gz',
    catalina_base => '/opt/apache-tomcat/tomcat6'
}->

file {'/opt/apache-tomcat/tomcat6/bin':
  recurse => true,
  mode    => '0555',
}->

tomcat::service { 'tomcat6':
    catalina_base  => '/opt/apache-tomcat/tomcat6',
    service_name   => 'tomcat6',
    service_ensure => 'running'
}

