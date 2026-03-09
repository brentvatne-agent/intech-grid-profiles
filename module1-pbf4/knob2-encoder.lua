-- Channel 2 Tilt EQ (Low=CC8, High=CC9, inverse)
local v=self:encoder_value()
midi_send(0,176,8,v)
midi_send(0,176,9,127-v)
