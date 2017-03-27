---
layout: worksheet
type: microbit
title: Step Counter
featured_image: counter.jpg
---

> Beginner level microbit - 30 mins

A step counter is a little device worn usually on the arm or leg that counts the number of steps a person takes in a day. You may have heard of the Fitbit or Garmin step trackers. Fancy ones even track your heart rate.

## You will need...

- A BBC microbit & battery holder
- A big rubber band

## Step Zero: Open up the block editor

[Open up the Microbit block editor](https://www.microbit.co.uk/app/#create:xczaux) and then plug into your microbit into your computer.

## Step One: 'steps' variable

To count the number of steps we take, we need to store the number on the microbit in it's memory. We can do this by using a variable. A variable is like a postbox that we can put numbers and text into, change it, and then get it back by using it's name later.

You can think of it like files on your computer: they have names, you can change what's in them, and the computer remembers what you did for the next time you open it.

For the step tracker, we make a new variable and call it 'steps'.

![Make a new variable in the block editor]({{ 'new-variable.png' | prepend: page.url }})

Now we've got the steps variable, we need to set it to zero when we turn the microbit on, like so:

![Set steps variable to zero]({{ 'set-steps.png' | prepend: page.url }})

## Step Two: Count shakes

To detect a step made by your feet, microbits have an accelerometer on board. The accelerometer is a special chip on board the microbit that detects movement in real life, it's also in things like aircraft, rockets, modern cars and mobile phones.

For this code though we're looking for a shaking movement, and adding 1 to the steps variable each time it happens.

Add more blocks to detect a shaking movement

![Add 1 to steps when shaken]({{ 'shake-steps.png' | prepend: page.url }})

## Step Three: Display the number of steps

We still don't know how many steps we've made!

To display the number of steps, get the microbit to show the 'steps' variable number on it's screen:

![Show number of steps taken]({{ 'show-counter.png' | prepend: page.url }})

Save and upload your code to the microbit. Plug in the battery pack and then strap it to a leg with the rubber band (or some other way!).

Walk about for a bit whilst counting your steps. Was the step counter right?

## Full code

[A working step counter is seen here](https://pxt.microbit.org/52907-71413-29477-09826)
