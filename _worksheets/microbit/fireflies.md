---
layout: worksheet
type: microbit
title: Fireflies
featured_image: fireflies.gif
---

> Intermediate level microbit javascript - 1hr to 2hrs

Fireflies are little bugs that light up a part of their tail during twilight, there's a video from [BBC Earth showing them in action](http://www.bbc.com/earth/story/20160224-worlds-largest-gathering-of-synchronised-fireflies).

When one firefly lights up their tail, some of the other fireflies nearby also light up their own tail as they signal to one another.

Radio works a bit like this as well. The radio you here in the car is transmitted through the air invisibly from a big mast to your stereo. The radio in your car can only receive the message, it can't send them.

The microbit has a radio that can be used to both send and receive messages wirelessly and we can use it to create little fireflies!

## You will need

- At least three microbits

## Step one: Flash the LEDs when you press a button

Firstly, fire up [Microsoft PXT](https://pxt.microbit.org/?lang=en) and click on the 'Javascript' tab at the top.

Change the code so it's like this

![Display a LED flash]({{ 'flash.png' | prepend: page.url }})

The code sets the brightness to full, turns on all the LEDs, and then fades them out over half a second (or 500 milliseconds to be exact!)

Download and upload to the microbit. Do the LEDs flash when you press the A button?

## Step two: Send out a radio message

Back in the PXT editor, make sure that you can see 'Radio' underneath 'Led' in the blocks you can use. If you don't see it, click on the 'Add services' button at the bottom and click on 'radio'.

Click on the 'Radio' blocks, and find 'Send String', add it to the beginning of the flashing code, like this...

![Send a radio message]({{ 'boop.png' | prepend: page.url }})

You can send any bit of text you want, it doesn't need to be 'boop'.

Download and upload to the microbit. Do the LEDs still flash when you press the A button?

We can't really tell if the radio is sending the message yet, but let's see if it is!

## Step three: Listen for the radio boop message

To listen to the message we've sent, we need to use another Radio block...

![Receive a radio message]({{ 'get-boop.png' | prepend: page.url }})

Now, you need to save and upload the code to two different microbits.

What happens when you press the button on one of the microbits?

## Step four: Wait a bit...

In real life, fireflies don't always light up when others light up, and they don't do it straight away if they do.

So let's make the firefly wait a little bit of time after hearing the boop message to flashing...

You might not be able to find the 'Math.random' block, so you'll need to type it out.

![Wait a little bit]({{ 'wait.png' | prepend: page.url }})

`Math.random(10)` picks a number between 0 and 10, so `Math.random(450)` will pick one between 0 and 450.

Download and upload to all the microbits. Can you see it waiting a little bit after you press the button sometimes?

## Step five: Randomly radio boop again

One firefly can set off another one, we can do this by sending the radio boop again...

![Wait a little bit]({{ 'random-boop.png' | prepend: page.url }})

The `if (Math.random(5) >= 4)` part is a bit tricky. It says...

- Pick a number between 0 and 5 (like rolling a dice can be 1 to 6)
- Run the code if the number is 4 or 5 (greater than or equal to 4)

This means that one in three times (roughly) the microbit receives the radio boop, it will retransmit another boop.

Download and upload to all the microbits. Maybe add even more microbits! What do the microbits do now?

### Full code

![Full code]({{ 'full-code.png' | prepend: page.url }})

## Challenge I: Make a better screen flash animation (beginners, 15 mins)

The LED flash that we've made to look like the firefly tails is a bit basic.

Spend a bit of time improving the animation of the LEDs so it looks better to you.

## Challenge II: Change the variables (intermediate, 20 mins)

Have a look at the code again and change the places that use `Math.random`, how does changing these values change how the fireflies look?

> This worksheet was inspired by the excellent [Micropython guide for radio](https://microbit-micropython.readthedocs.io/en/latest/tutorials/radio.html#fireflies).
