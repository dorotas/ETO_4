<<<<<<< HEAD
class NodeReader

  def self.list_nodes(start_node)
    list = []
    actual_node = start_node
    list << start_node
    actual_node = actual_node.next_node
    while actual_node != start_node
      list << actual_node
      actual_node = actual_node.next_node
    end
    return list
  end

  def self.print_nodes(start_node)
    list_nodes.each { |n| n.print_name }
  end

=======
class NodeReader
	
	def self.list_nodes(start_node)
		list = []
		actual_node = start_node
		list << start_node
		actual_node = actual_node.next_node
		while actual_node != start_node
			list << actual_node
			actual_node = actual_node.next_node
		end
		return list
	end
	
	def self.print_nodes(start_node)
		list_nodes.each { |n| n.print_name }
	end
	
>>>>>>> 9a67cb0f6a64bf2f44e2e38498478cc703b5531a
end