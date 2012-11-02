---
title: Computer Preparation
layout: page
id: setup_computer_preparation
---

# Step 0: Computer Preparation

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
