Eat your chow-chow while you chat-chat, with your coffee-coffee
========================================

chatchat is a simple "see what Meteor can do" example by [Ryan Wilcox](http://flavors.me/rwilcox).

It's also in CoffeeScript!

So, what is it again?
=====================================

It's a simple chat app.

How do I run it on my machine?
===============================

  1. Install [Meteor](https://github.com/meteor/meteor)
  2. Depending on your OS you may need to install mongodb
  3. `gem install foreman`
  4. `foreman run`

Wait, what????!!!
--------------------------------

I'm using a Procfile and [Foreman](http://ddollar.github.com/foreman/) to start the app up.  Normally Meteor talks to Mongodb just fine, but for some reason it needs some help in my case (an environmental variable). Foreman takes care of that for me.

(That took a good big half hour to figure out...)

I've used Foreman in pretty much every Rails project I've been on for the last 18 months (or so) and I can't imagine starting up a web stack without it. Because someone always forgets to start the Z server, and wonders about some obscure error.

So, what do you think about Meteor?
==================================


It's pretty cool. I know if I tried to do this with Ruby on Rails it would have taken me twice as much code (and that's if I had cheated and used [Pusher](http://pusher.com/).

I also know for anything *more than* a chat app I would have dealt with needing to create a REST API on the Rails side, do AJAX Javascript calls, and I'd want to maintain two seperate classes for the same thing (one in Ruby, on in JS). I know, because I've done all that for past projects.

With Meteor... well, I have 50 lines of Coffeescript logic and 50 lines of view code. Time to go from 0 Meteor knowledge (PLUS very rusty Coffeescript) to a complete chat-chat implementation took me about 3 hours.

Yes, it's not big, and maybe could be structured better
==============================

In a bigger app I would have split things up better.

