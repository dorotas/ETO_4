# -*- coding: utf-8 -*-

# Agnieszka Góralczyk 233133
# Dorota Suchocka 233218

class Node
  attr_accessor :name, :next_node, :last_packet_send

  def invariant
    if name.length == 0
      raise StandardError, "Niepoprawna stacja"
    end
  end

  def has_next_node
  end

  def accept(packet)
  end

  def send(packet)
  end
<<<<<<< HEAD

  def print_name
    puts "Node: #{name}"
=======
  
  def print_name
	puts "Node: #{name}"
>>>>>>> 9a67cb0f6a64bf2f44e2e38498478cc703b5531a
  end
end