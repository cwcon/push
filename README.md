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

### Subtitle ideas
* Push: A Journal of Source-Literate Digital Writing
* Push: A Journal of Source-Level Digital Writing & Rhetoric
* Push: A Journal of Writing at the Source Level
* Push: Research on Writing at the Source Level
* Push: Applied Research in Writing with Source Code
* Push: Research on Writing with Source
* Push: Research on Writing & Source Code
* Push: Theory and Application of Source-Level Writing
* Push: The Journal of Writing and Source Code
* Push: The Journal of Writing in Source Code

## Known issues

1. Once the ``_tmp/`` site directory has been generated, running ``$ jekyll --server --auto`` will
cause file regeneration, even when nothing has been changed. This is
[a known bug](https://github.com/mojombo/jekyll/issues/340) originating with directory_watcher. The
temporary fix is to just run ``$ rm -rf _tmp/`` before firing up the Jekyll server again. Or, just run ``$ ./serve.sh``
