---
layout: post
title: "Apple Text-Rendering Bug Leads to Denial of Service"
date: 2014-05-30 15:22:16 -0400
comments: true
categories: [DoS, Apple, Unicode, Crash]
---
*For my first post I decided to recycle a short blog I wrote previously about the short lived iOS/OSX unicode DoS bug originally reported [here](https://news.ycombinator.com/item?id=6293824).  The bug was pretty interesting and unfortunately it was patched rather quickly.*  **The content of this post has been edited from the original to fix some grammar odd sounding sentences.**



In case you haven't heard, recently there was a bug disclosed for iOS/OSX which leverages a particular unicode string to crash the app that attempts to display it.  I'm not going to bother with a full write-up here mostly because it has been covered pretty well.  <!-- more -->If you want a little more insight into the issue check out this [post](http://signalsec.blogspot.com/2013/08/interesting-bug-in-ios-and-osx.html) by [patchwork](http://signalsec.blogspot.com/), one of my coworkers.  I want to talk a little bit more about ways to make use of it.

### Scenario - Herding the sheep

We live in an ever-increasingly connected world, consider your phone.  Its no secret that the vast majority of professionals regularly receive, view, and respond to email through their mobile device.  Say you want to ensure the target(s) hit your evil link on their PC, how could you do that?  Enter this bug.  

#### Step One: Create the Phish

{% img /images/2014-05-30-apple-text-rendering-bug-leads-to-denial-of-service/phish.jpg Sample Phishing Message%}

 
#### Step Two: Always check the fine print

{% img /images/2014-05-30-apple-text-rendering-bug-leads-to-denial-of-service/fineprint.jpg 5000 5000 Malicious Unicode String %}

That stuff there at the end is the unicode string that triggers the bug.  It will prevent this message from being displayed on any iOS device, which should increase the odds that it will be viewed on the target's PC.  That should increase the likelihood of successful compromise.

#### Step Three: Launch the Attack

No screenshot here, pretty self explanatory.

This is just one method for leveraging a bug that is, in an of itself, a mere annoyance.  Additionally, this is a interesting example of the ways that little things can be linked together for a larger impact.  It also demonstrated why it is important to keep your mobile devices updated.  Even if Apple decided not to patch this issue, it will probably stop showing up on Twitter and other sites in a week or so and most people will soon forget about it.  Personally, I'll keep this one in my back pocket for a special occasion.
