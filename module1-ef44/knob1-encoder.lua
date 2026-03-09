-- Channel 1 Tilt EQ (Low=CC2, High=CC3, inverse)
local v=self:encoder_value()
midi_send(0,176,2,v)
midi_send(0,176,3,127-v)
