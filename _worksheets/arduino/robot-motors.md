---
layout: worksheet
type: arduino
title: "Robot: Motor control"
featured_image: asimo.gif
---

> Intermediate level arduino & circuits - 1hr

In this first robot tutorial, we'll look at how to make a real-life robot move using motors, and monitor how far we've gone.

There is a motor in each wheel of the robot, and our Arduino can tell these motors to move forwards or backwards depending on the signal we give it.

## You will need...

- A [SparkFun RedBot](https://www.sparkfun.com/products/12649) (or something like it)
- An Arduino Uno in the robot
- USB cables, and a laptop

## Step Zero: Fire up Arduino code editor

Get out your Arduino Uno and plug it in to your computer, and boot up [the online Arduino create code editor](https://create.arduino.cc). You can use the online or normal app for programming, but we're using the online version.

## Step One: Assemble the robot

If you're in CoderDojo York, this has already been done! Make a note of the PINs used for the motor output and feedback control.

## Step Two: Make the motors move

Connect up the Arduino to your laptop using the USB cable. To make a motor move, we need to send an analogue signal to the PIN it's connected to. The size of this analogue signal is how 'strong' the motor will turn, but it will have a maximum value. Use the following code to turn the left motor. Change the PIN numbers if the motors are connected differently.

<iframe src="https://create.arduino.cc/editor/acallaghan/f7ab954e-e45d-4e78-b874-5e754396a62f/preview?embed" style="height:510px;width:100%;margin:10px 0" frameborder="0"></iframe>

> Upload this Arduino sketch, and see that the motors move

## Step Three: Read the pulse reading

To know how far we've moved forward (or backward) we need to find out how far the wheels have moved. We can do this using something called a Rotary Encoder.

The motors have a magnetic metal disk that turns as the wheels turn, and a small detector that senses [the magnetic field changing using the Hall Effect](https://en.wikipedia.org/wiki/Hall_effect). So as the wheels turn, the sensor detects this and outputs a small analogue voltage. The more the wheels turn the more higher the voltage.

To read this motor signal, we use some more Arduino Code...

<iframe src="https://create.arduino.cc/editor/acallaghan/0a095d70-8df0-4646-a4c9-d9bbcdb355a1/preview?embed" style="height:510px;width:100%;margin:10px 0" frameborder="0"></iframe>

Now when you run the code, open up the Serial Plotter and see the `leftMotorEncoderCount` variable increase. Try and slow the wheel down slightly with your fingers, and you should see the variable increase less.

## Step Four: Move the motor by a little bit

Now we can read the motor signal, we can use this to turn the motors by a set distance. Use the following code to add more control to your motors.

<iframe src="https://create.arduino.cc/editor/acallaghan/3d64fec6-ac3e-4831-bb72-9d292f7d4000/preview?embed" style="height:510px;width:100%;margin:10px 0" frameborder="0"></iframe>

## Challenge I: Left turns

Write the code for a left turn by just turning the right wheel and not the left one, make it as close to a right angle turn as you can!

## Challenge II: Move around in a square

Write the algorithm for making the robot move in a square.

> This tutorial will have multiple sections added at a later date
