-- Channel 3 Mute toggle (CC 16) / long press starts timer
if self:button_state()==127 then
self:timer_start(self:element_index(),500)
end
if self:button_state()==0 then
self:timer_stop(self:element_index())
if self.lp==0 then
self.muted=1-self.muted
midi_send(0,176,16,self.muted*127)
local ei=self:element_index()
if self.muted==1 then
led_color(ei,1,255,0,0)
else
led_color(ei,1,0,255,0)
end
end
self.lp=0
end
