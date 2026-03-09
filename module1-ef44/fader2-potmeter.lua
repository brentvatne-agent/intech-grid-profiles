-- Channel 2 Volume (CC 7)
local v=self:potmeter_value()
midi_send(0,176,7,v)
