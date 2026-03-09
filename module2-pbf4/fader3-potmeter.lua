-- Channel 3 Pan (CC 17)
local v=self:potmeter_value()
midi_send(0,176,17,v)
