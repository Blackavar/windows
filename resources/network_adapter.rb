require 'resolv'

actions :set_ipv4_address

attribute :ipv4_address, :name_attribute => true, :kind_of => String,
          :required => true, :regex => Resolv::IPv4::Regex
attribute :adapter_name, :kind_of => String, :required => true