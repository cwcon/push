---
title: Set Up Your Workspace
layout: learn
id: learn_branching
---

# Set up your workspace

Git keeps workspaces organized by branches, and that organization will help simplify the process of
submitting to *Push*. Fortunately, once you’ve created and checked out a branch, you don’t have to
think too much about branches (except when it’s time to create your next submission or fix).

## Screencast

<div class="video-container">
  <iframe width="1280" height="720" src="?rel=0" frameborder="0" allowfullscreen="allowfullscreen"> </iframe>
</div>

[View HD video at YouTube.com](http://www.youtube.com/watch_popup?v=AAAAAAAAAAAAA&hd=1).

## Step-by-Step Instructions

### On Your Computer
*You’ll do this each time you want to start work on a new submission/contribution.*

1. Once you have [your copy of *Push*](/learn/fork-and-clone.html), change into the directory
   where it’s stored on your computer (`~/Projects/push/`, if you’re following the instructions
   here):

        $ cd ~/Projects/push

2. Run the `git branch` command to learn which branch you are on, and which other branches are in
   your copy of the *Push* repository:

        $ git branch
        * master

   In Git, work always takes place on a particular branch. Branches function like separate timelines
   or alternate universes for the files that make up a project, like *Push*. When you first clone
   *Push*, you’ll have access to its `master` branch. Think of the `master` branch as the official,
   approved version of *Push*.

3. To prepare a submission, you’ll create your own branch to work on. Don’t do any work on the
   `master` branch itself; it’ll simplify your life if you leave it to only contain the official
   version of *Push*. For example, to set up your workspace to begin writing an article submission
   to *Push*, you’ll set up a `submission` branch for yourself to work on:

        $ git branch submission

   Run `git branch` again, and you’ll see that Git now lists a `submission` branch:

       $ git branch
       * master
       submission

4. To actually do work on your `submission` branch, you’ll need to check the branch out. “Checking
   out a branch” is just Git’s phrase for switching to a branch:

        $ git checkout submission
        Switched to branch 'submission'

5. You can always see which branch you’re currently working on by running `git branch`:

        $ git branch
        master
        * submission

   Just look for the branch with an asterisk (`*`) next to its name.

### Branches for Blog Posts or Features/Fixes to *Push*

1. If you’re working on a blog post for *Push*, you would want to create a branch just for that
   purpose. Always create your branches off of the `master` branch, so that you’re working
   with only the official copy of *Push*. First, checkout the `master` branch:

        $ git checkout master
        Switched to branch 'master'

   You can then create a branch for your blog post:

        $ git branch blogpost
        $ git checkout blogpost
        Switched to branch 'blogpost'

   Or, to create and checkout a branch at the same time, just run `git checkout -b blogpost`:

        $ git checkout -b blogpost
        Switched to a new branch 'blogpost'

2. If you’re planning to submit a fix or new feature to the core files of the journal (layouts,
   stylesheets, etc.), use the same procedures described above, but keep the name of your branch
   descriptive of the change you’re making. For example, if you’re making some fixes to the
   typographic styles of *Push*’s pages, you might do something like this:

        $ git checkout master
        $ git checkout -b typography
        Switched to a new branch 'typography'

   Be sure to keep each feature fix in its own branch, and always create any new branch off of
   `master`. [Read how to keep `master` up to date](/learn/stay-updated.html) with the main *Push*
   repository.

## Next Steps

With a branch created and checked out for you to work,
[you can begin writing in YAML and Markdown](/learn/yaml-and-markdown.html) for your blog post or
article submissions.
