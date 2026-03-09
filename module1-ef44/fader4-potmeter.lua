-- Channel 4 Volume (CC 19)
local v=self:potmeter_value()
midi_send(0,176,19,v)
