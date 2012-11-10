#!/usr/bin/ruby
# -*- coding: utf-8 -*-

# Agnieszka Góralczyk 233133
# Dorota Suchocka 233218


require File.dirname(__FILE__) + '/node.rb'
require "test/unit"

class NodeTest < Test::Unit::TestCase

  def setup
    @mac = Node.new("mac")
    @pc = Node.new("pc")
    @mac.next_node = @pc
    @pc.next_node = @mac
  end

  def test_has_next_node
    assert_equal(true, @mac.has_next_node() )
  end

end