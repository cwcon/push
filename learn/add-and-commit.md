---
title: Mark Major Milestones
layout: learn
id: setup_add_and_commit
---

# Mark major milestones

*Push* is run through Git and GitHub. Git is a version control system; you can
think of it as something like the track-changes feature in word processors. But Git provides
better control of what changes will be tracked, and when. It also makes individual changes shareable
with the rest of the world.

## Screencast

<div class="video-container">
  <iframe width="1280" height="720" src="?rel=0" frameborder="0" allowfullscreen="allowfullscreen"> </iframe>
</div>

[View HD video at YouTube.com](http://www.youtube.com/watch_popup?v=AAAAAAAAAAAAA&hd=1).

## Step-by-Step Instructions

### On Your Computer
*You’ll do this each time you want to mark your changes in Git.*

1. Run `git status` on the command line from within the `push` directory, and you’ll see a list of
   files that you’ve been working on that have changed. In the case of a new file, you’ll see a
   notice about `Untracked files:`

        $ git status
        # On branch submission
        # Untracked files:
        #   (use "git add <file>..." to include in what will be committed)
        #
        #	_posts/2012-12-03-my-test-post.md
        nothing added to commit but untracked files present (use "git add" to track)

2. The first step towards building a commit is to add the file to Git’s index. You can think of the
   index as a staging area for the commit. Add the file that has changes you want to commit by
   running `git add` followed by the name of the file, something like:

        $ git add _posts/2012-12-03-my-test-post.md

3. Running `git status` after `git add` shows a message similar to this:

        # On branch submission
        # Changes to be committed:
        #   (use "git reset HEAD <file>..." to unstage)
        #
        #	new file:   _posts/2012-12-03-my-test-post.md
        #

4. Finally, you commit the file to Git’s history. The quickest way to do this is with `git commit`
   and the `-m` flag, followed by a message describing your changes:

        $ git commit -m "Added the YAML frontmatter to my blog submission"

5. If you run `git status` after the commit, you’ll see a message that there is nothing to commit.
   Head back over to the file in your editor, make more changes, commit them, and repeat until
   your submission is complete enough for review.

6. If you run `git log` followed by the hyphen and a number (e.g., `git log -5`) you’ll see the
   history of your commits (and others that were made to *Push* up until the moment you cloned or
   last pulled from the main upstream repository). `-5` will show the five most recent commits.

## Next Steps

As you work and build your history of commits, it’s important to share your work on GitHub--not just
for eventual submission to *Push*, but to also back up your work to your account on GitHub’s
servers. [It’s time to push *Push*](/learn/git-push.html).
