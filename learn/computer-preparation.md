---
title: Computer Preparation
layout: learn
id: learn_computer_preparation
---

# Step 0: Computer preparation

To contribute to *Push* (and open yourself up to other kinds of development), you’ll probably need to set up your computer with a few technologies that are described below.

## GitHub

This is the easiest part. Head over to GitHub and [sign up](https://github.com/signup/free) for a
free account.

## Operating-System Specific Instructions

Find your operating system below, and follow the instructions.

### Windows

Don’t use Windows. Get a free Linux, like [Ubuntu](http://www.ubuntu.com/). Windows is a lot of
things to a lot of people, but it’s not a great choice for development.

...OK. So you won’t listen. Fine. Pick up a copy of [Rails Installer](http://railsinstaller.org/).
That will give you the things you need: Git, a Linux-like command line in the form of GitBash,
a decent Ruby and Rubygems. Make sure you also get a decent editor, like
[Notepad++](http://notepad-plus-plus.org/).

To set up Pygments, you’ll need to install [Python for Windows](http://www.python.org/getit/windows/). Then, on the command line, you’ll run

    $ easy_install Pygments

Finally, follow the [GitHub instructions](https://help.github.com/articles/set-up-git) for setting up Git and your [SSH keys](https://help.github.com/articles/generating-ssh-keys). And no matter what
GitHub advertises, don’t be tempted by a Git GUI client. Learn the command line, *Push*-style.

**Next Steps**: With your computer prepared and Git aware of your email address and name, you can now [get your own copy of the *Push* repository](/learn/fork-and-clone.html).

### Mac

First, you’ll need to install XCode. Lion and Mountain Lion users can grab a copy from the Mac App
Store. For Snow Leopard and older versions of OS X, you’ll need to download a copy from the [Apple
Developer site](https://developer.apple.com/xcode/).

You will need to register as an Apple Developer (this is free, versus the $99/yearly dev
programs); go to
[https://developer.apple.com/programs/register](https://developer.apple.com/programs/register) and
choose the Sign In  button to use your existing Apple ID if you already have one. Otherwise, create
a new Apple ID.

Once XCode’s installed (it takes awhile) and you have registered as an Apple Developer, open XCode and install the Command Line Tools under XCode > Preferences > Downloads.

Then install [Homebrew](http://mxcl.github.com/homebrew/) and [RVM](https://rvm.io/rvm/install/).

You’ll also need to set up Pygments, to handle syntax highlighting. Fortunately, OS X comes with
Python installed, so just run

    $ sudo easy_install Pygments

(If the account you use on your Mac isn’t an administrative account, you can either run
`$ su Administrator`, replacing `Administrator` with the name of your administrative account, before
running the `sudo` command above; or you can install Python via Homebrew. As a last resort, just
disable running Pygments by changing the *Push* `_config.yml` file by changing the line
`pygments: true` to `pygments: false`.)

Finally, follow the [GitHub instructions](https://help.github.com/articles/set-up-git) for setting
up Git and your [SSH keys](https://help.github.com/articles/generating-ssh-keys). And no matter what
GitHub advertises, don’t be tempted by a Git GUI client. Learn the command line, *Push*-style.

**Next Steps**: With your computer prepared and Git aware of your email address and name, you can now [get your own copy of the *Push* repository](/learn/fork-and-clone.html).

### Linux

If you’re on Linux, you probably know what you’re doing. Be sure to use your package manager to
install Git, and it’s a good idea to install [RVM](https://rvm.io/rvm/install/) to manage your Ruby environment.

Install Python, too, if it’s not already on your system, and use `easy_install` to install Pygments.

Then, follow the [GitHub instructions](https://help.github.com/articles/set-up-git) for setting up
Git and your [SSH keys](https://help.github.com/articles/generating-ssh-keys). And no matter what
GitHub advertises, don’t be tempted by a Git GUI client. Learn the command line, *Push*-style.

**Next Steps**: With your computer prepared and Git aware of your email address and name, you can now [get your own copy of the *Push* repository](/learn/fork-and-clone.html).
