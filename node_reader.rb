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
	
end