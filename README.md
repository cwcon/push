# Push

This is the home for a new, radically open-access & open-reviewed journal.

## To-Do List
* Improved instructions for cloning, branching, pushing, and submitting pull requests (esp. for blog
  and article submissions)
* Add `description:` metadata to all core page YAML frontmatter & load into the `<head>` on the page
  template


## Known issues

1. Once the ``_tmp/`` site directory has been generated, running ``$ jekyll --server --auto`` will
cause file regeneration, even when nothing has been changed. This is
[a known bug](https://github.com/mojombo/jekyll/issues/340) originating with directory_watcher. The
temporary fix is to just run ``$ rm -rf _tmp/`` before firing up the Jekyll server again. Or, just run ``$ ./serve.sh``
