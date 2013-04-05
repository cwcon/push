---
title: Write in YAML and Markdown
layout: learn
id: learn_yaml_and_markdown
---

# Write in YAML and Markdown

Rather than writing directly in HTML, you can write article and blog submissions in two arguably
simpler languages: [YAML](http://www.yaml.org/), which stands for “YAML Ain’t Markup Language” and
is used for metadata at the top of a file that is otherwise written in
[Markdown](http://daringfireball.net/projects/markdown/syntax#overview), a basic set of plain-text
formatting conventions that are converted to the HTML see on the *Push* site.

## Screencast

<div class="video-container">
  <iframe width="1280" height="720" src="?rel=0" frameborder="0" allowfullscreen="allowfullscreen"> </iframe>
</div>

[View HD video at YouTube.com](http://www.youtube.com/watch_popup?v=AAAAAAAAAAAAA&hd=1).

## Step-by-Step Instructions

Both *Push* submissions and *Push* blog posts are begun from starter files called `_starter.md`,
found in either `submissions/` or `_posts/`. Because the starter file for blog posts is simpler, it
will be the example considered here. But know that the submission starter file works the same way;
it just asks for additional information.

So, have a look at the contents of the `_posts/_starter.md` file:

    ---
    title: Post Title Here
    author: Author Name Here
    author_bio: >
                Bio here. Markdown is allowed. Break onto new lines if necessary.
    layout: post
    ---

    And start writing your post here, in Markdown. See the style guide at
    http://push.cwcon.org//learn/style-guide.html

The top portion of the file, between the two sets of three hyphens (`---`), is known as YAML, which
stands for [YAML Ain’t Markup Language](http://www.yaml.org/). It probably doesn’t even look like
computer language, really. All YAML consists of is some name for a piece of information (`title`,
`author`), followed by a colon, and then the information itself.

The only piece that looks unusual is the `author_bio: >` line; the angle bracket (`>`) just allows
for longer, multi-line pieces of text, such as an author’s biography. The important thing is to
begin the text following a `>` on an indented new line of text, and to keep the lines indented
uniformly.

### On Your Computer
*You’ll do this each time you start a new article for submission or blog post.*

#### Writing the YAML Frontmatter

1. **Blog Posts**: Rather than editing the `_starter.md` files directly, make a copy of them for
   your submission or blog post. Blog post files should start with the date in `YYYY-MM-DD` format
   (use the current date when you begin your post; the file name will be changed to the current date
   upon posting), followed by the post’s title separated by hyphens. Here’s the procedure for a post
   called “My Test Post” created on December 3, 2012:

        $ cd ~/Projects/push
        $ cp _posts/_starter.md _posts/2012-12-03-my-test-post.md

   **Article Submissions**: For article submissions, create a file with your last name (and the last
   names of your co-authors, if you’re co-authoring) and the article title. Here is how Jim Jenkins
   would prepare his file for an article titled “This Article Changes Everything”:

        $ cp submissions/_starter.md submissions/jenkins-this-article-changes-everything.md

2. You can now open the file for editing in your text editor. If you have command-line tools
   installed for opening files in your editor (like the `edit` command for TextWrangler), you
   can use them here:

        $ edit _posts/2012-12-13-my-test-post.md

   Otherwise, use your text editor to find and open the file in your `push` folder inside of
   `Projects`.

3. There’s no magic to writing YAML. The only catch is to make sure that you always leave a space
   after the colon for every value. The YAML for Johnny Q. Blogger’s “My Test Post” file might look
   like something like this:

        ---
        title: My Test Post
        author: Johnny Q. Blogger
        author_bio: >
                    I blog about things, and my middle
                    inital is Q. You’ll never guess
                    what the ‘Q’ stands for. Trust me.
        layout: post
        ---

        And start writing your post here, in Markdown. See the style guide at
        http://push.cwcon.org//learn/style-guide.html

   Pretty basic; leave the `layout: ` value set to `post`. And be sure that the lines of your
   biography are indented uniformly, as Johnny Q. Blogger has done.

4. At this point, you would probably want to make a commit to your Git repository, but
   [that’s covered in another section](/learn/add-and-commit.html).

#### Writing Content in Markdown

The remainder of the file, following the second set of three hyphens, is all
[Markdown](http://daringfireball.net/projects/markdown/syntax). If you’ve ever used a wiki,
Markdown is somewhat like a wiki’s formatting syntax.

Paragraphs are just created by two empty lines of white space (not unlike how you do a paragraph
in an email). Headings, lists, and other features have their own syntax. You can read all about
the preferred styles for *Push* in the [style guide](//learn/style-guide.html)--which you may want to
cross reference with
[its raw Markdown source](https://raw.github.com/cwcon/push/master/style-guide.md).

## Next Steps

Once you begin writing your article submission or blog post for *Push*, you’ll probably want to
see how it will appear, so it’s time to learn
[how to preview your work in your Web browser](/learn/previewing-work.html).
