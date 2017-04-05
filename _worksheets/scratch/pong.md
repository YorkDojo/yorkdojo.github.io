---
layout: worksheet
type: scratch
title: Pong
featured_image: pong.gif
---

> Intermediate level Scratch - 1.5hrs

Pong was one of the first ever videos games, and the first video game of a sport.

There are two players, each with a paddle that hit a ball back and forth. If the ball gets past the paddle, the other player gets a point.

## Step Zero: Sign in to Scratch

[Head over to Scratch editor](https://scratch.mit.edu), make sure you are logged in so then you can save your progress.

## Step One: Draw the background (or use ours!)

I made this background for the game...

![Pong background]({{ 'background.png' | prepend: page.url }})

Add this image to the Stage backdrop or make one that looks like it, you can make it however you like. The only things you need to make sure are...

- Both sides have a straight line of colour
- You can use any colour you like, so long as they are different

## Step Two: Code the paddle movement

Make a new sprite and call in `Player One`. For the costume, draw a single gray line like this...

![paddle]({{ 'paddle-costume.png' | prepend: page.url }})

Switch to the scripts, and use the following scripts.

![Basic paddle scripts 1]({{ 'paddle-1.png' | prepend: page.url }})

Click on the blue `i` next to the paddle sprite, and make sure that the sprite only moves up and down by clicking on the left-right arrows - this makes sure the paddle doesn't turn around!

![Paddle direction]({{ 'paddle-direction.png' | prepend: page.url }})

> Press the Green flag and test the game. What happens when you press the up and down keys?

The paddle disappears off the screen if we go too high or too low! Change the code to detect this before it happens:

![Basic paddle scripts 2]({{ 'paddle-2.png' | prepend: page.url }})

Duplicate the `player-1` sprite, and call it `player-2`. Change the keys used so that `q` and `z` as up and down.

![Basic paddle scripts 3]({{ 'paddle-3.png' | prepend: page.url }})

> Save your work. Press the Green flag and test the game. What happens now when you press the up and down keys, and q and z keys?

## Step Three: Bouncy bouncy

Make a new sprite by finding the ball sprite in the Sprite library, or make one yourself in the sprite designer.

We want to pick a random(ish) direction for the ball to start with, so use the following script...

![Ball scripts 1]({{ 'ball-1.png' | prepend: page.url }})

> Save yourself work, does the ball bouncing work? Try and change some of the variables in the code to see what the difference is.

## Step Four: Paddle hits

Now we've got the ball moving as it should, we need to change the scripts for the ball so that it detects it being hit by a paddle, and directs it back to the other player.

Make a new variable called `hits` and makes sure it's set to be `For all sprites`. We set this variable to `0` when the game starts, and add one for each time the ball is hit.

![Ball scripts 2]({{ 'ball-2.png' | prepend: page.url }})

In this code we used the `Broadcast` block. This allows us to run a script to change direction when it hits a paddle.

> Save yourself work, does the paddle hit the ball back?

## Step Five: Scores

At last we can play the game, but we can't win or lose! Set up two new variables: one for each player's score.

We can detect someone losing by the ball hitting the colour that's on their side. Use a `missed` broadcast to run the script when this happens.

Start by making a new block, by clicking on `More Blocks`, then `Make a Block`. Call it `Set ball off`, or something similar.

![New block]({{ 'new-block.png' | prepend: page.url }})

This block will allow us to re-use the code that starts off the ball, like we do when the game starts. Use it like this in the code:

![Ball scripts 3]({{ 'ball-3.png' | prepend: page.url }})

> Save yourself work and test the game. Does the score increase for the player that's won a point?

## Challenge I: Better looking scores

Scores at the moment doesn't look very nice...
