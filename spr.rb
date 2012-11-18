require File.expand_path('packet')
require File.expand_path('workstation')
require File.expand_path('printer')
require File.expand_path('fileserver')



@pa = Packet.new("A", "B", "C")
print @pa.to_s
