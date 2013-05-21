require 'resolv'

actions :set_ipv4_address
default_action :nothing

attribute :ipv4_address, :kind_of => String,
          :required => true, :regex => Resolv::IPv4::Regex
attribute :ipv4_netmask, :kind_of => String, :required => true,
          :regex => Resolv::IPv4::Regex
attribute :ipv4_gateway, :kind_of => String, :required => true,
          :regex => Resolv::IPv4::Regex
attribute :adapter_name, :name_attribute => true, :kind_of => String, :required => true