---
title: Practices of Naming in Code as Rhetorical Strategies
summary: >
           This article explores the rhetorical significance of naming 
           practices as applied to software development (as demonstrated 
           in file names, functions, variables, and so on). Despite the
           apparent triviality of such a component of code, naming 
           practices shine a light on the goals and values of a programmer 
           in addition to the functional intentions that he or she might 
           have for the use of a given body of code.
authors:
  -name: Kevin Brock
   affiliation: University of South Carolina
   github_username: brocktopus
   bio: >
          Kevin Brock is Assistant Professor of English in the Department of
          English Language and Literature at the University of South
          Carolina. His work primarily focuses on the space shared by 
          rhetoric and the critical studies of software and code, with a
          special interest in how code (as both practice and text) functions 
          as a rhetorically powerful and significant form of contemporary
          communication.

# Status: draft, submission, revision, copyedit, published
status: draft

# For publication-stage use:
issue: 00
layout: article
---

> There are only two hard things in Computer Science: cache invalidation and
> naming things.
> 
> &mdash;commonly attributed to Phil Karlton

> \[T\]he mere act of naming an object or situation decrees that it is to be
> singled out as such-and-such rather than as something-other.
> 
> &mdash;Kenneth Burke[^burke1]

Introduction
------------

Among the most _seemingly_ trivial qualities of software code is the set of 
names given to the components of a given program, including files, functions, 
and variables. After all, other than file names, it is unlikely that the 
majority of users will ever explore the source code of that program (assuming 
that they are even provided access to it). However, the social practices 
undergirding _naming_ components of code offer crucial insight into the 
rhetorical perspective(s) of a development team and how its members perceive 
their relationships with various populations of developers and users. That is, 
the names given to particular code components highlights the intended purposes 
that its author(s) might have had in composing it&mdash;and this communicated 
intent, in turn, influences subsequent development or use of that code.

To an extent, the idea of naming practices as rhetorically meaningful reflects 
the metaphorical basis of language explored in depth by George Lakoff and Mark 
Johnson[^lakoff1]; it is often easier for one to understand a potentially 
complex idea or system when translated into metaphorical terms that 
contextualize that idea or system into a more easily-understood image (e.g., 
argument as war, time as money or other resource, emotion as orientation). As 
Lakoff and Johnson note, "\[h\]ow we think metaphorically matters."[^lakoff2]
In other words, the metaphors we use to describe and explain complicated ideas
have the power to influence _how_ we understand those ideas&mdash;the metaphors
are neither ornamental or arbitrary in serving to characterize our
conceptualizations of those subjects we discuss. The above statement by Lakoff
and Johnson should resonate with rhetoricians, since it is what we choose to 
communicate as rhetors that reveals to audiences the goals and values that 
underlie the arguments we make. Not surprisingly, this sentiment is shared by 
Kenneth Burke, who has identified "the use of language as a symbolic means of 
inducing cooperation in beings that by nature respond to symbols."[^burke2]. 
The construction of meaning through language relies on what that language 
represents, and this is no different in the source code of software than in any 
conventional form of discourse. In fact, as Ward Cunningham has pointed out in
the comments related to the review thread for this article[^cunningham],
metaphor (especially system metaphor) plays a key role in regards to extreme
programming due to metaphor's ability to more clearly and easily describe
what is being constructed and how it should function.

The naming practices of software development can be quite complicated and 
nuanced, since the metaphors of names often need to reflect an understanding 
of: a) the purpose of the named code (variables, functions, files, etc.) for 
the development team; b) relationships between the named code and other bits of 
code; and c) the potential purpose(s) of the named code for user populations. 
Depending upon the nature of a given project (such as an open source, volunteer-
based community in comparison with a corporate or proprietary organization), 
these nuances can provide confusion or unintended messages to these populations 
where they intersect or when the development membership evolves at a different 
pace than the stylistic preferences for contributions to that project.

Several examples are discussed briefly below. The first, "throw up," plays on the multiplicity of connotations that ensures code is never _merely_ a set of instructions for a machine audience. The second, "Richard Is a Fucking Idiot," demonstrates one way in which developers argue their cases to one another on how properly and effectively to construct a given body of code. The third, an analysis of unmaintainable code, focuses on the nuances of (sometimes) well-intentioned naming practices that end up backfiring or otherwise obstructing the progress of a given development project.

Together, these examples display a range of naming practices in code that exercise metaphorical&mdash;and thus rhetorical&mdash;power. Just as in each conventional rhetorical situation where a speaker must effectively communicate his or her argument to the intended audience, so to in code must a developer impart not only the _logic_ of his or her composition but also the _meaning_ thereof, why that approach is preferred, its intended applications, or even perhaps the personal, emotional intensity that accompanied its production. These layers of meaning strengthen, rather than compromise, the meaningful nature of code&mdash;they suggest that we not only can but _do_ attempt to communicate persuasively with one another even in seemingly abstract forms of writing and doing. In addition, these examples all use varying approaches to
humor in order to suggest particular tones in the code texts. Humor is not a
universal approach to code, but its presence in these three situations suggests
that, even in otherwise trivial code compositions, an author is invested in
imparting meaningful communication to his or her audiences.

Example 1: Throw Up
-------------------

Hans-Erik Nissen[^nissen1] has suggested that most software developers are 
interested primarily in the first quality noted earlier: the functional purpose 
of a specific block of code. According to Nissen, "\[s\]oftware practitioners 
are well aware of the denotational features and largely ignore the 
connotational features of language. Concepts employed in software products must 
have unambiguous interpretations in very limited contexts, such as computer 
programs, database schemas, and so on."[^nissen2] Such a position recognizes 
many corporate development practices, to be sure, but to suggest that 
developers _ignore_ the connotational features of language&mdash;especially for 
coding purposes&mdash;is inaccurate. Even when making use of "built-in" (non-
customized) functions and operations, coders are often painfully aware of the 
connotations of their code, although they may not explicitly make note of those 
connotations. For example, the following two lines of Java code describe an 
explicit exception&mdash;that is, an expected disruption of the normal flow of 
computation for a given program. The exception below is referred to by the 
definition of the <code>up</code> variable as the <code>Exception</code> data 
type, and the resulting action that should occur through the throw statement, 
which removes that exception from the process being executed&mdash;with a 
metaphorical suggestion of forceful removal&mdash;usually by ending the 
program, and alerts the developer (or user) to the specific cause of the 
program's disruption. The <code>throw up</code> exception declaration exists as 
follows:

{% highlight java %}

    Exception up = new Exception("Something is really wrong.");
    throw up; // ha ha[^matthews]
    
{% endhighlight %}

The developer's comment (<code>// ha ha</code>) makes clear the author's 
awareness of the multiple connotations of the language being used as part of 
functional code, and the feelings that might arise within a developer for 
catching an exception that, while anticipated, are likely undesirable, are 
summed up concisely through the activity (metaphor and computational operation) 
<code>throw up</code>.  If developers were generally to ignore the multiple 
meanings of the language they employ _daily_ through code, we would have to 
assume they similarly do so in other contexts, i.e. in natural language use. 
Since very few might ever make this argument, there is no reason to suggest 
that it occurs within the realm of code.

As Chris Lindgren points out in his comments to this submission, this sort of
low-key humor serves as a kind of "community-building" that enables members of 
a particular group (in this case, software developers who use the Java 
language) to bond through the shared experience of writing code with this
easily-recognized connotative power[^lindgren]. This small exercise allows 
the author both to display his or her credentials with the language&mdash;being
familiar enough with it to "play" with its meaningful capabilities&mdash;and 
to provide a litmus test for audiences, determining who is and is not in on 
the joke.

Example 2: Richard Is a Fucking Idiot
-------------------------------------

Many programmers have made extensive use of the flexible possibilities of 
customization in naming practices to help generate a narrative for themselves 
and other developers as a means of justifying the purposes toward which they 
anticipate their code working. Tom Ritter[^ritter] shared an excerpt of Java 
code written by another developer who was clearly angry at a coworker during 
the time of the code's composition. Quoted in part below, the naming practices 
used in this code pull absolutely no punches in communicating the author's 
feelings towards the coworker, renamed "Richard" to keep that worker's identity 
protected:

{% highlight java %}

    public RichardIsAFuckingIdiotControl() {
      MakeSureNobodyAccidentallyGetsBittenByRichardsStupidity();
    }
    private void 
     MakeSureNobodyAccidentallyGetsBittenByRichardsStupidity() {
      // Make sure nobody is actually using [the original] method
      MethodInfo m = this.GetType().GetMethod("BindCompany", 
       BindingFlags.DeclaredOnly | BindingFlags.Instance | 
       BindingFlags.Public | BindingFlags.NonPublic);
      [...]
    }
    [...]
    protected override void OnLoad(EventArgs e) {
      if (IsThisTheRightPageImNotSureBecauseRichardIsDumb()) {
        Page.LoadComplete += new EventHandler(Page_LoadComplete);
        Pager.RowCount = GetRowCountBecauseRichardIsDumb();
      }
      base.OnLoad(e);
    }
    
{% endhighlight %}

These functions, authored by Dan McKinley[^mckinley], who revealed his own 
identity after the code quoted in part above was posted to [_Stack Overflow_]
(http://www.stackoverflow.com), a popular website for code help, were part of 
a larger class declaration named <code>RichardIsAFuckingIdiotControl</code>. 
This class worked specifically to route data around what McKinley felt was 
inefficient and resource-intensive code&mdash;a sentiment expressed most 
clearly through his accusations toward the programming skills of coworker 
"Richard." For example, the function 
<code>IsThisTheRightPageImNotSureBecauseRichardIsDumb()</code>, whose code was 
not quoted above, works by performing a confirmation check on a requested URL 
before it was loaded in order to avoid performing a number of potentially 
unnecessary operations (which would slow down any continued use of the 
program). This check was performed because "Richard" had initially coded the 
software to execute those operations any time a URL was requested. The 
function's name is clearly not a genuine inquiry but rather a sarcastic 
evaluation of the preexisting code as being unable to do what McKinley felt it 
needed to do. That is, McKinley's understanding of how the program's code
_should_ work is complicated&mdash;with apparently disastrous results&mdash;by
the change in the program's functionality introduced by Richard.

While one might argue that McKinley's naming scheme is certainly _denotative_, 
since his custom function names certainly describe the functional intent of 
those functions, the scheme also attempts to communicate _connotative_ meaning 
just as intensely to his audience: the author is not just fixing a problem but 
demanding that any readers of the code understand the amount of anger he felt 
at having to rework his colleague's efforts. Similarly, McKinley attributes 
_all_ potential failures of the program here to be the fault of "Richard," at 
least within the scope of the code: "Richard" is the only idiot identified as 
potentially being at fault for whatever troubles might befall the user (or 
other developers working on the project). Specifically, McKinley suggests that 
he needed, through this code, to 
<code>MakeSureNobodyAccidentallyGetsBittenByRichardsStupidity</code> with the 
assumption that user error would be anomalous given the problems McKinley 
associated with his coworker's code. 

McKinley's adjustments assert a specific paradigm for how the development organization and its employees _should_ approach their work, and the tone of
those adjustments similarly suggests a level of general and
contextually-specific programming knowledge that readers (beyond McKinley
and Richard) may possess. In shaming Richard, McKinley either purposely or
inadvertently may suppress otherwise experimental or innovative contributions
to the program that could be made by his colleagues. Whether they identify
sympathetically with McKinley or with Richard is unknown, but there is an
unstated question: if another developer upsets McKinley (or anyone else), will
his or her shortcomings also be condemned so explicitly throughout a set of
documents available to an unknown number of employees at their organization?

In addition, Richard's name itself comes to serve as an example of 
_synecdoche_, a rhetorical device that refers to some concept or entity by
way of one of its parts (or, as in this case, the part by way of the whole).
Here Richard's _code_ is the point of contention, and Richard's nature as a
"fucking idiot" is demonstrated only through the code to which McKinley has 
alluded with his workarounds. Our exposure to Richard exists only through
these changes made to his code&mdash;we do not experience Richard's original
"mistakes" in the program source. Rhetorically, the audience is asked to
consider Richard (the person) indirectly through the lens of Richard's body
of code and directly through the lens of McKinley's body of code _about_
Richard's body of code.

McKinley is able to direct his frustration with the code toward its author, 
and his appeal is effective for those who might have experienced similar
irritation with coworkers or collaborators of questionable skill or 
knowledge (but, conversely, may be less effective for those who may be 
less comfortable with their own programming skills or knowledge of the
organizational "flow" related to working with McKinley or with Richard).
Whether or not this frustration or irritation is well-founded, of course,
varies from case to case&mdash;but that's not the point. Instead, the 
potential for an author _to communicate it at all_ is the important 
detail; the developer's impetus is inscribed and preserved in the program 
for all future contributors to witness.

Example 3: How to Write Unmaintainable Code
-------------------------------------------

This "example" is not a single excerpt of source code but rather a satirical
take on code practices that implement embarrassing or frustrating naming
schemes. Roedy Green's[^green] ["How to Write Unmaintainable Code: Ensure a 
Job for Life ;-)"](http://thc.org/root/phun/unmaintain.html) provides a 
relatively thorough examination of the laughable decisions some programmers
make to "ensure" that their work is impossible to build on or otherwise
maintain. While Green's organization suggests that naming practices make up
only a part of the means by which someone could construct an unmaintainable
program, ideas related to naming pervade the entirety of his essay. 

Much of Green's advice relates to considerations of names in code as
representatives of particular metaphorical structures or as subversions of
those same structures. For example, he jokes that it is important to prefix
class instance names with some sort of indicator that the developer
recognizes it is an object, such as "o_apple" or "obj_apple". This approach,
Green notes, "show\[s\] that you're thinking of the big, polymorphic picture."
That is, the attention paid to clarifying details&mdash;which normally require
no clarification&mdash;suggests not that a particular programmer understands 
the "big picture" of a project but rather that those clarified details 
comprise the big picture (likely to the detriment of its future maintainers).
For example, the nomination of each object variable as an object, such as
with a prefix, does not guarantee that the remainder of the name reflects, in
any way, the purpose of that particular object.

Similarly, languages like Java provide developers with the opportunity to (or
the demand that) variable types are named twice, e.g. {% highlight java %}
String[] myString = new String[]; {% end highlight %}. However, as Green
notes, it is possible to complicate this approach by specify a variable
as a different data type than expected: 
{% highlight java %} Bubblegum b = new Bubblegom(); {% end highlight %}
(notice g_o_m vs. g_u_m). This sort of naming can be even more pronounced,
but for Green it seems to be the subtle, hard-to-spot, change that has the 
most significant effect in regards to creating work for a future developer.
After all, clearly visible differences stand out, and Green is most interested
in the sorts of stylistic naming activities that elude one's easy grasp.

As a result, names as representatives of metaphor have the potential to derail
those metaphors&mdash;or force a drastic reconsideration of them&mdash; when
multiple developers approach a particular project with different metaphors
in mind. (This situation is unavoidable, according to reader response theory;
one can never ensure that any reader will ever engage a text in exactly the
same way as any other, sometimes even when there are closely-aligned 
expectations about the text[^fish].) However, the freedom provided to every
developer to name the components of his or her code however desired 
(regardless of those names' helpfulness or clarity) supports a view of naming
as extremely powerful practice, since it imparts some indication of 
interpreted significance to a reader through the names chosen by an author.
In Green's case, these choices can be infuriating or laughably painful, but
they all point to a demonstration of developer-namer as crucial nexus in
a network of meaningful development-related communication.

Development Practices as Rhetorical Practices
---------------------------------------------

The range of possibilities for naming practices appropriately reflects the 
range of possibilities for communicating meaning in any other mode or medium. 
Whether such practices are viewed as being significant for the purposes of 
rhetorical study, the fact remains that developers' values and perspectives on 
their code are transmitted through the names they provide for their work along 
with any goals they intend to suggest the code should achieve. In addition, 
those same values inform the _way(s)_ their code is designed to function, both 
internally (with other functions, sometimes written by other developers) and 
externally (through the expression of the overall program in which that code 
operates). When a number of developers' individual practices converge for the 
creation of a large-scale program, these rhetorical influences often override 
the sets of standards and best practices to which the involved developers are 
expected to adhere. As a result, the contextual and situated qualities of 
rhetorical meaning-making underlying both the code and its expressive program 
become visible, providing rhetoricians with an excellent opportunity to study 
the creation of that software as well as the range of actions it facilitates 
through its use.

Among the most intriguing such programs are the open source software projects 
developed by volunteers from across the globe, since there is potentially a 
wide range of sociocultural factors introduced to, and influencing, any number 
of components of those projects' code. These factors can demonstrate both a 
diverse set of interests and perspectives and any efforts to transform that 
diversity into consistency (of code style, functional logic, and cultural 
expression); in both respects, the developers' rhetorical awareness can have 
significant impact on future development and use of a given project. While 
there may be little explicit discussion among programmers about the meaningful 
nature of the naming practices they participate in, whether individually or 
collectively, there can be little doubt that the names chosen reflect _and 
influence_ how a particular code project continues to be developed and applied.

Notes
-----

[^lakoff1]: George Lakoff and Mark Johnson, _Metaphors We Live By_ (Chicago: 
U of Chicago Press, 1980).

[^lakoff2]: Ibid, 243. 

[^burke1]: Kenneth Burke, _Philosophy of Literary Form_ (Berkeley and Los
Angeles: U of California Press, 1973), 4.

[^burke2]: Kenneth Burke, _A Rhetoric of Motives_ (Berkeley and Los Angeles: U
of California Press, 1969), 43.

[^cunningham]: Ward Cunningham, untitled comments, _GitHub_ (2012), 
[https://github.com/cwcon/push/pull/2#issuecomment-10088557](https://github.com/cwcon/push/pull/2#issuecomment-10088557) and 
[https://github.com/cwcon/push/pull/2#issuecomment-10261832](https://github.com/cwcon/push/pull/2#issuecomment-10261832)

[^nissen1]: Hans-Erik Nissen, "Challenging traditions of inquiry in software
practice," in _Social Thinking-Software Practice_, ed. Yvonne Dittrich, 
Christiane Floyd, and Ralf Klischewski (Cambridge, MA: MIT Press, 2002), 69-90.

[^nissen2]: Ibid,  86.

[^matthews]: matthews, "Exception up = new Exception("Something is really 
wrong.");," _Stack Overflow_ (2009), [http://stackoverflow.com/a/549611](http://stackoverflow.com/a/549611).

[^lindgren]: Chris Lindgren, untitled comments, _GitHub_ (2013), [https://github.com/cwcon/push/pull/2#discussion_r5631884](https://github.com/cwcon/push/pull/2#discussion_r5631884)

[^ritter]: Tom Ritter, "//Code Sanitized to Protect the Foolish," _Stack 
Overflow_ (2010), [http://stackoverflow.com/a/184673](http://stackoverflow.com/a/184673).

[^mckinley]: Dan McKinley, "From the Annals of Dubious Achievement," _Dan 
McKinley_ (2009), [http://mcfunley.com/438/from-the-annals-of-dubious-achievement](http://mcfunley.com/438/from-the-annals-of-dubious-achievement).

[^green]: Roedy Green, "How to Write Unmaintainable Code: Ensure a Job for 
Life ;-)," _The Hacker's Choice_ (n.d.), 
[http://thc.org/root/phun/unmaintain.html](http://thc.org/root/phun/unmaintain.html).

[^fish]: For more on this topic, see Stanley Fish, _Is There a Text in This 
Class?: The Authority of Interpretive Communities_ (Cambridge, MA: Harvard UP, 
1982).
