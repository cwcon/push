---
title: Write in YAML and Markdown
layout: page
id: setup_yaml_and_markdown
---

# Write in YAML and Markdown

YAML and Markdown...

## Screencast

<div class="video-container">
  <iframe width="1280" height="720" src="?rel=0" frameborder="0" allowfullscreen="allowfullscreen"> </iframe>
</div>

[View HD video at YouTube.com](http://www.youtube.com/watch_popup?v=AAAAAAAAAAAAA&hd=1).

## Step-by-Step Instructions

Both *Push* submissions and *Push* blog posts are begun from starter files called `_starter.md`,
found in either `submissions/` or `_posts/`. Because the starter file for blog posts is simpler, it
will be the example considered here. But know that the submission starter file works the same way.

So, let’s look at the contents of the `_posts/_starter.md` file:

    ---
    title: Post Title Here
    author: Author Name Here
    author_bio: >
                Bio here. Markdown is allowed. Break onto new lines if necessary.
    layout: post
    ---

    And start writing your post here, in Markdown. See the style guide at
    http://push.cwcon.org/style-guide.html

The top portion of the file, between the two sets of three hyphens (`---`), is known as YAML, which
stands for [YAML Ain’t Markup Language](http://www.yaml.org/). It probably doesn’t even look like
computer language, really. All YAML consists of is some name for a piece of data (`title`,
`author`), followed by a colon, and then the data itself.

The only piece that looks unusual is the `author_bio: >` line; the angle bracket (`>`) just allows
for longer, multi-line pieces of text, such as an author’s bio. The important thing is to begin the
text following a `>` on an indented new line of text, and to keep the lines indented.

### On Your Computer
*You’ll do this each time you start a new article for submission or blog post.*

1. Rather than editing the `_starter.md` files directly, make a copy of them for your submission or
   blog post. Blog post files should start with the date in `YYYY-MM-DD` format (use the current
   date when you begin your post; the file name will be changed to the current date upon posting),
   followed by the post’s title separated by hyphens. Here’s the procedure for a post called “My
   Test Post” created on December 3, 2012:

        $ cd ~/Projects/push
        $ cp _posts/_starter.md _posts/2012-12-03-my-test-post.md

   For article submissions, create a file with your last name (and the last names of your
   co-authors, if you’re co-authoring) and the article title. Here is how Jim Jenkins would prepare
   his file for an article titled “This Article Changes Everything”:

        $ cp _submissions/_starter.md _posts/jenkins-this-article-changes-everything.md

2. You can now open the file for editing in your text editor. If you have command-line tools
   installed for opening files in your editor (like the `edit` command for TextWrangler), you
   can use them here:

        $ edit _posts/2012-12-13-my-test-post.md

   Otherwise, use your text editor to find and open the file in your `push` folder inside of
   `Projects`.

3.
