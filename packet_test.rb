#!/usr/bin/ruby
# -*- coding: utf-8 -*-

# Agnieszka Góralczyk 233133
# Dorota Suchocka 233218

require "test/unit"
require File.dirname(__FILE__) + '/packet.rb'

class MyTest < Test::Unit::TestCase

  def setup
    @packet = Packet.new("dobry pakiet", "ekran", "pakietowo")
  end

  def test_initialize
    assert_equal("Pakiet dobry pakiet z pakietowo do ekran", @packet.to_s )
  end


end