# -*- coding: utf-8 -*-

# Agnieszka Góralczyk 233133
# Dorota Suchocka 233218

require File.expand_path('packet')
require File.expand_path('workstation')

def set_up
  sun = Workstation.new("Sun")
  pc = Workstation.new("PC")
  mac = Workstation.new("Mac")
  sun.next_node = mac

  p1 = Packet.new("pack1", "PC", "Mac")
  pc.originate(p1)
  p2 = Packet.new("pack2", "Sun", "Mac")
  sun.originate(p2)
  p3 = Packet.new("pack3", "Sun", "PC")
  sun.originate(p3)

  p4 = Packet.new("testpack", "Mac", "Sun")
  print "Pakiet #{p4.contents} zostal wyslany przez stacje: "
  if mac.last_packet_send != nil
    print mac.name, " "
  end
  if sun.last_packet_send != nil
    print sun.name, " "
  end
  if pc.last_packet_send != nil
    print pc.name, " "
  end
end

Packet.new("A","B","C")
puts "Poprawny pakiet powstal"
begin
  Packet.new("A","B","")
rescue
  puts "Niepoprawny pakiet nie powstal"
end
begin
  Packet.new("A","B")
rescue
  puts "Niepoprawny pakiet nie powstal"
end

s1 = Workstation.new("S1")
puts "Poprawna stacja powstala"
if !s1.has_next_node
  puts "Stacja nie ma nastepnika"
end
s2 = Workstation.new("S2")
puts "Poprawna stacja powstala"
if s2.has_next_node
  puts "Stacja ma nastepnik"
end
begin
  Workstation.new("", s1)
rescue
  puts "Niepoprawna stacja nie powstala"
end
begin
  Workstation.new("S3")
rescue
  puts "Niepoprawna stacja nie powstala"
end

set_up