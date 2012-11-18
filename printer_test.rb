# -*- coding: utf-8 -*-

# Agnieszka Góralczyk 233133
# Dorota Suchocka 233218

require "test/unit"
require File.dirname(__FILE__) + '/printer.rb'
require File.dirname(__FILE__) + '/packet.rb'
require File.dirname(__FILE__) + '/workstation.rb'
require File.dirname(__FILE__) + '/transitive_node.rb'

class MyTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    @printer = Printer.new("drukarka")
    @pc = Workstation.new("pc")
    @a = Workstation.new("a")
    @pc.next_node = @a
    @a.next_node = @printer
    @packet = Packet.new("Zawartosc", "a", "pc")
  end

  def test_initialize
    assert_equal("drukarka", @printer.name)
  end

  def test_accept
    @printer.accept(@packet)
    assert_equal(@packet.to_s, "#{@printer.last_packet_send}")
  end

end