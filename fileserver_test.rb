# -*- coding: utf-8 -*-

# Agnieszka Góralczyk 233133
# Dorota Suchocka 233218

require "test/unit"
require File.dirname(__FILE__) + '/fileserver.rb'
require File.dirname(__FILE__) + '/packet.rb'
require File.dirname(__FILE__) + '/workstation.rb'

class FileserverTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    @fileserver = Fileserver.new("fileserver")
    @nadawca = Workstation.new("nadawca")
    @p = Workstation.new("p")
    @nadawca.next_node = @fileserver
    @fileserver.next_node = @p
    @packet = Packet.new("A", "p", "nadawca")

  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end

  def test_initialize
    assert_equal("fileserver", @fileserver.name)
  end

  def test_accept
    @fileserver.accept(@packet)
    assert_equal(@packet.to_s, "#{@fileserver.last_packet_send}")
  end

end