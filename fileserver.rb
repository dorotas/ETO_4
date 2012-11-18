# -*- coding: utf-8 -*-

# Agnieszka Góralczyk 233133
# Dorota Suchocka 233218

<<<<<<< HEAD
require_relative './transitive_node.rb'

=======
>>>>>>> 9a67cb0f6a64bf2f44e2e38498478cc703b5531a
class Fileserver < TransitiveNode
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


end