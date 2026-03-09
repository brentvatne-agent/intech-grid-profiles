-- Channel 3 Tilt EQ reset (Low=CC14, High=CC15 -> center)
self.lp=1
self:timer_stop(self:element_index())
midi_send(0,176,14,64)
midi_send(0,176,15,64)
led_color(self:element_index(),1,0,0,255)
