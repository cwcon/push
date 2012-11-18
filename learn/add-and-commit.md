---
title: Mark Major Milestones
layout: page
id: setup_add_and_commit
---

# Mark major milestones

*Push* is run through Git and GitHub. Git is what is known as a version control system; you can
think of it as something like the track-changes feature in word processors. But Git provides you
better control of what changes will be tracked, and when.

## Screencast

<div class="video-container">
  <iframe width="1280" height="720" src="?rel=0" frameborder="0" allowfullscreen="allowfullscreen"> </iframe>
</div>

[View HD video at YouTube.com](http://www.youtube.com/watch_popup?v=AAAAAAAAAAAAA&hd=1).

## Step-by-Step Instructions

### On Your Computer
*You’ll do this each time you want to store your changes in Git.*

1. Run `git status` and you’ll see a list of files that you’ve been working on. In the case of a
   new file, you’ll see a.

2. The first step towards building a commit is to add the file to Git’s index. You can think of the
   index as a staging area (one that is more useful when you have related changes across a number of
   files.

3. Running `git status` after `git add`...

4. Finally, you commit the file to Git’s history. The quickest way to do this is with `git commit`
   and the `-m` flag, followed by a message describing your changes.

## Next Steps

As you work and build your history of commits, it’s important to share your work on GitHub--not just
for eventual submission to *Push*, but to also back up your work to your account on GitHub’s
servers. [It’s time to push *Push*](/learn/git-push.html).
