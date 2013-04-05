# Push

This is the home for a new, radically open-access & open-reviewed journal.

## To-Do List
* Improved instructions for cloning, branching, pushing, and submitting pull requests (esp. for blog
  and article submissions)
* Create a setup.html layout with links to opening an issue and in the head, `<small>Setup</small>`
* Add `description:` metadata to all core page YAML frontmatter & load into the `<head>` on the page
  template
* Write a script that lists all of the submissions in the `submissions/` directory when browsing
  to `http://localhost:4000/submissions/`
* Create a custom 404 page to display instead of the GitHub one; see
  https://help.github.com/articles/custom-404-pages


## Known issues

1. Once the ``_tmp/`` site directory has been generated, running ``$ jekyll --server --auto`` will
cause file regeneration, even when nothing has been changed. This is
[a known bug](https://github.com/mojombo/jekyll/issues/340) originating with directory_watcher. The
temporary fix is to just run ``$ rm -rf _tmp/`` before firing up the Jekyll server again. Or, just run ``$ ./serve.sh``
