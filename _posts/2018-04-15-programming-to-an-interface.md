---
layout: post
title: Programming to a Common Interface
author: David Gaskins
---
#### Teamwork made easy by setting requirements at the start. 

Over the years, I remember being exposed to many valuable programming concepts that individually made sense, but when it came down to starting a project, I had a rough time applying those concepts. This article highlights one such concept: **Programming to a Common Interface**, and illustrates how using a common interface makes it easier to work in teams by applying this practice to a small hackathon-sized project. My hope is that after reading this article, more programmers will understand how they can apply this approach in their day to day code (schoolwork, hacks, on the job, ...) and make an effort to search out more best practices as well.

First, it's important to understand what the program will achieve.

**Problem Statement:** I'd like a website that combines the functionality of the following websites: https://downforeveryoneorjustme.com/ and
https://isitchristmas.com/ (no particular reason why I chose these two requirements). Note: I will use [AngularDart](https://webdev.dartlang.org/angular/), but that this can be done in any number of frameworks or languages. 

Now, let's focus on adhering to a common interface. Both of these features can be distilled down to answering a simple question: "Is [X] true?". So we can define a very simple interface, that returns a boolean. The advantage of defining this contract before we start, is that now the team member(s) that are building the UI can rely on this contract and start building their portion **before the backend is working correctly**. This is done in the example below by using classes to emulate a working backend (often called fake data classes). 

From the following commits, we can see how to use fake data to develop the rendering logic without having the actual logic implemented. 
 * [Wiring Fake Data Service into the component](https://github.com/davidgaskins/izzet/commit/8d1e7a809413a330e1548e336fdead1bbe33bb42)
 * [Style the component using only the fake data service](https://github.com/davidgaskins/izzet/commit/719792fa80cc3b143b7c836ccf9e79c2acf99056)
I encourage the reader to check out this code by downloading locally and running it and the various commit points to see that this actually works. 

Eventually though, it is important to actually [implement the logic](https://github.com/davidgaskins/izzet/commit/daaff696741bd8445466d193cbaa895e9b6e84fe) that the renderer is looking for.
And of course, [write tests](https://github.com/davidgaskins/izzet/commit/cb8f596121badd672ca6a43fda8dfe0596e2d18d) for our christmas module logic.

Note, the UI is actually not complete either. We are missing the main dashboard component. But, that’s alright because we can still [implement the dashboard component](https://github.com/davidgaskins/izzet/commit/5c0cde174bc265cae2aed78cf4feb80a757b56ed) without all the regular programming logic being finished. Again, we can work on either side of the project (UI or logic) because we are relying on the common interface. 

At this point, the user interface is complete without the logic being implemented yet. So in order to have a finished project, we create and wire up a [real http request](https://github.com/davidgaskins/izzet/commit/b25ad503d7abf5563d33423e6f859ba703755f3b) class to test if the website is up. 

In summary, we can see that it is very possible to implement the UI separately from the  logic, by agreeing to a common interface at the outset. Thanks for reading, and if you are curious on how to find other good coding practices I've listed a couple resources below that I have personally enjoyed reading throughout the years. 

* [Clean Code](https://www.amazon.com/Clean-Code-Handbook-Software-Craftsmanship/dp/0132350882)
* [Design Patterns: Elements of Reusable Object-Oriented Software](https://www.amazon.com/Design-Patterns-Elements-Reusable-Object-Oriented/dp/0201633612/ref=pd_lpo_sbs_14_t_0?_encoding=UTF8&psc=1&refRID=1C5W4C2YAXKZWMGMCZZD)

