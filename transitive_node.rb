<<<<<<< HEAD
# -*- coding: utf-8 -*-

# Agnieszka Góralczyk 233133
# Dorota Suchocka 233218

require_relative './node.rb'
class TransitiveNode < Node

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

=======
 require_relative './node.rb'
 class TransitiveNode < Node

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
	
>>>>>>> 9a67cb0f6a64bf2f44e2e38498478cc703b5531a
end