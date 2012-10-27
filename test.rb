# -*- coding: utf-8 -*-

# Agnieszka Góralczyk 233133
# Dorota Suchocka 233218

require File.expand_path('packet')
require File.expand_path('workstation')
require File.expand_path('printer')
require File.expand_path('fileserver')

def set_up
  sun = Workstation.new("Sun")
  pc = Workstation.new("PC")
  mac = Workstation.new("Mac")
  printer = Printer.new("Bother")
  fileserver = Fileserver.new("SomeF")
  sun.next_node = mac

  p1 = Packet.new("pack1", "PC", "Mac")
  pc.originate(p1)
  p2 = Packet.new("pack2", "Sun", "Mac")
  sun.originate(p2)
  p3 = Packet.new("pack3", "Sun", "PC")
  sun.originate(p3)
  p5 = Packet.new("pack4", "Mac", "Bother")
  mac.originate(p5)
  p6 = Packet.new("pack5", "PC", "SomeF")
  pc.originate(p6)

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
s2.next_node = s1
if s2.has_next_node
  puts "Stacja ma nastepnik"
end
begin
  Workstation.new("")
rescue
  puts "Niepoprawna stacja nie powstała"
end
begin
  Workstation.new("S3")
rescue
  puts "Niepoprawna stacja nie powstała"
end

p1 = Printer.new("P1")
puts "Poprawna drukarka powstala"
if !p1.has_next_node
  puts "Drukarka nie ma nastepnika"
end
p2 = Printer.new("P2")
puts "Poprawna drukarka powstala"
p2.next_node = s2
if p2.has_next_node
  puts "Drukarka ma nastepnik"
end
begin
  Printer.new("")
rescue
  puts "Niepoprawna drukarka nie powstala"
end
begin
  Printer.new("S3")
rescue
  puts "Niepoprawna drukarka nie powstala"
end

f1 = Fileserver.new("F1")
puts "Poprawny system plików powstał"
if !f1.has_next_node
  puts "System plików nie ma nastepnika"
end
f2 = Workstation.new("F2")
puts "Poprawny system plików powstał"
f2.next_node = p2
if f2.has_next_node
  puts "System plików ma nastepnik"
end
begin
  Fileserver.new("")
rescue
  puts "Niepoprawna stacja nie powstala"
end
begin
  Fileserver.new("F3")
rescue
  puts "Niepoprawna stacja nie powstala"
end

set_up