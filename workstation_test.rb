# -*- coding: utf-8 -*-

# Agnieszka Góralczyk 233133
# Dorota Suchocka 233218

require "test/unit"
require File.dirname(__FILE__) + '/workstation.rb'

class WorkstationTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    @pc = Workstation.new("pc")
    @mac = Workstation.new("mac")
    @mac.next_node = @pc
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end

  def test_initialize
    assert_equal("pc", @pc.name)
  end

  def test_has_next_node_not
    assert !@pc.has_next_node
  end

  def test_has_next_node
    assert @mac.has_next_node
  end


end