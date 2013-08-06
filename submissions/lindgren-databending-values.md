---
title: Rhetorical Figures of Code Databending Values in The Garden of Eloquence
summary: >
           In this article, I examine the rhetorical stylistics of a glitch art practice called 
           databending in the context of new media artist Nick Briz's "Glitch Codec Tutorial" \(GCT
           \). I argue that databending functions stylistically as a destructive, or what I call 
           _metaplasmic act_, which bends the conventions of traditional programming methodologies 
           and consequently instigates new ways people engage source code. I suggest new values 
           also emerge through such code-writing practices, and, through a discussion of 
           databending's stylistic features, I suggest that users learn how to perform as glitch 
           artists, providing the opportunity to also espouse the cultural values held by the 
           glitch art community.
authors:
  -name: Chris A. Lindgren
   affiliation: University of Minnesota 
   github_username: lingeringcode
   bio: >
          Chris Lindgren is a Ph.D. student in Rhetoric of Science and Technical Communication at 
          the University of Minnesota \(UMN\). Much of his research examines the relationships 
          between rhetoric, writing, and literacies; specifically code and computational 
          literacies called proceduracies. As a PhD student at UMN, he hopes to design a study 
          related to the writing and rhetorical practices emerging from how both humans and bots 
          on the web write and re-write data structures.  

# Status: draft, submission, revision, copyedit, published
status: draft

# For publication-stage use:
issue: 00
layout: article
---

> Every programmer knows that altering a line or sometimes a bit can utterly destroy a program
> or mutilate it in ways that we do not understand and cannot predict.
> 
> &mdash;R.A. De Millo, R.J. Lipton, & A.J. Perlis[^demilloetal]

Introduction
------------

In Jeanne Fahnestock's _Rhetorical Style_[^fahnestock1], she reminds her readers how the canon of 
style operates beyond mere word choice and ornamental varieties for aesthetic ends. Instead, style 
involves the means by which rhetors can call upon a variety of "argumentative moves they can 
perform"[^fahnestock2] to connect with their audience. Building on Fahnestock's earlier work in 
rhetorical figures[^fahnestock3], Chris Holcomb[^holcomb1] argues that rhetorical figures are 
"durable structures"[^holcomb2] or "restored behaviors" of a language, which provide rhetors the 
ability to perform an utterance or series of utterances in a conventional, recognizable way; this, 
thereby, enacts potentially reproducible effects upon an audience. While rhetoricians continue to 
expand theories of style developed in human-to-human languages, Kevin Brock[^brock1] has started 
to examine how naming conventions in computer coding practices are stylistic features that can be 
used to not only describe the design and intent of a component of source code, but also to reveal 
how it "influences subsequent development or use of that code."

In Brock's article[^brock1], he analyzes developers' use of metaphors in naming conventions within 
the bounds of more professional spheres. In this article, I examine a different community who 
engages with source code, using alternative methods of source development, or, perhaps, 
manipulation. Specifically, I examine how new-media artist Nick Briz[^briz1] demonstrates a glitch 
art method called databending in his "Glitch Codec Tutorial" (GCT). In his GCT, he prepares his 
audience of users to begin the process of engaging and producing glitched video and audio media by 
hacking, or bending, the source code of the FFMPEG codec library (FFMPEG). Through an analysis of 
how Briz databends a copy of the FFMPEG library, I argue that this glitch art method is an 
emerging "durable structure," or _figure of code_, practiced within source code texts and valued 
by a community of glitch and new media artists. In this situation, databending, as a stylistic 
convention, both prepares and corrals the ways users engage both media production and source code 
as dynamic texts.

The Glitch Codec Tutorial
-------------------------

![Screen capture from the GCT](../blob/master/public_html/assets/img/briz-codec.jpeg?raw=true "Screen capture from the GCT")

Figure 1. Screen capture of Briz's GCT.[^briztut]

The open-source FFMPEG video and audio codec library includes complex sets of compression and 
motion-prediction algorithms, enabling developers the ability to compress, stream, and circulate 
raw video and audio data more efficiently across the Internet. In the GCT, Briz shows users how to 
re-purpose the library to become a tool for glitch art production through the process of 
databending. According to Briz, glitch art is generally defined as the process of misusing, 
disrupting, or breaking the "expected flow of a system"[^briz2]. As a method, databending is one 
of the most common forms of glitch art production, which in its most basic procedure, manipulates 
variables within a program's data structures. Within certain data structures of the FFMPEG codec 
library, even the smallest change—even a single value—will alter its output, generating a 
compressed video with what Briz refers to as "datamoshy"[^briz3] effects. Datamosh refers to a 
stylized distortion of the image being processed and describes one type of glitch aesthetic (See 
Fig. 1).

![A New Ecology for the Citizen of the Digital Age by Briz](../blob/master/public_html/assets/img/briz-datamosh-citizen.jpeg?raw=true "A New Ecology for the Citizen of the Digital Age by Briz")

Figure 2. Screen capture of Briz's video [A New Ecology for the Citizen of the Digital Age](https://vimeo.com/7617527), which shows the datamoshy output of glitched videos.[^brizvid]

For new media artists, such as Briz, data structures have become sites for what Quintilian called 
\"twice-behaved behaviors\"[^holcomb3]. Quintilian provided his students with a detailed 
description about the different methods of style and delivery rhetors could use to appeal to their 
audience, including a litany of bodily gestures and vocal inflections, which even mentions the 
power of a simple, but effective eyebrow gesture to elicit a desired response from their audience. 
Similarly, glitch artists return to data structures in source code texts to manipulate and use 
these organizational methods and expressions of information to render an output with glitch-like 
effects. They seek out the most aesthetically pleasing effects from bending structures of 
information within source code, exploiting the logic of the given program in that particular 
context. Such a method of production enables glitch artists to instigate a glitch that mimic the 
aesthetics of an actual glitch, which manifests in a system. Briz notes in his tutorial how 
different codecs compress video differently; consequently, databending different codecs will break 
the same video differently, rendering different datamoshy effects. Briz tailors the GCT's 
instructions to a primary audience of users who have little to no experience with writing source 
code, let alone using codecs or the command line. Through his demonstration, though, he aims to 
persuade users to adopt these glitch art practices, so, as he claims, they can "establish a 
relationship with the digital medium."[^briz4]

Briz establishes a path toward such a relationship by instructing the new potential glitcher about 
how to manipulate the source code files within the FFMPEG collection. For starters, he provides 
directions about how to simply navigate to the h263data.h file[^endnote1], and subsequently scroll 
down within the file for further directions for the user in the form of comments (see below):

{% highlight %}

/*
>>>>>::: GLITCH CODEC TUTORIAL ::: NOTE :::<<<<<<<

The section below is a good area to start hacking. Try changing the pink numbers between the 
brackets, the result is a kind of "Datamoshy" aesthetic. Afterwards try changing some of the other 
numbers between different sets of brackets below – it's all about experimentation. Glitching, as a 
conscious process of corruption/data-bending, is a play between intention and chance. The glitch 
artist instigates a situation rather than creating a work in the traditional sense.

*/
const uint8_t ff_h263_intra_MCBPC_code[9] = { 1, 1, 2, 3, 1, 1, 2, 3, 1 };
const uint8_t ff_h263_intra_MCBPC_bits[9] = { 1, 3, 3, 3, 4, 6, 6, 6, 9 };

{% endhighlight %}[^briz5]

The above pair of arrays, or lists, are data structures that instruct the computer to read and 
arrange bitstreams of pixels from a video file into 8 x 8 blocks of pixels. These larger blocks 
are referred to as a Macroblock Type and Coded Block Pattern for Chrominance \(MCBPC\), and are 
grouped together based on the intensity of light and color represented in a pixel[^hanzo]. This 
process of consolidating the pixels into larger chunks of information is called **intra**-block 
compression, which compresses the file by analyzing each frame to predict which frames are 
necessary based on the others that came before or after it. Conversely, all other arrays named 
"inter" refer to an **inter**-frame compression method. Inter-, as apposed to intra-, compresses 
the bits of information with an algorithm that recognizes how a large part of most video images is 
not moving, and inter-frame compression exploits this occurrence to render an even smaller file. 
The data in the above arrays are sent to a function in the file, "ituh263dec.c," which analyzes 
the incoming data with variable length codes (VLCs)--another matter entirely. Yet, the key take-
away here is what Briz also tells his audience: that this codec uses this intricate flow of 
control to determine what data in the bitstream can be consolidated and decoded as a subsequent 
smaller file. Yet, I hope the complexity of a codec library becomes clear through this short high-
level description of this snippet of source code. (See Fig. 3 for all of the other FFMPEG files 
that include h263.h.) As De Millo _et al_ note in the epigraph, a small change in a complex 
system, even a "bit," can instigate adverse effects, which a traditional programmer will locate 
and remove from the program, if possible. Yet, for a glitch artist, such mistakes become the 
exigencies and materials for glitch art production.

![A diagram showing what other FFMPEG files include the h263.h file](../blob/master/public_html/assets/img/h263_incl_small.png?raw=true "A diagram showing what other FFMPEG files include the h263.h file")

Figure 3. A diagram showing what other FFMPEG codec library files include the h263.h file.[^h263]

Persuasion and values emerging from databending
-----------------------------------------------

Since figures provide durable, yet malleable, sites for style and delivery to be performed, as 
rhetoricians, we should also understand how communities judge and attribute values to the 
activities performed at such sites in source code. Traditionally, in _The New Rhetoric_, Chaïm 
Perelman and Luci Olbrechts-Tyteca[^POT1] claim that values are often intimately connected to the 
consequences of a group's actions, which also play a crucial role in argumentation. Consequences 
become "the basis for the value attributed to the event which causes them"[^POT2]. They call this 
type of argumentation the _pragmatic argument_, and explain how values emerge from particular acts 
within a situation, where people tend to judge "an act or an event in terms of its favorable or 
unfavorable consequences"[^POT3]. Briz doesn't provide the aforementioned technical descriptions 
about the code, as might be seen in traditionaly uses of documentation; rather, his comment makes 
explicit the connections between the philosophies and values driving this practice of databending. 
He writes that databending techniques emerge from "experimentation" and "play between intention 
and chance" toward the goal of perceived "corruption" of the video file. The process, or ways a 
databending "newbie" can, or should, databend is more or less left open within this sandbox of 
lists. Emerging from these diverse arrays and databending techniques, the glitch art community, 
then, has attributed a set of values to databending \(act\) and its datamoshy output 
\(consequence\). From such source-level practices, Briz attempts to persuade users who conduct his 
GCT and most likely already have some degree of value placed on its output, to espouse this value, 
perhaps aready shared by consumers of glitch art on the output-end, through the a person's 
acclamation to this new method of production: databending.

In many ways, databending has become the "Hello World" method of the glitch art community's craft; 
perhaps, due to its inclusive approach to source code and initial simplicity, inviting end users to 
experiment, play, and even destroy the output generated by source code. During my time at their 
annual GLI.TC/H conference in 2012, I personally witnessed numerous glitch artists share how their 
first experience with intentional glitching was with the process of databending file structures 
and formats. Briz, then, appropriately chooses the simplest form of databending for a "newbie" 
audience of users, preparing them to explore and hack source code. Yet, what also seems to make 
databending such a rich site for stylistic manipulation of data structures is that databending is 
not a rigid process, nor should it be reduced to always being the arbitrarily changing of number 
values. 

A glitch artist, depending upon his/her skill level, may either arbitrarily bend the data 
structures of a source file, or may begin to develop even more nuanced methods of "tactful 
exploitation"[^briz6] to databending, and/or programming in general. Many glitch artists, such as 
Briz, Antonio Roberts[^roberts], Rosa Menkman[^menkman], and Daniel Temkin[^temkin] have developed programming 
methodologies in the traditional sense. Accordingly, in relation to databending, glitch artists 
also depend upon traditional programming methods and methodologies as a means to develop 
alternative ways of hacking and developing source code to output glitch-like effects. In so doing, 
a person could begin to develop more complex processes and methods to _bend_ data structures by 
also learning and _bending_ traditional programming methodologies. As a potential result, 
depending upon how a user takes-up and adopts this initial "Hello-World approach," s/he can 
potentially, as Briz claims, establish a deeper relationship with the digital medium by also 
researching, learning, and engaging more with data structures in source code: both conceptually 
and in applied situations.

Databending as a rhetorical figure of code
------------------------------------------

There are some interesting intersections between such playful manipulations of data structures and 
traditional rhetoric's notions of bending and breaking human language with the set of figures 
called metaplasms (meta-, meaning "after," "beyond," "with," "adjacent," or "self"; and plasm, 
meaning "formation" or "to shape or mold"). Henry Peachem in _The Garden of Eloquence_ lists 14 
types of word alteration that Fahnestock says "violates"[^fahnestock4] the standards and 
conventions of language to achieve some rhetorical goal. Metaplasms in human language often 
involve "adding, subtracting, or changing letters or syllables in the beginning, middle, or ending 
of words"[^fahnestock5]. "Peachem," according to Fahnestock, "called these devices 'Orthographical 
Schemes," which Peachem poets used in a bind to maintain proper meter[^fahnestock6].

Databending, therefore, is a metaplasmic act. This _figure of code_ carries the potential to bind 
both the poetics of its output and rhetorics of its practice, providing the glitch artist and 
consumer of glitch art the means to shift their attention from the file's content toward the 
processes and (mal)functions of the technology. Peachem calls metaplasms an orthographical scheme, 
which, on the surface, is the end product of databending. But, by working within the source of a 
codec file, a person is not simply working with a static image, being misused in some way, s/he is 
also altering the way the compression algorithms read media files, which affect the orthogonal 
schemes that predict the inter- or intra-motion vectors. Furthermore, Briz also informs the new 
glitcher that the glitch art instigated by these databending techniques is not contingent solely 
by these changes, but the particular assemblage of hardware(s) and software(s), as type of 
machinic audience, or reader/interpreter. He emphasizes that the manipulation of source code must 
also be interpreted by the media player that reads this code and the assemblage of hardware of a 
computer; predominantly, its screen-type and resolution. Consequently, an effect rendered on one 
system will most likely render a different result elsewhere, based on these material conditions. 
Briz notes how glitch artists understand these constraints of the practice and often seek new ways 
of instigating these disruptions toward some expressive end. As a result, when a newbie first 
databends, this act places s/he into a new way of being, doing, and knowing source code and 
digital media. In many ways, Briz seems to databend end users in the same vein he databends source 
code: databending as a stylistic and persuasive act.

Conclusion
----------

In Holcomb's discussion of rhetorical figures, he claims that the stylistic features of language 
"accumulate, carry, and shed cultural values and meanings independent of the content they may be 
used to convey"[^holcomb4]. Briz maintains the cultural values of the glitch art community through 
his databending instruction; thereby, he also implicitly distances himself and his audience from 
more traditional methods of developing programs. Furthermore, Briz provides an alternative 
starting point beyond traditional means of digital media production through an alternative method 
of source code development and interaction. In this way, as Holcomb argues, Briz "organize[s] and 
impose[s] structures of social experience"[^holcomb5] for users to experience new ontological and 
epistemological frames within the digital medium. To partake in the GCT, a person is no longer 
performing the same stylistic conventions as a traditional programmer; rather, s/he experiences 
and perhaps espouses the cultural forms generated by the act of databending. Briz, the glitch art 
community, and novice databenders are not only bending data structures, but also bending the 
conventions of engaging with these programs. In short, users, through a playful method of 
instruction, learn how to perform as glitch artists through databending: a rhetorical figure of 
source code.

Notes
_____
[^demilloetal]: De Millo, R.A., R.J. Lipton, & A.J. Perlis. "Social Processes an Proofs of Theorems and Programs," _Communications of the ACM_ no. 22 \(1979\): 271-280.

[^fahnestock1]: Jeanne Fahnestock, _Rhetorical Style_ \(New York, NY: Oxford University Press, 2011\).

[^fahnestock2]: Ibid, 8.

[^fahnestock3]: Jeanne Fahnestock, _Rhetorical Figures in Science_ \(New York, NY: Oxford University Press, 1999\).

[^holcomb1]: Chris Holcomb, "Performative Stylistics and The Question of Academic Prose," _Rhetoric Review_ 24 \(2005\): 188-206.

[^holcomb2]: Ibid., 202.

[^brock1]: Kevin Brock, "Practices of Naming in Code as Rhetorical Strategies," \(draft of article, _Push_, 2012\).

[^briz1]: Nick Briz, "Glitch Codec Tutorial," _Nick Briz's Online Portfolio_ \(2010\), [http://nickbriz.com/glitchcodectutorial/](http://nickbriz.com/glitchcodectutorial/).

[^briztut]: Chris Lindgren, "Screen Capture of Briz's 'Glitch Codec Tutorial'" nickbriz.com, \(2010\). Screen capture, [http://nickbriz.com/glitchcodectutorial/](http://nickbriz.com/glitchcodectutorial/).

[^briz2]: Nick Briz, "Glitch Codec Tutorial," _Glitch Codec Tutorial_ \(2010\), [http://nickbriz.com/glitchcodectutorial/files/GlitchCodecTutorial.pdf](http://nickbriz.com/glitchcodectutorial/files/GlitchCodecTutorial.pdf): 1.

[^briz3]: Nick Briz, "Glitch Codec Tutorial \[glitch art demo\] full tutorial," _Vimeo_ \(2011\), [https://vimeo.com/23653867](https://vimeo.com/23653867).

[^brizvid]: Chris Lindgren, "Screen Capture of Briz's 'A New Ecology'" Vimeo.com, \(2010\). Screen capture, [https://vimeo.com/7617527](https://vimeo.com/7617527).

[^h263]: "A diagram showing what other FFMPEG codec library files include the h263.h file" sourcecodebrowser.com, \(date unknown\). PNG, [http://www.sourcecodebrowser.com/ffmpeg/0.6.1/h263_8h.html](http://www.sourcecodebrowser.com/ffmpeg/0.6.1/h263_8h.html).

[^holcomb3]: Holcomb, 2005, 191.

[^briz4]: Nick Briz, "Glitch Codec Tutorial \[glitch art demo\] full tutorial," _Vimeo_ \(2011\), [https://vimeo.com/23653867](https://vimeo.com/23653867).

[^endnote1]: Briz calls his Glitch Codec Tutorial "artware," since he created an image, (or executable .iso file), of a GNU-Linux distribution of Ubuntu that he created for users to run off of either a CD or USB stick. My analysis focuses on the first location in the FFMPEG source code, after conducting this part of the GCT, rather than the rhetorics and implications of creating, running, and experiencing a GNU-Linux distribution. This part of the GCT, indeed, would make for an excellent software studies/rhetorical analysis.

[^briz5]: Nick Briz, "Glitch Codec Tutorial Artware," _Glitch Codec Tutorial_ (2010), h263data.h file, [http://nickbriz.com/glitchcodectutorial/files/GlitchCodecTutorial.iso](http://nickbriz.com/glitchcodectutorial/files/GlitchCodecTutorial.iso).

[^hanzo]: L.P. Hanzo, P.J. Cherriman, and J. Streit, _Video Compression and Communications_ \(West Sussex, England: John Wiley & Sons Ltd., 2007: 3, [http://onlinelibrary.wiley.com/book/10.1002/9780470519929](http://onlinelibrary.wiley.com/book/10.1002/9780470519929) \).

[^POT1]: Chaïm Perelman and Lucie Olbrechts-Tyteca, _The New Rhetoric_ \(UND: University of Notre Dame Press, 1969\).

[^POT2]: Ibid, 267.

[^POT3]: Ibid, 266.

[^briz6]: Nick Briz, "Glitch Codec Tutorial \[glitch art demo\] full tutorial," _Vimeo_ \(2011\), [https://vimeo.com/23653867](https://vimeo.com/23653867).

[^roberts]: See Antonio Roberts' "What Glitch? Scripts" on Github: [https://github.com/hellocatfood/What-Glitch--scripts](https://github.com/hellocatfood/What-Glitch--scripts).

[^menkman]: See Rosa Menkman's glitch art focused on what she calls _acousmatic videoscapes_: [http://videoscapes.blogspot.com/2008/12/blog-post.html](http://videoscapes.blogspot.com/2008/12/blog-post.html).

[^temkin]: See Daniel Temkin's portfolio of work: [http://danieltemkin.com/](http://danieltemkin.com).

[^fahnestock4]: Peachem qtd. in Fahnestock, 2011, 129.

[^fahnestock5]: Ibid.

[^fahnestock6]: Ibid, 130.

[^holcomb4]: Chris Holcomb, (2006). "'Anyone Can Be President,'" _Rhetoric Society Quarterly_ 37 (2006): 80.

[^holcomb5]: Ibid, 81.
