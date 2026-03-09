-- Channel 1 Tilt EQ reset (Low=CC2, High=CC3 -> center)
self.lp=1
self:timer_stop(self:element_index())
midi_send(0,176,2,64)
midi_send(0,176,3,64)
led_color(self:element_index(),1,0,0,255)
