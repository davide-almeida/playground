require 'nmap/parser'

def list_active_ips
  puts '=============================='
  puts 'Listando IPs ativos na rede...'
  puts '=============================='
  parser = Nmap::Parser.parsescan('nmap', '-sn 192.168.1.0/24')
  active_ips = []

  parser.hosts('up') do |host|
    active_ips << host.addr
  end

  active_ips
end

active_ips = list_active_ips
puts active_ips
