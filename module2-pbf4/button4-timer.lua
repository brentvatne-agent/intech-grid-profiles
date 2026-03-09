-- Channel 4 Tilt EQ reset (Low=CC20, High=CC21 -> center)
self.lp=1
self:timer_stop(self:element_index())
midi_send(0,176,20,64)
midi_send(0,176,21,64)
led_color(self:element_index(),1,0,0,255)
