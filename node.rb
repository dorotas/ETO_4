# -*- coding: utf-8 -*-

# Agnieszka Góralczyk 233133
# Dorota Suchocka 233218

class Node
  attr_accessor :name, :next_node, :last_packet_send

  def initialize(name)
    @name = name
    invariant
  end

  def invariant
    if name.length == 0
      raise StandardError, "Niepoprawna stacja"
    end
  end

  def has_next_node
    not @next_node.nil?
  end

  def accept(packet)
    if packet.ttl > 0
      packet.ttl -= 1
      @next_node.accept packet
    end
  end

  def send(packet)
    @last_packet_send = packet
    if has_next_node && (packet.ttl > 0)
      @next_node.accept packet
    end
  end
end