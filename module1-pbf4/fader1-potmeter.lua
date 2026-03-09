-- Channel 1 Volume (CC 1)
local v=self:potmeter_value()
midi_send(0,176,1,v)
