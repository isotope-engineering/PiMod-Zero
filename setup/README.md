# Setup Instructions

## Hardware Assembly

First things first, you'll have to solder the headers to their respective locations on the PiMod Zero and your Raspberry Pi Zero. Once that is done, you can proceed to software setup.

## Software Setup

- Flash MicroSD Card with fresh Raspberrian image
- Install shield and power up, connect to TV
- Video should automatically display on the TV
- Turn TV volume up, you should hear a buzzing noise
- Tune the inductor on the PiMod until the buzzing is silent
- ssh into pi
- `sudo apt install pulseaudio`
- Add lines to /boot/config.txt, something like this:
```
dtoverlay=pwm-2chan,pin=18,func=2,pin2=19,func2=2
dtoverlay=audremap,enable_jack=on
```
- Reboot
- `wget https://www2.cs.uic.edu/~i101/SoundFiles/CantinaBand60.wav`
- `aplay CantinaBand60.wav`
- You should be able to hear the music! Fine tune the inductor to achieve best sound quality
