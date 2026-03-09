-- Channel 2 Tilt EQ reset (Low=CC8, High=CC9 -> center)
self.lp=1
self:timer_stop(self:element_index())
midi_send(0,176,8,64)
midi_send(0,176,9,64)
led_color(self:element_index(),1,0,0,255)
