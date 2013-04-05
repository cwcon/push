---
title: Pretend You Kept Your Copy of Push Updated
layout: learn
id: learn_git_rebase
---

# Pretend you kept your copy of Push updated

Once you create a separate branch, such as `submission`, to work, it too will fall out of sync
with the `master` branch off of the upstream *Push* repository at `cwcon/push`.

To make a cleaner [pull request](/learn/pull-requests.html), it’s helpful if you rebase the branch
you wish to submit to *Push*.

Rebasing essentially takes the commits from another branch (such as `master`), and puts your commits
at the very end of that branch. On GitHub and elsewhere, it will appear as though you built your
work on top of the very latest changes to *Push*.

**Please do not rebase after you have submitted a pull request.**

## On Your Computer
*Do this each time you need to rebase*

1. Be sure that you have [updated your `master` branch](/learn/stay-updated.html) to match the
   latest `master` at the upstream *Push* repository.

2. Once you’ve done that, check out your submission branch, and rebase it with the `master` branch:

        $ git checkout submission
        $ git rebase master
        First, rewinding head to replay your work on top of it...
        Applying: Starting a new submission

   In that example, a commit called “Starting a new submission” was applied after the end of the
   rebase.

3. **Important**: Once you rebase, your commits receive new SHA-1 hashes. This can confuse GitHub,
   and when you go to push a rebased branch, GitHub will likely refuse to accept it. You need to
   force GitHub to accept your rebased branch, using the -f flag:

        $ git push -f origin submission
