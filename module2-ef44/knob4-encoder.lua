-- Channel 4 Mid EQ (CC 24)
local v=self:encoder_value()
midi_send(0,176,24,v)
