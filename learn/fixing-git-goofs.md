---
title: Fixing Common Git Goofs
layout: learn
id: learn_fixing_git_goofs
---

# Fixing common Git goofs

It happens to everyone: You add a file that’s not ready to be committed. Or you commit a set of
changes that shouldn’t have been committed. You make a stupid spelling mistake in a commit message. Not to panic. It’s easy to correct most mistakes you make in Git.

## Restoring a changed file to its last committed state

Did you start messing around in a file, only to realize you want to restore it to how it was at its
last commit point? Just run `git checkout` followed by the file name; you’ll lose any changes you
made, but you’ll gain a clean copy of the file as of its last commit in Git.

## Unstaging a file

Did you run `git add` too soon? No problem. Run `git reset HEAD` followed by the file name to
unstage it.

## Fixing the most recent commit message

Need to fix your most recent commit message? Simply run `git commit --amend` and the editor you’ve
configured Git to use will open, and you can edit the message as needed.

## Resetting the most recent commit

Did you discover that the contents of a commit weren’t as perfect as they could have been? You
have two options:

1. Reset the commit history, but save the changes in your working directory. This allows you to
   fix the file without losing your changes: `git reset HEAD~1`. Edit your files as needed, then
   add and commit as usual.

2. Reset the commit history and lose the changes to the problem file(s) in the commit. Use with
   caution: `git reset --hard HEAD~1`.
