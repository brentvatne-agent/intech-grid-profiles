-- Channel 2 Pan (CC 11)
local v=self:potmeter_value()
midi_send(0,176,11,v)
