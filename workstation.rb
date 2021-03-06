# -*- coding: utf-8 -*-

# Agnieszka Góralczyk 233133
# Dorota Suchocka 233218

require_relative './transitive_node.rb'

class Workstation < TransitiveNode
  def initialize(name)
    super name
  end

  def accept(packet)
    @last_packet_send = nil
    if packet.receiver == @name
      print_name
    else
      send packet
    end
  end

  def originate(packet)
    send packet
  end
end