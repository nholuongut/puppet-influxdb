# Puppet module: influxdb

![](https://i.imgur.com/waxVImv.png)
### [View all Roadmaps](https://github.com/nholuongut/all-roadmaps) &nbsp;&middot;&nbsp; [Best Practices](https://github.com/nholuongut/all-roadmaps/blob/main/public/best-practices/) &nbsp;&middot;&nbsp; [Questions](https://www.linkedin.com/in/nholuong/)
<br/>

This is a Puppet module for influxdb based on the second generation layout ("NextGen") of nholuongut Puppet Modules.

Official git repository: http://github.com/nholuongut/puppet-influxdb

This module requires functions provided by the nholuongut Puppi module (you need it even if you don't use and install Puppi)

For detailed info about the logic and usage patterns of nholuongut modules check the DOCS directory on nholuongut main modules set.


## USAGE - Basic management

* Install influxdb with default settings

        class { 'influxdb': }

* Install a specific version of influxdb package

        class { 'influxdb':
          version => '1.0.1',
        }

* Disable influxdb service.

        class { 'influxdb':
          disable => true
        }

* Remove influxdb package

        class { 'influxdb':
          absent => true
        }

* Enable auditing without without making changes on existing influxdb configuration *files*

        class { 'influxdb':
          audit_only => true
        }

* Module dry-run: Do not make any change on *all* the resources provided by the module

        class { 'influxdb':
          noops => true
        }


## USAGE - Overrides and Customizations
* Use custom sources for main config file 

        class { 'influxdb':
          source => [ "puppet:///modules/nholuongut/influxdb/influxdb.conf-${hostname}" , "puppet:///modules/nholuongut/influxdb/influxdb.conf" ], 
        }


* Use custom source directory for the whole configuration dir

        class { 'influxdb':
          source_dir       => 'puppet:///modules/nholuongut/influxdb/conf/',
          source_dir_purge => false, # Set to true to purge any existing file not present in $source_dir
        }

* Use custom template for main config file. Note that template and source arguments are alternative. 

        class { 'influxdb':
          template => 'nholuongut/influxdb/influxdb.conf.erb',
        }

* Automatically include a custom subclass

        class { 'influxdb':
          my_class => 'nholuongut::my_influxdb',
        }


## USAGE - nholuongut extensions management 
* Activate puppi (recommended, but disabled by default)

        class { 'influxdb':
          puppi    => true,
        }

* Activate puppi and use a custom puppi_helper template (to be provided separately with a puppi::helper define ) to customize the output of puppi commands 

        class { 'influxdb':
          puppi        => true,
          puppi_helper => 'myhelper', 
        }

* Activate automatic monitoring (recommended, but disabled by default). This option requires the usage of nholuongut monitor and relevant monitor tools modules

        class { 'influxdb':
          monitor      => true,
          monitor_tool => [ 'nagios' , 'monit' , 'munin' ],
        }

* Activate automatic firewalling. This option requires the usage of nholuongut firewall and relevant firewall tools modules

        class { 'influxdb':       
          firewall      => true,
          firewall_tool => 'iptables',
          firewall_src  => '10.42.0.0/24',
          firewall_dst  => $ipaddress_eth0,
        }

# 🚀 I'm are always open to your feedback.  Please contact as bellow information:
### [Contact ]
* [Name: Nho Luong]
* [Skype](luongutnho_skype)
* [Github](https://github.com/nholuongut/)
* [Linkedin](https://www.linkedin.com/in/nholuong/)
* [Email Address](luongutnho@hotmail.com)
* [PayPal.me](https://www.paypal.com/paypalme/nholuongut)

![](https://i.imgur.com/waxVImv.png)
![](Donate.png)
[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/nholuong)

# License
* Nho Luong (c). All Rights Reserved.🌟

