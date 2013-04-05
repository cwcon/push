---
title: Change File Names in Git
layout: learn
id: learn_branching
---

# Change file names in Git

Because the file names for submissions should reflect the title of the blog post or article, and
because blog posts should have the date of publication in their file names, you may sometimes have
to rename a file. There’s a specific Git way to do this, the `git mv` (or move) command. Follow
`git mv` with the file’s current name, followed by its new name:

    $ git mv 2012-12-03-my-test-post.md 2013-04-01-code-is-awesome.md

Running `git status` reveals that Git is aware of the name change, and ready for commit:

    $ git status
    # On branch submission
    # Changes to be committed:
    #   (use "git reset HEAD <file>..." to unstage)
    #
    #	renamed:    2012-12-03-my-test-post.md -> 2013-04-01-code-is-awesome.md
    #

All that’s required now is to commit the change:

    $ git commit -m "Revised file to reflect current date and blog title"

Note that this will keep things simpler; if you use your operating system to rename a file, Git
will think that the old file was deleted, and a new, untracked file was added. That makes for a
messier, harder-to-follow commit history.

## Need to delete a file?

To delete a file that’s been committed previously, use `git rm` followed by the file name:

    $ git rm 2012-12-03-my-test-post.md
    rm '2012-12-03-my-test-post.md'
    $ git status
    # On branch submission
    # Changes to be committed:
    #   (use "git reset HEAD <file>..." to unstage)
    #
    #	deleted:    2012-12-03-my-test-post.md
    #
    $ git commit -m "Removed test post file"

However, rather than deleting a file that was used for testing purposes, consider instead deleting
the whole branch--so you keep your submissions clean:

    $ git checkout master
    $ git branch -D submission
    Deleted branch submission (was 98d3c7d).

Then [create a new branch](/learn/branching.html) to start with a clean history.
