---
layout: worksheet
type: iot
title: Amazon Echo Skill
featured_image: hal.gif
---

> Advanced serverless web & IOT programming - 2hrs

In this worksheet we're going to make a new 'Skill' for the Amazon Echo device.

The Amazon Echo is a hands free, voice controlled device that is able to play music, read the news, change wifi lights and loads more.

For this tutorial, you don't actually need an Echo to test, but if you do, you can!

## Step Zero: How the Echo device works

When you power up the Echo device, it has a small and really fast chip that constantly listens out for someone saying "Alexa".
If it hears it, it starts recording everthing afterwards. In the meantime, it starts to 'stream' the sound file over the Internet to Amazon where it works out what's being said.

Alexa provides 'skills' that allow the user to interact with it in interesting and different ways, like

> Alexa, tell Uber to order me a taxi

> Alexa, ask National Rail when the next train from York to London is leaving

In the above examples 'Uber' and 'National Rail' are what's called the 'Invocation Name', the name of the application that we're asking.

And everything after is called an 'Intent' - what the user wants to do with the application.

### Steps to make an Echo Skill

To make a skill of our own that runs on an Amazon Echo, we need to do the following&hellip;

1. Register as an Amazon Developer account
1. Setup Hello World code on Amazon Lambda - this is where your code will run
1. Register in the Amazon Skills Portal - this is where you tell an Echo how to run your code
1. Test it in the browser, with an Echo emulator
1. Customise it to however you like

So we're going to create a new Application and an Intent for it

## Step One: Setup the code on Amazon Lambda

The Amazon Echo is (duh) an Amazon product, so it makes to run the code on other Amazon servers - this will mean it will be found much more quickly, and hopefully we'll get more help from Amazon if it doesn't work.

First off, [we need to register an Amazon Web Services (AWS) account](https://console.aws.amazon.com/lambda/home) - if you already have an Echo, use the same account that it's registered with. Some of the services on AWS incur real-life charges that can ramp up pretty quickly, so be careful.

Using Amazon Lambda to run code is free for the first 1 million runs though, so I think we'll be fine!

Once you're registered, find the 'Lambda' section under 'Compute' or click the link above again to take you there.

### Make a new Lambda function

Code on Amazon Lambda runs in 'functions' - like the functions you've seen in programming before.

#### A bit more about Amazon Lambda (if you're interested!)

For almost all websites, the code behind it runs on a server - basically someone else's computer that's always turned on & connected to the internet. These servers are usually in
big & impressive warehouses called 'datacentres' that house many many many servers, each running different programs that make up the code for different websites.

With Amazon Lambda however, we just rent just a tiny amount of a huge server for small amount of time - which turns out is much cheaper than owning or renting an entire server to yourself.

This kind of running code is becoming more common as the web gets faster and more reliable - it used to be all the big companies had their own datacentres, but they don't need to anymore.

The code still runs, but it might be that the server is busy and doesn't get to your code first, or that your code takes too long &amp; is 'timed out' - the running time is limited, and will get killed after say 10 seconds.

## Step Two: Set up the Amazon Echo skill

Now [we need to go to the Alexa Developer console](https://developer.amazon.com/alexa/console/ask?).
Once you're registered & logged in, press the 'Create Skill' button.

### Create a 'Hello World' skill
