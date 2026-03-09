-- Channel 1 Pan (CC 5)
local v=self:potmeter_value()
midi_send(0,176,5,v)
