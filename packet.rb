# -*- coding: utf-8 -*-

# Agnieszka Góralczyk 233133
# Dorota Suchocka 233218

class Packet
  attr_accessor :contents, :receiver, :sender, :ttl

  @contents = ""
  @receiver = ""
  @sender = ""

  def initialize(contents,receiver,sender, ttl = 64)
    @contents = contents
    @receiver = receiver
    @sender = sender
    @ttl = ttl
    invariant
  end

  def invariant
    if contents.length == 0 || receiver.length == 0 || sender.length == 0
      raise StandardError, "Niepoprawny pakiet"
    end
  end

  def to_s
    "Pakiet #{@contents} z #{@sender} do #{@receiver}"
  end
end