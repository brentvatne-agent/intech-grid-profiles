-- Channel 3 Tilt EQ (Low=CC14, High=CC15, inverse)
local v=self:encoder_value()
midi_send(0,176,14,v)
midi_send(0,176,15,127-v)
