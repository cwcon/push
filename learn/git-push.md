---
title: Backup and Share
layout: learn
id: learn_git_push
---

# Backup and share

You may be used to sharing files by attaching them to emails, or using an FTP client. But just as
Git enabled you to transfer *Push* from GitHub down to your computer (either through a clone or a
pull), it also allows you to transfer changes from your computer to elsewhere in the world, a
procedure known as pushing.

## Step-by-Step Instructions

### On Your Computer
*You’ll do this each time you want to backup and share your changes on GitHub.*

When you clone a repository, like *Push*, Git refers by default to the remote repository as
`origin`. Pushing back is as simple as telling Git to push a specific branch, like
`submission`, to that original repository:

        $ git push origin submission
        Total 0 (delta 0), reused 0 (delta 0)
        To git@github.com:USERNAME/push.git
        * [new branch]      submission -> submission

The first time you push to a new branch, you’ll see the `* [new branch]` message, as in the example
above.

### On GitHub
*You’ll do this whenever you want to verify that your repository has received your changes.*

If you want to verify that your push was successful, navigate to your copy of *Push* on GitHub, and choose the dropdown menu that’s labeled ‘branch: **master**’. You should see your working branch
(e.g., ‘submission’) listed; select that branch, and then follow the history link to see GitHub’s representation of your commits.

## Next Steps

Once you’ve pushed your blog post or submission branch, you can officially submit to *Push*.
[Just open a pull request](/learn/pull-requests.html).
