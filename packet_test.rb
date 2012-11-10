#!/usr/bin/ruby
# -*- coding: utf-8 -*-

# Agnieszka Góralczyk 233133
# Dorota Suchocka 233218

require "test/unit"
require File.dirname(__FILE__) + '/packet.rb'

class MyTest < Test::Unit::TestCase


  def setup
    # Do nothing
  end

  def test_initialize
    assert( @packet = Packet.new("dobry pakiet", "ekran", "pakietowo") )
  end


end