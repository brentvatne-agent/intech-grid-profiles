-- Channel 1 Mid EQ (CC 6)
local v=self:encoder_value()
midi_send(0,176,6,v)
