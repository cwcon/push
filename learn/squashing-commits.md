---
title: Submit as One Commit
layout: learn
id: setup_squashing_commits
---

# Submit as one commit

Making small, frequent commits is ideal as you’re working independently. But to make for an easier-to-read history when you submit an article, blog post, or fix to *Push*, you can use Git to squash multiple smaller commits into one larger commit.

## Step-by-Step Instructions

### On Your Computer

Run `git log --pretty=oneline --abbrev-commit` to see a list of your most recent commits. This might look something like:

    ddef6dd Completed article for submission to Push
    02221a7 Changes to match the Push style guide
    74abb12 Reworking introductory paragraphs
    8ca46ba Initial draft of article
    7255abb Fixed typo on home page
    ...other commits from where you forked Push...

*Note: if you’re not returned to the command line, hit `q` to exit the Git log listing.*

The goal here is to squash your four most recent commits (beginning with `8ca46ba Intial draft...`) into one. To do this, you’ll run `git rebase` in interactive (`-i`) mode, telling Git you want to work with your four most recent commits by referring to `HEAD` followed by a tilde (`~`) and the number of commits you wish to work with:

    $ git rebase -i HEAD~4

Your editor will open with a file that looks something like this (note that the commits are listed
in reverse chronological order):

    pick 8ca46ba Initial draft of article
    pick 74abb12 Reworking introductory paragraphs
    pick 02221a7 Changes to match the Push style guide
    pick ddef6dd Completed article for submission to Push

    # Rebase ddef6dd..7255abb onto 7255abb
    #
    # Commands:
    #  p, pick = use commit
    #  r, reword = use commit, but edit the commit message
    #  e, edit = use commit, but stop for amending
    #  s, squash = use commit, but meld into previous commit
    #  f, fixup = like "squash", but discard this commit's log message
    #  x, exec = run command (the rest of the line) using shell
    #
    # These lines can be re-ordered; they are executed from top to bottom.
    #
    # If you remove a line here THAT COMMIT WILL BE LOST.
    #
    # However, if you remove everything, the rebase will be aborted.
    #
    # Note that empty commits are commented out

Change the file so that `squash` appears next to the commits you wish to `squash`, leaving `pick` next to the commit message you intende to preserve (in this case, `ddef6dd Completed article...`). The top of this example file, then, would look like:

    squash 8ca46ba Initial draft of article
    squash 74abb12 Reworking introductory paragraphs
    squash 02221a7 Changes to match the Push style guide
    pick ddef6dd Completed article for submission to Push

A new editor may open, in which you can change the commit message if you wish. Otherwise, save and close the file, and you’re done.

If you have pushed to your remote prior to squashing commits, you will need to run `git push -f` with the name of your branch to force GitHub to update your remote repository. **Please do not squash commits that are already part of an open pull-request.**

