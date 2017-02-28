---
layout: worksheet
type: microbit
title: Magic 8-Ball
featured_image: 8-ball.gif
---

## Step One: Get MicroPython

On Google Chrome, find [the app 'MicroPython’ in the Web Store](https://chrome.google.com/webstore/detail/micropython/lhdjeebhcalhgnbigbngiaglmladclbo?hl=en-GB) - it’s free. This will allow you to write Python scripts and upload them to the Microbit. If you're reading this online, click the link to be put straight through to it.

## Step Two: Write an '8' to the screen

In the Microbit app, write the following code:

{% highlight python %}
from microbit import *
import random

while True:
    sleep(1000)
    display.show("8")
{% endhighlight %}

Upload the code to the Microbit and run it. What happens when you shake the Microbit?

## Step Two: Shake it!

Add the following code to what you have already written, inside the ‘While True:’

{% highlight python %}
if accelerometer.was_gesture("shake"):
    display.clear()
    sleep(1000)
    display.show("!")
{% endhighlight %}

Upload the code to the Microbit and run it. What happens when you shake the Microbit?

## Step Three: Write some responses

We need to list our responses, and in Python we do that in an array variable. An ‘array’ is just a fancy word for list. Write this code before the `While True:`

{% highlight python %}
answers = [
    "Yes",
    "No",
    "Maybe",
    "Yes, definitely"
]
{% endhighlight %}

## Step Four: Pick a random response

To make the Magic 8-Ball pick a random response, we can get it to pick a random answer using random.choice.

{% highlight python %}
sleep(1000)
display.scroll(random.choice(answers))
{% endhighlight %}

When you shake the Microbit, this code will make the BBC microbit wait a second and then show a random answer to the question you put to it.

### Full Code

{% highlight python %}
from microbit import *
import random

answers = ["Yes", "No", "Maybe", "Try again", "It doesn't look good", "Don't count on it"]

while True:
    display.show("8")
    if accelerometer.was_gesture("shake"):
        display.clear()
        sleep(1000)
        display.scroll(random.choice(answers))
{% endhighlight %}

> More BBC Microbit projects will be available soon
