---
title: Setup
layout: page
id: setup
---

# Setup

*Push* is based on a whole stack of technologies that, while powerful, are not all that common on
most digital writers’ computers. *Push* is meant to be a learning experience for all who work on it,
and the learning starts here.

## GitHub

This is the easiest part. Head over to GitHub and [sign up](https://github.com/signup/free) for a
free account.

## Operating-System Specific Instructions

Find your operating system below, and follow the instructions.

### Windows

Don’t use Windows. Get a free Linux, like [Ubuntu](http://www.ubuntu.com/). Windows is a lot of
things to a lot of people, but it’s not suitable for development.

...OK. So you won’t listen. Fine. Pick up a copy of [Rails Installer](http://railsinstaller.org/).
That will give you the things you need: Git, a Linux-like command line in the form of GitBash,
a decent Ruby and Rubygems. Make sure you also get a decent editor, like
[Notepad++](http://notepad-plus-plus.org/).

To set up Pygments, you’ll need to install [Python for Windows](http://www.python.org/getit/windows/). Then, on the command line, you’ll run

    $ easy_install Pygments

Finally, follow the [GitHub instructions](https://help.github.com/articles/set-up-git) for setting up Git and your [SSH keys](https://help.github.com/articles/generating-ssh-keys). And no matter what
GitHub advertises, don’t be tempted by a Git GUI client. Learn the command line, *Push*-style.

### Mac

First, you’ll need to install XCode from the Mac App Store. Once it’s installed (it takes awhile),
open XCode and install the Command Line Tools under XCode > Preferences > Downloads.

Then install [Homebrew](http://mxcl.github.com/homebrew/) and [RVM](https://rvm.io/rvm/install/).

You’ll also need to set up Pygments, to handle syntax highlighting. Fortunately, OS X comes with
Python installed, so just run

    $ sudo easy_install Pygments

Finally, follow the [GitHub instructions](https://help.github.com/articles/set-up-git) for setting
up Git and your [SSH keys](https://help.github.com/articles/generating-ssh-keys). And no matter what
GitHub advertises, don’t be tempted by a Git GUI client. Learn the command line, *Push*-style.

### Linux

If you’re on Linux, you probably know what you’re doing. Be sure to use your package manager to
install Git, and it’s a good idea to install [RVM](https://rvm.io/rvm/install/) to manage your Ruby environment.

Install Python, too, if it’s not already on your system, and use `easy_install` to install Pygments.

Then, follow the [GitHub instructions](https://help.github.com/articles/set-up-git) for setting up
Git and your [SSH keys](https://help.github.com/articles/generating-ssh-keys). And no matter what
GitHub advertises, don’t be tempted by a Git GUI client. Learn the command line, *Push*-style.

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

## Previewing Push on Your Computer

*Push*’s reliance on Jekyll makes it ready-made to preview on a real, live web server running right
on your computer. All you have to do is run

    $ ./serve.sh

on your command line from within the `/push` directory.

Open your web browser of choice, and point it to `http://localhost:4000/` You should see *Push* in
your browser, just like the one at `http://push.cwcon.org/`.

As you make changes, the HTML will be automatically regenerated, so you can preview your work right
in the browser. Nifty.

## Doing Actual Work

The sections below detail the basic ideas behind branching off to create article submissions,
blog posts, and features/fixes for *Push* itself.

If you’re a Git newbie, you might want to have a read through the
[Git Community Book](http://git-scm.com/book). For an excellent and thorough treatment of Git,
purchase Travis Swicegood’s [Pragmatic Version Control Using Git](http://pragprog.com/book/tsgit/pragmatic-version-control-using-git)

### Article Submission

1. To prepare a submission for *Push*, run

        $ git checkout -b submission

   which creates and checks out a branch called `submission`. (Note: you can use other branch names,
   but make sure that whatever you choose would make sense to yourself, and others.)

1. Then, change directories into `submissions` and make a copy of the `_starter.md` file, using
   the pattern `lastname-submission-title.md`. We’ll pretend for this example that Lesley Smith
   is preparing a submission called “HTML is the Best”:

        $ cd submissions
        $ cp _starter.md smith-html-is-the-best.md

1. Now’s a good time to add that file and commit it to Git:

        $ git add smith-html-is-the-best.md
        $ git commit -m "Starting my submission, HTML is the Best"

1. Open your file in your editor of choice, and start writing. As you reach what seem to be
   significant milestones in your writing, be sure to add and commit the file to Git as above.

1. To make sure that your work is backed up off of your computer and available for you to clone
   onto other computers, be sure to periodically run:

        $ git push origin submission

   which will push your `submission` branch to a `submission` branch on your fork of *Push*.

1. Once your submission is ready for review, submit a pull request by hitting the Pull Request
   button on GitHub on your fork of the *Push* repository. Make sure you choose the correct
   branch with your submission work from your repository when submitting your request.

### Blog Submission

1. To prepare a blog submission for *Push*, run

        $ git checkout -b blogpost

   which creates and checks out a branch called `blogpost`. (Note: you can use other branch names,
   but make sure that whatever you choose would make sense to yourself, and others.)

1. Then, change directories into `_posts` and make a copy of the `_starter.md` file, using
   the pattern `YYYY-MM-DD-post-title.md`. We’ll pretend for this example that Lesley Smith
   is preparing a blog post called “New CSS3 Styles” on November 1, 2012:

        $ cd _posts
        $ cp _starter.md 2012-11-01-new-css3-styles.md

1. Now’s a good time to add that file and commit it to Git:

        $ git add 2012-11-01-new-css3-styles.md
        $ git commit -m "Starting my blog post, New CSS3 Styles"

1. Open your file in your editor of choice, and start writing. As you reach what seem to be
   significant milestones in your writing, be sure to add and commit the file to Git as above.
   For example, filling out the YAML front matter at the top of the file is a milestone worth
   commiting.

1. To make sure that your work is backed up off of your computer and available for you to clone
   onto other computers, be sure to periodically run:

        $ git push origin blogpost

   which will push your `blogpost` branch to a `blogpost` branch on your fork of *Push*.

1. Once your submission is ready for review, submit a pull request by hitting the Pull Request
   button on GitHub on your fork of the *Push* repository. Make sure you choose the correct
   branch with your submission work from your repository when submitting your request.

### Features and Fixes

Features and fixes for *Push* should be kept on separate, topical branches. In this case, we’ll
pretend someone is on a typo-fixing rampage. All of the fixes, in other words, are catching typos.
No major content rewrites, or CSS style fixes, or anything like that (each of those would get there
own feature branch).

1. To prepare a topical branch for typos, run:

        $ git checkout -b typos

   which creates and checks out a branch called `typos`.

1. Open the problem file or files in your editor of choice, and start fixing. As you reach what seem
   to be significant milestones in your work, be sure to add and commit the files to Git.

1. To make sure that your work is backed up off of your computer and available for you to clone
   onto other computers, be sure to periodically run:

        $ git push origin typos

   which will push your `typos` branch to a `typos` branch on your fork of *Push*.

1. Once your feature/fix is ready for review, submit a pull request by hitting the Pull Request
   button on GitHub on your fork of the *Push* repository. Make sure you choose the correct
   branch with your submission work from your repository when submitting your request.
