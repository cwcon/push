---
title: Get a Copy of Push
layout: page
id: setup_fork_and_clone
---

## Getting Your Copy of Push

The last step is to get your own copy of Push, and put it in a place you’ll be able to find.

1. Fire up your command line (called Terminal in Mac and some Linuxes), and make sure that you’re
   in your home directory by running

        $ cd

   (note that `$` is just a convention for the command-line prompt; you don’t actually type it).

1. Create a directory, called `Projects`, where you’ll keep all of your Git repositories, including
   the one for *Push*:

        $ mkdir Projects

   then change into that directory:

        $ cd Projects

1. Log in to GitHub, and [fork a copy of the *Push* repository](https://github.com/cwcon/push/fork).
   When the forking process is complete, you’ll see at the top of your page an SSH URL, something
   that looks like `git@github.com:USERNAME/push.git`, with your username instead of `USERNAME`.

1. Back at the command line, you’ll clone a copy of the *Push* repository:

        $ git clone git@github.com:USERNAME/push.git

   but using, of course, your username intead of the `USERNAME` example above.

1. Change into the *Push* directory where your copy is:

        $ cd push

1. If you run `$ git branch`, you’ll see you’re on the `master` branch. Never do any work on
   `master`; instead, keep it in sync with the upstream `push` repository. To do that, run

        $ git remote add upstream git://github.com/cwcon/push.git

   Periodically, you can checkout the `master` branch and keep it up-to-date by running

        $ git checkout master
        $ git pull upstream master

1. Finally, run `$ bundle install` to install the required Gems for running Push locally.
