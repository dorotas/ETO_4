# -*- coding: utf-8 -*-

# Agnieszka Góralczyk 233133
# Dorota Suchocka 233218

require "test/unit"
require File.dirname(__FILE__) + '/transitive_node.rb'
require File.dirname(__FILE__) + '/packet.rb'

class TransitiveNodeTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    @node = TransitiveNode.new("node")
    @n = TransitiveNode.new("n")
    @node.next_node = @n
    @packet = Packet.new("A", "n", "node")
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end

  def test_initialize
    assert_equal("node", @node.name)
  end

  def test_has_next_node_not
    assert !@n.has_next_node
  end

  def test_has_next_node
    assert @node.has_next_node
  end

end