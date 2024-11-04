# Class: influxdb::params
#
# This class defines default parameters used by the main module class influxdb
# Operating Systems differences in names and paths are addressed here
#
# == Variables
#
# Refer to influxdb class for the variables defined here.
#
# == Usage
#
# This class is not intended to be used directly.
# It may be imported or inherited by other classes
#
class influxdb::params {

  ### Application related parameters

  $package = $::operatingsystem ? {
    default => 'influxdb',
  }

  $service = $::operatingsystem ? {
    default => 'influxdb',
  }

  $service_status = $::operatingsystem ? {
    default => true,
  }

  $process = $::operatingsystem ? {
    default => 'influxdb',
  }

  $process_args = $::operatingsystem ? {
    default => '',
  }

  $process_user = $::operatingsystem ? {
    default => 'influxdb',
  }

  $config_dir = $::operatingsystem ? {
    default => '/opt/influxdb/current',
  }

  $config_file = $::operatingsystem ? {
    default => '/opt/influxdb/shared/config.toml',
  }

  $config_file_mode = $::operatingsystem ? {
    default => '0640',
  }

  $config_file_owner = $::operatingsystem ? {
    default => 'influxdb',
  }

  $config_file_group = $::operatingsystem ? {
    default => 'influxdb',
  }

  $pid_file = $::operatingsystem ? {
    default => '/opt/influxdb/shared/influxdb.pid',
  }

  $data_dir = $::operatingsystem ? {
    default => '/opt/influxdb/shared/data',
  }

  $log_dir = $::operatingsystem ? {
    default => '/opt/influxdb/shared',
  }

  $log_file = $::operatingsystem ? {
    default => '/opt/influxdb/shared/log.txt',
  }

  $port = '8086'
  $protocol = 'tcp'

  # General Settings
  $my_class = ''
  $source = ''
  $source_dir = ''
  $source_dir_purge = false
  $template = ''
  $options = ''
  $service_autorestart = true
  $version = 'present'
  $absent = false
  $disable = false
  $disableboot = false

  ### General module variables that can have a site or per module default
  $monitor = false
  $monitor_tool = ''
  $monitor_target = $::ipaddress
  $firewall = false
  $firewall_tool = ''
  $firewall_src = '0.0.0.0/0'
  $firewall_dst = $::ipaddress
  $puppi = false
  $puppi_helper = 'standard'
  $debug = false
  $audit_only = false
  $noops = false

}
