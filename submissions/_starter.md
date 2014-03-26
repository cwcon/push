---
title: Using a Wilcoxon-test based partial order for selection in
evolutionary algorithms with noisy fitness
summary: >
	This paper explain the concept of an evolutionary algorithm
	selection mechanism that is based in using a Wilcoxon test to
	impose a partial order on the population of solutions. These
	solutions will need to have a memory of past evaluations.
	This solution has been tested against other average-based ones
	giving the best results, although they need an order of magnitude
	more time to obtain these result. 
authors:
  -name: JJ Merelo
   affiliation: University of Granada
   github_username: JJ
   bio: >
          JJ Merelo is professor at the university of Granada and
		  director of the Free Software Office at that university. 

#Repeat fragment above for multi-author articles
# -name:
# affiliation:
# github_username:
# bio: >
#      Bio starts here...

# Status: draft, submission, revision, copyedit, published
status: draft

# For publication-stage use:
issue: 00
layout: article
---

# Using a Wilcoxon-test based partial order for selection in evolutionary algorithms with noisy fitness

##Introduction

Evolutionary algorithms are stochastic optimization methods inspired
in evolution. They search for solution to a problem by creating a
population of possible solutions, which are then *evolved* according
to their *fitness*, that is, their ability to solve the problem. 

In some cases this fitness is *noisy*, be it because [solutions are evaluated in a
noisy environment ](http://geneura.wordpress.com/2013/06/21/unreal-expert-bots-at-iwann-2013/)
or because
[they have, themselves, a random component](http://geneura.wordpress.com/2012/10/08/genebot-again-in-cig2012/). One
can deal with noise by just disregarding it and using fitness as
obtained (which, with sufficiently big populations, is enough)[^noisy]

## Method description

## A bit of code

[^noisy]: Jin, Y., & Branke, J. (2005). Evolutionary optimization in uncertain environments-a survey. Evolutionary Computation, IEEE Transactions on, 9(3), 303-317.
