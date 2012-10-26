# -*- coding: utf-8 -*-

# Agnieszka Góralczyk 233133
# Dorota Suchocka 233218

require_relative './node.rb'

class Printer < Node
  def initialize(name)
    super name
  end

  def accept(packet)
    @last_packet_send = nil
    if packet.receiver == @name
      print "Drukarka #{@name} wydrukowała pakiet: "
      puts packet.to_s
    else
      send packet
    end
  end

end