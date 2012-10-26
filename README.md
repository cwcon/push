This is the home for a new, radically open-access & open-reviewed journal.

## Planning

### Site areas

* Home (announcement/invitation to start) -> `index.html`
* Contribute -> `contribute/`
  * World’s most direct CFP -> `contribute/index.html`
  * Submission guidelines -> `contribute/guidelines.html`
  * Submission instructions -> `contribute/instructions.html`
  * Setup instrux -> `contribute/setup.html`
* Issues (once there are some...) -> `issues/`
* Blog -> `blog/`
* About -> `about/`
  * ? -> `about/index.html`
  * People -> `about/people.html`
  * Colophon -> `about/colophon.html

## Layout templates

* Core site pages -> `_layouts/page.html`
* Articles -> `_layouts/article.html`
* Blog posts -> `_layouts/post.html`

## Includes

* Footer -> `_includes/footer.html`

## Known issues

1. Once the ``_tmp/`` site directory has been generated, running ``$ jekyll --server --auto`` will
cause file regeneration, even when nothing has been changed. This is
[a known bug](https://github.com/mojombo/jekyll/issues/340) originating with directory_watcher. The
temporary fix is to just run ``$ rm -rf _tmp/`` before firing up the Jekyll server again. Or, just run ``$ ./serve.sh``
