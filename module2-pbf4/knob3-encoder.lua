-- Channel 3 Mid EQ (CC 18)
local v=self:encoder_value()
midi_send(0,176,18,v)
