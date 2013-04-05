---
title: Quick Instructions
layout: learn
id: setup_quick_instructions
---

# Quick instructions

The sections below review the basic steps for creating article submissions,
blog posts, and features/fixes for *Push* itself.

If you’re new to Git, you might want to have a read through the full [Learn](/learn/) area on
the *Push* site. Additionally, there is more help to be found in the [Git Community
Book](http://git-scm.com/book). For an excellent and thorough treatment of Git, purchase Travis
Swicegood’s [Pragmatic Version Control Using
Git](http://pragprog.com/book/tsgit/pragmatic-version-control-using-git)

## Article Submission

1. To prepare a submission for *Push*, run

        $ git checkout -b submission

   which creates and checks out a branch called `submission`. (Note: you can use other branch names,
   but make sure that whatever you choose would make sense to yourself, and others.)

1. Then, change directories into `submissions` and make a copy of the `_starter.md` file, using
   the pattern `lastname-submission-title.md`. We’ll pretend for this example that Lesley Smith
   is preparing a submission called “HTML is the Best”:

        $ cd submissions
        $ cp _starter.md smith-html-is-the-best.md

1. Now’s a good time to add that file and commit it to Git:

        $ git add smith-html-is-the-best.md
        $ git commit -m "Starting my submission, HTML is the Best"

1. Open your file in your editor of choice, and start writing. As you reach what seem to be
   significant milestones in your writing, be sure to add and commit the file to Git as above.

1. To make sure that your work is backed up off of your computer and available for you to clone
   onto other computers, be sure to periodically run:

        $ git push origin submission

   which will push your `submission` branch to a `submission` branch on your fork of *Push*.

1. Once your submission is ready for review, submit a pull request by hitting the Pull Request
   button on GitHub on your fork of the *Push* repository. Make sure you choose the correct
   branch with your submission work from your repository when submitting your request.

Need more help? [read through the *Push* Learn area](/learn/) and [style guide](/style-guide.html)
for additional information and guidance. And if you need a question answered, just [open an Issue on
the *Push* repository](https://github.com/cwcon/push/issues/new).


## Blog Submission

1. To prepare a blog submission for *Push*, run

        $ git checkout -b blogpost

   which creates and checks out a branch called `blogpost`. (Note: you can use other branch names,
   but make sure that whatever you choose would make sense to yourself, and others.)

1. Then, change directories into `_posts` and make a copy of the `_starter.md` file, using
   the pattern `YYYY-MM-DD-post-title.md`. We’ll pretend for this example that Lesley Smith
   is preparing a blog post called “New CSS3 Styles” on November 1, 2012:

        $ cd _posts
        $ cp _starter.md 2012-11-01-new-css3-styles.md

1. Now’s a good time to add that file and commit it to Git:

        $ git add 2012-11-01-new-css3-styles.md
        $ git commit -m "Starting my blog post, New CSS3 Styles"

1. Open your file in your editor of choice, and start writing. As you reach what seem to be
   significant milestones in your writing, be sure to add and commit the file to Git as above.
   For example, filling out the YAML front matter at the top of the file is a milestone worth
   commiting.

1. To make sure that your work is backed up off of your computer and available for you to clone
   onto other computers, be sure to periodically run:

        $ git push origin blogpost

   which will push your `blogpost` branch to a `blogpost` branch on your fork of *Push*.

1. Once your submission is ready for review, submit a pull request by hitting the Pull Request
   button on GitHub on your fork of the *Push* repository. Make sure you choose the correct
   branch with your submission work from your repository when submitting your request.

Need more help? [read through the *Push* Learn area](/learn/) and [style guide](/style-guide.html)
for additional information and guidance. And if you need a question answered, just [open an Issue on
the *Push* repository](https://github.com/cwcon/push/issues/new).

## Features and Fixes

Features and fixes for *Push* should be kept on separate, topical branches. In this case, we’ll
pretend someone is on a typo-fixing rampage. All of the fixes, in other words, are catching typos.
No major content rewrites, or CSS style fixes, or anything like that (each of those would get their
own feature branch).

1. To prepare a topical branch for typos, run:

        $ git checkout -b typos

   which creates and checks out a branch called `typos`.

1. Open the problem file or files in your editor of choice, and start fixing. As you reach what seem
   to be significant milestones in your work, be sure to add and commit the files to Git.

1. To make sure that your work is backed up off of your computer and available for you to clone
   onto other computers, be sure to periodically run:

        $ git push origin typos

   which will push your `typos` branch to a `typos` branch on your fork of *Push*.

1. Once your feature/fix is ready for review, submit a pull request by hitting the Pull Request
   button on GitHub on your fork of the *Push* repository. Make sure you choose the correct
   branch with your submission work from your repository when submitting your request.


Need more help? [read through the *Push* Learn area](/learn/) for additional information and
guidance. And if you need a question answered, just [open an Issue on the *Push*
repository](https://github.com/cwcon/push/issues/new).
