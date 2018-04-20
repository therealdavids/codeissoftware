---
layout: post
title: Localization for Americans
author: Matthew Miller
---
#### A call for considering localization support, even when demand seems absent.

As Americans, a majority of software projects we work on can be completed solely using English for everything from page content to error messages. In these situations, support for a single language is sufficient - after all, if the intended user base is entirely fluent in a single language, why should we dedicate development time and resources to finding an appropriate support library and incorporating it throughout the codebase?

As a developer fluent in a second spoken language and with experience working on projects requiring multilingual support, I argue that localization should be given consideration at the _outset_ of a project rather than as a feature branch months or years after release.

My argument boils down to this: when all of the tools are in place at the beginning of a project, support for additional languages can be as easy as adding a new file containing the translated text. When localization support must be introduced after the fact, though, then we inevitably find ourselves reallocating an abundance of developer time and resources away from new feature development to refactoring the entire codebase while testing concurrently to make sure no breaking changes occur. I think it's safe to say that, as developers, we would rather be working on new and interesting features than refactoring existing code!

Making the decision to add localization is only the first step. Next, you must identify potential ways to support this feature. Surprisingly, localization support may already exist within a project's chosen programming language or framework. The Android SDK, for example, [supports localization out of the box](https://developer.android.com/guide/topics/resources/localization.html) as a feature of its resources management. When such support is not baked in, or when such support is deemed insufficient, third-party libraries like the JavaScript-based [ngx-translate for Angular](https://github.com/ngx-translate/core) can be found to add localization support across the entire codebase. When no other options are available, well, you can always roll your own...

Once you've settled on how, technically, you'll localize your app, follow the plan no matter what! When copy isn't finalized, it may be tempting to use English placeholder text within a content template. Instead, add the placeholder text wherever the translated text will end up being stored within the project. This way, you complete the heavy lifting of deciding how to structure your translation. When final copy is delivered, you can quickly copy/paste it over the placeholders and immediately see the results.

Now for something that'll really blow your mind:

**Localization functionality will work exactly the same even when you're supporting a single language!**

I guarantee it'll be okay if your localization directory initially contains only a single language! Just default your program's localization scheme to English and continue development as usual. Then, when international demand for your product or service materializes, everything is in place for you to respond quickly with the addition of new foreign language copy. Before you know it, you'll have deployed your site in a new language, thus strengthening your value proposition to your newly-found global customer base!

In conclusion, localization support is something that should be considered at the beginning of a project, not after the fact. The little bit of development overhead of supporting localization during initial development will pay off in dividends later when new opportunities are identified that require foreign language support. Consider these practical localization practices now - future-you will thank you!
