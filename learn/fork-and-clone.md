---
title: Get a Copy of Push
layout: learn
id: setup_fork_and_clone
---

# Get a copy of Push

To submit or contribute to *Push*, you need to get a copy of it. There are two parts to that: the
first takes place on GitHub, and the second on your computer.

## Screencast

<div class="video-container">
  <iframe width="1280" height="720" src="http://www.youtube.com/embed/OXJAfq3xPVI?rel=0" frameborder="0" allowfullscreen="allowfullscreen"> </iframe>
</div>

[View HD video at YouTube.com](http://www.youtube.com/watch_popup?v=OXJAfq3xPVI&hd=1).

## Step-by-Step Instructions

### On GitHub
*You only need to do this once.*

1. Log into your GitHub account, and then [go to the *Push* repository page](https://github.com/cwcon/push/).

1. Locate the Fork button in the upper right-hand part of your screen, and click it.

1. You’ll see a cute little animation from GitHub, reinforcing the idea that “forking” is basically
   just another word for copying.

1. When the forking process is complete, you’ll see at the top of your page an SSH URL, something
   that looks like `git@github.com:USERNAME/push.git`, with your username instead of `USERNAME`.
   Copy that URL to your operating system’s clipboard.

### On Your Computer
*You only need to do this once.*

1. Fire up your command line (called Terminal in Mac and some Linuxes), and make sure that you’re
   in your home directory by running

        $ cd

   Note that `$` is just a convention for indicating the command-line prompt; you don’t actually
   type it. Also, be sure to always hit the <kbd>Return</kbd> or <kbd>Enter</kbd> key at the
   end of each line of command-line input.

1. Create a directory, called `Projects`. It’s something of a convention to keep all Git
   repositories in a directory of that name, but you can choose another if you’d like.

        $ mkdir Projects

   then change into that directory:

        $ cd Projects

1. Now you’ll get a copy of the *Push* repository that you can work on. Just as “forking” was the
   word for making a copy of *Push* on GitHub, “cloning” pulls down a copy of *Push* to your
   computer. Type `git clone` at the command line, and type or paste in the URL you copied in the
   last step in the GitHub instructions above. It’ll look something like:

        $ git clone git@github.com:USERNAME/push.git

   but you’ll see your username instead of the `USERNAME` in the example above.

   When you hit <kbd>return</kbd> on that command, you’ll see some output not unlike:

        Cloning into 'push'...
        remote: Counting objects: 657, done.
        remote: Compressing objects: 100% (338/338), done.
        remote: Total 657 (delta 312), reused 606 (delta 261)
        Receiving objects: 100% (657/657), 329.38 KiB, done.
        Resolving deltas: 100% (312/312), done.

   If you get a message like “Permission denied (public key),” be sure that you have followed
   [GitHub’s instructions](https://help.github.com/articles/generating-ssh-keys) for setting up SSH
   keys on your computer, and try the `git clone` command above again.

1. To double-check that you have your copy, change into the *Push* directory where your copy is:

        $ cd push

   and then run the directory-listing command `ls -Fog`, which will show you output similar to that
   below:

        $ ls -Fog
        total 104
        -rw-r--r--   1     15 Oct 14 14:53 CNAME
        -rw-r--r--   1     61 Oct 14 14:53 Gemfile
        -rw-r--r--   1   1105 Nov 18 14:00 README.md
        -rw-r--r--   1    139 Oct 29 18:15 _config.yml
        drwxr-xr-x   8    272 Nov 18 15:36 _includes/
        drwxr-xr-x   6    204 Nov 18 15:29 _layouts/
        drwxr-xr-x   3    102 Oct 14 14:53 _plugins/
        drwxr-xr-x   5    170 Oct 29 18:15 _posts/
        drwxr-xr-x  14    476 Nov  2 10:49 _site/
        drwxr-xr-x   4    136 Oct 29 18:15 about/
        drwxr-xr-x   5    170 Oct 25 13:14 assets/
        drwxr-xr-x   4    136 Nov 13 13:40 blog/
        -rw-r--r--   1   1673 Nov 18 15:27 cfp.md
        drwxr-xr-x   4    136 Nov 13 13:40 contribute/
        -rw-r--r--   1   1907 Oct 29 18:15 index.md
        drwxr-xr-x   3    102 Oct 29 18:15 issues/
        drwxr-xr-x  19    646 Nov 13 13:40 learn/
        -rwxr-xr-x   1     40 Oct 14 14:53 serve.sh
        -rw-r--r--   1   5735 Oct 29 18:15 style-guide.md
        drwxr-xr-x   3    102 Oct 29 18:15 submissions/


   That’s just a listing of all the files and directories (those entries ending with a slash, `/`)
   that make up *Push*’s source files.

1. One last check: if you run `$ git status`, you’ll see a notice that you are on the `master`
   branch, and a message stating that there is nothing to commit:

        $ git status
        # On branch master
        nothing to commit, working directory clean

   That message is enough to indicate that, in addition to receiving all of the files for *Push*,
   you also have a functioning Git repository to work within.

## Next Steps

Now that you have your copy,
[it’s time to set up your workspace for your submission/contribution](/learn/branching.html).
