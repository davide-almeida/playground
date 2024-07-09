require 'nmap/parser'

def list_active_ips
  parser = Nmap::Parser.parsescan('nmap', '-sn 192.168.1.0/24') # Passar argumentos como string
  active_ips = []

  parser.hosts('up') do |host|
    active_ips << host.addr
  end

  active_ips
end

active_ips = list_active_ips
puts "Active IPs in the network:"
puts active_ips
