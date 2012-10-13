# DO NOT EDIT ANY OF THESE FILES

All of the files in this directory are generated from
[the Push `master` branch](https://github.com/cwcon/push), c/o [Jekyll](https://github.com/mojombo/jekyll) and friends.

To deploy to `gh-pages` to publish the journal at http://push.cwcon.org/, follow
these steps:

    $ jekyll
    $ cp -R _tmp/* _site/
    $ cd _site
    $ git add .
    $ git commit -m "Some meaningful commit message"
    $ git push upstream gh-pages

In order to deploy to the `gh-pages` branch, however, one needs read-write
access to the `push` repository. The instructions above assume that access, as
well as running

    $ git remote add upstream <upstream-url>

inside of the `_site/` submodule.

To get yourself to the public-facing side of the journal, head over to
http://push.cwcon.org/
