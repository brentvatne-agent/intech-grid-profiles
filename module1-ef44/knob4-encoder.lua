-- Channel 4 Tilt EQ (Low=CC20, High=CC21, inverse)
local v=self:encoder_value()
midi_send(0,176,20,v)
midi_send(0,176,21,127-v)
