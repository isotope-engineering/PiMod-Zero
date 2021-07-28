This is a RF modulator hat for interfaceing a Raspberry Pi Zero with an old TV.
Footprints are compressed because the art is huge. I should fix this.

# Setup Instructions


- Flash MicroSD Card with fresh Raspberrian image
- Install shield and power up, connect to TV
- Video should automatically display on the TV
- Turn TV volume up, you should hear a buzzing noise
- Tune the inductor on the PiMod until the buzzing is silent
- ssh into pi
- install pulseaudio
- Add lines to /boot/config.txt, something like this:
     dtoverlay=pwm-2chan,pin=18,func=2,pin2=19,func2=2
     dtoverlay=audremap,enable_jack=on
- Reboot
- wget https://www2.cs.uic.edu/~i101/SoundFiles/CantinaBand60.wav
- aplay CantinaBand60.wav
- You should be able to hear the music! Fine tune the inductor to achieve best sound quality
