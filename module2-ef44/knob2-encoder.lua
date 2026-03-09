-- Channel 2 Mid EQ (CC 12)
local v=self:encoder_value()
midi_send(0,176,12,v)
