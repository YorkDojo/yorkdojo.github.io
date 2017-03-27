---
layout: worksheet
type: microbit
title: Meteors!
featured_image: meteors.gif
---

> Intermediate level microbit - 1hr. Original game & code by Emily & Claire!

In Meteors! we create a game that you control using the A & B buttons moving your spaceship to avoid meteors coming towards you.

## You will need...

- A BBC microbit

## Step Zero: Open up the block editor

[Open up the Microbit PXT editor](https://pxt.microbit.org/?lang=en) and then plug into your microbit into your computer.

## Step One: Controlling the player LED

We will use the A & B buttons to move left and right. To keep track of where the user is, we need to use a variable: make a new one called `player`.

![Make a new variable called 'player']({{ 'new-variable.png' | prepend: page.url }})

Now, use this code to move the player LED left and right.

![Moving from left to right]({{ 'simple-move.png' | prepend: page.url }})

> Upload the code to the microbit. What happens when you click A when the LED is all the way to the left?

## Step Two: Fix the player controls

The LED for the player disappear off left and right when you go too far!

The LEDs on the microbit have values that they correspond to, you can see them here...

![LED array values]({{ 'led-array.png' | prepend: page.url }})

You can the player dropping off the edges by stopping the `player` variable from getting too big (more than 4 going right) or too small (less than 0 going left).

![Moving from left to right]({{ 'better-move.png' | prepend: page.url }})

We also want to start with the player in the middle, so we can do this by pressing both A+B buttons at the same time which will reset and start the game.

![Start the game with the A+B buttons]({{ 'start-game.png' | prepend: page.url }})

> Upload the code to the microbit. Test that the player LED doesn't fall off the edges!

## Step Three: Falling meteors

Now we've got the player working, we can move onto the meteors.

These start at a random position on the top row of the grid and gradually fall down. So we need two variables to control their position, `meteor-x` and `meteor-y`.

`meteor-x` is set to a random value between 0 and 4, and `meteor-y` is controlled by a `for` loop which sets `meteor-y` from `0` to `4` in stages.

Add this code to the current A+B button press event...

![Meteors falling]({{ 'meteors-falling.png' | prepend: page.url }})

When the meteor reaches the bottom row, we need to see if the meteor has hit the player. We do this by comparing the `meteor-x` and `player` variables. If they are the same, then the meteor has hit the player :(

![Detect a meteor hit]({{ 'detect-meteor-hit.png' | prepend: page.url }})

Almost done! We now want to make sure that we keep playing the game until a meteor hits the player. We can do this using a `alive` variable and a `while` loop

![Alive variable]({{ 'alive-variable.png' | prepend: page.url }})

Finally... change the player controls so that the player can't move if the game is over:

![Player dead if alive variable is false]({{ 'player-dead.png' | prepend: page.url }})

> Upload the code to the microbit. Play the game!

## Challenge I: Keep a score (beginners, 5 mins)

- Add a `score` variable and add 1 to it every time a meteor is avoided.
- Show this variable instead of the giant X at the end of the game.

## Challenge II: Make the game harder as your score increases (intermediate, 15 mins)

- Now you've hot a `score` variable, use it to change how long the delay is in the meteor dropping code.
- The meteor shower starts slow and gets quicker as the `score` variable increases.

### Full code

[Full code including the challenges is seen here](https://pxt.microbit.org/79627-44937-15068-00704)
