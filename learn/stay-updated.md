---
title: Keep Your Copy of *Push* Updated
layout: page
id: setup_stay_updated
---

# Keep your copy of Push updated

Forking on GitHub couldn’t be easier--but the problem with forking is that the instant you fork,
you disconnect from the history of the repository at `cwcon/push`. Keeping in sync with the changes
made by other contributors has to be handled manually. Fortunately, Git has methods built right in
that make staying in sync an easy proposition.

## Screencast

<div class="video-container">
  <iframe width="1280" height="720" src="?rel=0" frameborder="0" allowfullscreen="allowfullscreen"> </iframe>
</div>

[View HD video at YouTube.com](http://www.youtube.com/watch_popup?v=AAAAAAAAAAAAA&hd=1).

## Step-by-Step Instructions

### On GitHub
*You only need to do this once.*

1. Go to the *Push* repository page on GitHub at https://github.com/cwcon/push/ and copy its Git
   Read-Only URL to your operating system’s clipboard, or just copy this one here:

        git://github.com/cwcon/push.git

### On Your Computer: Setup
*You only need to do this once.*

1. You should reserve the `master` branch purely for staying in sync with the upstream Push
   repository. Don’t commit to master, or merge your commits into it. Instead,
   [set up your own branches](/learn/branching.html) to work on submissions or fixes.

2. Change into the directory where you keep your copy of *Push*, and checkout the `master` branch:

        $ cd ~/Projects/push
        $ git checkout master
        Switched to branch 'master'

3. If you run the `git remote` command, you’ll learn the names and locations of different remote
   repositories that your copy is aware of. Initially, you’ll see output like this below:

        $ git remote -v
        origin	git@github.com:USERNAME/push.git (fetch)
        origin	git@github.com:USERNAME/push.git (push)

   Of course, you’ll see your GitHub username, not `USERNAME`.

4. To stay in sync with the main, or “upstream,” Push repository, you just need to add it as another
   remote to your repository. In this case, you’re naming the remote `upstream`:

        $ git remote add upstream git://github.com/cwcon/push.git

   Running `git remote -v` now shows that your repository is aware of the `upstream` remote, in
   addition to your own `origin` remote:

        $ git remote -v
        origin  git@github.com:USERNAME/push.git (fetch)
        origin  git@github.com:USERNAME/push.git (push)
        upstream  git://github.com/cwcon/push.git (fetch)
        upstream  git://github.com/cwcon/push.git (push)

5. Next, you want your repository to learn about all of the branches available on `upstream`:

        $ git fetch upstream
        remote: Counting objects: 37, done.
        remote: Compressing objects: 100% (12/12), done.
        remote: Total 28 (delta 18), reused 26 (delta 16)
        Unpacking objects: 100% (28/28), done.
        From git://github.com/cwcon/push
         * [new branch]      gh-pages   -> upstream/gh-pages
         * [new branch]      master     -> upstream/master

   The last `upstream/master` branch is the important one.

### On Your Computer: Routine Tasks
*You’ll do this each time you want to update your copy of* Push *with the upstream copy.*

1. Checking again that you’re on the `master branch` first, you can then pull the latest changes
   from the upstream *Push* repository into your copy of `master`. In this example, your copy
   is already up to date:

        $ git checkout master
        $ git pull upstream master
        From git://github.com/cwcon/push
        * branch    master    -> FETCH_HEAD
        Already up-to-date.

   If any new commits had been pulled down, you’d see them.

With your up-to-date copy ready to go, [you can set up new branches](/learn/branching.html) to
work on your own *Push* submissions or fixes.

#### Oops, I was messing around on `master`

Grabbed your copy of *Push* and started messing around on `master`? Not to worry.

1. First, if there’s anything you’d like to save, just create a branch where you can find your work:

        $ git checkout `master`
        $ git checkout -b `messy-master`
        Switched to a new branch 'messy-master'

2. Then, force Git to delete the old `master` branch:

        $ git branch -D master
        Deleted branch master (was 3298960).

3. Finally, create a new, pristine `master` branch based on the updated `upstream` remote:

        $ git checkout -b master upstream/master
        Branch master set up to track remote branch master from upstream.
        Switched to a new branch 'master'

   Now you are [free to create new branches](/learn/branching.html) to prepare your work for *Push*.
   And remember: never do anything on `master` except to run `git pull upstream master` and
   `git branch some-branch-name`.
