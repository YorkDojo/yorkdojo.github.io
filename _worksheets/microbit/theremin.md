---
layout: worksheet
type: microbit
title: Theremin
featured_image: theremin.gif
---

> Intermediate level microbit - 1hr

A theremin is an old electronic musical instrument played in mid air with your hands. The original theremin detects movements of both the player's hands and turns it into a spooky UFO-like sound.

For this version, we're just going to make it work with one hand and the BBC Microbit

## You will need...

- A BBC microbit & battery holder (optional)
- A pair of headphones, or a speaker (you can't use a Piezo buzzer)
- Two crocodile clips

## Step One: Open up the block editor

[Open up the Microbit block editor](https://www.microbit.co.uk/app/#create:xczaux) and then plug into your microbit into your computer.

## Step Two: Connect up the Microbit

The BBC Microbit can play sounds in your scripts, but first you need to attach the headphones or speaker to the Microbit.

To do this, connect one crocodile clip to the 0 output ring, and a another to the GND output ring. These are labelled on the side with the buttons

Now, connect the other end of the GND output crocodile clip to the base of the headphone cable, and the 0 output ring crocodile clip to the tip of it. It doesn't matter if they are around the wrong way. It's pictured below...

![Connecting the leads from the BBC microbit to the audio cable]({{ 'connect-leads.jpg' | prepend: page.url }})

## Step Three: Play some noise

Now we've connected up the Microbit, lets play some sound through it!

[Open up the Block Editor](https://www.microbit.co.uk/app/#create:xczaux), and use the following code

![Block editor code to play a musical note]({{ 'play-a-note.png' | prepend: page.url }})

Now, compile and upload your code to the BBC Microbit. Does it play a noise? BLEEEEEEEEEP!

## Step Four: Let's get the music moving

We want to be able to change the sound depending on how we move the Microbit around in real life. To do this, we need to use the accelerometer in the Microbit. The accelerometer is a chip on board the Microbit, but it's also in things like aircraft, rockets, modern cars and mobile phones - it measures movement up-down (Y), side-to-side (X) and backwards-forwards (Z).

So to change the music tone when we move the Microbit up and down, we need to use the 'accelelation (mg) Y' input block in the Block Editor, like so:

![Change the music note produced depending on the acceleration]({{ 'up-down.png' | prepend: page.url }})

Compile and upload your code again. What happens now when you wiggle the Microbit around?

## Step Five: Detect movement in all directions

To detect movement up down, side to side and backwards-forwards we need to use the 'accelelation (mg) Y', 'accelelation (mg) X' and 'accelelation (mg) Z' blocks.

Change the code to this

![Changing music tone in all directions]({{ 'all-directions.png' | prepend: page.url }})

## Challenge I: Change the variables (beginners, 10 mins)

- What effect does changing the '440' number in the 'ring tone (Hz)' block have?
- What happens when you change the numbers you divide by when setting the three movement variables?

## Challenge II: Musical steps (advanced, 10 mins)

Now you've got a working Microbit theremin, can you change the code so that you only get a different note every 100ms, rather than a continuous sliding sound?
