---
layout: post
title: Programming to an Interface
author: David Gaskins
---
Over the years, I remember being exposed to many valuable programming concepts that individually made sense, but when it came down to starting a project, I had a rough time applying those concepts. This article illustrates how applying one such concept: **Programming to a Common Interface**, to a simple project makes it easier to implement because you don’t have to implement working logic before you start using the class. My hope is that after reading this article, more programmers will apply this in their day to day code, whether that be in school, in hackathons, or on the job.

Let's start out with what the program will achieve.

**Problem Statement:** A website that combines the functionality of the following websites: https://downforeveryoneorjustme.com/ and
https://isitchristmas.com/ (no particular reason why I chose these two). Note: I will use [AngularDart](https://webdev.dartlang.org/angular/), but that this can be done in any number of frameworks or languages.

First: Let's apply the single responsibility principle, so that we can understand what interface we can define. When understanding project requirements, look for keywords like “and, but, except”. They are indicators that something should be isolated. In this case, we will be writing a module for fetching the status of a website and a module for determining if it's currently Christmas. 

Now let's focus on each module independently, but focus on adhering to a common interface (returning a Boolean). The advantage of using the interface here, is that we can use fake data classes to implement the website UI before the actual programming logic (very useful in school group projects and is critical to programming in the workplace). From the following commits we can see how to use fake data to develop the rendering logic without having the actual logic implemented. 
 * [Wiring Fake Data Service into the component](https://github.com/davidgaskins/izzet/commit/8d1e7a809413a330e1548e336fdead1bbe33bb42)
 * [Style the component using only the fake data service](https://github.com/davidgaskins/izzet/commit/719792fa80cc3b143b7c836ccf9e79c2acf99056)
Eventually though, it is important to actually [implement the logic](https://github.com/davidgaskins/izzet/commit/daaff696741bd8445466d193cbaa895e9b6e84fe) that the renderer is looking for.
And of course, [write tests](https://github.com/davidgaskins/izzet/commit/cb8f596121badd672ca6a43fda8dfe0596e2d18d) for our christmas module logic.

Note, I’ve actually only created a simple status renderer, not the whole dashboard. But, that’s alright because we can still [implement the dashboard component](https://github.com/davidgaskins/izzet/commit/5c0cde174bc265cae2aed78cf4feb80a757b56ed) without all the regular components being finished. Then, leaving the hardest for last (you might imagine a group project scenario where the Backend is lagging behind the Frontend), we create and wire up a [real http request](https://github.com/davidgaskins/izzet/commit/b25ad503d7abf5563d33423e6f859ba703755f3b) class to test if the website is up. 

In summary, we can see the real benefit of being able to implement the UI separately from the actual logic, which is very useful at hackathons, in the classroom, and of course in the workplace.
