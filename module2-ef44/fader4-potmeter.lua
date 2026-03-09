-- Channel 4 Pan (CC 23)
local v=self:potmeter_value()
midi_send(0,176,23,v)
