---
title: Style Guide
layout: page
category: instructions
id: style_guide
---

# The Push style guide

This document needs a lot of help, and will emerge in a fuller form over time.

## Source Formatting

*Push* is nothing but a collection of plain-text files. To keep everything uniform and readable,
set up your editor to the following conventions (Google around for help with your specific editor):

1. Use UTF-8 (Unicode) encoding without the byte-order mark (BOM)
1. Use Unix-style line endings (LF), not Windows-style (CR)
1. Indent using two spaces, not tab characters (many editors can be configured to insert two spaces
   automatically when you press the Tab key)
1. Hard-wrap long lines of text to under 100 characters

## Markdown Styles

All of *Push*’s content pages, as well as its blog posts and article submissions, are written in
[Markdown](http://daringfireball.net/projects/markdown/syntax). Cross-reference the
[source of this page]() to see how the Markdown styles are achieved.

### Headings

There are four levels of headings available on *Push*:

# Heading one is in sentence case, and used for the title of a page/post/article

## Heading Two is in Title Case, Used for Major Headings

### Heading Three is Title Case, Used to Subdivide Content under Major Headings

#### Heading four is sentence case, used to subdivide heading-three content

### Paragraphs

Paragraphs are just blocks of text with a line of white space above and below.

### Lists

Use lists with abandon. There are two kinds availble to use, unordered (bulleted) and ordered
(numbered).

#### Unordered Lists

* **Start each item with an asterisk**, `*`, just like you would in plain-text email.

* **You can bold the opening phrase** for emphasis.

* **List items can contain multiple paragraphs**; just separate each item with a line of white
  space.

  And then the paragraph stays with the list item.

#### Ordered Lists

1. **Ordered lists are useful for steps/enumeration**. Use them when you have a set of things
   you want to refer to by number elsewhere in your text.

1. **Ordered lists begin with a number and period**. You can write out the actual numbers, or
   just keep using `1.` over and over, which keeps things simple if you need to add an item in
   the middle of a list.

### Footnotes and Citation

Citation will be handled through hyperlinks and footnotes. However, footnotes are only for citation,
not for asides or other ancillary material.

#### Articles

Citation in *Push* articles will be handled as footnotes, according to the Chicago Manual of
Style.[^cms] In the running text, you’ll put a unique marker for each source, following terminal
punctuation, e.g.,

    According to the Chicago Manual of Style,[^cms]

Then, at the very bottom of your article, build a list of your footnotes:

    [^cms]: Chicago Manual of Style

When it makes sense to hyperlink to Web-available materials (for example, to documentation,
language references, or live versions of a project you’re writing about), use hyperlinks.

#### Blog posts

Citation on the *Push* blog will be to use hyperlinks as the primary means of citation, and
footnotes for only for non-web-available materials. To avoid conflicts between blog posts on the
same page, prefix each footnote marker with your initials, e.g., `[^kas_cms]`.

### Block Quotes

> Block quotes begin with `>`; indent two spaces and mark each new line of the block quote
> with a new `>`, for easy source reading. Then, on an empty new line, List
> the source if the block quote is an epigraph.
>
> Karl Stolley, *Push Style Guide*

For block quotes with cited material, you’ll use the same formatting as above, but rather than a
source, you’ll use the Markdown/Maruku footnote syntax, as with inline citation.

### Syntax Highlighting

*Push* will be publishing articles and blog posts containing lots of source code.

You’ll open, as in the examples below, with a {% raw %}`{% highlight %}`{% endraw %} statement that
contains the name of the language your sources is in. *Push*/Jekyll uses
[Pygments](http://pygments.org/) to handle syntax highlighting, and there are
[quite a few](http://pygments.org/languages/) languages supported.

Always put in your example the name of the language first, as a comment in the style of the
language. Optionally, use a hyphen separated by spaces to add the specific file name you’re
referring to.

E.g., to render HTML, one would write this in the Markdown (note that you do *not* need to escape
HTML into enities, which makes copying and pasting a breeze):

{% raw %}
    {% highlight html %}
    <!-- HTML -->
    <!DOCTYPE html>
    <html lang="en">
    {% endhighlight %}
{% endraw %}

And see this output:

{% highlight html %}
<!-- HTML -->
<!DOCTYPE html>
<html lang="en">
{% endhighlight %}

Here’s a CSS example, and its output; note the `linenos` argument to output line numbers:

{% raw %}
    {% highlight css linenos %}
    /* CSS - screen.css */
    footer {
      font-family: Times;
      border-top: 1px solid #fff;
    }
    {% endhighlight %}
{% endraw %}

{% highlight css linenos %}
/* CSS - screen.css */
footer {
  font-family: Times;
  border-top: 1px solid #fff;
}
{% endhighlight %}

And finally, one for Ruby:

{% raw %}
    {% highlight ruby %}
    # Ruby - journals_controller.rb
    @journal = Journal.new
    {% endhighlight %}
{% endraw %}

{% highlight ruby %}
# Ruby - journals_controller.rb
@journal = Journal.new
{% endhighlight %}

[^cms]: *Chicago Manual of Style*, 16th ed. (Chicago: University of Chicago Press, 2010), 14.19-14.23.
