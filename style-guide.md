---
title: Style Guide
layout: page
category: instructions
identifier: style_guide
---

<!-- Heading 1, if used, should be in sentence case -->
# Style guide for Push

The styles for *Push* are pretty basic. The focus is on the research and the code.

<!-- Heading 2 should be written in Title Case  -->
## Everything is in Markdown

Spend your time writing with source in projects that you can describe and research for *Push*. To
actually write your article, you’ll compose in Markdown.

<!-- Heading 3 should be written in Title Case  -->
### This is a Heading Three, in Title Case

And here’s some more paragraph text.

* And just
* A simple
* List here

<!-- Heading 4 should be written in sentence case -->
#### This is a heading four, in sentence case

How about more paragraph text?

1. And
2. An
3. Ordered
4. List

## Syntax Highlighting

Always put the name of the language first, as a comment in the style of the language. Optionally,
use a hyphen separated by spaces to add the specific file name you’re referring to.

{% highlight html %}
<!-- HTML -->
<!DOCTYPE html>
<html lang="en">
{% endhighlight %}

{% highlight css %}
/* CSS - screen.css */
footer {
  font-family: Times;
  border-top: 1px solid #fff;
}
{% endhighlight %}

What happens now?

{% highlight ruby %}
# Ruby - journals_controller.rb
@journal = Journal.new
{% endhighlight %}
