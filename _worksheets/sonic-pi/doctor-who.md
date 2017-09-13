---
layout: worksheet
type: sonic pi
title: Jungle Doctor Who
featured_image: party-daleks.gif
---

> Intermediate level Sonic Pi - 1.5hrs

Sonic Pi is software that allows you to make music using code! You can use what you've learnt about if statements and loops for example, and use it to make music on your computer live.

By the end of this worksheet, we'll make the code to play a dance remix version of the Doctor Who theme tune! There is no right or wrong tune to make with this sheet, but we're aiming for something a bit like the Doctor Who theme tune at least!

Listen here: <audio src="{{ 'jungle-doctor-who.mp3' | prepend: page.url }}" controls="controls"></audio>

## Step Zero: Download & install Sonic Pi

Head to [the Sonic Pi homepage](http://sonic-pi.net) and download Sonic Pi for your computer. There's a 'Portable' Windows version that doesn't need to be installed, and can just be run from a USB stick.

Once you've opened up Sonic Pi you'll see where you can write your code, and above it the 'Play' and 'Pause' buttons for starting and stopping the current song.

## Step One: A simple melody

First off, we're going to experiment with making a simple melody. Add the following code

![Simple melody using Sonic Pi]({{ 'simple-melody.png' | prepend: page.url }})

> Press play and hear what happens

The `live_lopp` function that Sonic Pi uses allows you to change the code and click 'Play' again without stopping the current song. That means you can do a live DJ set with your code, and change the code to change the melody or drum beats live. Pretty cool!

Another way to write that same code is like this...

![Refactored the same simple melody using Sonic Pi]({{ 'melody-refactor.png' | prepend: page.url }})

The `ring` runction that you see there instructs Sonic Pi to keep looping around the same notes in the list each time it 'ticks'. The `:r` you see is a 'rest' note, the silent space between played notes.

> Change the notes and where the rests are in the sequence to hear how it changes the notes

## Step Two: Using a synthesiser

We've got a faily simple melody now, but wouldn't it be good to make it sound more interesting? That's where a synthesiser or a synth comes in handy. A synthesiser is an electronic instrument, and Sonic Pi has a lot for you to try out and find one that sounds cool.

![Using a synth to play the melody]({{ 'melody-synth.png' | prepend: page.url }})

The `use_synth` function changes the synthesiser for the notes played in that block. I've also changed the melody and used numbers after the note names, signifying the octave of the note. Without a number after the note, they start in octave `4`.

The note octaves are...

`... :f3, :g3, :a3, :b3, :c4, :d4, :e4, :f4, :g4, :a4, :b4, :c5, :d5, :e5... `

> Change the melody and the synthesiser modes and hear the difference they make

## Step Three: Doctor Who bass-line

Now we know a bit more about how to play instruments in Sonic Pi, lets start our song by making the Doctor Who bass line, which I think is this...

![Doctor Who bass line on Sonic Pi]({{ 'bass-line.png' | prepend: page.url }})

We need to add the `use_bpm 120` to speed the notes played up to 120 beats per minute, or one every half a second. The bass line looks complicated, but you can copy the first half and just change the last note!

## Step Four: Swooshy ambient noises

Now we've got the bass line sorted out, there's some ambient noises in the background we can add to make it sound better and more authentic to the original tune. To do this, we can use one of Sonic Pi's samples. A sample is a sound that you can re-use again and again in the song, play it backwards, change how loud or it's pitch etc.

![Swooshy background noise]({{ 'swooshy-background.png' | prepend: page.url }})

## Step Five: The tune

The most important part of the song is the distinctive synth tune over the top of the ambient noise and bass line. This is a little tricky, but in the following code, we're defining the note lengths from semi-quaver to dotted minim so we can more easily write out the tune in the play section

![Doctor Who theme tune]({{ 'tune.png' | prepend: page.url }})

> Play the song, does it sound right?

## Step Six: Jungle drum beat

Now we've got our song, we need to get a dance beat in there! The most famous and widely used drum beat or 'break' is the Amen Break, it's been used as a sample in thousands of times in different songs over the years. Sonic Pi allows us to use it too! In a new 'Buffer' at the bottom, add the following code.

![Amen break]({{ 'amen-break.png' | prepend: page.url }})

> Click play. That's annoying!! It doesn't quite loop nicely does it!

The sample we've got doesn't quite loop nicely, it always stops and then starts. We can fix this by stretching the sample out so it takes longer to finish, with the following code:

![Looping Amen break]({{ 'looping-amen-break.png' | prepend: page.url }})

Hooray! It's now looping as it should, add this into our original song, making sure to change the `sleep` and `beat_stretch` variables to `3` so it's in time with our music.

## Step Seven: Experiment!

There are no mistakes in music really - just experiment to see what sounds good, and practice to get better at it. You can maybe add some new swooshy noises in the background or add more to the melody, as this is only part of the song.

## Full code

[You can see my full code here](https://github.com/YorkDojo/yorkdojo.github.io/blob/master/_worksheets/sonic-pi/doctor-who/jungle-doctor-who.rb)
