include Chef::Mixin::ShellOut
include Windows::Helper

def whyrun_supported?
  true
end


action :set_ipv4_address do
  Chef::Log.info 'Setting IPv4 address'
  converge_by("Shelling out to set IPv4 address") do
    netsh_command = "#{netsh} interface ipv4 set address #{@new_resource.adapter_name}" +
        " static #{@new_resource.ipv4_address} #{@new_resource.ipv4_netmask} #{@new_resource.ipv4_gateway}"
    Chef::Log.info "netsh command is #{netsh_command}"
    #shell_out!(netsh_command)
  end
end

private

def netsh
  @netsh ||= begin
    locate_sysnative_cmd("netsh.exe")
  end
end