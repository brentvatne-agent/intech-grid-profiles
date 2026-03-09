-- Channel 3 Volume (CC 13)
local v=self:potmeter_value()
midi_send(0,176,13,v)
