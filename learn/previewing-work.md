---
title: Preview Changes as You Work
layout: learn
id: learn_previewing_work
---

# Previewing Push on your computer

When you [clone your copy of *Push*](/learn/fork-and-clone.html), you pull down almost everything
you need to preview the journal on your computer *exactly* as it will appear on the Web at
[http://push.cwcon.org/](http://push.cwcon.org/). This section will cover installing and using the
remaining pieces of technology that will run *Push* on your computer.

## Screencast

<div class="video-container">
  <iframe width="1280" height="720" src="?rel=0" frameborder="0" allowfullscreen="allowfullscreen"> </iframe>
</div>

[View HD video at YouTube.com](http://www.youtube.com/watch_popup?v=AAAAAAAAAAAAA&hd=1).

## Step-by-Step Instructions

### On Your Computer
*You’ll only need to do the first step once; the second step is required every time you need to
restart the local Web server that runs on your computer.*

1. **Installing the required Gems**: *Push* comes with a `Gemfile`, which tells your copy of Ruby
   what needs to be installed in order for *Push* to run properly. Simply run:

        $ cd ~/Projects/push
        $ bundle install

    and all of the necessary Gems will be installed. If you’re using a system Ruby, you may have
    to run `$ sudo bundle install`.

2. *Push*’s reliance on Jekyll makes it ready-made to preview on a real, live web server running
   right on your computer. All you have to do is run

        $ ./serve.sh

   on your command line from within the `/push` directory. You will see some output on the
   command line that looks something like:

        $ ./serve.sh
        Configuration from /Users/USERNAME/Projects/push/_config.yml
        Auto-regenerating enabled: /Users/USERNAME/Projects/push -> _tmp/
        [2012-11-18 13:45:05] regeneration: 55 files changed
        [2012-11-18 13:45:06] INFO  WEBrick 1.3.1
        [2012-11-18 13:45:06] INFO  ruby 1.9.3 (2012-04-20) [x86_64-darwin12.1.0]
        [2012-11-18 13:45:06] INFO  WEBrick::HTTPServer#start: pid=8868 port=4000


   Open your web browser of choice, and point it to `http://localhost:4000/` You should see *Push*
   in your browser, just as it appears at `http://push.cwcon.org/`.

   * **Blog Posts** can be previewed by going to `http://localhost:4000/blog/`; find your post
   in the listing and click the heading to see the post on its own page.

   * **Article Submissions** can be previewed by opening the URL
     `http://localhost:4000/submissions/` and typing in the name of your article file with the
     `.html` extension (**not** `.md`). For example,
     `http://localhost:4000/submissions/jenkins-this-article-changes-everything.html` would be the
     URL for a source file named `submissions/jenkins-this-article-changes-everything.md`.


   As you make changes, the HTML will be automatically regenerated, so you can preview your work
   right in the browser. Just reload the page you’re working on as you’d reload any other Web page
   in your browser.

3. When you are done working on *Push*, you can return to your command line terminal and stop the
   web server. Just hold down the `Control` key and hit the `C` key on your keyboard.
   You’ll see that your command line returns something similar to:

        ^C[2012-11-18 13:47:08] INFO  going to shutdown ...
        [2012-11-18 13:47:08] INFO  WEBrick::HTTPServer#start done.
        $

## Next Steps

As you write and preview your work, you’ll want to [commit your changes to Git to preserve your best
work](/learn/add-and-commit.html).
