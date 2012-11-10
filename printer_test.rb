# -*- coding: utf-8 -*-

# Agnieszka Góralczyk 233133
# Dorota Suchocka 233218

require "test/unit"
require File.dirname(__FILE__) + '/printer.rb'
require File.dirname(__FILE__) + '/packet.rb'
require File.dirname(__FILE__) + '/workstation.rb'

class MyTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    @printer = Printer.new("drukarka")
    @pc = Workstation.new("pc")
    @pc.next_node = @printer
    @packet = Packet.new("Zawartosc", "drukarka", "pc")
  end

  def test_accept
    @pc.send(@packet)
    assert_equal("Drukarka drukarka wydrukowała pakiet: Pakiet Zawartosc z pc do drukarka", @printer.accept(@packet))
  end


end